import styles from "./widget.module.scss"
import clsx from "clsx"

type WidgetProps = {
    picture: string,
    text: string,
    className?: string
}

export function Widget({ picture, text, className }: WidgetProps) {
    return (
        <div className={clsx(styles.widgetContainer, className)}>
            <p className={styles.productText}>{text}</p>
            <p className={styles.seeAll}>See All</p>
            <img className={styles.widgetPicture} src={picture} />
        </div>
    )
}