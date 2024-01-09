// Abigail Barrientos

import React from "react"
import ChildComponent from "./ChildComponent";

// function ParentComponent() {
//     const dataToPass = "Hello from parent!";
//     return (
//         <ChildComponent message={dataToPass} />
//     );
// }


class ParentComponent extends React.Component {
    render() {
        const dataToPass = "Hello from parent!";
        return(
            <div>
                <ChildComponent message={dataToPass} />
            </div>
        )
    }
}
export default ParentComponent;