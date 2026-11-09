package com.back.auctionlab;

import org.springframework.boot.SpringApplication;

public class TestAuctionLabApplication {

    public static void main(String[] args) {
        SpringApplication.from(AuctionLabApplication::main).with(TestcontainersConfiguration.class).run(args);
    }

}
