package com.grandcircus.controller;

import com.grandcircus.models.UsersEntity;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.uber.sdk.rides.client.ServerTokenSession;
import com.uber.sdk.rides.client.SessionConfiguration;
import com.uber.sdk.rides.client.UberRidesApi;
import com.uber.sdk.rides.client.model.*;
import com.uber.sdk.rides.client.services.RidesService;
import retrofit2.Response;


@Controller
public class HomeController {

    @RequestMapping ("/")
    public String displayForm() {
        return "userWelcome";
    }
    @RequestMapping(value="/result", method= RequestMethod.POST)
    public ModelAndView route(@RequestParam("streetNum") String street,
                              @RequestParam("routee")String routeM,
                              @RequestParam("local")String loc,
                              @RequestParam("postal")String post,
                              @RequestParam("count")String count,
                              @RequestParam("strtN") String strt,
                              @RequestParam("rou")String rout,
                              @RequestParam("loca")String local,
                              @RequestParam("posta")String postal,
                              @RequestParam("userCountry")String userCount){
        String user= street + " " + routeM + " " + loc + " " + post + " "+count;
        String info= strt + " " + rout + " " + local + " " + postal + " " + userCount;

        return new ModelAndView("result","addStuff",user + " " + info);


    }

    @RequestMapping("listUsers")
    public ModelAndView listUsers() {
        Configuration cfg = new Configuration ().configure ("src/main/resources/hibernate.cfg.xml");
        SessionFactory sessionFact = cfg.buildSessionFactory ();
        Session usersSession = sessionFact.openSession ();
        usersSession.beginTransaction ();

        Criteria c = usersSession.createCriteria(UsersEntity.class);
        ArrayList<UsersEntity> usersArrayList = (ArrayList <UsersEntity>) c.list ();
        return new ModelAndView ( "welcome2", "cList", usersArrayList );
    }

    @RequestMapping(value = "/ridecompare")
    public String rideShare(Model model) {

        //Uber API
        List<Product> results;
        List<PriceEstimate> prices;
        List<TimeEstimate> duration;
        String id = "";

        try {
            SessionConfiguration config = new SessionConfiguration.Builder()
                    .setClientId("8RzoguxuX2ewBwxPa-lWFTbBUpOdsskI")
                    .setServerToken("lmsYmf0NANVZcPTESB5mKYJsAy4nhdYgjgn7rtq1")
                    .build();

            ServerTokenSession session = new ServerTokenSession(config);

            UberRidesApi ride = UberRidesApi.with(session).build();
            RidesService service = ride.createService();
            //product
            Response<ProductsResponse> response = service.getProducts(42.335734f, -83.050031f).execute();
            ProductsResponse products = response.body();
            results = products.getProducts();


            //price
            Response<PriceEstimatesResponse> respond = service.getPriceEstimates(42.335734f, -83.050031f,
                    42.462633f, -82.891155f).execute();
            PriceEstimatesResponse priceTag = respond.body();
            prices = priceTag.getPrices();

            //time
            Response<TimeEstimatesResponse> responseTime = service.getPickupTimeEstimate(42.335734f, -83.050031f,
                    id).execute();
            TimeEstimatesResponse time = responseTime.body();
            duration = time.getTimes();


            String displayName = results.get(0).getDisplayName();
            String discript = results.get(0).getDescription();
            int cap = results.get(0).getCapacity();

            String priceEst = prices.get(0).getEstimate() + " " + prices.get(0).getCurrencyCode();
            Float distance = prices.get(0).getDistance();

            int driver = prices.get(0).getDuration();
            int drive = (driver%3600)/60;

            int seconds = duration.get(0).getEstimate();
            int eta = (seconds % 3600) / 60;

            model.addAttribute("product", displayName);
            model.addAttribute("descrip", discript);
            model.addAttribute("cap", cap);
            model.addAttribute("price", priceEst);
            model.addAttribute("mile", distance);
            model.addAttribute("time", eta);
            model.addAttribute("drive", drive);


        } catch (IOException e) {
            e.printStackTrace();
        }

        //Lyft API


        return "rideshare";
    }

}