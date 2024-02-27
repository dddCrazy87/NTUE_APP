import React from "react";
import { StyleSheet, Text, View } from "react-native";

const Header = () => {
  return (
      <View style={styles.headerStyle}>
        <Text style={styles.textStyle}>法老 歌曲精選</Text>
      </View>
  );
};

const styles = StyleSheet.create({
  headerStyle: {
    backgroundColor: "#7e9ecf",
    justifyContent: "center",
    alignItems: "center",
    height: 60,
    shadowColor: "#000",
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.2,
  },
  textStyle: {
    fontSize: 20,
    fontWeight: 'bold'
  },
});

export default Header;