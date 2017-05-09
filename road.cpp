#include "road.h"


Road::Road() {
    roadID=roadCounter;//need a counter for the amount of road classes we have so we can put proper roadID
    laneNum=2;
    direction=2;
    distance=50;
    lampCounter=0;
    crosswalkCounter=0; }
int Road::GetroadID() {
    return roadID; }
void Road::SetroadID(int val) {
    roadID = val; }
int Road::GetlaneNum() {
    return laneNum; }
void Road::SetlaneNum(int val) {
    laneNum = val; }
int Road::Getdirection() {
    return direction; }
void Road::Setdirection(int val) {
    direction = val; }
float Road::Getdistance() {
    return distance; }
void Road::Setdistance(float val) {
    distance = val; }
float Road::Getcapacity() {
    return capacity; }
void Road::Setcapacity(float val) {
    capacity = val; }
int Road::GetlampCounter() {
    return lampCounter; }
void Road::SetlampCounter(int val) {
    lampCounter = val; }
int Road::GetcrosswalkCounter() {
    return crosswalkCounter; }
void Road::SetcrosswalkCounter(int val) {
    crosswalkCounter = val; }
int Road::Getkey_x() {
    return key_x; }
void Road::Setkey_x(int val) {
    key_x = val; }
int Road::Getkey_y() {
    return key_y; }
void Road::Setkey_y(int val) {
    key_y = val; }
float Road::ComputeCapacity(float tempCapacity){
    tempCapacity=(distance*laneNum);
    tempCapacity=tempCapacity-(tempCapacity*10/100)*crosswalkCounter;
    tempCapacity=tempCapacity-(tempCapacity*10/100)*lampCounter;
    Setcapacity(tempCapacity);
    return Getcapacity(); }
bool Road::keyMatchUp(int val_x,int val_y) {
    if(val_x==key_x && val_y==key_y){
        return 1; }
        return 0; }
