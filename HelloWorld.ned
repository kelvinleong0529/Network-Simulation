//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

package helloworld;

//
// TODO auto-generated type
//
network HelloWorld
{
    @display("bgb=293,147");
    types:
        simple My_Node
        {
            gates:
                input in;
                output out;
        }

    submodules:
        Host1: My_Node;
        Host2: My_Node {
            @display("p=199,54");
        }
    connections:
        Host1.out --> Host2.in;
        Host2.out --> Host1.in;
}
