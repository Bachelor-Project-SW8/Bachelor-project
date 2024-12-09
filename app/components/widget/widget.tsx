import styles from "./widget.module.scss";
import clsx from "clsx";

type WidgetProps = {
  picture: string;
  text?: string;
  className?: string;
  seeAll?: string,
  onClick?: () => void;
};

export function Widget({ picture, text, seeAll, className, onClick }: WidgetProps) {
  return (
    <div className={clsx(styles.widgetContainer, className)} onClick={onClick}>
      <p className={clsx(text ? styles.productText : "")}>{text}</p>
      <p className={seeAll && styles.seeAll}>{seeAll}</p>
      <img className={styles.widgetPicture} src={picture} alt={`${text} widget image`} />
    </div>
  );
}
