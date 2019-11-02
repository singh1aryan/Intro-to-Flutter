Widget widget() {
  return Slider(
    value: overall,
    onChanged: (value) {
      setState(() {}); // set the state here
    },
    label: 'Whatever the label is',
    divisions: 30, // total partitions
    min: 1.0, // minimum
    max: 5.0, // maxmimum
  )
}

// creates a slider with values
// Useful in Q/A, feedback, payment etc
// Can be used as a child in Center, Container etc.

