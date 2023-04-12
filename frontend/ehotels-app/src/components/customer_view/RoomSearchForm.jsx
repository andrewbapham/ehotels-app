import { React, useState } from "react";

function RoomSearchForm(props) {
  const baseURL = "http://localhost:3000";
  const cities = [
    "Seattle",
    "Miami",
    "San Francisco",
    "Los Angeles",
    "Chicago",
    "New York",
    "Houston",
    "Portland",
    "San Diego",
    "Phoenix",
    "Dallas",
    "Milwaukee",
    "Madison",
    "Austin",
  ];

  //Use state passed from parent component
  let searchParams = props.searchParams;
  let setSearchParams = props.setSearchParams;

  const handleInputChange = (e) => {
    const target = e.target;
    const value = target.value;
    const name = target.name;

    if (name === "priceRange") {
      if (value === "any") {
        setSearchParams({
          ...searchParams,
          priceLessThan: 1000,
          priceGreaterThan: 0,
          priceAny: true,
        });
      } else {
        const val = parseInt(value);
        setSearchParams({
          ...searchParams,
          priceLessThan: val,
          priceGreaterThan: val - 50,
          priceAny: false,
        });
      }
    } else if (name === "amenities") {
      //Get index of new amenity to be added to search list, if it doesn't exist, then its index will be -1
      const index = searchParams.amenities
        ? searchParams.amenities.indexOf(value)
        : -1;

      //Add new amenity to list
      if (index === -1) {
        //Get current amenity list, or empty list if it doesn't exist yet
        let amenities = searchParams.amenities || [];
        amenities.push(value);
        //Add new amenity list to search params
        setSearchParams({
          ...searchParams,
          ["amenities"]: amenities,
        });
      } else {
        // This means amenity exists in list and is being unchecked, so remove it from list
        // Get current amenity list
        let currentAmenities = searchParams.amenities || [];
        // Remove the unchecked amenity from the list
        let updatedAmenities = currentAmenities
          .slice(0, index)
          .concat(currentAmenities.slice(index + 1));
        // Update search params with new amenity list
        setSearchParams({ ...searchParams, ["amenities"]: updatedAmenities });
      }
    } else if (name === "startDate" || name === "endDate") {
      if (!searchParams.dateRange) {
        setSearchParams({ ...searchParams, ["dateRange"]: { [name]: value } });
      } else {
        console.log({ ...searchParams });
        setSearchParams({
          ...searchParams,
          dateRange: { ...searchParams.dateRange, [name]: value },
        });
      }
    } else {
      setSearchParams({ ...searchParams, [name]: value });
    }
  };

  const handleSubmit = (e) => {
    e.preventDefault();
  };

  return (
    <form onSubmit={handleSubmit}>
      <fieldset>
        <legend>Search criteria:</legend>

        <div>
          <label htmlFor="priceRange">Price range:</label>
          <select
            id="priceRange"
            name="priceRange"
            value={searchParams.priceAny ? "any" : searchParams.priceLessThan}
            onChange={handleInputChange}
          >
            <option value="100">$50 - $100</option>
            <option value="150">$100 - $150</option>
            <option value="200">$150 - $200</option>
            <option value="250">$200 - $250</option>
            <option value="300">$250 - $300</option>
            <option value="350">$300 - $350</option>
            <option value="400">$350 - $400</option>
            <option value="450">$400 - $450</option>
            <option value="500">$450 - $500</option>
            <option value="any">Any</option>
          </select>
        </div>

        <div>
          <label htmlFor="starRating">Star rating:</label>
          <select
            id="search-stars"
            name="stars"
            value={searchParams.stars || 3}
            onChange={handleInputChange}
          >
            <option value="1">1 star</option>
            <option value="2">2 stars</option>
            <option value="3" defaultChecked>
              3 stars
            </option>
            <option value="4">4 stars</option>
            <option value="5">5 stars</option>
            <option value="any">Any</option>
          </select>
        </div>

        <div>
          <label htmlFor="capacity">Capacity:</label>
          <select
            id="capacity"
            name="capacity"
            value={searchParams.capacity || 3}
            onChange={handleInputChange}
          >
            <option value="1">1 person</option>
            <option value="2">2 people</option>
            <option value="3">3 people</option>
            <option value="4">4 people</option>
            <option value="5">5 people</option>
            <option value="any">Any</option>
          </select>
        </div>

        <div>
          <p>Amenities:</p>
          <label>
            <input
              type="checkbox"
              name="amenities"
              value="Free wi-fi"
              checked={
                searchParams.amenities &&
                searchParams.amenities.includes("Free wi-fi")
              }
              onChange={handleInputChange}
            />
            Free wi-fi
          </label>
          <label>
            <input
              type="checkbox"
              name="amenities"
              value="TV"
              checked={
                searchParams.amenities && searchParams.amenities.includes("TV")
              }
              onChange={handleInputChange}
            />
            TV
          </label>
          <label>
            <input
              type="checkbox"
              name="amenities"
              value="Mini-bar"
              checked={
                searchParams.amenities &&
                searchParams.amenities.includes("Mini-bar")
              }
              onChange={handleInputChange}
            />
            Mini-bar
          </label>
          <label>
            <input
              type="checkbox"
              name="amenities"
              value="Room service"
              checked={
                searchParams.amenities &&
                searchParams.amenities.includes("Room service")
              }
              onChange={handleInputChange}
            />
            Room service
          </label>
          <label>
            <input
              type="checkbox"
              name="amenities"
              value="Balcony"
              checked={
                searchParams.amenities &&
                searchParams.amenities.includes("Balcony")
              }
              onChange={handleInputChange}
            />
            Balcony
          </label>
          <label>
            <input
              type="checkbox"
              name="amenities"
              value="Jacuzzi"
              checked={
                searchParams.amenities &&
                searchParams.amenities.includes("Jacuzzi")
              }
              onChange={handleInputChange}
            />
            Jacuzzi
          </label>
        </div>

        <div>
          <label htmlFor="view">View:</label>
          <select
            id="view"
            name="view"
            value={searchParams.view || "Front view"}
            onChange={handleInputChange}
          >
            <option value="'Front view'">Front view</option>
            <option value="'City view'">City view</option>
            <option value="'No view'">No view</option>
            <option value="any">Any</option>
          </select>
        </div>

        <div>
          <label htmlFor="city">City:</label>
          <select
            id="city"
            name="city"
            value={searchParams.city}
            onChange={handleInputChange}
          >
            {/*Added '' for easy querying on backend */}
            {cities.map((city) => (
              <option value={`'${city}'`} key={city}>
                {city}
              </option>
            ))}
            {/* <option value="'New York'">New York</option>
            <option value="'Newark'">Newark</option>
            <option value="'Trenton'">Trenton</option>
            <option value="'Jersey City'">Jersey City</option>
            <option value="'San Francisco'">San Francisco</option>
            <option value="'Huntington Beach'">Huntington Beach</option>
            <option value="'Los Angeles'">Los Angeles</option> */}
            <option value="any">Any</option>
          </select>
        </div>

        <div>
          <label htmlFor="hotelChain">Hotel Chain:</label>
          <select
            id="hotelChain"
            name="chain"
            value={searchParams.chain}
            onChange={handleInputChange}
          >
            <option value="1">Hotel Chain Inc.</option>
            <option value="2">Hotels-R-Us</option>
            <option value="3">Midwest Hotels</option>
            <option value="4">Sunrise Hotels</option>
            <option value="5">Luxury Hotels</option>
            <option value="any">Any</option>
          </select>
        </div>

        <div>
          <label htmlFor="startDate">Start Date:</label>
          <input
            type="date"
            id="startDate"
            name="startDate"
            value={
              (searchParams.dateRange && searchParams.dateRange.startDate) || ""
            }
            onChange={handleInputChange}
          />
          <label htmlFor="endDate">End Date:</label>
          <input
            type="date"
            id="endDate"
            name="endDate"
            value={
              (searchParams.dateRange && searchParams.dateRange.endDate) || ""
            }
            onChange={handleInputChange}
          />
        </div>
        <div>
          <label htmlFor="numRoomsInHotel">
            Number of available rooms in hotel (greater than)
          </label>
          <input
            type="number"
            id="numRoomsInHotel"
            name="numRoomsInHotel"
            value={searchParams.numRoomsInHotel || 0}
            onChange={handleInputChange}
          />
        </div>
      </fieldset>
    </form>
  );
}

export default RoomSearchForm;
