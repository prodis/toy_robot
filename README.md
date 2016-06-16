# Toy Robot Simulator
A simulation of a toy robot moving on a square tabletop.

For more details, see toy_robot.md.

## Dependencies
* Ruby 2.3.1

## Setup
```
git clone
cd toy_robot
bundle install
```

## Running
`ruby main.rb [commands.txt]`

Inside `data` directory there are some test case files.

Example:
```
$ ruby main.rb data/test_case3.txt
Output: 3,3,NORTH
```
Note that at the end of each input file in `data` directory is the expected result. I did it in order to a easy understanding.

Really this "invalid commands" at the end of the input files are ignored by the simulator.

## Testing
`bundle exec rspec`
