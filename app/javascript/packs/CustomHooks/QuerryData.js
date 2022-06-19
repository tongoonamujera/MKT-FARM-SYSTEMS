const options = (reqType, params) => {
  return {
    method: reqType,
      body: JSON.stringify(params),
        headers: {
      "Content-type": "application/json; charset=UTF-8"
    }
  }
};

const post = (url, params) => {
  return (fetch(url, options("POST", params))
    .then(res => res.json())
  );
}

const patch = (url, params) => {
  return (fetch(url, options("PATCH",params))
    .then(res => res.json())
    );
}

const get = (url) => {
  return (fetch(url)
    .then(res => res.json())
  );
}

const proccesData = (url, reqType, params) => {
  return (
    reqType === "POST" ? post(url, params)
      : reqType === ("PATCH" || "PUT") ? patch(url, params)
        : get(url)
  );
}

export default proccesData;
