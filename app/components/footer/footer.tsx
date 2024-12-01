import React from "react";
import styles from './footer.module.scss'
import clsx from "clsx";
import { Facebook, Instagram, Youtube } from "lucide-react";

type FooterProps = {
    className?: string,
}

export function Footer({ className }: FooterProps) {

    return (
        <div className={clsx(styles.footer, className)}>
            <div className={clsx(styles.footerContainer, styles.footerPadding)}>
                <div className={styles.footerLinks}>
                    <div className={clsx(styles.footerLinksDiv, styles.socialMedia)}>
                        <h4>SOCIALS</h4>
                        <a href="">
                            <Instagram />
                            <p>INSTAGRAM</p>
                        </a>
                        <a href="">
                            <Youtube />
                            <p>YOUTUBE</p>
                        </a>
                        <a href="">
                            <Facebook />
                            <p>FACEBOOK</p>
                        </a>
                    </div>
                    <div className={styles.footerLinksDiv}>
                        <h4>CATEGORIES</h4>
                        <a href="">
                            <p>New Arrivals</p>
                        </a>
                        <a href="">
                            <p>Jewelry & Watches</p>
                        </a>
                        <a href="">
                            <p>Suit Accessories</p>
                        </a>
                        <a href="">
                            <p>Bags & Wallets</p>
                        </a>
                        <a href="">
                            <p>Apparel & Underwear</p>
                        </a>
                        <a href="">
                            <p>Eyewear</p>
                        </a>
                        <a href="">
                            <p>Personal Care</p>
                        </a>
                        <a href="">
                            <p>Gift Guide</p>
                        </a>
                    </div>
                    <div className={styles.footerLinksDiv}>
                        <h4>CUSTOMER SUPPORT</h4>
                        <a href="">
                            <p>FAQs</p>
                        </a>
                        <a href="">
                            <p>Gift Guide</p>
                        </a>
                        <a href="">
                            <p>Create a Return</p>
                        </a>
                        <a href="">
                            <p>See shipping options</p>
                        </a>
                        <a href="">
                            <p>Contact Us</p>
                        </a>
                    </div>
                    <div className={styles.footerLinksDiv}>
                        <h4>ABOUT US</h4>
                        <a href="">
                            <p>About us</p>
                        </a>
                        <a href="">
                            <p>Careers</p>
                        </a>
                        <a href="">
                            <p>New Articles</p>
                        </a>
                        <a href="">
                            <p>Press</p>
                        </a>
                        <a href="">
                            <p>CSR</p>
                        </a>
                    </div>
                </div>

                <hr></hr>

                <div className={styles.footerBelow}>
                    <div className={styles.footerCopyright}>
                        <p>
                            @{new Date().getFullYear()} SW8. All rights reserved.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    )
}