import React from "react";
import WordAnimation from "../Animation/Animation";
import styles from "./Loading.module.css"

const Loading = () => {
  return (
    <div className={styles.loading}>
      <div className={styles.loadingspinner}>
        Loading<
          WordAnimation text={[".........", "........."]}
          tspeed={60}
          dspeed={90}
        />
      </div>
    </div>
  )
}

export default Loading;