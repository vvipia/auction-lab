
package com.back.auctionlab.domain.auction.repository;

import com.back.auctionlab.domain.auction.entity.Auction;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AuctionRepository
        extends JpaRepository<Auction, Long> {
}
