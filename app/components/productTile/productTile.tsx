import { HeartIcon } from "lucide-react"
import styles from "./productTile.module.scss"
import clsx from "clsx"

type ProductTileProps = {
    picture: string,
    productName: string,
    price: number,
    brand: string,
    className?: string
}

export function ProductTile({ picture, productName, price, brand, className }: ProductTileProps) {

    return (
        <a className={styles.productTile}>
            <div className={clsx(styles.productTileContainer, className)}>
                <div className={styles.heartIconContainer}>
                    <HeartIcon className={styles.heartIcon} />
                </div>
                <img className={styles.productTilePicture} src={picture} />
                <div className={styles.productTileName}>{productName}</div>
                <div>{`${price} kr`}</div>
                <div className={styles.brandContainer}>
                    <div className={styles.brandTag}>{brand}</div>
                </div>
            </div>
        </a>
    )
}