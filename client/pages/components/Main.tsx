import Link from "next/link";

import styles from "./Main.module.css";
import { Helmet } from "react-helmet";

function Main(): JSX.Element {
    const handleClick = async () => {
        try {
            const response = await fetch('http://localhost:4000/ping');

            if (!response.ok) throw new Error(`Error ${response.status}`);

            const data = await response.text();
            return data;

        } catch (error: unknown | any) {
            console.log(error);
        }
    }

    async function DataClicker() {
        handleClick().then(alert)
    }

    return (
        <>
        <Helmet title="Logr • Main" defer={false} />
            <div className={styles.main}>
                <div className={styles.boxContainer}>
                    <div className={styles.box}>
                        <div className={styles.boxLogo}></div>
                        <div>
                            <h1 className={styles.boxText}>Ready to change the world?<br />
                                its just one click away ...
                            </h1>
                            <button className={styles.boxButton} onClick={DataClicker}>Click!</button>
                        </div>
                    </div>
                </div>
            </div>
        </>
    );
}

export default Main;
