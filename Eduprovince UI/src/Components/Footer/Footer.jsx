import React from 'react';
import { FaFacebook, FaLinkedin, FaTwitter, FaInstagram,FaYoutube,FaTelegram } from 'react-icons/fa'; 
import './footer.css'; 
import { HashLink } from 'react-router-hash-link';
import { Link } from 'react-router-dom';
import logo from '../../assets/eduprovince.png'

const Footer = () => {
  return (
    <div className='footer-container'>
    <div className='contact-us'>
    <div className='contact-header'>
    <h1>Ready for Certified Credentials</h1>
    <p>Let's get started</p>
    </div>
    <a href="mailto:support@edubuk.com" target="_blank" rel="noreferrer"><button>contact us</button></a>
    </div>
    <div className='footer-box'>
    <div className='footer-content'>
    <div className='company-logo'>
    <div className='logo-box'>
    <img src={logo} alt='logo'></img>
    </div>
    <p>© 2025</p>
    </div>
    <div className='columns'>
    <ul>
      <li><HashLink to='#learnerprofile'>Learner’s Profile on Blockchain</HashLink></li>
      <li><HashLink to="#collabNSupport">Our Collaborators</HashLink></li>
      <li><HashLink to="#unSDG">UN SDG’s Compliance</HashLink></li>
      <li><Link to="/about">About Us</Link></li>
    </ul>
    </div>
    <div className='columns'>
    <ul>
      <li><HashLink to="#accProgram">Accelerator Programs</HashLink></li>
      <li><HashLink to="#awardRecog">Awards & Recognitions</HashLink></li>
      <li><HashLink to="#teamInfo">Meet Our Co-Founders</HashLink></li>
      <li><Link to="/ceta">Know more about CETA Program</Link></li>
    </ul>
    </div>
    <div className='columns'>
    <ul>
      <li><a href="https://www.edubuk.io" target='_blank' rel='noreferrer'>Visit us at: www.edubuk.io</a></li>
      <li><a href='mailto:support@edubuk.com' target='_blank' rel='noreferrer'>Reach us at: support@edubuk.com</a></li>
      <li><Link to='/verifier'>Verify Certificates</Link></li>
      <li><Link to='/finder'>Request Credential</Link></li>
    </ul>
    </div>
    <div className='office-col'>
    <ul>
      <li><strong>Our Offices : </strong></li>
      <li>Hyderabad, India</li>
      <li>Lucknow, India</li>
      <li>Dubai, UAE</li>
    </ul>
    </div>
    </div>
    <div className='columns'>
    <div className='social-icon'>
      <h2>Follow us on :</h2>
      <a href='https://t.me/edubukofficial' target='_blank' rel='noreferrer'><FaTelegram id='icon'/></a>
      <a href='https://www.facebook.com/edubuk.trst/' target='_blank' rel='noreferrer'><FaFacebook id='icon'/></a>
      <a href='https://www.instagram.com/edubuk_/' target='_blank' rel='noreferrer'><FaInstagram id='icon'/></a>
      <a href='https://www.linkedin.com/company/edubuk-ai-web3/' target='_blank' rel="noreferrer"><FaLinkedin id='icon'/></a>
      <a href='https://x.com/edubuktrust' target='_blank' rel="noreferrer"><FaTwitter id='icon'/></a>
      <a href='https://www.youtube.com/channel/UC4g4MH4F_JTbd1tqNS5pq1g/videos' target='_blank' rel="noreferrer"><FaYoutube id='icon'/></a>
    </div>
    {/* <div>
      <h2>Our Office :</h2>
      <h3>Hyderabad,Telangana</h3>
      <h3>Lucknow, Uttar Pradesh</h3>
      <h3>Dubai, UAE</h3>
    </div> */}
    </div>
    </div>
    </div>
  );
};

export default Footer;
