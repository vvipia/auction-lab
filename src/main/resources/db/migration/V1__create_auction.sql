CREATE TABLE auction (
                         id BIGINT NOT NULL AUTO_INCREMENT,
                         seller_id BIGINT NOT NULL,
                         title VARCHAR(200) NOT NULL,
                         description TEXT,

                         start_price BIGINT NOT NULL,
                         min_increment BIGINT NOT NULL,

                         starts_at DATETIME(6) NOT NULL,
                         ends_at DATETIME(6) NOT NULL,

                         status VARCHAR(20) NOT NULL,
                         version BIGINT NOT NULL DEFAULT 0,

                         PRIMARY KEY (id),

                         CONSTRAINT chk_auction_price
                             CHECK (start_price > 0 AND min_increment > 0),

                         CONSTRAINT chk_auction_time
                             CHECK (ends_at > starts_at)
);
