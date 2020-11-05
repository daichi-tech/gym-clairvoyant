async function chibaPrefecture() {
  const res = await fetch("https://www.land.mlit.go.jp/webland/api/CitySearch?area=12");
  const chibaCity = await res.json();
  }

chibaPrefecture();