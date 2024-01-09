// Abigail Barrientos

import React from "react"

// function ChildComponent(props) {
//     return (
//         <div>
//             <p>{props.message}</p>
//         </div>
//     );
// }

//class
class ChildComponent extends React.Component {
    render() {
        return(
            <div>
                <p>{this.props.message}</p>
            </div>
        )
    }
}

export default ChildComponent;