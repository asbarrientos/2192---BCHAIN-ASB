import './App.css'
import { useState } from 'react'
import Prelimexam from "./components/Prelimexam";


function App() {
  const [count, setCount] = useState(0)

  return (
    <>
      <div>
        <Prelimexam/>
      </div>
      
    </>
  )
}

export default App