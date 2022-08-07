import { NextPage } from "next";
import React, { useEffect, useState } from "react";
import Link from "next/link";

import styles from "./info.module.css";
import Helmet from "react-helmet";

function Info(): JSX.Element {
    return (
        <>
            <Helmet title="Logr • Info" defer={false} />
            <div className={styles.main}>
                <div className={styles.boxContainer}>
                    <div className={styles.box}>
                        <div className={styles.boxText}>
                            
                            <h2>Is this save?</h2>
                            <p>Yes</p>

                            <hr></hr>

                            <h2>How?</h2>
                            <p>Yes</p>

                            <hr></hr>

                            <h2>Is this nice?</h2>
                            <p>Yes</p>
                        </div>
                    </div>
                </div>
            </div>
        </>
    );
}

export default Info;
