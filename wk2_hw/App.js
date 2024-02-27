import React from "react";
import { StyleSheet, StatusBar, SafeAreaView } from "react-native";
import Header from "./src/components/Header.js";
import AlbumList from "./src/components/AlbumList.js";

const App = () => {
  return (
    <SafeAreaView style={styles.container}>
      <StatusBar />
      <Header />
      <AlbumList />
    </SafeAreaView>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "#759AAB"
  },
});

export default App;