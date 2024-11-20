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
                <img className={styles.productTilePicture} src={picture} />
                <div></div>
                <div className={styles.productTileName}>{productName}</div>
                <div>{price}</div>
                <div>{brand}</div>
            </div>
        </a>
    )
}