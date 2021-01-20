/*
 * HelloWorld.cc
 *
 *  Created on: 20 Jan 2021
 *      Author: Kelvin
 */



#include <omnetpp.h>
using namespace omnetpp;

class My_Node: public cSimpleModule
{
protected:
    void initialize() override;
    void handleMessage(cMessage *msg) override;
};

Define_Module(My_Node);

void My_Node::initialize()
{
if(strcmp("Host2",getName()) ==0)
{
    cMessage *msg = new cMessage ("hello world!");
    send(msg,"out");
}
}

void My_Node::handleMessage(cMessage *msg)
{
    send(msg,"out");
}
