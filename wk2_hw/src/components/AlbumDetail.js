import React from "react";
import { StyleSheet, View, Text, Image, TouchableOpacity, Linking } from "react-native";

const AlbumDetail = (props) => {
  const { thumbnail_image, title, artist, image, url } = props.album;
  const handleImagePress = () => { Linking.openURL(url); };
  
  return (
    <View style={styles.cardContainerStyle}>
      <View style={[styles.thumbnailContainerStyle, styles.cardSectionStyle]}>
        <Image
          style={styles.thumbnailStyle}
          source={{
            uri: thumbnail_image
          }}
        />
        <View style={styles.headerContentStyle}>
          <Text style={styles.headerTitle}>{title}</Text>
          <Text>{artist}</Text>
        </View>
      </View>
      <View style={styles.cardSectionStyle}>
        <TouchableOpacity onPress={handleImagePress}>
            <Image
            style={styles.imageStyle}
            source={{
                uri: image
            }}
            />
        </TouchableOpacity>
      </View>
    </View>
  );
}

const styles = StyleSheet.create({
  thumbnailContainerStyle: {
    flexDirection: "row",
    justifyContent: "flex-start",
  },
  thumbnailStyle: {
    height: 50,
    width: 50,
    margin: 5
  },
  headerContentStyle: {
    flexDirection: "column",
    justifyContent: "space-around",
    paddingLeft: 10
  },
  headerTitle: {
    fontWeight: 'bold',
    fontSize: 18
  },
  cardContainerStyle: {
    borderWidth: 1,
    borderRadius: 2,
    borderColor: "#ddd",
    shadowColor: "#000",
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.1,
    shadowRadius: 2,
    elevation: 1,
    marginLeft: 5,
    marginRight: 5,
    marginTop: 10
  },
  cardSectionStyle: {
    padding: 5,
    backgroundColor: "#FAF2A1",
    borderColor: "#ddd",
    borderBottomWidth: 1
  },
  imageStyle: {
    height: 300,
    width: null
  }
});

export default AlbumDetail;