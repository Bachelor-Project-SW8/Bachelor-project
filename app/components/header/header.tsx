import Link from 'next/link'
import styles from './header.module.scss'

import { CategoryBar } from '../category/category'

export const Header = () => (
    <header>
        <div className={styles.header}>
            <Link className={styles.title} href="/">
                <h1>Webshop</h1>
            </Link>
            <p>Clothes and shit</p>
        </div>
        <CategoryBar />
    </header>
)