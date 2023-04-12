import React from 'react';

const SearchForm = () => {
  const baseURL = "http://localhost:3000";
  const [priceRange, setPriceRange] = useState('');
  const [starRating, setStarRating] = useState('');
  const [capacity, setCapacity] = useState('');
  const [amenities, setAmenities] = useState([]);
  const [view, setView] = useState('');
  const [hotelName, setHotelName] = useState('');
  const [hotelChain, setHotelChain] = useState('');

  const handlePriceRangeChange = (e) => {
    setPriceRange(e.target.value);
  };

  const handleStarRatingChange = (e) => {
    setStarRating(e.target.value);
  };

  const handleCapacityChange = (e) => {
    setCapacity(e.target.value);
  };

  const handleAmenitiesChange = (e) => {
    const value = e.target.value;
    const index = amenities.indexOf(value);

    if (index === -1) {
      setAmenities([...amenities, value]);
    } else {
      setAmenities([...amenities.slice(0, index), ...amenities.slice(index + 1)]);
    }
  };

  const handleViewChange = (e) => {
    setView(e.target.value);
  };

  const handleHotelNameChange = (e) => {
    setHotelName(e.target.value);
  };

  const handleHotelChainChange = (e) => {
    setHotelChain(e.target.value);
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    
    // display results on submit
  };

  return (
    <form onSubmit={handleSubmit}>
      <fieldset>
        <legend>Search criteria:</legend>

        <div>
          <label htmlFor="priceRange">Price range:</label>
          <select id="priceRange" name="priceRange" value={priceRange} onChange={handlePriceRangeChange}>
            <option value="100">$50 - $100</option>
            <option value="150">$100 - $150</option>
            <option value="200">$150 - $200</option>
            <option value="250">$200 - $250</option>
            <option value="300">$250 - $300</option>
            <option value="350">$300 - $350</option>
            <option value="400">$350 - $400</option>
            <option value="450">$400 - $450</option>
            <option value="500">$450 - $500</option>
          </select>
        </div>

        <div>
          <label htmlFor="starRating">Star rating:</label>
          <select id="starRating" name="starRating" value={starRating} onChange={handleStarRatingChange}>
            <option value="1">1 star</option>
            <option value="2">2 stars</option>
            <option value="3">3 stars</option>
            <option value="4">4 stars</option>
            <option value="5">5 stars</option>
          </select>
        </div>

        <div>
          <label htmlFor="capacity">Capacity:</label>
          <select id="capacity" name="capacity" value={capacity} onChange={handleCapacityChange}>
          <option value="1">1 person</option>
          <option value="2">2 people</option>
          <option value="3">3 people</option>
          <option value="4">4 people</option>
          <option value="5">5 people</option>
          </select>
        </div>

        <div>
        <p>Amenities:</p>
        <label>
          <input type="checkbox" name="amenities" value="Free wi-fi" checked={amenities.includes("Free wi-fi")} onChange={handleAmenitiesChange} />
          Free wi-fi
        </label>
        <label>
          <input type="checkbox" name="amenities" value="TV" checked={amenities.includes("TV")} onChange={handleAmenitiesChange} />
          TV
        </label>
        <label>
          <input type="checkbox" name="amenities" value="Mini-bar" checked={amenities.includes("Mini-bar")} onChange={handleAmenitiesChange} />
          Mini-bar
        </label>
        <label>
          <input type="checkbox" name="amenities" value="Room service" checked={amenities.includes("Room service")} onChange={handleAmenitiesChange} />
          Room service
        </label>
        <label>
          <input type="checkbox" name="amenities" value="Balcony" checked={amenities.includes("Balcony")} onChange={handleAmenitiesChange} />
          Balcony
        </label>
        <label>
          <input type="checkbox" name="amenities" value="Jacuzzi" checked={amenities.includes("Jacuzzi")} onChange={handleAmenitiesChange} />
          Jacuzzi
        </label>
        </div>

        <div>
          <label htmlFor="view">View:</label>
            <select id="view" name="view" value={view} onChange={handleViewChange}>
             <option value="Front view">Front view</option>
             <option value="City view">City view</option>
             <option value="No view">No view</option>
            </select>
        </div>

        <div>
          <label htmlFor="hotelName">Hotel Name:</label>
          <input type="text" id="hotelName" name="hotelName" value={hotelName} onChange={handleHotelNameChange} />
        </div>

        <div>
          <label htmlFor="city">City:</label>
          <select id="city" name="city" value={city} onChange={handleCityChange}>
            <option value="New York">New York</option>
            <option value="Newark">Newark</option>
            <option value="Trenton">Trenton</option>
            <option value="Jersey City">Jersey City</option>
            <option value="San Francisco">San Francisco</option>
            <option value="Huntington Beach">Huntington Beach</option>
            <option value="Los Angeles">Los Angeles</option>
          </select>
        </div>

        <div>
          <label htmlFor="hotelChain">Hotel Chain:</label>
          <select id="hotelChain" name="hotelChain" value={hotelChain} onChange={handleHotelChainChange}>
            <option value="1">Hotel Chain 1</option>
            <option value="2">Hotel Chain 2</option>
            <option value="3">Hotel Chain 3</option>
            <option value="4">Hotel Chain 4</option>
            <option value="5">Hotel Chain 5</option>
          </select>
        </div>

      </fieldset>
    </form>
  );
};

export default SearchForm