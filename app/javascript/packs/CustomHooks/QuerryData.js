const options = (reqType, params) => {
  if (reqType === "DELETE") {
    return {
      method: reqType,
        body: JSON.stringify(params),
          headers: {
        "Content-type": "application/json; charset=UTF-8"
      },
      withCredentials: true,
    }
  } else {
    return {
      method: reqType,
        body: JSON.stringify(params),
          headers: {
        "Content-type": "application/json; charset=UTF-8"
      }
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

const deleteResource = (url, params) => {
  return (fetch(url, options("DELETE",params))
    .then(res => res.json())
    );
}

// const proccesData = (url, reqType, params) => {
//   return (
//     reqType === "POST" ? post(url, params)
//       : reqType === ("PATCH" || "PUT") ? patch(url, params)
//         : reqType === "DELETE" ? Delete(url, params)
//           : get(url)
//   );
// }

const proccesData = {
  post,
  patch,
  get,
  deleteResource,
}

export default proccesData;
