# [CA Software Architecture] Case Study AutoCab - Self Drive Taxi Company

## Questions

Case Study A: AutoCab - A self Drive Taxi Company

### 1) 4 Qualities attributes and Justifications

1) 4 Qualities attributes and Justifications :
The current standard for software quality characteristics is [ISO/IEC 25010:2011](https://www.iso.org/standard/35733.html).
Although that standard have 8 software quality characteristics, only 3 seems to be of interest : *Reliability, Security, and Maintainability*. From this and the requirements, we can infer 4 quality attributes :

* [**Availability**](https://en.wikipedia.org/wiki/Availability): Since the *AutoCab* is expected to be up `24/7`, then the probability that the system is working at any moment must be close to 1. Thus, the amount of time is the system is uptime should be far greater than the downtime time.
* **Reliability**: Due to the complexity of self-driving car technology, and the amount of expected user the system must handle, it is not crazy to say that the system will inevitably be down or fails. In that case, what matter is whether or not the system is able to recover, and how fast it does (which nicely tie back to availability attributes). Additionally, this software quality characteristic/attribute is essential since in case of failure, the company car may cause materials and human losses. Therefore, the ability of the system to operate normally despite hardware and software issues is paramount.
* **Testability**: A few years ago *Test Driven Development (TDD)* have taken the world by storm. With this development method every piece of the system is tested thoroughly. Since a self-driving car failure may be fatal to the customer, thus, before the system hit the market, all bugs and errors must be detected in advance so that they can be fixed in house. Therefore, to keep the customer trust and avoid nasty lawsuit, the system must go through an intense battery of test before going to production. As such, the system components should be easy to test.
* **Maintainability**: The system should be easy to maintain, to correct defects or to change in the future. This aspect is essential since this quality make correcting bugs found in developement and in production easy and quick to correct, which will increase customer satisfaction. Furthermore, a maintainable system seamlessly allow addition of new features, thus facilitating the rapid growth of the system.
* **Security**: As transaction need to be secure and audited, the system must provide a high [integrity](https://syndicode.com/blog/12-software-architecture-quality-attributes/) level so as to prevent unauthorized access to the system or its data.


### 2) Rank Autocab's quality attributes from the users perspective

From Software Architecture class by Dams. Gabriel, for Customer perspective `Usability > Security`. Ergo, we have the following ranking :

1. **Availability** : client want to order a ride at any moment.
1. **Reliability** : client want to reach destination safely whatever the obstacle.
1. **Maintainability** : client appreciate that there bugs report is swiftly solved.
1. **Security** : client want their data to be secure and the system to be safe.


### 3) Architecture Type to recomment for implementing the above system


### 4) Context Diagram


### 5) Component Diagram (Ball and Socket/Lollipop variation)


### 6) From ball and socket to denpencies variation notation


## References

