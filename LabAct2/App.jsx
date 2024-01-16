import { useState } from 'react'
import './App.css'
import ToDoList from "./components/TodoList";
import MovieList from "./components/MovieList";
import BookList from "./components/BookList";

function App() {

  return (
    <>
      <div>
        <h1>Abigail Barrientos</h1>
        <ToDoList/>
        <MovieList/>
        <BookList/>
      </div>
      
    </>
  )
}

export default App

