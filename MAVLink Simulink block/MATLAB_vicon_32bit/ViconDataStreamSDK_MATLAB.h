///////////////////////////////////////////////////////////////////////////////
//
// Copyright (C) OMG Plc 2008.
// All rights reserved.  This software is protected by copyright
// law and international treaties.  No part of this software / document
// may be reproduced or distributed in any form or by any means,
// whether transiently or incidentally to some other use of this software,
// without the written permission of the copyright owner.
//
///////////////////////////////////////////////////////////////////////////////
//
// Real Time Client Stream API Header file.
// Version 1.1.0
// 
///////////////////////////////////////////////////////////////////////////////
// Exported DLL functions listed below:
///////////////////////////////////////////////////////////////////////////////

extern "C" __declspec(dllexport)
unsigned int ConstructInstance_v2();

extern "C" __declspec(dllexport)
void DestroyInstance_v2( unsigned int i_InstanceID );

extern "C" __declspec(dllexport)
void GetVersion_v2( unsigned int   i_InstanceID, 
                    unsigned int & o_rMajor, 
                    unsigned int & o_rMinor, 
                    unsigned int & o_rPoint );

extern "C" __declspec(dllexport) 
void Connect_v2( unsigned int   i_InstanceID, 
                 const char   * i_pHostname, 
                 unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
void ConnectToMulticast_v2( unsigned int   i_InstanceID, 
                            const char   * i_pHostname, 
                            const char   * i_pMulticastIP, 
                            unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
void Disconnect_v2( unsigned int   i_InstanceID, 
                    unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
bool IsConnected_v2( unsigned int i_InstanceID );

extern "C" __declspec(dllexport) 
void StartTransmittingMulticast_v2( unsigned int   i_InstanceID,
                                    const char   * i_pServerIP,
                                    const char   * i_pMulticastIP,
                                    unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
void StopTransmittingMulticast_v2( unsigned int   i_InstanceID,
                                   unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
void EnableSegmentData_v2( unsigned int   i_InstanceID, 
                           unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
void EnableMarkerData_v2( unsigned int   i_InstanceID, 
                          unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
void EnableUnlabeledMarkerData_v2( unsigned int   i_InstanceID, 
                                   unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
void EnableDeviceData_v2( unsigned int   i_InstanceID, 
                          unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
void DisableSegmentData_v2( unsigned int   i_InstanceID, 
                            unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
void DisableMarkerData_v2( unsigned int   i_InstanceID, 
                           unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
void DisableUnlabeledMarkerData_v2( unsigned int   i_InstanceID, 
                                    unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
void DisableDeviceData_v2( unsigned int   i_InstanceID, 
                           unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
bool IsSegmentDataEnabled_v2( unsigned int i_InstanceID );

extern "C" __declspec(dllexport) 
bool IsMarkerDataEnabled_v2( unsigned int i_InstanceID );

extern "C" __declspec(dllexport) 
bool IsUnlabeledMarkerDataEnabled_v2( unsigned int i_InstanceID );

extern "C" __declspec(dllexport) 
bool IsDeviceDataEnabled_v2( unsigned int i_InstanceID );

extern "C" __declspec(dllexport) 
void SetStreamMode_v2( unsigned int   i_InstanceID, 
                       unsigned int   i_Mode, 
                       unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
void SetAxisMapping_v2( unsigned int   i_InstanceID, 
                        unsigned int   i_XAxis, 
                        unsigned int   i_YAxis, 
                        unsigned int   i_ZAxis, 
                        unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
void GetAxisMapping_v2( unsigned int   i_InstanceID, 
                        unsigned int & o_rXAxis, 
                        unsigned int & o_rYAxis, 
                        unsigned int & o_rZAxis );

extern "C" __declspec(dllexport) 
void GetFrame_v2( unsigned int   i_InstanceID, 
                  unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
void GetFrameNumber_v2( unsigned int   i_InstanceID, 
                        unsigned int & o_rFrameNumber, 
                        unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
void GetTimecode_v2( unsigned int i_InstanceID, 
                     unsigned int & o_rHours, 
                     unsigned int & o_rMinutes, 
                     unsigned int & o_rSeconds, 
                     unsigned int & o_rFrames, 
                     unsigned int & o_rSubFrame, 
                     unsigned int & o_rFieldFlag,
                     unsigned int & o_rpStandard, 
                     unsigned int & o_rSubFramesPerFrame, 
                     unsigned int & o_rUserBits, 
                     unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
void GetLatencySampleCount_v2( unsigned int   i_InstanceID, 
                               unsigned int & o_rCount, 
                               unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
const char * GetLatencySampleName_v2( unsigned int   i_InstanceID, 
                                      unsigned int   i_OneBasedLatencySampleIndex, 
                                      unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
void GetLatencySampleValue_v2( unsigned int   i_InstanceID, 
                               const char   * i_pLatencySampleName,
                               double       & o_rLatency,
                               unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
void GetLatencyTotal_v2( unsigned int   i_InstanceID, 
                         double       & o_rLatency,
                         unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
void GetSubjectCount_v2( unsigned int   i_InstanceID, 
                         unsigned int & o_rSubjectCount, 
                         unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
const char* GetSubjectName_v2( unsigned int   i_InstanceID, 
                               unsigned int   i_OneBasedSubjectIndex, 
                               unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
const char* GetSubjectRootSegmentName_v2( unsigned int   i_InstanceID, 
                                          const char   * i_pSubjectName, 
                                          unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
void GetSegmentCount_v2( unsigned int   i_InstanceID, 
                         const char   * i_pSubjectName, 
                         unsigned int & o_rSegmentCount, 
                         unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
const char* GetSegmentName_v2( unsigned int   i_InstanceID, 
                               const char   * i_pSubjectName, 
                               unsigned int   i_OneBasedSegmentIndex, 
                               unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
const char* GetSegmentParentName_v2( unsigned int   i_InstanceID, 
                                     const char   * i_pSubjectName, 
                                     const char   * i_pSegmentName, 
                                     unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
void GetSegmentChildCount_v2( unsigned int   i_InstanceID, 
                              const char   * i_pSubjectName, 
                              const char   * i_pSegmentName, 
                              unsigned int & o_rSegmentCount, 
                              unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
const char* GetSegmentChildName_v2( unsigned int   i_InstanceID, 
                                    const char   * i_pSubjectName, 
                                    const char   * i_pSegmentName, 
                                    unsigned int   i_OneBasedSegmentIndex, 
                                    unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
void GetSegmentStaticTranslation_v2( unsigned int   i_InstanceID, 
                                     const char   * i_pSubjectName, 
                                     const char   * i_pSegmentName, 
                                     double         o_pTranslation[ 3 ],
                                     unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
void GetSegmentStaticRotationHelical_v2( unsigned int   i_InstanceID, 
                                         const char   * i_pSubjectName, 
                                         const char   * i_pSegmentName, 
                                         double         o_pRotation[ 3 ],
                                         unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
void GetSegmentStaticRotationMatrix_v2( unsigned int   i_InstanceID, 
                                        const char   * i_pSubjectName, 
                                        const char   * i_pSegmentName, 
                                        double         o_pRotation[ 9 ],
                                        unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
void GetSegmentStaticRotationQuaternion_v2( unsigned int   i_InstanceID, 
                                            const char   * i_pSubjectName, 
                                            const char   * i_pSegmentName, 
                                            double         o_pRotation[ 4 ],
                                            unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
void GetSegmentStaticRotationEulerXYZ_v2( unsigned int   i_InstanceID, 
                                          const char   * i_pSubjectName, 
                                          const char   * i_pSegmentName, 
                                          double         o_pRotation[ 3 ],
                                          unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
void GetSegmentGlobalTranslation_v2( unsigned int   i_InstanceID, 
                                     const char   * i_pSubjectName, 
                                     const char   * i_pSegmentName, 
                                     double         o_pTranslation[ 3 ], 
                                     unsigned int & o_rOccluded,
                                     unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
void GetSegmentGlobalRotationHelical_v2( unsigned int   i_InstanceID, 
                                         const char   * i_pSubjectName, 
                                         const char   * i_pSegmentName, 
                                         double         o_pRotation[ 3 ], 
                                         unsigned int & o_rOccluded,
                                         unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
void GetSegmentGlobalRotationMatrix_v2( unsigned int   i_InstanceID, 
                                        const char   * i_pSubjectName, 
                                        const char   * i_pSegmentName, 
                                        double         o_pRotation[ 9 ], 
                                        unsigned int & o_rOccluded,
                                        unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
void GetSegmentGlobalRotationQuaternion_v2( unsigned int   i_InstanceID, 
                                            const char   * i_pSubjectName, 
                                            const char   * i_pSegmentName, 
                                            double         o_pRotation[ 4 ], 
                                            unsigned int & o_rOccluded,
                                            unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
void GetSegmentGlobalRotationEulerXYZ_v2( unsigned int   i_InstanceID, 
                                          const char   * i_pSubjectName, 
                                          const char   * i_pSegmentName, 
                                          double         o_pRotation[ 3 ], 
                                          unsigned int & o_rOccluded,
                                          unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
void GetSegmentLocalTranslation_v2( unsigned int   i_InstanceID, 
                                    const char   * i_pSubjectName, 
                                    const char   * i_pSegmentName, 
                                    double         o_pTranslation[ 3 ], 
                                    unsigned int & o_rOccluded,
                                    unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
void GetSegmentLocalRotationHelical_v2( unsigned int   i_InstanceID, 
                                        const char   * i_pSubjectName, 
                                        const char   * i_pSegmentName, 
                                        double         o_pRotation[ 3 ], 
                                        unsigned int & o_rOccluded,
                                        unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
void GetSegmentLocalRotationMatrix_v2( unsigned int   i_InstanceID, 
                                       const char   * i_pSubjectName, 
                                       const char   * i_pSegmentName, 
                                       double         o_pRotation[ 9 ], 
                                       unsigned int & o_rOccluded,
                                       unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
void GetSegmentLocalRotationQuaternion_v2( unsigned int   i_InstanceID, 
                                           const char   * i_pSubjectName, 
                                           const char   * i_pSegmentName, 
                                           double         o_pRotation[ 4 ], 
                                           unsigned int & o_rOccluded,
                                           unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
void GetSegmentLocalRotationEulerXYZ_v2( unsigned int   i_InstanceID, 
                                         const char   * i_pSubjectName, 
                                         const char   * i_pSegmentName, 
                                         double         o_pRotation[ 3 ], 
                                         unsigned int & o_rOccluded,
                                         unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
void GetMarkerCount_v2( unsigned int   i_InstanceID, 
                        const char   * i_pSubjectName, 
                        unsigned int & o_rMarkerCount, 
                        unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
const char* GetMarkerName_v2( unsigned int   i_InstanceID, 
                              const char   * i_pSubjectName, 
                              unsigned int   i_OneBasedMarkerIndex, 
                              unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
const char* GetMarkerParentName_v2( unsigned int   i_InstanceID, 
                                    const char   * i_pSubjectName, 
                                    const char   * i_pMarkerName, 
                                    unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
void GetMarkerGlobalTranslation_v2( unsigned int   i_InstanceID, 
                                    const char   * i_pSubjectName, 
                                    const char   * i_pMarkerName, 
                                    double         o_pTranslation[ 3 ], 
                                    unsigned int & o_rOccluded,
                                    unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
void GetUnlabeledMarkerCount_v2( unsigned int   i_InstanceID, 
                                 unsigned int & o_rMarkerCount, 
                                 unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
void GetUnlabeledMarkerGlobalTranslation_v2( unsigned int   i_InstanceID, 
                                             unsigned int   i_OneBasedMarkerIndex, 
                                             double         o_pTranslation[ 3 ], 
                                             unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
void GetDeviceCount_v2( unsigned int   i_InstanceID, 
                        unsigned int & o_rDeviceCount, 
                        unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
const char* GetDeviceName_v2( unsigned int   i_InstanceID, 
                              unsigned int   i_OneBasedDeviceIndex, 
                              unsigned int & o_rDeviceType,
                              unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
void GetDeviceOutputCount_v2( unsigned int   i_InstanceID, 
                              const char   * i_pDeviceName,
                              unsigned int & o_rDeviceOutputCount, 
                              unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
const char* GetDeviceOutputName_v2( unsigned int   i_InstanceID, 
                                    const char   * i_pDeviceName,
                                    unsigned int   i_OneBasedDeviceOutputIndex, 
                                    unsigned int & o_rDeviceOutputUnit,
                                    unsigned int & o_rResult );

extern "C" __declspec(dllexport) 
void GetDeviceOutputValue_v2( unsigned int   i_InstanceID, 
                              const char   * i_pDeviceName, 
                              const char   * i_pDeviceOutputName, 
                              double       & o_rValue, 
                              unsigned int & o_rOccluded,
                              unsigned int & o_rResult );

// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
// The functions below are the original functions which are being left alone
// at the moment. New functions should go above this comment
// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!





// Connects to the Real Time stream. Hostname string either IP address or "localhost" if running on same machine.
extern "C" __declspec(dllexport) bool Connect(const char* i_pHostname);

// Disconnects from the  Real Time stream. It is imperative that this function is called before the DLL is unloaded.
extern "C" __declspec(dllexport) bool Disconnect();

// States whether connected to the  Real Time stream. 
extern "C" __declspec(dllexport) bool IsConnected();

// Puts the system into pre-fetch mode for lower latency
extern "C" __declspec(dllexport) void SetPreFetchMode(bool i_bPreFetch);

// Transforms data into a co-ordinate system with a vertical Y-axis
extern "C" __declspec(dllexport) void SetYUp();

// Delivers data according to a co-ordinate system with a vertical Y-axis
extern "C" __declspec(dllexport) void SetZUp();

// Requests the next available frame from the Real Time stream. Returns true if successful.
extern "C" __declspec(dllexport) bool GetFrame();

// Returns the number of the last frame requested from the Real Time stream.
extern "C" __declspec(dllexport) bool GetFrameNumber( unsigned int & o_rNumber);

// Enables segment data in the stream.
extern "C" __declspec(dllexport) bool EnableSegmentData();

// Enables labelled reconstruction data (markers) in the stream.
extern "C" __declspec(dllexport) bool EnableMarkerData();

// Enables forceplate data (forces, moments and analog) in the stream.
extern "C" __declspec(dllexport) bool EnableForcePlateData();

// Returns the number of subjects in the Real Time stream.
extern "C" __declspec(dllexport) bool GetSubjectCount(unsigned int& o_rCount);   

// Returns the name of a particular subject. Expects input argument to be one-indexed.
extern "C" __declspec(dllexport) const char* GetSubjectName(unsigned int i_OneIndexedSubjectIndex);

// Returns the number of segments constituting the named subject.
extern "C" __declspec(dllexport) bool GetSegmentCount(const char* i_pSubjectName, unsigned int& o_rCount); 

// Returns the name of a particular segment of a subject. Expects input argument to be one-indexed.
extern "C" __declspec(dllexport) const char* GetSegmentName(const char* i_pSubjectName, unsigned int i_OneIndexedSegmentIndex);

// Returns the number of markers on the named subject.
extern "C" __declspec(dllexport) bool GetMarkerCount(const char* i_pSubjectName, unsigned int& o_rCount); 

// Returns the name of a particular marker on a subject. Expects input argument to be one-indexed.
extern "C" __declspec(dllexport) const char* GetMarkerName(const char* i_pSubjectName, unsigned int i_OneIndexedMarkerIndex);

// Returns the translation of a particular segment of a subject in global co-ordinates.
extern "C" __declspec(dllexport) bool GetGlobalSegmentTranslation(const char* i_pSubjectName, const char* i_pSegmentName, double o_pThreeVector[3], unsigned int& rbOccludedFlag);

// Returns the helical axis rotation of a particular segment of a subject in global co-ordinates. Helical representation.
extern "C" __declspec(dllexport) bool GetGlobalSegmentRotationHelical(const char* i_pSubjectName, const char* i_pSegmentName, double o_ThreeVector[3], unsigned int& o_rbOccludedFlag); 

// Returns the helical axis rotation of a particular segment of a subject in global co-ordinates. Quaternion representation.
extern "C" __declspec(dllexport) bool GetGlobalSegmentRotationQuaternion(const char* i_pSubjectName, const char* i_pSegmentName, double o_pFourVector[4], unsigned int& o_rbOccludedFlag); 

// Returns the translation of a particular marker on a subject in global co-ordinates.
extern "C" __declspec(dllexport) bool GetGlobalMarkerTranslation(const char* i_pSubjectName, const char* i_pMarkerName, double o_ThreeVector[3], unsigned int& o_rbOccludedFlag); 

// Returns the number of forceplates.
extern "C" __declspec(dllexport) bool GetForcePlateCount(unsigned int& o_rForcePlateCount); 

// Retrieves the ID of a forceplate.
extern "C" __declspec(dllexport) bool GetForcePlateID(unsigned int i_OneIndexedPlateIndex, unsigned int& o_rPlateID);

// retrieves the force vector from a particular plate in the current frame
extern "C" __declspec(dllexport) bool GetForceVector(unsigned int i_PlateID, double o_pForceVector[3]);  

// retrieves the moment vector from a particular plate in the current frame
extern "C" __declspec(dllexport) bool GetMomentVector(unsigned int i_PlateID, double o_pForceVector[3]); 

// retrieves the centre of pressure vector from a particular plate in the current frame
extern "C" __declspec(dllexport) bool GetCentreOfPressure(unsigned int i_PlateID, double o_pLocation[3]);

// Returns the number of analog inputs from a particular forceplate.
extern "C" __declspec(dllexport) bool GetNumberOfAnalogChannels(unsigned int i_PlateID, unsigned int& o_rChannelCount);

// Returns the raw analog value from a particular analog input for a particular forceplate.
extern "C" __declspec(dllexport) bool GetAnalogChannelVoltage(unsigned int i_PlateID, unsigned int i_OneIndexedChannelIndex, double& o_rVoltage);

///////////////////////////////////////////////////////////////////////////////
// End of function list.
///////////////////////////////////////////////////////////////////////////////
