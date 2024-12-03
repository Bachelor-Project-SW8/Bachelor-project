import styles from "./widget.module.scss";
import clsx from "clsx";

type WidgetProps = {
  picture: string;
  text?: string;
  className?: string;
  onClick?: () => void;
};

export function Widget({ picture, text, className, onClick }: WidgetProps) {
  return (
    <div className={clsx(styles.widgetContainer, className)} onClick={onClick}>
      <p className={clsx(text ? styles.productText : "")}>{text}</p>
      <p className={styles.seeAll}>See All</p>
      <img className={styles.widgetPicture} src={picture} />
    </div>
  );
}
