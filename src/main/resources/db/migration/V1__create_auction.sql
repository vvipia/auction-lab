
-- 1. 회원 및 공연 참조 테이블 (실습용)
CREATE TABLE member (
                        member_id BIGINT NOT NULL PRIMARY KEY
);

CREATE TABLE performance (
                             performance_id BIGINT NOT NULL PRIMARY KEY
);

-- 2. 경매 테이블
CREATE TABLE auction (
                         auction_id BIGINT NOT NULL AUTO_INCREMENT,
                         seller_member_id BIGINT NOT NULL,
                         performance_id BIGINT NULL,

                         title VARCHAR(200) NOT NULL,
                         item_name VARCHAR(200) NOT NULL,
                         item_description TEXT NOT NULL,

                         starting_price_amount BIGINT NOT NULL,
                         minimum_increment_amount BIGINT NOT NULL,

                         access_policy VARCHAR(30) NOT NULL,
                         required_performance_id BIGINT NULL,

                         status VARCHAR(20) NOT NULL,

                         starts_at DATETIME(6) NOT NULL,
                         base_ends_at DATETIME(6) NOT NULL,
                         ends_at DATETIME(6) NOT NULL,
                         extension_duration_seconds INT NOT NULL,
                         closed_at DATETIME(6) NULL,

                         revision BIGINT NOT NULL DEFAULT 0,

                         created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
                         updated_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
        ON UPDATE CURRENT_TIMESTAMP(6),

                         PRIMARY KEY (auction_id),

                         CONSTRAINT fk_auction_seller
                             FOREIGN KEY (seller_member_id)
                                 REFERENCES member(member_id),

                         CONSTRAINT fk_auction_performance
                             FOREIGN KEY (performance_id)
                                 REFERENCES performance(performance_id),

                         CONSTRAINT fk_auction_required_performance
                             FOREIGN KEY (required_performance_id)
                                 REFERENCES performance(performance_id),

                         CONSTRAINT chk_auction_prices
                             CHECK (
                                 starting_price_amount > 0
                                     AND minimum_increment_amount > 0
                                 ),

                         CONSTRAINT chk_auction_times
                             CHECK (
                                 base_ends_at > starts_at
                                     AND ends_at >= base_ends_at
                                 ),

                         CONSTRAINT chk_auction_extension
                             CHECK (extension_duration_seconds > 0)
);
