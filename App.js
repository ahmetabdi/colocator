import React from 'react';
import { StyleSheet, Text, View } from 'react-native';
import { NativeModules } from 'react-native';

export default class App extends React.Component {
  componentDidMount() {
    NativeModules.RNColocator.init("zauwuart.colocator.net:443/socket", "zauwuart")
  }

  render() {
    return (
      <View style={styles.container}>
        <Text>Open up App.js to start working on your app!</Text>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
});
