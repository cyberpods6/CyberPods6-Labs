[12/2/2024 8:09 PM]
# iot-owasp
## OWASP Top 10 IoT Threats
### This is at the time of the post. Always check the OWASP site for the current list.[1][2][3]
1. **Weak, Guessable, or Hardcoded Passwords**
   - Use of easily brute-forced, publicly available, or unchangeable credentials, including backdoors in firmware or client software that grants unauthorized access to deployed systems[1](https://owasp.org/www-project-internet-of-things/).
2. **Insecure Network Services**
   - Unneeded or insecure network services running on the device itself, especially those exposed to the internet, that compromise the confidentiality, integrity, or availability of information or allow unauthorized remote control[1](https://owasp.org/www-project-internet-of-things/).
3. **Insecure Ecosystem Interfaces**
   - Insecure web, backend API, cloud, or mobile interfaces in the ecosystem outside of the device that allow compromise of the device or its related components. Common issues include a lack of authentication/authorization, weak encryption, and insufficient input/output filtering[1](https://owasp.org/www-project-internet-of-things/).
4. **Lack of Secure Update Mechanism**
   - Lack of ability to securely update the device. This includes lack of firmware validation on the device, lack of secure delivery (unencrypted in transit), lack of anti-rollback mechanisms, and lack of notifications of security changes due to updates[1](https://owasp.org/www-project-internet-of-things/).
5. **Use of Insecure or Outdated Components**
   - Use of deprecated or insecure software components/libraries that could allow the device to be compromised. This includes insecure customization of operating system platforms and the use of third-party software or hardware components from a compromised supply chain[1](https://owasp.org/www-project-internet-of-things/).
6. **Insufficient Privacy Protection**
   - User’s personal information stored on the device or in the ecosystem that is used insecurely, improperly, or without permission[1](https://owasp.org/www-project-internet-of-things/).
7. **Insecure Data Transfer and Storage**
   - Lack of encryption or access control of sensitive data anywhere within the ecosystem, including at rest, in transit, or during processing[1](https://owasp.org/www-project-internet-of-things/).
8. **Lack of Device Management**
   - Lack of security support on devices deployed in production, including asset management, update management, secure decommissioning, systems monitoring, and response capabilities[1](https://owasp.org/www-project-internet-of-things/).
9. **Insecure Default Settings**
   - Devices or systems shipped with insecure default settings or lacking the ability to make the system more secure by restricting operators from modifying configurations[1](https://owasp.org/www-project-internet-of-things/).
10. **Lack of Physical Hardening**
    - Lack of physical hardening measures, allowing potential attackers to gain sensitive information that can help in a future remote attack or take local control of the device[1](https://owasp.org/www-project-internet-of-things/).

## OWASP IoT Attack Surface Areas
1. **Device Physical Interfaces**
   - Physical ports and interfaces on the device that can be accessed to extract data or manipulate the device.
2. **Device Web Interface**
   - Web-based interfaces used to configure and manage the device, which can be vulnerable to attacks like cross-site scripting (XSS) and cross-site request forgery (CSRF).
3. **Device Firmware**
   - The software running on the device, which can be targeted for vulnerabilities such as outdated firmware, lack of secure boot, and insufficient firmware validation.
4. **Device Network Services**
   - Network services running on the device that can be exploited if they are insecure or unnecessary.
5. **Device Local Data Storage**
   - Data stored locally on the device, which can be accessed if not properly encrypted or protected.
6. **Device Cloud Interface**
   - Interfaces between the device and cloud services, which can be targeted for attacks if they lack proper authentication and encryption.
7. **Device Mobile Application**
   - Mobile apps used to interact with the device, which can be vulnerable to reverse engineering and other attacks.
8. **Device Ecosystem Interfaces**
   - Other interfaces within the device's ecosystem, such as APIs and third-party integrations, which can introduce additional vulnerabilities.
9. **Device Update Mechanism**
   - The process for updating the device's firmware or software, which can be exploited if it lacks security measures like encryption and integrity checks.
10. **Device Communication Channels**
    - Communication channels used by the device, such as Wi-Fi, Bluetooth, and Zigbee, which can be intercepted or manipulated if not properly secured[4](https://owasp.org/owasp-istg/02_framework/device_model.html)[5](https://owasp.org/www-project-internet-of-things/)[6](https://cyberlegion.io/owasp-iot-security-comprehensive-overview/).

## References
1. OWASP. (2018). OWASP IoT Top 10. Retrieved from https://owasp.org/www-project-internet-of-things/
2. Wattlecorp. (2024). OWASP IoT Top 10 Vulnerabilities. Retrieved from https://www.wattlecorp.com/owasp-iot-top-10/
3. Intertrust. (2020). OWASP’s Top 10 IoT vulnerabilities and what you can do. Retrieved from https://www.intertrust.com/blog/owasps-top-10-iot-vulnerabilities-and-what-you-can-do/
4. OWASP. (2018). OWASP IoT Top 10. Retrieved from https://owasp.org/www-project-internet-of-things/
5. Cyber Legion. (2024). OWASP IoT Security: Comprehensive Overview. Retrieved from https://cyberlegion.io/owasp-iot-security-comprehensive-overview/
6. O'Reilly. (2024). OWASP IoT attack surfaces - Practical Industrial Internet of Things. Retrieved from https://www.oreilly.com/library/view/practical-industrial-internet/9781788832687/7a50ce0a-87c1-4d9d-90d1-1f1fd3227de7.xhtml
