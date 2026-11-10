
package com.back.auctionlab.domain.auction.entity;

import jakarta.persistence.*;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import java.time.LocalDateTime;

@Entity
@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Table(name = "auction")
public class Auction {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "auction_id")
    private Long auctionId;

    @Column(name = "seller_member_id", nullable = false)
    private Long sellerMemberId;

    @Column(name = "performance_id")
    private Long performanceId;

    @Column(name = "title", nullable = false, length = 200)
    private String title;

    @Column(name = "item_name", nullable = false, length = 200)
    private String itemName;

    @Column(name = "item_description", nullable = false,
            columnDefinition = "TEXT")
    private String itemDescription;

    @Column(name = "starting_price_amount", nullable = false)
    private Long startingPriceAmount;

    @Column(name = "minimum_increment_amount", nullable = false)
    private Long minimumIncrementAmount;

    @Enumerated(EnumType.STRING)
    @Column(name = "access_policy", nullable = false, length = 30)
    private AuctionAccessPolicy accessPolicy;

    @Column(name = "required_performance_id")
    private Long requiredPerformanceId;

    @Enumerated(EnumType.STRING)
    @Column(name = "status", nullable = false, length = 20)
    private AuctionStatus status;

    @Column(name = "starts_at", nullable = false)
    private LocalDateTime startsAt;

    @Column(name = "base_ends_at", nullable = false)
    private LocalDateTime baseEndsAt;

    @Column(name = "ends_at", nullable = false)
    private LocalDateTime endsAt;

    @Column(name = "extension_duration_seconds", nullable = false)
    private Integer extensionDurationSeconds;

    @Column(name = "closed_at")
    private LocalDateTime closedAt;

    @Version
    @Column(name = "revision", nullable = false)
    private Long revision;

    @CreationTimestamp
    @Column(name = "created_at", nullable = false, updatable = false)
    private LocalDateTime createdAt;

    @UpdateTimestamp
    @Column(name = "updated_at", nullable = false)
    private LocalDateTime updatedAt;
}
