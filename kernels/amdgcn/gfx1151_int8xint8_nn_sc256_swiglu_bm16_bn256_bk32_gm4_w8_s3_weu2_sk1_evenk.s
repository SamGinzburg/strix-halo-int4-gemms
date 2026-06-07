	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x30
	s_load_b32 s13, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s6, s2
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v73, 15, v0
	s_mov_b32 s48, 0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v2, 1, v73
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s22, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s9, s9, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s7, s7, 4
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s12, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s4, s12
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s8, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s5, s8
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s12
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s4, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s8
	s_sub_i32 s14, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s15, s14, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s14, s14, s12
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s4, s7, s15
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s14
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s16, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s17, s16
	s_abs_i32 s14, s2
	s_cvt_f32_u32 s18, s17
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v1, 4, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[6:7]
	s_mov_b32 s7, 0x31027000
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v3, s13, v1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s31, s7
	s_mov_b64 s[24:25], s[10:11]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s6, s18
	s_sub_i32 s18, 0, s17
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s18, s18, s6
	s_mul_hi_u32 s12, s6, s18
	s_xor_b32 s18, s2, s16
	s_add_i32 s12, s6, s12
	s_ashr_i32 s18, s18, 31
	s_mul_hi_u32 s12, s14, s12
	s_mov_b32 s6, 0x7ffffffe
	s_mul_i32 s19, s12, s17
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s30, s6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s14, s14, s19
	s_add_i32 s19, s12, 1
	s_sub_i32 s20, s14, s17
	s_cmp_ge_u32 s14, s17
	s_cselect_b32 s12, s19, s12
	s_cselect_b32 s14, s20, s14
	s_add_i32 s19, s12, 1
	s_cmp_ge_u32 s14, s17
	s_cselect_b32 s14, s19, s12
	.loc	1 303 14                        ; generate_amdgcn.py:303:14
	s_lshl_b32 s34, s23, 1
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s14, s14, s18
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s26, s3, 5
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s3, s14, s18
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mul_lo_u32 v1, s34, v1
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s16, s3, s16
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s14, s13, 0xff
.Ltmp13:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s16
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_ashr_i32 s16, s14, 31
.Ltmp15:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s15
.Ltmp16:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s12, s13, 31
.Ltmp17:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s33, s2, 4
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v21, v73, 4, v1
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_lshr_b32 s2, s16, 24
.Ltmp19:
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s13, s33, s13
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s22, s3, 8
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v22, v3, v2, s13
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s13, s14, s2
.Ltmp21:
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s15, s34, s26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s12, 31
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_lshl_add_u32 v23, s23, 5, v21
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s14, s22, s15
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s12, 63
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v2, s14, v21
	v_add_nc_u32_e32 v3, s14, v23
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s15, s23, 6
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s35, s26, 32
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s14, s14, s15
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v5, 0x80000000, v2, s3
	.loc	1 358 39 is_stmt 1              ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v2, s23, v2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v12, s14, v21
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v8, 0x80000000, v3, s3
	.loc	1 358 39 is_stmt 1              ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v3, s23, v3
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v1, s26, v22
	v_add_nc_u32_e32 v4, s35, v22
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v13, s14, v23
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 358 39 is_stmt 0              ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v25, s23, v12
	v_add3_u32 v20, s14, s23, v23
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	v_cndmask_b32_e64 v24, 0x80000000, v4, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v26, 0x80000000, v12, s2
	v_cndmask_b32_e64 v27, 0x80000000, v13, s2
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1
	buffer_load_b128 v[12:15], v2, s[28:31], 0 offen
	buffer_load_b128 v[16:19], v3, s[28:31], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v25, s2
	v_cndmask_b32_e64 v3, 0x80000000, v20, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_u16 v1, v1, s[4:7], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[4:7], v5, s[28:31], 0 offen
	buffer_load_b128 v[8:11], v8, s[28:31], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_u16 v20, v24, s[4:7], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[28:31], v26, s[28:31], 0 offen
	buffer_load_b128 v[32:35], v27, s[28:31], 0 offen
	buffer_load_b128 v[36:39], v2, s[28:31], 0 offen
	buffer_load_b128 v[40:43], v3, s[28:31], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v2, 1, v0
	v_bfe_i32 v3, v0, 6, 1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_lshlrev_b32_e32 v27, 4, v0
	v_lshlrev_b32_e32 v25, 5, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s12, 0x5f
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v24, 0x17e, v2
	v_and_b32_e32 v3, 0x90, v3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v45, 0, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v26, v3, v24
	v_and_b32_e32 v24, 4, v0
	v_lshrrev_b32_e32 v3, 1, v0
	v_add_nc_u32_e32 v44, 0, v26
	s_waitcnt vmcnt(7)
	ds_store_b16 v44, v1 offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(6)
	ds_store_b128 v45, v[4:7]
	s_waitcnt vmcnt(5)
	ds_store_b128 v45, v[8:11] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	ds_store_b128 v45, v[12:15] offset:16384
	ds_store_b128 v45, v[16:19] offset:20480
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b16 v44, v20 offset:33280
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v45, v[28:31] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v45, v[32:35] offset:12288
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v45, v[36:39] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v45, v[40:43] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v9, 5, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_and_or_b32 v77, 0x70, v3, v73
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v1, 4, v0
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v20, 0x160, v9
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v78, 0x100, v77
	v_or_b32_e32 v80, 0x200, v77
	v_or_b32_e32 v82, 0x300, v77
	v_or_b32_e32 v84, 0x400, v77
	v_or_b32_e32 v86, 0x500, v77
	v_or_b32_e32 v88, 0x600, v77
	v_or_b32_e32 v90, 0x700, v77
	v_or_b32_e32 v92, 0x800, v77
	v_or_b32_e32 v94, 0x900, v77
	v_or_b32_e32 v96, 0xa00, v77
	v_or_b32_e32 v98, 0xb00, v77
	v_or_b32_e32 v100, 0xc00, v77
	v_or_b32_e32 v102, 0xd00, v77
	v_or_b32_e32 v104, 0xe00, v77
	v_or_b32_e32 v105, 0xf00, v77
	v_or_b32_e32 v79, 0x1000, v77
	v_or_b32_e32 v81, 0x1100, v77
	v_or_b32_e32 v83, 0x1200, v77
	v_or_b32_e32 v85, 0x1300, v77
	v_or_b32_e32 v87, 0x1400, v77
	v_or_b32_e32 v89, 0x1500, v77
	v_or_b32_e32 v91, 0x1600, v77
	v_or_b32_e32 v93, 0x1700, v77
	v_or_b32_e32 v95, 0x1800, v77
	v_or_b32_e32 v97, 0x1900, v77
	v_or_b32_e32 v99, 0x1a00, v77
	v_or_b32_e32 v101, 0x1b00, v77
	v_or_b32_e32 v103, 0x1c00, v77
	v_or_b32_e32 v106, 0x1d00, v77
	v_or_b32_e32 v107, 0x1e00, v77
	v_or_b32_e32 v108, 0x1f00, v77
	v_or_b32_e32 v109, 0x80, v77
	v_or_b32_e32 v110, 0x180, v77
	v_or_b32_e32 v111, 0x280, v77
	v_or_b32_e32 v112, 0x380, v77
	v_or_b32_e32 v113, 0x480, v77
	v_or_b32_e32 v114, 0x580, v77
	v_or_b32_e32 v115, 0x680, v77
	v_or_b32_e32 v116, 0x780, v77
	v_or_b32_e32 v117, 0x880, v77
	v_or_b32_e32 v118, 0x980, v77
	v_or_b32_e32 v119, 0xa80, v77
	v_or_b32_e32 v120, 0xb80, v77
	v_or_b32_e32 v121, 0xc80, v77
	v_or_b32_e32 v122, 0xd80, v77
	v_or_b32_e32 v123, 0xe80, v77
	v_or_b32_e32 v124, 0xf80, v77
	v_or_b32_e32 v125, 0x1080, v77
	v_or_b32_e32 v126, 0x1180, v77
	v_or_b32_e32 v127, 0x1280, v77
	v_or_b32_e32 v128, 0x1380, v77
	v_or_b32_e32 v129, 0x1480, v77
	v_or_b32_e32 v130, 0x1580, v77
	v_or_b32_e32 v131, 0x1680, v77
	v_or_b32_e32 v132, 0x1780, v77
	v_or_b32_e32 v133, 0x1880, v77
	v_or_b32_e32 v134, 0x1980, v77
	v_or_b32_e32 v135, 0x1a80, v77
	v_or_b32_e32 v136, 0x1b80, v77
	v_or_b32_e32 v137, 0x1c80, v77
	v_or_b32_e32 v138, 0x1d80, v77
	v_or_b32_e32 v139, 0x1e80, v77
	v_or_b32_e32 v140, 0x1f80, v77
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr9
                                        ; implicit-def: $vgpr20
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr77
                                        ; implicit-def: $vgpr78
                                        ; implicit-def: $vgpr80
                                        ; implicit-def: $vgpr82
                                        ; implicit-def: $vgpr84
                                        ; implicit-def: $vgpr86
                                        ; implicit-def: $vgpr88
                                        ; implicit-def: $vgpr90
                                        ; implicit-def: $vgpr92
                                        ; implicit-def: $vgpr94
                                        ; implicit-def: $vgpr96
                                        ; implicit-def: $vgpr98
                                        ; implicit-def: $vgpr100
                                        ; implicit-def: $vgpr102
                                        ; implicit-def: $vgpr104
                                        ; implicit-def: $vgpr105
                                        ; implicit-def: $vgpr79
                                        ; implicit-def: $vgpr81
                                        ; implicit-def: $vgpr83
                                        ; implicit-def: $vgpr85
                                        ; implicit-def: $vgpr87
                                        ; implicit-def: $vgpr89
                                        ; implicit-def: $vgpr91
                                        ; implicit-def: $vgpr93
                                        ; implicit-def: $vgpr95
                                        ; implicit-def: $vgpr97
                                        ; implicit-def: $vgpr99
                                        ; implicit-def: $vgpr101
                                        ; implicit-def: $vgpr103
                                        ; implicit-def: $vgpr106
                                        ; implicit-def: $vgpr107
                                        ; implicit-def: $vgpr108
                                        ; implicit-def: $vgpr109
                                        ; implicit-def: $vgpr110
                                        ; implicit-def: $vgpr111
                                        ; implicit-def: $vgpr112
                                        ; implicit-def: $vgpr113
                                        ; implicit-def: $vgpr114
                                        ; implicit-def: $vgpr115
                                        ; implicit-def: $vgpr116
                                        ; implicit-def: $vgpr117
                                        ; implicit-def: $vgpr118
                                        ; implicit-def: $vgpr119
                                        ; implicit-def: $vgpr120
                                        ; implicit-def: $vgpr121
                                        ; implicit-def: $vgpr122
                                        ; implicit-def: $vgpr123
                                        ; implicit-def: $vgpr124
                                        ; implicit-def: $vgpr125
                                        ; implicit-def: $vgpr126
                                        ; implicit-def: $vgpr127
                                        ; implicit-def: $vgpr128
                                        ; implicit-def: $vgpr129
                                        ; implicit-def: $vgpr130
                                        ; implicit-def: $vgpr131
                                        ; implicit-def: $vgpr132
                                        ; implicit-def: $vgpr133
                                        ; implicit-def: $vgpr134
                                        ; implicit-def: $vgpr135
                                        ; implicit-def: $vgpr136
                                        ; implicit-def: $vgpr137
                                        ; implicit-def: $vgpr138
                                        ; implicit-def: $vgpr139
                                        ; implicit-def: $vgpr140
.LBB0_3:                                ; %Flow317
	s_load_b64 s[20:21], s[0:1], 0x20
	v_or_b32_e32 v4, s33, v73
	v_and_b32_e32 v74, 0xf0, v0
	s_ashr_i32 s1, s13, 8
	v_or_b32_e32 v75, s22, v0
	v_and_b32_e32 v18, 28, v2
	v_mul_lo_u32 v76, v4, s1
	v_lshlrev_b32_e32 v19, 2, v74
	v_lshlrev_b32_e32 v17, 1, v74
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v41, 0 :: v_dual_and_b32 v20, 0x160, v25
	v_bfe_i32 v1, v0, 2, 1
	v_and_or_b32 v77, 0x70, v3, v73
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v30, s23, v75
	v_mov_b32_e32 v72, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_and_or_b32 v28, 0x90, v1, v20
	v_and_b32_e32 v1, 32, v25
	v_or_b32_e32 v78, 0x100, v77
	v_or_b32_e32 v80, 0x200, v77
	v_or_b32_e32 v82, 0x300, v77
	v_xor_b32_e32 v29, 16, v28
	v_add3_u32 v1, 0, v19, v1
	v_or_b32_e32 v84, 0x400, v77
	v_or_b32_e32 v86, 0x500, v77
	v_or_b32_e32 v88, 0x600, v77
	v_or_b32_e32 v90, 0x700, v77
	v_or_b32_e32 v92, 0x800, v77
	v_or_b32_e32 v94, 0x900, v77
	v_or_b32_e32 v96, 0xa00, v77
	v_or_b32_e32 v98, 0xb00, v77
	v_or_b32_e32 v100, 0xc00, v77
	v_or_b32_e32 v102, 0xd00, v77
	v_or_b32_e32 v104, 0xe00, v77
	v_or_b32_e32 v105, 0xf00, v77
	v_or_b32_e32 v79, 0x1000, v77
	v_or_b32_e32 v81, 0x1100, v77
	v_or_b32_e32 v83, 0x1200, v77
	v_or_b32_e32 v85, 0x1300, v77
	v_or_b32_e32 v87, 0x1400, v77
	v_or_b32_e32 v89, 0x1500, v77
	v_or_b32_e32 v91, 0x1600, v77
	v_or_b32_e32 v93, 0x1700, v77
	v_or_b32_e32 v95, 0x1800, v77
	v_or_b32_e32 v97, 0x1900, v77
	v_or_b32_e32 v99, 0x1a00, v77
	v_or_b32_e32 v101, 0x1b00, v77
	v_or_b32_e32 v103, 0x1c00, v77
	v_or_b32_e32 v106, 0x1d00, v77
	v_or_b32_e32 v107, 0x1e00, v77
	v_or_b32_e32 v108, 0x1f00, v77
	v_or_b32_e32 v109, 0x80, v77
	v_or_b32_e32 v110, 0x180, v77
	v_or_b32_e32 v111, 0x280, v77
	v_or_b32_e32 v112, 0x380, v77
	v_or_b32_e32 v113, 0x480, v77
	v_or_b32_e32 v114, 0x580, v77
	v_or_b32_e32 v115, 0x680, v77
	v_or_b32_e32 v116, 0x780, v77
	v_or_b32_e32 v117, 0x880, v77
	v_or_b32_e32 v118, 0x980, v77
	v_or_b32_e32 v119, 0xa80, v77
	v_or_b32_e32 v120, 0xb80, v77
	v_or_b32_e32 v121, 0xc80, v77
	v_or_b32_e32 v122, 0xd80, v77
	v_or_b32_e32 v123, 0xe80, v77
	v_or_b32_e32 v124, 0xf80, v77
	v_or_b32_e32 v125, 0x1080, v77
	v_or_b32_e32 v126, 0x1180, v77
	v_or_b32_e32 v127, 0x1280, v77
	v_or_b32_e32 v128, 0x1380, v77
	v_or_b32_e32 v129, 0x1480, v77
	v_or_b32_e32 v130, 0x1580, v77
	v_or_b32_e32 v131, 0x1680, v77
	v_or_b32_e32 v132, 0x1780, v77
	v_or_b32_e32 v133, 0x1880, v77
	v_or_b32_e32 v134, 0x1980, v77
	v_or_b32_e32 v135, 0x1a80, v77
	v_or_b32_e32 v136, 0x1b80, v77
	v_or_b32_e32 v137, 0x1c80, v77
	v_or_b32_e32 v138, 0x1d80, v77
	v_or_b32_e32 v139, 0x1e80, v77
	v_or_b32_e32 v140, 0x1f80, v77
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v31, v1, v18
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v32, 0, v17
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_mov_b32_e32 v42, 0
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s11, s12, 5
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_mov_b32 s12, 0
	s_add_i32 s0, s35, 32
	s_mov_b32 s10, 1
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_and_b32 s41, s25, 0xffff
	s_mov_b32 s40, s24
	s_add_i32 s49, 0, 0x8000
	s_add_i32 s46, 0, 0x8200
	s_add_i32 s45, 0, 0x2000
	s_add_i32 s47, 0, 0x4000
	s_add_i32 s44, 0, 0x6000
	s_add_i32 s11, s11, -3
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_mov_b32 s48, s12
	s_mov_b32 s27, s12
.Ltmp23:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	s_mov_b32 s50, s47
	s_mov_b32 s47, s26
	s_mov_b32 s26, s35
	.loc	1 308 14 is_stmt 1              ; generate_amdgcn.py:308:14
	s_lshl_b32 s35, s27, 5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v11, s49, v28
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s35, s0, s35
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v12, s49, v29
	.loc	1 348 30 is_stmt 0              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v13, s35, v22
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v9, s48, v77
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v1, s12 :: v_dual_add_nc_u32 v10, s50, v77
	v_mov_b32_e32 v2, s13
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_u16 v33, v13, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[13:16], v11
	ds_load_b128 v[34:37], v12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v11, v9 offset:3328
	ds_load_u8 v12, v9 offset:3072
	ds_load_u8 v40, v9 offset:3840
	ds_load_u8 v141, v9 offset:3584
	ds_load_u8 v142, v9 offset:2304
	ds_load_u8 v143, v9 offset:2048
	ds_load_u8 v144, v9 offset:2816
	ds_load_u8 v145, v9 offset:2560
	ds_load_u8 v146, v9 offset:1280
	ds_load_u8 v147, v9 offset:1024
	ds_load_u8 v148, v9 offset:1792
	ds_load_u8 v149, v9 offset:1536
	ds_load_u8 v153, v9 offset:256
	ds_load_u8 v154, v9
	ds_load_u8 v155, v9 offset:768
	ds_load_u8 v156, v9 offset:512
	ds_load_u8 v177, v9 offset:7424
	ds_load_u8 v178, v9 offset:7168
	ds_load_u8 v179, v9 offset:7936
	ds_load_u8 v180, v9 offset:7680
	ds_load_u8 v157, v9 offset:3456
	ds_load_u8 v158, v9 offset:3200
	ds_load_u8 v159, v9 offset:3968
	ds_load_u8 v160, v9 offset:3712
	ds_load_u8 v161, v9 offset:2432
	ds_load_u8 v162, v9 offset:2176
	ds_load_u8 v163, v9 offset:2944
	ds_load_u8 v164, v9 offset:2688
	ds_load_u8 v165, v9 offset:1408
	ds_load_u8 v166, v9 offset:1152
	ds_load_u8 v167, v9 offset:1920
	ds_load_u8 v168, v9 offset:1664
	ds_load_u8 v169, v9 offset:384
	ds_load_u8 v170, v9 offset:128
	ds_load_u8 v171, v9 offset:896
	ds_load_u8 v172, v9 offset:640
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v173, v10 offset:3328
	ds_load_u8 v174, v10 offset:3072
	ds_load_u8 v175, v10 offset:3840
	ds_load_u8 v176, v10 offset:3584
	ds_load_u8 v181, v10 offset:2304
	ds_load_u8 v182, v10 offset:2048
	ds_load_u8 v183, v10 offset:2816
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(41)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(39)
	v_perm_b32 v40, v141, v40, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v141, v10 offset:1280
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v143, v145, v144, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v144, v149, v148, 0xc0c0004
	v_lshl_or_b32 v152, v40, 16, v11
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v11, v10 offset:1024
	ds_load_u8 v40, v10 offset:1792
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v148, v156, v155, 0xc0c0004
	v_lshl_or_b32 v151, v143, 16, v142
	v_perm_b32 v142, v147, v146, 0xc0c0004
	v_perm_b32 v146, v154, v153, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v154, v158, v157, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v156, v160, v159, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v158, v162, v161, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v159, v164, v163, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v12, v10 offset:2560
	ds_load_u8 v143, v10 offset:1536
	ds_load_u8 v155, v10 offset:3200
	ds_load_u8 v145, v10 offset:256
	ds_load_u8 v147, v10 offset:512
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v150, v144, 16, v142
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v142, v10
	ds_load_u8 v144, v10 offset:768
	ds_load_u8 v153, v10 offset:3456
	ds_load_u8 v157, v10 offset:3968
	ds_load_u8 v161, v10 offset:3712
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v149, v148, 16, v146
	v_lshl_or_b32 v160, v156, 16, v154
	v_lshl_or_b32 v159, v159, 16, v158
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v146, v10 offset:2176
	ds_load_u8 v148, v10 offset:2944
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v154, v166, v165, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v156, v10 offset:2688
	ds_load_u8 v162, v10 offset:2432
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v158, v168, v167, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v164, v170, v169, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v165, v10 offset:1152
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v166, v172, v171, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v167, v10 offset:1920
	ds_load_u8 v169, v10 offset:1664
	ds_load_u8 v163, v10 offset:1408
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v168, v174, v173, 0xc0c0004
	ds_load_u8 v174, v10 offset:896
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v11, v11, v141, 0xc0c0004
	ds_load_u8 v141, v10 offset:640
	ds_load_u8 v171, v10 offset:384
	ds_load_u8 v173, v10 offset:128
	v_perm_b32 v170, v176, v175, 0xc0c0004
	v_perm_b32 v172, v182, v181, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v12, v12, v183, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v40, v143, v40, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v142, v142, v145, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v143, v147, v144, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v144, v155, v153, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v145, v161, v157, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v146, v146, v162, 0xc0c0004
	v_perm_b32 v147, v156, v148, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v153, v169, v167, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v148, v165, v163, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v141, v141, v174, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v173, v171, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v158, v158, 16, v154
	v_lshl_or_b32 v157, v166, 16, v164
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v168, v170, 16, v168
	v_lshl_or_b32 v167, v12, 16, v172
	v_lshl_or_b32 v166, v40, 16, v11
	v_lshl_or_b32 v165, v143, 16, v142
	v_lshl_or_b32 v176, v145, 16, v144
	v_lshl_or_b32 v175, v147, 16, v146
	v_lshl_or_b32 v174, v153, 16, v148
	v_lshl_or_b32 v173, v141, 16, v155
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v181, v9 offset:6400
	ds_load_u8 v183, v9 offset:6912
	ds_load_u8 v184, v9 offset:6656
	ds_load_u8 v187, v9 offset:5888
	ds_load_u8 v185, v9 offset:5376
	ds_load_u8 v188, v9 offset:5632
	ds_load_u8 v189, v9 offset:4352
	ds_load_u8 v191, v9 offset:4864
	v_wmma_i32_16x16x16_iu8 v[141:148], v[149:152], v[13:16], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[149:156], v[157:160], v[13:16], v[1:8] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[157:164], v[165:168], v[13:16], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[165:172], v[173:176], v[13:16], v[1:8] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v14, v9 offset:6784
	ds_load_u8 v182, v9 offset:6144
	ds_load_u8 v173, v9 offset:5760
	ds_load_u8 v15, v9 offset:5504
	ds_load_u8 v186, v9 offset:5120
	v_perm_b32 v2, v178, v177, 0xc0c0004
	ds_load_u8 v177, v9 offset:4480
	ds_load_u8 v190, v9 offset:4096
	ds_load_u8 v1, v9 offset:4608
	ds_load_u8 v5, v9 offset:7552
	ds_load_u8 v6, v9 offset:7296
	ds_load_u8 v7, v9 offset:8064
	ds_load_u8 v8, v9 offset:7808
	ds_load_u8 v11, v9 offset:6528
	ds_load_u8 v12, v9 offset:6272
	ds_load_u8 v13, v9 offset:7040
	v_perm_b32 v3, v180, v179, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v174, v188, v187, 0xc0c0004
	v_perm_b32 v40, v184, v183, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v180, v10 offset:7424
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s48, s47, 31
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v4, v3, 16, v2
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s48, s48, 24
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s49, s35, s34
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s47, s47, s48
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s49, s49, s22
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s47, s47, 8
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	s_add_i32 s48, s49, s23
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v16, v182, v181, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v1, v1, v191, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	v_perm_b32 v2, v186, v185, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	v_lshl_or_b32 v3, v40, 16, v16
	ds_load_u8 v16, v9 offset:5248
	ds_load_u8 v40, v9 offset:6016
	ds_load_u8 v178, v9 offset:4224
	ds_load_u8 v179, v9 offset:4992
	ds_load_u8 v9, v9 offset:4736
	v_lshl_or_b32 v2, v174, 16, v2
	v_perm_b32 v174, v190, v189, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v182, v10 offset:7936
	ds_load_u8 v183, v10 offset:7680
	ds_load_u8 v6, v10 offset:5376
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v12, v14, v13, 0xc0c0004
	v_lshl_or_b32 v1, v1, 16, v174
	v_lshl_or_b32 v176, v7, 16, v5
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v5, v10 offset:5888
	ds_load_u8 v7, v10 offset:5632
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s47, s1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v175, v12, 16, v11
	v_wmma_i32_16x16x16_iu8 v[141:148], v[1:4], v[34:37], v[141:148] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v1, v10 offset:6400
	ds_load_u8 v2, v10 offset:6144
	ds_load_u8 v3, v10 offset:6912
	ds_load_u8 v4, v10 offset:6656
	ds_load_u8 v12, v10 offset:4352
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v184, v76, s47, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s47, s47, s34
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v39, s49, v23
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v11, v16, v15, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v13, v173, v40, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v9, v9, v179, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v179, v10 offset:8064
	ds_load_u8 v181, v10 offset:7168
	ds_load_u8 v40, v10 offset:4096
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v174, v13, 16, v11
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v11, v10 offset:4864
	ds_load_u8 v13, v10 offset:4608
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v14, v178, v177, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v16, v183, v182, 0xc0c0004
	ds_load_u8 v177, v10 offset:7552
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v5, v7, v5, 0xc0c0004
	ds_load_u8 v7, v10 offset:5248
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v10 offset:6528
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v10 offset:6272
	ds_load_u8 v8, v10 offset:5120
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v173, v9, 16, v14
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v185, v75, s47, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s10, s10, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v147, v147
	v_wmma_i32_16x16x16_iu8 v[149:156], v[173:176], v[34:37], v[149:156] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v15, v181, v180, 0xc0c0004
	ds_load_u8 v180, v10 offset:7808
	ds_load_u8 v178, v10 offset:7296
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v9, v40, v12, 0xc0c0004
	ds_load_u8 v12, v10 offset:4480
	ds_load_u8 v40, v10 offset:4224
	v_lshl_or_b32 v16, v16, 16, v15
	v_lshl_or_b32 v15, v3, 16, v1
	ds_load_u8 v1, v10 offset:7040
	ds_load_u8 v3, v10 offset:6784
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v11, v13, v11, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v173, v141
	v_cvt_f32_i32_e32 v174, v144
	v_cvt_f32_i32_e32 v175, v143
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v6, v8, v6, 0xc0c0004
	ds_load_u8 v8, v10 offset:5504
	v_perm_b32 v2, v4, v2, 0xc0c0004
	v_lshl_or_b32 v13, v11, 16, v9
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s10, 2
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v14, v5, 16, v6
	ds_load_u8 v5, v10 offset:6016
	ds_load_u8 v6, v10 offset:5760
	ds_load_u8 v181, v10 offset:4992
	ds_load_u8 v10, v10 offset:4736
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s10, s10, 0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v177, v178, v177, 0xc0c0004
	v_perm_b32 v178, v180, v179, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[157:164], v[13:16], v[34:37], v[157:164] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v9, v40, v12, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v40, v142
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v38, s49, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	v_lshl_or_b32 v180, v178, 16, v177
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v148, v148
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v179, v1, 16, v2
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v7, v7, v8, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	buffer_load_b128 v[1:4], v38, s[28:31], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v153, v153
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v10, v181, 0xc0c0004
	v_cvt_f32_i32_e32 v157, v157
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v149, v149
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v178, v5, 16, v7
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	buffer_load_b128 v[5:8], v39, s[28:31], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v38, 0x80000000, v184 :: v_dual_cndmask_b32 v39, 0x80000000, v185
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v39, v39, s[40:43], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v38, v38, s[36:39], 0 offen
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v177, v10, 16, v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v155, v155
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v161, v161
	v_wmma_i32_16x16x16_iu8 v[165:172], v[177:180], v[34:37], v[165:172] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v160, v160
	v_cvt_f32_i32_e32 v159, v159
	v_cvt_f32_i32_e32 v162, v162
	v_cvt_f32_i32_e32 v165, v165
	v_cvt_f32_i32_e32 v167, v167
	v_cvt_f32_i32_e32 v169, v169
	v_cvt_f32_i32_e32 v171, v171
	v_cvt_f32_i32_e32 v164, v164
	v_cvt_f32_i32_e32 v163, v163
	v_cvt_f32_i32_e32 v166, v166
	v_cvt_f32_i32_e32 v168, v168
	v_cvt_f32_i32_e32 v170, v170
	v_cvt_f32_i32_e32 v172, v172
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s50, s27, 1
	s_mov_b32 s49, s46
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v38, 16, v38
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v182, s48, v21
	v_add_nc_u32_e32 v183, s48, v23
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v34, 16, v39
	s_mov_b32 s48, s45
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s45, s10, 13
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1
	buffer_load_b128 v[9:12], v182, s[28:31], 0 offen
	buffer_load_b128 v[13:16], v183, s[28:31], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v31, v34 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[34:37], v32 offset:33792
	ds_load_b128 v[141:144], v32 offset:33808
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s45, s45, 0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v39, v35, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v71, v39, v40
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v39, v30, s47, 1
	s_mov_b32 s47, s44
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s44, s10, 9
	s_add_i32 s44, s44, 0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_dual_cndmask_b32 v39, 0x80000000, v39 :: v_dual_mul_f32 v176, v34, v38
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v177, v37, v38
	v_mul_f32_e32 v178, v36, v38
	ds_load_b128 v[34:37], v32 offset:34304
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	buffer_load_u16 v39, v39, s[40:43], 0 offen
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v143, v143, v38
	v_mul_f32_e32 v141, v141, v38
	v_mul_f32_e32 v144, v144, v38
	v_mul_f32_e32 v142, v142, v38
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v70, v176, v173
	v_fmac_f32_e32 v58, v143, v147
	v_fmac_f32_e32 v66, v178, v175
	v_dual_fmac_f32 v62, v141, v145 :: v_dual_add_nc_u32 v173, s45, v27
	v_fmac_f32_e32 v59, v144, v148
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s46, s44, 0x8000
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v179, v35, v38
	v_mul_f32_e32 v180, v34, v38
	v_mul_f32_e32 v181, v37, v38
	v_mul_f32_e32 v182, v36, v38
	ds_load_b128 v[34:37], v32 offset:34320
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v54, v180, v149 :: v_dual_fmac_f32 v51, v181, v152
	v_dual_fmac_f32 v67, v177, v174 :: v_dual_fmac_f32 v50, v182, v151
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v35, v35, v38
	v_mul_f32_e32 v34, v34, v38
	v_mul_f32_e32 v37, v37, v38
	v_mul_f32_e32 v36, v36, v38
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v55, v179, v150
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v47, v35, v154 :: v_dual_fmac_f32 v46, v34, v153
	v_dual_fmac_f32 v43, v36, v155 :: v_dual_add_nc_u32 v40, s44, v26
	v_dual_fmac_f32 v63, v142, v146 :: v_dual_fmac_f32 v42, v37, v156
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_add_i32 s44, s45, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s27, s11
	s_mov_b32 s27, s50
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v34, 16, v39
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	ds_store_b32 v31, v34 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[34:37], v32 offset:33792
	ds_load_b128 v[141:144], v32 offset:33808
	ds_load_b128 v[145:148], v32 offset:34304
	ds_load_b128 v[149:152], v32 offset:34320
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_store_b16 v40, v33 offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	ds_store_b128 v173, v[1:4]
	ds_store_b128 v173, v[5:8] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	ds_store_b128 v173, v[9:12] offset:16384
	ds_store_b128 v173, v[13:16] offset:20480
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(8)
	v_mul_f32_e32 v36, v36, v38
	s_waitcnt lgkmcnt(7)
	v_mul_f32_e32 v39, v141, v38
	v_mul_f32_e32 v141, v143, v38
	s_waitcnt lgkmcnt(6)
	v_mul_f32_e32 v143, v145, v38
	v_mul_f32_e32 v145, v147, v38
	s_waitcnt lgkmcnt(5)
	v_mul_f32_e32 v147, v149, v38
	v_dual_mul_f32 v33, v35, v38 :: v_dual_fmac_f32 v68, v36, v159
	v_mul_f32_e32 v40, v144, v38
	v_mul_f32_e32 v144, v148, v38
	v_mul_f32_e32 v148, v152, v38
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v52, v145, v167
	v_fmac_f32_e32 v48, v147, v169
	v_dual_fmac_f32 v56, v143, v165 :: v_dual_mul_f32 v35, v37, v38
	v_fmac_f32_e32 v64, v39, v161
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v34, v34, v38
	v_dual_mul_f32 v37, v142, v38 :: v_dual_fmac_f32 v60, v141, v163
	v_dual_mul_f32 v142, v146, v38 :: v_dual_fmac_f32 v61, v40, v164
	v_dual_mul_f32 v146, v150, v38 :: v_dual_fmac_f32 v53, v144, v168
	v_dual_mul_f32 v38, v151, v38 :: v_dual_fmac_f32 v45, v148, v172
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v72, v33, v158 :: v_dual_fmac_f32 v69, v35, v160
	v_fmac_f32_e32 v41, v34, v157
	v_fmac_f32_e32 v65, v37, v162
	v_fmac_f32_e32 v57, v142, v166
	v_fmac_f32_e32 v49, v146, v170
	v_fmac_f32_e32 v44, v38, v171
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v9, v25
	v_mov_b32_e32 v1, v24
	s_branch .LBB0_8
.LBB0_7:
	s_add_i32 s49, 0, 0x8000
	s_add_i32 s46, 0, 0x8200
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v41, 0
	s_add_i32 s45, 0, 0x2000
	s_add_i32 s47, 0, 0x4000
	s_add_i32 s44, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v148, 0
	v_cndmask_b32_e64 v1, 0x90, 0, vcc_lo
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v142, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or_b32_e32 v10, v1, v20
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v1, 0, 1, s3
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v152, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v11, 16, v10
	v_dual_mov_b32 v155, 0 :: v_dual_add_nc_u32 v2, s49, v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cmp_ne_u32_e64 s0, 1, v1
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v156, 0 :: v_dual_add_nc_u32 v3, s49, v11
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v154, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[5:8], v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[1:4], v3
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v150, 0
	v_mov_b32_e32 v147, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s12, 0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v20, s48, v102
	v_add_nc_u32_e32 v21, s48, v100
	v_add_nc_u32_e32 v14, s48, v105
	v_add_nc_u32_e32 v24, s48, v94
	v_add_nc_u32_e32 v15, s48, v104
	v_add_nc_u32_e32 v22, s48, v98
	v_add_nc_u32_e32 v23, s48, v96
	v_add_nc_u32_e32 v25, s48, v92
	v_add_nc_u32_e32 v26, s48, v90
	v_add_nc_u32_e32 v27, s48, v88
	v_add_nc_u32_e32 v28, s48, v86
	v_add_nc_u32_e32 v29, s48, v84
	v_add_nc_u32_e32 v30, s48, v82
	v_add_nc_u32_e32 v31, s48, v80
	v_add_nc_u32_e32 v32, s48, v78
	v_add_nc_u32_e32 v33, s48, v77
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v20, v20
	ds_load_u8 v21, v21
	ds_load_u8 v14, v14
	ds_load_u8 v24, v24
	ds_load_u8 v25, v25
	ds_load_u8 v22, v22
	ds_load_u8 v23, v23
	ds_load_u8 v15, v15
	ds_load_u8 v28, v28
	ds_load_u8 v29, v29
	ds_load_u8 v26, v26
	ds_load_u8 v32, v32
	ds_load_u8 v33, v33
	ds_load_u8 v30, v30
	ds_load_u8 v31, v31
	ds_load_u8 v27, v27
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v34, s48, v106
	v_add_nc_u32_e32 v35, s48, v103
	v_add_nc_u32_e32 v12, s48, v108
	v_add_nc_u32_e32 v170, s48, v97
	v_add_nc_u32_e32 v168, s48, v101
	v_add_nc_u32_e32 v169, s48, v99
	v_add_nc_u32_e32 v171, s48, v95
	v_add_nc_u32_e32 v172, s48, v93
	v_add_nc_u32_e32 v173, s48, v91
	v_add_nc_u32_e32 v174, s48, v89
	v_add_nc_u32_e32 v175, s48, v87
	v_add_nc_u32_e32 v176, s48, v85
	v_add_nc_u32_e32 v177, s48, v83
	v_add_nc_u32_e32 v178, s48, v81
	v_add_nc_u32_e32 v179, s48, v79
	v_add_nc_u32_e32 v13, s48, v107
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v23, v29, v28, 0xc0c0004
	ds_load_u8 v28, v34
	ds_load_u8 v29, v35
	ds_load_u8 v34, v12
	ds_load_u8 v35, v170
	ds_load_u8 v170, v171
	ds_load_u8 v168, v168
	ds_load_u8 v169, v169
	ds_load_u8 v171, v13
	ds_load_u8 v174, v174
	ds_load_u8 v175, v175
	ds_load_u8 v172, v172
	ds_load_u8 v178, v178
	ds_load_u8 v179, v179
	ds_load_u8 v176, v176
	ds_load_u8 v177, v177
	ds_load_u8 v173, v173
	v_perm_b32 v20, v21, v20, 0xc0c0004
	v_perm_b32 v14, v15, v14, 0xc0c0004
	v_perm_b32 v21, v25, v24, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v24, v27, v26, 0xc0c0004
	v_perm_b32 v12, v33, v32, 0xc0c0004
	s_mov_b32 s19, s12
	v_lshl_or_b32 v15, v14, 16, v20
	v_perm_b32 v20, v31, v30, 0xc0c0004
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v16, s48, v140
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v14, v22, 16, v21
	v_lshl_or_b32 v13, v24, 16, v23
	v_lshl_or_b32 v12, v20, 16, v12
	v_dual_mov_b32 v27, s19 :: v_dual_add_nc_u32 v36, s48, v139
	v_mov_b32_e32 v25, s17
	v_dual_mov_b32 v26, s18 :: v_dual_add_nc_u32 v37, s48, v138
	v_dual_mov_b32 v23, s15 :: v_dual_add_nc_u32 v38, s48, v137
	v_dual_mov_b32 v24, s16 :: v_dual_add_nc_u32 v39, s48, v136
	v_dual_mov_b32 v21, s13 :: v_dual_add_nc_u32 v40, s48, v135
	v_dual_mov_b32 v22, s14 :: v_dual_add_nc_u32 v141, s48, v134
	v_dual_mov_b32 v20, s12 :: v_dual_add_nc_u32 v143, s48, v132
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v153, s48, v122
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v180, v29, v28, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v171, v171, v34, 0xc0c0004
	v_perm_b32 v170, v170, v35, 0xc0c0004
	v_perm_b32 v168, v169, v168, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v169, v175, v174, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v154, s48, v121
	v_add_nc_u32_e32 v151, s48, v124
	v_add_nc_u32_e32 v158, s48, v118
	v_add_nc_u32_e32 v142, s48, v133
	v_add_nc_u32_e32 v144, s48, v131
	v_add_nc_u32_e32 v145, s48, v130
	v_add_nc_u32_e32 v146, s48, v129
	v_add_nc_u32_e32 v147, s48, v128
	v_add_nc_u32_e32 v148, s48, v127
	v_add_nc_u32_e32 v149, s48, v126
	v_add_nc_u32_e32 v150, s48, v125
	v_add_nc_u32_e32 v152, s48, v123
	v_add_nc_u32_e32 v156, s48, v120
	v_add_nc_u32_e32 v157, s48, v119
	v_add_nc_u32_e32 v159, s48, v117
	v_add_nc_u32_e32 v160, s48, v116
	v_add_nc_u32_e32 v161, s48, v115
	v_add_nc_u32_e32 v162, s48, v114
	v_add_nc_u32_e32 v163, s48, v113
	v_add_nc_u32_e32 v164, s48, v112
	v_add_nc_u32_e32 v165, s48, v111
	v_add_nc_u32_e32 v166, s48, v110
	v_add_nc_u32_e32 v167, s48, v109
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[28:35], v[12:15], v[5:8], v[20:27] neg_lo:[1,1,0]
	v_lshl_or_b32 v15, v171, 16, v180
	v_lshl_or_b32 v14, v168, 16, v170
	v_lshl_or_b32 v13, v172, 16, v169
	ds_load_u8 v153, v153
	ds_load_u8 v154, v154
	ds_load_u8 v151, v151
	ds_load_u8 v158, v158
	ds_load_u8 v159, v159
	ds_load_u8 v156, v156
	ds_load_u8 v157, v157
	ds_load_u8 v152, v152
	ds_load_u8 v162, v162
	ds_load_u8 v163, v163
	ds_load_u8 v160, v160
	ds_load_u8 v166, v166
	ds_load_u8 v167, v167
	ds_load_u8 v164, v164
	ds_load_u8 v165, v165
	ds_load_u8 v161, v161
	ds_load_u8 v168, v37
	ds_load_u8 v169, v38
	ds_load_u8 v16, v16
	ds_load_u8 v141, v141
	ds_load_u8 v142, v142
	ds_load_u8 v170, v39
	ds_load_u8 v40, v40
	ds_load_u8 v171, v36
	ds_load_u8 v145, v145
	ds_load_u8 v146, v146
	ds_load_u8 v143, v143
	ds_load_u8 v149, v149
	ds_load_u8 v150, v150
	ds_load_u8 v147, v147
	ds_load_u8 v148, v148
	ds_load_u8 v144, v144
	v_perm_b32 v12, v179, v178, 0xc0c0004
	v_perm_b32 v36, v177, v176, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v37, v154, v153, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v38, v152, v151, 0xc0c0004
	v_perm_b32 v151, v159, v158, 0xc0c0004
	v_perm_b32 v152, v157, v156, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v153, v163, v162, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v154, v161, v160, 0xc0c0004
	v_perm_b32 v156, v167, v166, 0xc0c0004
	v_perm_b32 v157, v165, v164, 0xc0c0004
	v_lshl_or_b32 v12, v36, 16, v12
	v_lshl_or_b32 v39, v38, 16, v37
	v_lshl_or_b32 v38, v152, 16, v151
	v_lshl_or_b32 v37, v154, 16, v153
	v_lshl_or_b32 v36, v157, 16, v156
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v151, v169, v168, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v16, v171, v16, 0xc0c0004
	v_perm_b32 v141, v142, v141, 0xc0c0004
	v_perm_b32 v40, v40, v170, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v142, v146, v145, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	v_perm_b32 v144, v150, v149, 0xc0c0004
	v_perm_b32 v145, v148, v147, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[20:27], v[36:39], v[5:8], v[20:27] neg_lo:[1,1,0]
	v_lshl_or_b32 v39, v16, 16, v151
	v_lshl_or_b32 v38, v40, 16, v141
	v_lshl_or_b32 v37, v143, 16, v142
	v_lshl_or_b32 v36, v145, 16, v144
	v_wmma_i32_16x16x16_iu8 v[28:35], v[12:15], v[1:4], v[28:35] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[20:27], v[36:39], v[1:4], v[20:27] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v151, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v153, v31
	v_cvt_f32_i32_e32 v141, v32
	v_cvt_f32_i32_e32 v143, v33
	v_cvt_f32_i32_e32 v145, v34
	v_cvt_f32_i32_e32 v148, v35
	v_cvt_f32_i32_e32 v146, v20
	v_cvt_f32_i32_e32 v149, v21
	v_cvt_f32_i32_e32 v152, v22
	v_cvt_f32_i32_e32 v154, v23
	v_cvt_f32_i32_e32 v142, v24
	v_cvt_f32_i32_e32 v144, v25
	v_cvt_f32_i32_e32 v147, v26
	v_cvt_f32_i32_e32 v150, v27
	v_cvt_f32_i32_e32 v156, v28
	v_cvt_f32_i32_e32 v157, v29
.LBB0_10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v169, 0
	v_mov_b32_e32 v166, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v21, s47, v102
	v_add_nc_u32_e32 v22, s47, v100
	v_add_nc_u32_e32 v15, s47, v105
	v_add_nc_u32_e32 v25, s47, v94
	v_add_nc_u32_e32 v20, s47, v104
	v_add_nc_u32_e32 v23, s47, v98
	v_add_nc_u32_e32 v24, s47, v96
	v_add_nc_u32_e32 v26, s47, v92
	v_add_nc_u32_e32 v29, s47, v86
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	ds_load_u8 v22, v22
	ds_load_u8 v15, v15
	ds_load_u8 v25, v25
	ds_load_u8 v26, v26
	ds_load_u8 v23, v23
	ds_load_u8 v24, v24
	ds_load_u8 v20, v20
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v30, s47, v84
	v_add_nc_u32_e32 v27, s47, v90
	v_add_nc_u32_e32 v33, s47, v78
	v_add_nc_u32_e32 v28, s47, v88
	v_add_nc_u32_e32 v31, s47, v82
	v_add_nc_u32_e32 v32, s47, v80
	v_add_nc_u32_e32 v34, s47, v77
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v29, v29
	ds_load_u8 v30, v30
	ds_load_u8 v27, v27
	ds_load_u8 v33, v33
	ds_load_u8 v34, v34
	ds_load_u8 v31, v31
	ds_load_u8 v32, v32
	ds_load_u8 v28, v28
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v14, s47, v106
	v_add_nc_u32_e32 v35, s47, v103
	v_add_nc_u32_e32 v12, s47, v108
	v_add_nc_u32_e32 v185, s47, v97
	v_add_nc_u32_e32 v183, s47, v101
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v184, s47, v99
	v_add_nc_u32_e32 v186, s47, v95
	v_add_nc_u32_e32 v187, s47, v93
	v_add_nc_u32_e32 v188, s47, v91
	v_add_nc_u32_e32 v189, s47, v89
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v15, v20, v15, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v190, s47, v87
	v_add_nc_u32_e32 v191, s47, v81
	v_add_nc_u32_e32 v192, s47, v79
	v_add_nc_u32_e32 v13, s47, v107
	v_add_nc_u32_e32 v20, s47, v85
	v_add_nc_u32_e32 v22, s47, v83
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v15, v15, 16, v21
	v_perm_b32 v21, v26, v25, 0xc0c0004
	v_perm_b32 v23, v24, v23, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v24, v30, v29, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v28, v27, 0xc0c0004
	ds_load_u8 v28, v14
	ds_load_u8 v29, v35
	ds_load_u8 v30, v12
	ds_load_u8 v35, v185
	ds_load_u8 v185, v186
	ds_load_u8 v183, v183
	ds_load_u8 v184, v184
	ds_load_u8 v186, v13
	ds_load_u8 v189, v189
	ds_load_u8 v190, v190
	ds_load_u8 v187, v187
	ds_load_u8 v191, v191
	ds_load_u8 v192, v192
	ds_load_u8 v193, v20
	ds_load_u8 v194, v22
	ds_load_u8 v188, v188
	v_perm_b32 v12, v34, v33, 0xc0c0004
	v_perm_b32 v20, v32, v31, 0xc0c0004
	s_mov_b32 s19, s12
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v16, s47, v140
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v14, v23, 16, v21
	v_lshl_or_b32 v13, v25, 16, v24
	v_lshl_or_b32 v12, v20, 16, v12
	v_dual_mov_b32 v27, s19 :: v_dual_add_nc_u32 v36, s47, v139
	v_mov_b32_e32 v25, s17
	v_dual_mov_b32 v26, s18 :: v_dual_add_nc_u32 v37, s47, v138
	v_dual_mov_b32 v23, s15 :: v_dual_add_nc_u32 v38, s47, v137
	v_dual_mov_b32 v24, s16 :: v_dual_add_nc_u32 v39, s47, v136
	v_dual_mov_b32 v21, s13 :: v_dual_add_nc_u32 v40, s47, v135
	v_dual_mov_b32 v22, s14 :: v_dual_add_nc_u32 v155, s47, v134
	v_dual_mov_b32 v20, s12 :: v_dual_add_nc_u32 v159, s47, v132
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v169, s47, v122
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v195, v29, v28, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v186, v186, v30, 0xc0c0004
	v_perm_b32 v185, v185, v35, 0xc0c0004
	v_perm_b32 v183, v184, v183, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v184, v190, v189, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v188, v187, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v170, s47, v121
	v_add_nc_u32_e32 v167, s47, v124
	v_add_nc_u32_e32 v173, s47, v118
	v_add_nc_u32_e32 v158, s47, v133
	v_add_nc_u32_e32 v160, s47, v131
	v_add_nc_u32_e32 v161, s47, v130
	v_add_nc_u32_e32 v162, s47, v129
	v_add_nc_u32_e32 v163, s47, v128
	v_add_nc_u32_e32 v164, s47, v127
	v_add_nc_u32_e32 v165, s47, v126
	v_add_nc_u32_e32 v166, s47, v125
	v_add_nc_u32_e32 v168, s47, v123
	v_add_nc_u32_e32 v171, s47, v120
	v_add_nc_u32_e32 v172, s47, v119
	v_add_nc_u32_e32 v174, s47, v117
	v_add_nc_u32_e32 v175, s47, v116
	v_add_nc_u32_e32 v176, s47, v115
	v_add_nc_u32_e32 v177, s47, v114
	v_add_nc_u32_e32 v178, s47, v113
	v_add_nc_u32_e32 v179, s47, v112
	v_add_nc_u32_e32 v180, s47, v111
	v_add_nc_u32_e32 v181, s47, v110
	v_add_nc_u32_e32 v182, s47, v109
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[28:35], v[12:15], v[5:8], v[20:27] neg_lo:[1,1,0]
	v_lshl_or_b32 v15, v186, 16, v195
	v_lshl_or_b32 v14, v183, 16, v185
	v_lshl_or_b32 v13, v187, 16, v184
	ds_load_u8 v169, v169
	ds_load_u8 v170, v170
	ds_load_u8 v167, v167
	ds_load_u8 v173, v173
	ds_load_u8 v174, v174
	ds_load_u8 v171, v171
	ds_load_u8 v172, v172
	ds_load_u8 v168, v168
	ds_load_u8 v177, v177
	ds_load_u8 v178, v178
	ds_load_u8 v175, v175
	ds_load_u8 v181, v181
	ds_load_u8 v182, v182
	ds_load_u8 v179, v179
	ds_load_u8 v180, v180
	ds_load_u8 v176, v176
	ds_load_u8 v183, v37
	ds_load_u8 v184, v38
	ds_load_u8 v16, v16
	ds_load_u8 v155, v155
	ds_load_u8 v158, v158
	ds_load_u8 v185, v39
	ds_load_u8 v40, v40
	ds_load_u8 v186, v36
	ds_load_u8 v161, v161
	ds_load_u8 v162, v162
	ds_load_u8 v159, v159
	ds_load_u8 v165, v165
	ds_load_u8 v166, v166
	ds_load_u8 v163, v163
	ds_load_u8 v164, v164
	ds_load_u8 v160, v160
	v_perm_b32 v12, v192, v191, 0xc0c0004
	v_perm_b32 v36, v194, v193, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v37, v170, v169, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v38, v168, v167, 0xc0c0004
	v_perm_b32 v167, v174, v173, 0xc0c0004
	v_perm_b32 v168, v172, v171, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v169, v178, v177, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v170, v176, v175, 0xc0c0004
	v_perm_b32 v171, v182, v181, 0xc0c0004
	v_perm_b32 v172, v180, v179, 0xc0c0004
	v_lshl_or_b32 v12, v36, 16, v12
	v_lshl_or_b32 v39, v38, 16, v37
	v_lshl_or_b32 v38, v168, 16, v167
	v_lshl_or_b32 v37, v170, 16, v169
	v_lshl_or_b32 v36, v172, 16, v171
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v167, v184, v183, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v16, v186, v16, 0xc0c0004
	v_perm_b32 v155, v158, v155, 0xc0c0004
	v_perm_b32 v40, v40, v185, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v158, v162, v161, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	v_perm_b32 v160, v166, v165, 0xc0c0004
	v_perm_b32 v161, v164, v163, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[20:27], v[36:39], v[5:8], v[20:27] neg_lo:[1,1,0]
	v_lshl_or_b32 v8, v16, 16, v167
	v_lshl_or_b32 v7, v40, 16, v155
	v_lshl_or_b32 v6, v159, 16, v158
	v_lshl_or_b32 v5, v161, 16, v160
	v_wmma_i32_16x16x16_iu8 v[28:35], v[12:15], v[1:4], v[28:35] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[20:27], v[5:8], v[1:4], v[20:27] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v170, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v172, v31
	v_cvt_f32_i32_e32 v160, v32
	v_cvt_f32_i32_e32 v162, v33
	v_cvt_f32_i32_e32 v164, v34
	v_cvt_f32_i32_e32 v167, v35
	v_cvt_f32_i32_e32 v165, v20
	v_cvt_f32_i32_e32 v168, v21
	v_cvt_f32_i32_e32 v171, v22
	v_cvt_f32_i32_e32 v173, v23
	v_cvt_f32_i32_e32 v161, v24
	v_cvt_f32_i32_e32 v163, v25
	v_cvt_f32_i32_e32 v166, v26
	v_cvt_f32_i32_e32 v169, v27
	v_cvt_f32_i32_e32 v155, v28
	v_cvt_f32_i32_e32 v174, v29
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s26, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s0, s0, 24
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s0, s26, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s26, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s27, s11
	.loc	1 366 40 is_stmt 0              ; generate_amdgcn.py:366:40
	s_mul_i32 s4, s0, s34
	.loc	1 363 34 is_stmt 1              ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt lgkmcnt(0)
	v_add_lshl_u32 v1, v76, s0, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v2, v75, s4, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s0, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s0
	v_dual_mov_b32 v190, 0 :: v_dual_and_b32 v3, 32, v9
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	v_add3_u32 v208, s22, s23, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_add3_u32 v3, 0, v19, v3
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_and_b32 s9, s9, 0xffff
	v_dual_mov_b32 v176, 0 :: v_dual_add_nc_u32 v159, 0, v17
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v2, v2, s[24:27], 0 offen
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v4, v208, s4, 1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_add_nc_u32_e32 v158, v3, v18
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v207, v1, s[8:11], 0 offen
	v_dual_mov_b32 v178, 0 :: v_dual_add_nc_u32 v17, s46, v10
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e32 v3, 0x80000000, v4, vcc_lo
	v_dual_mov_b32 v191, 0 :: v_dual_add_nc_u32 v18, s46, v11
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v188, 0
	v_mov_b32_e32 v185, 0
	v_mov_b32_e32 v187, 0
	v_mov_b32_e32 v189, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v180, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v2, 16, v2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v158, v2 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	buffer_load_u16 v1, v3, s[24:27], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v2, 0, 1, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[13:16], v159 offset:33792
	ds_load_b128 v[9:12], v159 offset:33808
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cmp_ne_u32_e64 s0, 1, v2
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[5:8], v159 offset:34304
	ds_load_b128 v[1:4], v159 offset:34320
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v158, v19 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[37:40], v17
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[33:36], v18
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v21, s45, v102
	v_add_nc_u32_e32 v22, s45, v100
	v_add_nc_u32_e32 v19, s45, v105
	v_add_nc_u32_e32 v25, s45, v94
	v_add_nc_u32_e32 v20, s45, v104
	v_add_nc_u32_e32 v23, s45, v98
	v_add_nc_u32_e32 v24, s45, v96
	v_add_nc_u32_e32 v26, s45, v92
	v_add_nc_u32_e32 v27, s45, v90
	v_add_nc_u32_e32 v28, s45, v88
	v_add_nc_u32_e32 v29, s45, v86
	v_add_nc_u32_e32 v30, s45, v84
	v_add_nc_u32_e32 v31, s45, v82
	v_add_nc_u32_e32 v32, s45, v80
	v_add_nc_u32_e32 v176, s45, v78
	v_add_nc_u32_e32 v177, s45, v77
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v21, v21
	ds_load_u8 v22, v22
	ds_load_u8 v19, v19
	ds_load_u8 v25, v25
	ds_load_u8 v26, v26
	ds_load_u8 v23, v23
	ds_load_u8 v24, v24
	ds_load_u8 v20, v20
	ds_load_u8 v29, v29
	ds_load_u8 v30, v30
	ds_load_u8 v27, v27
	ds_load_u8 v176, v176
	ds_load_u8 v214, v177
	ds_load_u8 v31, v31
	ds_load_u8 v32, v32
	ds_load_u8 v28, v28
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v177, s45, v106
	v_add_nc_u32_e32 v178, s45, v103
	v_add_nc_u32_e32 v17, s45, v108
	v_add_nc_u32_e32 v216, s45, v97
	v_add_nc_u32_e32 v215, s45, v99
	v_add_nc_u32_e32 v217, s45, v95
	v_add_nc_u32_e32 v218, s45, v93
	v_add_nc_u32_e32 v219, s45, v91
	v_add_nc_u32_e32 v220, s45, v89
	v_add_nc_u32_e32 v221, s45, v87
	v_add_nc_u32_e32 v222, s45, v85
	v_add_nc_u32_e32 v223, s45, v83
	v_add_nc_u32_e32 v224, s45, v81
	v_add_nc_u32_e32 v18, s45, v107
	v_add_nc_u32_e32 v179, s45, v101
	v_add_nc_u32_e32 v225, s45, v79
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	v_perm_b32 v20, v26, v25, 0xc0c0004
	v_perm_b32 v22, v24, v23, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v23, v30, v29, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v24, v28, v27, 0xc0c0004
	ds_load_u8 v25, v177
	ds_load_u8 v26, v178
	ds_load_u8 v27, v17
	ds_load_u8 v28, v216
	ds_load_u8 v29, v217
	ds_load_u8 v30, v179
	ds_load_u8 v215, v215
	ds_load_u8 v216, v18
	ds_load_u8 v217, v220
	ds_load_u8 v220, v221
	ds_load_u8 v218, v218
	ds_load_u8 v221, v224
	ds_load_u8 v224, v225
	ds_load_u8 v222, v222
	ds_load_u8 v223, v223
	ds_load_u8 v219, v219
	v_perm_b32 v17, v214, v176, 0xc0c0004
	v_perm_b32 v18, v32, v31, 0xc0c0004
	s_mov_b32 s19, s12
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v181, s45, v139
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v179, v19, 16, v21
	v_lshl_or_b32 v178, v22, 16, v20
	v_lshl_or_b32 v177, v24, 16, v23
	v_lshl_or_b32 v176, v18, 16, v17
	v_mov_b32_e32 v24, s19
	v_dual_mov_b32 v23, s18 :: v_dual_add_nc_u32 v180, s45, v140
	v_dual_mov_b32 v21, s16 :: v_dual_add_nc_u32 v182, s45, v138
	v_dual_mov_b32 v22, s17 :: v_dual_add_nc_u32 v183, s45, v137
	v_dual_mov_b32 v19, s14 :: v_dual_add_nc_u32 v184, s45, v136
	v_dual_mov_b32 v20, s15 :: v_dual_add_nc_u32 v185, s45, v135
	v_dual_mov_b32 v17, s12 :: v_dual_add_nc_u32 v186, s45, v134
	v_dual_mov_b32 v18, s13 :: v_dual_add_nc_u32 v187, s45, v133
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v198, s45, v122
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v214, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v216, v216, v27, 0xc0c0004
	v_perm_b32 v225, v29, v28, 0xc0c0004
	v_perm_b32 v215, v215, v30, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v217, v220, v217, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v218, v219, v218, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v199, s45, v121
	v_add_nc_u32_e32 v196, s45, v124
	v_add_nc_u32_e32 v202, s45, v118
	v_add_nc_u32_e32 v188, s45, v132
	v_add_nc_u32_e32 v189, s45, v131
	v_add_nc_u32_e32 v190, s45, v130
	v_add_nc_u32_e32 v191, s45, v129
	v_add_nc_u32_e32 v192, s45, v128
	v_add_nc_u32_e32 v193, s45, v127
	v_add_nc_u32_e32 v194, s45, v126
	v_add_nc_u32_e32 v195, s45, v125
	v_add_nc_u32_e32 v197, s45, v123
	v_add_nc_u32_e32 v200, s45, v120
	v_add_nc_u32_e32 v201, s45, v119
	v_add_nc_u32_e32 v203, s45, v117
	v_add_nc_u32_e32 v204, s45, v116
	v_add_nc_u32_e32 v205, s45, v115
	v_add_nc_u32_e32 v206, s45, v114
	v_add_nc_u32_e32 v209, s45, v113
	v_add_nc_u32_e32 v210, s45, v112
	v_add_nc_u32_e32 v211, s45, v111
	v_add_nc_u32_e32 v212, s45, v110
	v_add_nc_u32_e32 v213, s45, v109
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[25:32], v[176:179], v[37:40], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v179, v216, 16, v214
	v_lshl_or_b32 v178, v215, 16, v225
	v_lshl_or_b32 v177, v218, 16, v217
	ds_load_u8 v198, v198
	ds_load_u8 v199, v199
	ds_load_u8 v196, v196
	ds_load_u8 v202, v202
	ds_load_u8 v203, v203
	ds_load_u8 v200, v200
	ds_load_u8 v201, v201
	ds_load_u8 v197, v197
	ds_load_u8 v206, v206
	ds_load_u8 v209, v209
	ds_load_u8 v204, v204
	ds_load_u8 v212, v212
	ds_load_u8 v213, v213
	ds_load_u8 v210, v210
	ds_load_u8 v211, v211
	ds_load_u8 v205, v205
	ds_load_u8 v214, v182
	ds_load_u8 v215, v183
	ds_load_u8 v216, v180
	ds_load_u8 v186, v186
	ds_load_u8 v187, v187
	ds_load_u8 v184, v184
	ds_load_u8 v185, v185
	ds_load_u8 v217, v181
	ds_load_u8 v190, v190
	ds_load_u8 v191, v191
	ds_load_u8 v188, v188
	ds_load_u8 v194, v194
	ds_load_u8 v195, v195
	ds_load_u8 v192, v192
	ds_load_u8 v193, v193
	ds_load_u8 v189, v189
	v_perm_b32 v176, v224, v221, 0xc0c0004
	v_perm_b32 v180, v223, v222, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v181, v199, v198, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v182, v197, v196, 0xc0c0004
	v_perm_b32 v196, v203, v202, 0xc0c0004
	v_perm_b32 v197, v201, v200, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v198, v209, v206, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v199, v205, v204, 0xc0c0004
	v_perm_b32 v200, v213, v212, 0xc0c0004
	v_perm_b32 v201, v211, v210, 0xc0c0004
	v_lshl_or_b32 v176, v180, 16, v176
	v_lshl_or_b32 v183, v182, 16, v181
	v_lshl_or_b32 v182, v197, 16, v196
	v_lshl_or_b32 v181, v199, 16, v198
	v_lshl_or_b32 v180, v201, 16, v200
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v196, v215, v214, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v197, v217, v216, 0xc0c0004
	v_perm_b32 v186, v187, v186, 0xc0c0004
	v_perm_b32 v184, v185, v184, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v185, v191, v190, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v189, v188, 0xc0c0004
	v_perm_b32 v188, v195, v194, 0xc0c0004
	v_perm_b32 v189, v193, v192, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[17:24], v[180:183], v[37:40], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v183, v197, 16, v196
	v_lshl_or_b32 v182, v184, 16, v186
	v_lshl_or_b32 v181, v187, 16, v185
	v_lshl_or_b32 v180, v189, 16, v188
	v_wmma_i32_16x16x16_iu8 v[25:32], v[176:179], v[33:36], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[180:183], v[33:36], v[17:24] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v178, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v179, v28
	v_cvt_f32_i32_e32 v176, v29
	v_cvt_f32_i32_e32 v177, v30
	v_cvt_f32_i32_e32 v180, v31
	v_cvt_f32_i32_e32 v181, v32
	v_cvt_f32_i32_e32 v182, v17
	v_cvt_f32_i32_e32 v183, v18
	v_cvt_f32_i32_e32 v186, v19
	v_cvt_f32_i32_e32 v187, v20
	v_cvt_f32_i32_e32 v184, v21
	v_cvt_f32_i32_e32 v185, v22
	v_cvt_f32_i32_e32 v188, v23
	v_cvt_f32_i32_e32 v189, v24
	v_cvt_f32_i32_e32 v190, v25
	v_cvt_f32_i32_e32 v191, v26
.LBB0_14:
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_b128 v[29:32], v159 offset:33792
	ds_load_b128 v[25:28], v159 offset:33808
	ds_load_b128 v[21:24], v159 offset:34304
	ds_load_b128 v[17:20], v159 offset:34320
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v205, 0
	v_mov_b32_e32 v206, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v102, s44, v102
	v_add_nc_u32_e32 v100, s44, v100
	v_add_nc_u32_e32 v105, s44, v105
	v_add_nc_u32_e32 v94, s44, v94
	v_add_nc_u32_e32 v98, s44, v98
	v_add_nc_u32_e32 v96, s44, v96
	v_add_nc_u32_e32 v92, s44, v92
	v_add_nc_u32_e32 v104, s44, v104
	v_add_nc_u32_e32 v86, s44, v86
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v102, v102
	ds_load_u8 v100, v100
	ds_load_u8 v105, v105
	ds_load_u8 v94, v94
	ds_load_u8 v92, v92
	ds_load_u8 v98, v98
	ds_load_u8 v175, v96
	ds_load_u8 v96, v104
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v84, s44, v84
	v_add_nc_u32_e32 v90, s44, v90
	v_add_nc_u32_e32 v78, s44, v78
	v_add_nc_u32_e32 v88, s44, v88
	v_add_nc_u32_e32 v82, s44, v82
	v_add_nc_u32_e32 v80, s44, v80
	v_add_nc_u32_e32 v77, s44, v77
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v86, v86
	ds_load_u8 v84, v84
	ds_load_u8 v90, v90
	ds_load_u8 v78, v78
	ds_load_u8 v77, v77
	ds_load_u8 v82, v82
	ds_load_u8 v80, v80
	ds_load_u8 v88, v88
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v106, s44, v106
	v_add_nc_u32_e32 v103, s44, v103
	v_add_nc_u32_e32 v108, s44, v108
	v_add_nc_u32_e32 v97, s44, v97
	v_add_nc_u32_e32 v107, s44, v107
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v100, v100, v102, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v101, s44, v101
	v_add_nc_u32_e32 v99, s44, v99
	v_add_nc_u32_e32 v95, s44, v95
	v_add_nc_u32_e32 v89, s44, v89
	v_add_nc_u32_e32 v87, s44, v87
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v96, v96, v105, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v85, s44, v85
	v_add_nc_u32_e32 v93, s44, v93
	v_add_nc_u32_e32 v91, s44, v91
	v_add_nc_u32_e32 v83, s44, v83
	v_add_nc_u32_e32 v81, s44, v81
	v_add_nc_u32_e32 v79, s44, v79
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v96, v96, 16, v100
	v_perm_b32 v92, v92, v94, 0xc0c0004
	v_perm_b32 v94, v175, v98, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v84, v84, v86, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v88, v90, 0xc0c0004
	ds_load_u8 v88, v106
	ds_load_u8 v90, v103
	ds_load_u8 v98, v108
	ds_load_u8 v97, v97
	ds_load_u8 v100, v95
	ds_load_u8 v101, v101
	ds_load_u8 v99, v99
	ds_load_u8 v102, v107
	ds_load_u8 v89, v89
	ds_load_u8 v87, v87
	ds_load_u8 v103, v93
	ds_load_u8 v104, v81
	ds_load_u8 v105, v79
	ds_load_u8 v106, v85
	ds_load_u8 v107, v83
	ds_load_u8 v85, v91
	v_perm_b32 v77, v77, v78, 0xc0c0004
	v_perm_b32 v78, v80, v82, 0xc0c0004
	s_mov_b32 s19, s12
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v139, s44, v139
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v95, v94, 16, v92
	v_lshl_or_b32 v94, v86, 16, v84
	v_lshl_or_b32 v93, v78, 16, v77
	v_mov_b32_e32 v84, s19
	v_dual_mov_b32 v83, s18 :: v_dual_add_nc_u32 v140, s44, v140
	v_dual_mov_b32 v81, s16 :: v_dual_add_nc_u32 v138, s44, v138
	v_dual_mov_b32 v82, s17 :: v_dual_add_nc_u32 v137, s44, v137
	v_dual_mov_b32 v79, s14 :: v_dual_add_nc_u32 v136, s44, v136
	v_dual_mov_b32 v80, s15 :: v_dual_add_nc_u32 v135, s44, v135
	v_dual_mov_b32 v77, s12 :: v_dual_add_nc_u32 v134, s44, v134
	v_dual_mov_b32 v78, s13 :: v_dual_add_nc_u32 v133, s44, v133
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v122, s44, v122
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v108, v90, v88, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v98, v102, v98, 0xc0c0004
	v_perm_b32 v97, v100, v97, 0xc0c0004
	v_perm_b32 v99, v99, v101, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v100, v87, v89, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v101, v85, v103, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v121, s44, v121
	v_add_nc_u32_e32 v124, s44, v124
	v_add_nc_u32_e32 v118, s44, v118
	v_add_nc_u32_e32 v130, s44, v130
	v_add_nc_u32_e32 v129, s44, v129
	v_add_nc_u32_e32 v128, s44, v128
	v_add_nc_u32_e32 v127, s44, v127
	v_add_nc_u32_e32 v126, s44, v126
	v_add_nc_u32_e32 v125, s44, v125
	v_add_nc_u32_e32 v123, s44, v123
	v_add_nc_u32_e32 v120, s44, v120
	v_add_nc_u32_e32 v119, s44, v119
	v_add_nc_u32_e32 v117, s44, v117
	v_add_nc_u32_e32 v116, s44, v116
	v_add_nc_u32_e32 v115, s44, v115
	v_add_nc_u32_e32 v114, s44, v114
	v_add_nc_u32_e32 v113, s44, v113
	v_add_nc_u32_e32 v112, s44, v112
	v_add_nc_u32_e32 v111, s44, v111
	v_add_nc_u32_e32 v110, s44, v110
	v_add_nc_u32_e32 v109, s44, v109
	v_add_nc_u32_e32 v132, s44, v132
	v_add_nc_u32_e32 v131, s44, v131
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[85:92], v[93:96], v[37:40], v[77:84] neg_lo:[1,1,0]
	v_lshl_or_b32 v96, v98, 16, v108
	v_lshl_or_b32 v95, v99, 16, v97
	v_lshl_or_b32 v94, v101, 16, v100
	v_perm_b32 v93, v105, v104, 0xc0c0004
	ds_load_u8 v97, v122
	ds_load_u8 v98, v121
	ds_load_u8 v99, v124
	ds_load_u8 v100, v118
	ds_load_u8 v101, v117
	ds_load_u8 v102, v120
	ds_load_u8 v103, v119
	ds_load_u8 v104, v123
	ds_load_u8 v105, v114
	ds_load_u8 v108, v113
	ds_load_u8 v113, v116
	ds_load_u8 v110, v110
	ds_load_u8 v109, v109
	ds_load_u8 v112, v112
	ds_load_u8 v111, v111
	ds_load_u8 v114, v115
	ds_load_u8 v115, v138
	ds_load_u8 v116, v137
	ds_load_u8 v117, v140
	ds_load_u8 v118, v134
	ds_load_u8 v119, v133
	ds_load_u8 v120, v136
	ds_load_u8 v121, v135
	ds_load_u8 v122, v139
	ds_load_u8 v123, v130
	ds_load_u8 v124, v129
	ds_load_u8 v129, v132
	ds_load_u8 v126, v126
	ds_load_u8 v125, v125
	ds_load_u8 v128, v128
	ds_load_u8 v127, v127
	ds_load_u8 v130, v131
	v_perm_b32 v106, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v98, v104, v99, 0xc0c0004
	v_perm_b32 v99, v101, v100, 0xc0c0004
	v_perm_b32 v101, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v102, v108, v105, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v103, v114, v113, 0xc0c0004
	v_perm_b32 v104, v109, v110, 0xc0c0004
	v_perm_b32 v105, v111, v112, 0xc0c0004
	v_lshl_or_b32 v93, v106, 16, v93
	v_lshl_or_b32 v100, v98, 16, v97
	v_lshl_or_b32 v99, v101, 16, v99
	v_lshl_or_b32 v98, v103, 16, v102
	v_lshl_or_b32 v97, v105, 16, v104
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v101, v116, v115, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v102, v122, v117, 0xc0c0004
	v_perm_b32 v103, v119, v118, 0xc0c0004
	v_perm_b32 v104, v121, v120, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v105, v124, v123, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v106, v130, v129, 0xc0c0004
	v_perm_b32 v107, v125, v126, 0xc0c0004
	v_perm_b32 v108, v127, v128, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[77:84], v[97:100], v[37:40], v[77:84] neg_lo:[1,1,0]
	v_lshl_or_b32 v40, v102, 16, v101
	v_lshl_or_b32 v39, v104, 16, v103
	v_lshl_or_b32 v38, v106, 16, v105
	v_lshl_or_b32 v37, v108, 16, v107
	v_wmma_i32_16x16x16_iu8 v[85:92], v[93:96], v[33:36], v[85:92] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[77:84], v[37:40], v[33:36], v[77:84] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v175, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v192, v86
	v_cvt_f32_i32_e32 v195, v87
	v_cvt_f32_i32_e32 v196, v88
	v_cvt_f32_i32_e32 v193, v89
	v_cvt_f32_i32_e32 v194, v90
	v_cvt_f32_i32_e32 v197, v91
	v_cvt_f32_i32_e32 v198, v92
	v_cvt_f32_i32_e32 v199, v77
	v_cvt_f32_i32_e32 v200, v78
	v_cvt_f32_i32_e32 v203, v79
	v_cvt_f32_i32_e32 v204, v80
	v_cvt_f32_i32_e32 v201, v81
	v_cvt_f32_i32_e32 v202, v82
	v_cvt_f32_i32_e32 v205, v83
	v_cvt_f32_i32_e32 v206, v84
.LBB0_16:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s35, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s26, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s0, s0, 24
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s27, s11
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s0, s35, s0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_waitcnt lgkmcnt(4)
	v_mov_b16_e32 v36.l, 0
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 8
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v36.h, v207.l
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s1, s0, s34
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v33, v76, s0, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v34, v75, s1, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s0, -1, 0
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v21, v21, v36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s0
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v24, v24, v36 :: v_dual_cndmask_b32 v33, 0x80000000, v33
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v34, 0x80000000, v34 :: v_dual_mul_f32 v23, v23, v36
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v37, s23, v73
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	buffer_load_u16 v35, v34, s[24:27], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v34, v33, s[8:11], 0 offen
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v33, v208, s1, 1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v38, 16, v0
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v73, v29, v36
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v75, v13, v36
	v_mul_f32_e32 v77, v15, v36
	v_mul_f32_e32 v79, v9, v36
	v_mul_f32_e32 v81, v11, v36
	v_mul_f32_e32 v83, v5, v36
	v_mul_f32_e32 v84, v7, v36
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v18, v18, v36
	v_mul_f32_e32 v17, v17, v36
	v_mul_f32_e32 v20, v20, v36
	v_mul_f32_e32 v19, v19, v36
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v21, v21, v165, v56
	v_fma_f32 v23, v23, v171, v52
	v_fma_f32 v24, v24, v173, v53
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s33, s33, s23
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	v_dual_mov_b32 v39, 0x7632 :: v_dual_mul_f32 v40, v30, v36
	v_mov_b16_e32 v30.h, v36.l
	v_mov_b16_e32 v29.h, v36.l
	.loc	1 372 33 is_stmt 1              ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v32, v32, v36
	v_mul_f32_e32 v31, v31, v36
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v76, v16, v36
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v16.h, v36.l
	v_mov_b16_e32 v15.h, v36.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v26, v26, v36
	v_mul_f32_e32 v25, v25, v36
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v78, v10, v36
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v13.h, v36.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v28, v28, v36
	v_mul_f32_e32 v27, v27, v36
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v80, v12, v36
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v12.h, v36.l
	v_mov_b16_e32 v11.h, v36.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v82, v6, v36
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.h, v36.l
	v_mov_b16_e32 v9.h, v36.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v8, v8, v36
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.h, v36.l
	v_mov_b16_e32 v5.h, v36.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v85, v2, v36
	v_mul_f32_e32 v86, v1, v36
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v6.h, v36.l
	v_mov_b16_e32 v2.h, v36.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v4, v4, v36
	v_mul_f32_e32 v87, v3, v36
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v3.h, v36.l
	v_mov_b16_e32 v1.h, v36.l
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v88, v18, v163, v49
	v_fma_f32 v89, v19, v166, v44
	v_fma_f32 v90, v20, v169, v45
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v56, v56, v21, s3
	v_cndmask_b32_e64 v53, v53, v24, s3
	v_cndmask_b32_e64 v52, v52, v23, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v40, v40, v174, v72
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v91, v4, v150, v42
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v27, v27, v164, v60
	v_fma_f32 v28, v28, v167, v61
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v8, v8, v154, v51
	v_fma_f32 v86, v86, v142, v46
	v_fma_f32 v85, v85, v144, v47
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v60, v60, v27, s3
	v_cndmask_b32_e64 v61, v61, v28, s3
	v_cndmask_b32_e64 v8, v51, v8, s3
	v_cndmask_b32_e64 v51, v49, v88, s3
	v_cndmask_b32_e64 v44, v44, v89, s3
	v_cndmask_b32_e64 v45, v45, v90, s3
	v_cndmask_b32_e64 v42, v42, v91, s3
	s_mov_b32 s15, 0x76543210
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v0, 0x5410 :: v_dual_lshlrev_b32 v35, 16, v35
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_store_b32 v158, v35 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	buffer_load_u16 v33, v33, s[24:27], 0 offen
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v22, v22, v36
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v35, 1, v74
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v74, v14, v36
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v14.h, v36.l
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_add3_u32 v36, s33, s22, v37
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	v_fma_f32 v22, v22, v168, v57
	v_fma_f32 v37, v73, v155, v41
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v73, v75, v156, v70
	v_fma_f32 v75, v77, v151, v66
	v_fma_f32 v77, v79, v141, v62
	v_fma_f32 v79, v81, v145, v58
	v_fma_f32 v81, v83, v146, v54
	v_fma_f32 v83, v84, v152, v50
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v84, v17, v161, v48
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v57, v57, v22, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[17:20], v159 offset:33792
	ds_load_b128 v[21:24], v159 offset:33808
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add_lshl_u32 v4, v36, v35, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v72, v40, s3
	v_cndmask_b32_e64 v40, v70, v73, s3
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v70, 16, v34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v36, v41, v37, s3
	v_cndmask_b32_e64 v62, v62, v77, s3
	v_cndmask_b32_e64 v58, v58, v79, s3
	v_cndmask_b32_e64 v54, v54, v81, s3
	v_cndmask_b32_e64 v50, v50, v83, s3
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v20, v20, v70
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v31, v31, v170, v68
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v19, v19, v70
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v32, v32, v172, v69
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v21, v21, v70
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v76, v76, v153, v67
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v24, v24, v70
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v25, v25, v160, v64
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v23, v23, v70
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v26, v26, v162, v65
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v69, v32, s3
	v_cndmask_b32_e64 v68, v68, v31, s3
	v_cndmask_b32_e64 v31, v67, v76, s3
	v_cndmask_b32_e64 v32, v66, v75, s3
	v_cndmask_b32_e64 v65, v65, v26, s3
	v_cndmask_b32_e64 v64, v64, v25, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[25:28], v159 offset:34304
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v48, v84, s3
	v_cndmask_b32_e64 v67, v47, v85, s3
	v_cndmask_b32_e64 v69, v46, v86, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	ds_load_b128 v[46:49], v159 offset:34320
	v_mul_f32_e32 v17, v17, v70
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v74, v74, v157, v71
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v18, v18, v70
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v72, v19, v178, v32
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v71, v74, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v73, v20, v179, v31
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v22, v22, v70
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v74, v21, v176, v62
	v_fma_f32 v76, v23, v180, v58
	v_fma_f32 v71, v18, v191, v37
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v62, v62, v74, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v25, v25, v70
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v78, v78, v143, v63
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v26, v26, v70
	v_mul_f32_e32 v28, v28, v70
	v_mul_f32_e32 v34, v47, v70
	v_mul_f32_e32 v47, v49, v70
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v49, v17, v190, v40
	v_fma_f32 v80, v80, v148, v59
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v63, v63, v78, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v27, v27, v70
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v78, v25, v182, v54
	v_fma_f32 v81, v28, v187, v8
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v59, v59, v80, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v75, v22, v177, v63
	v_fma_f32 v80, v27, v186, v50
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v37, v71, s2
	v_cndmask_b32_e64 v40, v40, v49, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v77, v24, v181, v59
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v31, v73, s2
	v_cndmask_b32_e64 v71, v32, v72, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v46, v46, v70
	v_mul_f32_e32 v48, v48, v70
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v47, v47, v189, v42
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v63, v63, v75, s2
	v_cndmask_b32_e64 v59, v59, v77, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v46, v46, v184, v69
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v58, v58, v76, s2
	v_cndmask_b32_e64 v54, v54, v78, s2
	v_cndmask_b32_e64 v8, v8, v81, s2
	v_cndmask_b32_e64 v50, v50, v80, s2
	v_cndmask_b32_e64 v46, v69, v46, s2
	v_cndmask_b32_e64 v42, v42, v47, s2
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v33
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	ds_store_b32 v158, v17 offset:33792
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v159 offset:33792
	ds_load_b128 v[21:24], v159 offset:33808
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v17, v17, v70
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v82, v82, v149, v55
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v18, v18, v70
	v_mul_f32_e32 v19, v19, v70
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v21, v21, v70
	v_mul_f32_e32 v20, v20, v70
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v55, v55, v82, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v82, v34, v185, v67
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	ds_load_b128 v[31:34], v159 offset:34320
	v_mul_f32_e32 v24, v24, v70
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v18, v18, v192, v35
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v79, v26, v183, v55
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	ds_load_b128 v[25:28], v159 offset:34304
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v19, v19, v195, v68
	v_fma_f32 v17, v17, v175, v36
	v_fma_f32 v21, v21, v193, v64
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v22, v22, v70
	v_mul_f32_e32 v23, v23, v70
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v20, v20, v196, v41
	v_fma_f32 v24, v24, v198, v61
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v35, v18, s2
	v_cndmask_b32_e64 v19, v68, v19, s2
	v_cndmask_b32_e64 v17, v36, v17, s2
	v_cndmask_b32_e64 v21, v64, v21, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v22, v22, v194, v65
	v_fma_f32 v23, v23, v197, v60
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v41, v20, s2
	v_cndmask_b32_e64 v24, v61, v24, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v32, v32, v70 :: v_dual_mul_f32 v41, 0xbfb8aa3b, v19
	v_mul_f32_e32 v33, v33, v70
	v_mul_f32_e32 v31, v31, v70
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v26, v26, v70
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v87, v87, v147, v43
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v27, v27, v70
	v_mul_f32_e32 v25, v25, v70
	v_dual_mul_f32 v28, v28, v70 :: v_dual_mul_f32 v35, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v43, v87, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v34, v34, v70
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v26, v26, v200, v57
	v_fma_f32 v27, v27, v203, v52
	v_fma_f32 v32, v32, v202, v51
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v36, 0xbfb8aa3b, v18
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v33, v33, v205, v44
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v48, v48, v188, v43
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v25, v25, v199, v56
	v_fma_f32 v28, v28, v204, v53
	v_fma_f32 v31, v31, v201, v66
	v_fma_f32 v34, v34, v206, v45
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v22, v65, v22, s2
	v_cndmask_b32_e64 v23, v60, v23, s2
	v_cndmask_b32_e64 v26, v57, v26, s2
	v_cndmask_b32_e64 v27, v52, v27, s2
	v_cndmask_b32_e64 v32, v51, v32, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v51, 0xbfb8aa3b, v24
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v44, v33, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v44, 0xbfb8aa3b, v20 :: v_dual_mul_f32 v47, 0xbfb8aa3b, v22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v55, v55, v79, s2
	v_cndmask_b32_e64 v67, v67, v82, s2
	v_cndmask_b32_e64 v43, v43, v48, s2
	v_cndmask_b32_e64 v25, v56, v25, s2
	v_cndmask_b32_e64 v28, v53, v28, s2
	v_cndmask_b32_e64 v31, v66, v31, s2
	v_cndmask_b32_e64 v34, v45, v34, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v41
	v_dual_mul_f32 v48, 0xbfb8aa3b, v23 :: v_dual_mul_f32 v53, 0xbfb8aa3b, v26
	v_dual_mul_f32 v56, 0xbfb8aa3b, v27 :: v_dual_mul_f32 v61, 0xbfb8aa3b, v32
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v35
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v44
	v_cndmask_b32_e64 v41, 0, 0x42800000, s2
	v_mul_f32_e32 v64, 0xbfb8aa3b, v33
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v47
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v53
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v56
	v_mul_f32_e32 v45, 0xbfb8aa3b, v21
	v_cndmask_b32_e64 v35, 0, 0x42800000, s0
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v18
	v_dual_mul_f32 v52, 0xbfb8aa3b, v25 :: v_dual_mul_f32 v57, 0xbfb8aa3b, v28
	v_dual_mul_f32 v60, 0xbfb8aa3b, v31 :: v_dual_mul_f32 v65, 0xbfb8aa3b, v34
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v51
	v_cndmask_b32_e64 v44, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v61
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v19
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v64
	v_cndmask_b32_e64 v47, 0, 0x42800000, s3
	v_cndmask_b32_e64 v53, 0, 0x42800000, s7
	v_cndmask_b32_e64 v56, 0, 0x42800000, s10
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v45
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v48
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v17
	v_exp_f32_e32 v36, v36
	v_cndmask_b32_e64 v51, 0, 0x42800000, s5
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v52
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v57
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v60
	v_dual_fmac_f32 v44, 0xbfb8aa3b, v20 :: v_dual_fmac_f32 v47, 0xbfb8aa3b, v22
	v_cndmask_b32_e64 v61, 0, 0x42800000, s11
	v_cndmask_b32_e64 v64, 0, 0x42800000, s14
	v_dual_fmac_f32 v53, 0xbfb8aa3b, v26 :: v_dual_fmac_f32 v56, 0xbfb8aa3b, v27
	v_cndmask_b32_e64 v45, 0, 0x42800000, s4
	v_cndmask_b32_e64 v48, 0, 0x42800000, s6
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v65
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v52, 0, 0x42800000, s8
	v_cndmask_b32_e64 v57, 0, 0x42800000, s9
	v_cndmask_b32_e64 v60, 0, 0x42800000, s12
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v24
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v44, v44
	v_dual_fmac_f32 v61, 0xbfb8aa3b, v32 :: v_dual_fmac_f32 v64, 0xbfb8aa3b, v33
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v56, v56
	v_cndmask_b32_e64 v65, 0, 0x42800000, s13
	v_dual_fmac_f32 v45, 0xbfb8aa3b, v21 :: v_dual_fmac_f32 v48, 0xbfb8aa3b, v23
	v_exp_f32_e32 v41, v41
	v_ldexp_f32 v36, v36, v66
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s0
	v_dual_fmac_f32 v52, 0xbfb8aa3b, v25 :: v_dual_fmac_f32 v57, 0xbfb8aa3b, v28
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v31
	v_exp_f32_e32 v51, v51
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s1
	v_exp_f32_e32 v53, v53
	v_exp_f32_e32 v64, v64
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v79, 0, 0xffffffc0, s10
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s2
	v_dual_fmac_f32 v65, 0xbfb8aa3b, v34 :: v_dual_add_f32 v36, 1.0, v36
	v_exp_f32_e32 v45, v45
	v_exp_f32_e32 v48, v48
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, s5
	v_exp_f32_e32 v60, v60
	v_ldexp_f32 v35, v35, v68
	v_ldexp_f32 v44, v44, v69
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, s7
	v_cndmask_b32_e64 v83, 0, 0xffffffc0, s14
	v_ldexp_f32 v47, v47, v72
	v_ldexp_f32 v56, v56, v79
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, s6
	v_exp_f32_e32 v52, v52
	v_exp_f32_e32 v57, v57
	v_ldexp_f32 v41, v41, v70
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v66, null, v36, v36, v18
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v81, 0, 0xffffffc0, s12
	v_exp_f32_e32 v61, v61
	v_ldexp_f32 v51, v51, v74
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v35, 1.0, v35 :: v_dual_add_f32 v44, 1.0, v44
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v53, v53, v76
	v_ldexp_f32 v64, v64, v83
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v47, 1.0, v47 :: v_dual_add_f32 v56, 1.0, v56
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, s8
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, s9
	v_ldexp_f32 v45, v45, v73
	v_ldexp_f32 v48, v48, v75
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v41, 1.0, v41
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v100, v66
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v80, 0, 0xffffffc0, s11
	v_ldexp_f32 v60, v60, v81
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v51, 1.0, v51
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v69, null, v35, v35, v17
	v_div_scale_f32 v72, null, v44, v44, v20
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v53, 1.0, v53 :: v_dual_add_f32 v64, 1.0, v64
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v90, null, v56, v56, v27
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v52, v52, v77
	v_ldexp_f32 v57, v57, v78
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v45, 1.0, v45 :: v_dual_add_f32 v48, 1.0, v48
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v74, null, v41, v41, v19
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v65, v65
	v_ldexp_f32 v61, v61, v80
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v60, 1.0, v60
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v76, null, v47, v47, v22
	v_div_scale_f32 v80, null, v51, v51, v24
	v_rcp_f32_e32 v101, v69
	v_rcp_f32_e32 v102, v72
	v_div_scale_f32 v98, null, v64, v64, v33
	v_rcp_f32_e32 v111, v90
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v52, 1.0, v52
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v78, null, v45, v45, v21
	v_div_scale_f32 v84, null, v53, v53, v26
	v_rcp_f32_e32 v103, v74
	v_fma_f32 v116, -v66, v100, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v57, 1.0, v57
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, s13
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v104, v76
	v_rcp_f32_e32 v106, v80
	v_div_scale_f32 v94, null, v60, v60, v31
	v_rcp_f32_e32 v115, v98
	v_rcp_f32_e32 v105, v78
	v_rcp_f32_e32 v108, v84
	v_fmac_f32_e32 v100, v116, v100
	v_div_scale_f32 v88, null, v57, v57, v28
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v65, v65, v82
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v117, -v69, v101, 1.0
	v_div_scale_f32 v82, null, v48, v48, v23
	v_fma_f32 v118, -v72, v102, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v61, 1.0, v61
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v113, v94
	v_div_scale_f32 v68, vcc_lo, v18, v36, v18
	v_fma_f32 v127, -v90, v111, 1.0
	v_rcp_f32_e32 v110, v88
	v_fma_f32 v119, -v74, v103, 1.0
	v_div_scale_f32 v70, s0, v17, v35, v17
	v_div_scale_f32 v86, null, v52, v52, v25
	v_fma_f32 v120, -v76, v104, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v65, 1.0, v65
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v122, -v80, v106, 1.0
	v_fmac_f32_e32 v101, v117, v101
	v_rcp_f32_e32 v107, v82
	v_fmac_f32_e32 v102, v118, v102
	v_div_scale_f32 v92, null, v61, v61, v32
	v_div_scale_f32 v73, s1, v20, v44, v20
	v_fma_f32 v131, -v98, v115, 1.0
	v_dual_fmac_f32 v111, v127, v111 :: v_dual_mul_f32 v116, v68, v100
	v_div_scale_f32 v75, s2, v19, v41, v19
	v_fma_f32 v121, -v78, v105, 1.0
	v_fma_f32 v124, -v84, v108, 1.0
	v_fmac_f32_e32 v103, v119, v103
	v_div_scale_f32 v77, s3, v22, v47, v22
	v_div_scale_f32 v81, s5, v24, v51, v24
	v_rcp_f32_e32 v109, v86
	v_fmac_f32_e32 v104, v120, v104
	v_div_scale_f32 v96, null, v65, v65, v34
	v_fmac_f32_e32 v106, v122, v106
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v117, v70, v101 :: v_dual_mul_f32 v120, v77, v104
	v_rcp_f32_e32 v112, v92
	v_fma_f32 v129, -v94, v113, 1.0
	v_dual_fmac_f32 v115, v131, v115 :: v_dual_mul_f32 v118, v73, v102
	v_fma_f32 v132, -v66, v116, v68
	v_div_scale_f32 v79, s4, v21, v45, v21
	v_div_scale_f32 v85, s7, v26, v53, v26
	v_fma_f32 v126, -v88, v110, 1.0
	v_dual_fmac_f32 v105, v121, v105 :: v_dual_fmac_f32 v108, v124, v108
	v_dual_mul_f32 v119, v75, v103 :: v_dual_mul_f32 v122, v81, v106
	v_rcp_f32_e32 v114, v96
	v_fma_f32 v133, -v69, v117, v70
	v_fma_f32 v123, -v82, v107, 1.0
	v_div_scale_f32 v95, s12, v31, v60, v31
	v_dual_fmac_f32 v113, v129, v113 :: v_dual_fmac_f32 v116, v132, v100
	v_fma_f32 v134, -v72, v118, v73
	v_dual_fmac_f32 v110, v126, v110 :: v_dual_mul_f32 v121, v79, v105
	v_mul_f32_e32 v124, v85, v108
	v_fma_f32 v135, -v74, v119, v75
	v_fma_f32 v125, -v86, v109, 1.0
	v_fma_f32 v138, -v80, v122, v81
	v_fmac_f32_e32 v117, v133, v101
	v_div_scale_f32 v83, s6, v23, v48, v23
	v_div_scale_f32 v99, s14, v33, v64, v33
	v_fma_f32 v128, -v92, v112, 1.0
	v_fmac_f32_e32 v107, v123, v107
	v_fma_f32 v136, -v76, v120, v77
	v_div_scale_f32 v89, s9, v28, v57, v28
	v_dual_mul_f32 v129, v95, v113 :: v_dual_fmac_f32 v118, v134, v102
	v_fma_f32 v66, -v66, v116, v68
	v_fma_f32 v140, -v84, v124, v85
	v_fmac_f32_e32 v119, v135, v103
	v_div_scale_f32 v87, s8, v25, v52, v25
	v_fma_f32 v130, -v96, v114, 1.0
	v_dual_fmac_f32 v109, v125, v109 :: v_dual_fmac_f32 v122, v138, v106
	v_fma_f32 v68, -v69, v117, v70
	v_div_scale_f32 v93, s11, v32, v61, v32
	v_dual_fmac_f32 v112, v128, v112 :: v_dual_mul_f32 v123, v83, v107
	v_dual_mul_f32 v126, v89, v110 :: v_dual_mul_f32 v131, v99, v115
	v_fmac_f32_e32 v120, v136, v104
	v_div_scale_f32 v91, s10, v27, v56, v27
	v_fma_f32 v137, -v78, v121, v79
	v_fma_f32 v69, -v72, v118, v73
	v_div_fmas_f32 v66, v66, v100, v116
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v124, v140, v108
	v_fma_f32 v70, -v74, v119, v75
	v_div_scale_f32 v97, s13, v34, v65, v34
	v_dual_fmac_f32 v114, v130, v114 :: v_dual_mul_f32 v125, v87, v109
	v_mul_f32_e32 v128, v93, v112
	v_div_fmas_f32 v68, v68, v101, v117
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v139, -v82, v123, v83
	v_fma_f32 v72, -v76, v120, v77
	v_dual_mul_f32 v127, v91, v111 :: v_dual_mul_f32 v130, v97, v114
	v_fma_f32 v142, -v88, v126, v89
	v_fmac_f32_e32 v121, v137, v105
	v_div_fmas_f32 v69, v69, v102, v118
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v18, v66, v36, v18
	v_div_fmas_f32 v36, v70, v103, v119
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v141, -v86, v125, v87
	v_fma_f32 v144, -v92, v128, v93
	v_fmac_f32_e32 v123, v139, v107
	v_div_fixup_f32 v17, v68, v35, v17
	v_div_fmas_f32 v35, v72, v104, v120
	v_fma_f32 v143, -v90, v127, v91
	v_fmac_f32_e32 v126, v142, v110
	v_fma_f32 v73, -v78, v121, v79
	v_fma_f32 v74, -v80, v122, v81
	v_fma_f32 v146, -v96, v130, v97
	v_fmac_f32_e32 v125, v141, v109
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v145, -v94, v129, v95
	v_fma_f32 v147, -v98, v131, v99
	v_fmac_f32_e32 v128, v144, v112
	v_fma_f32 v75, -v82, v123, v83
	v_div_fixup_f32 v20, v69, v44, v20
	v_div_fixup_f32 v22, v35, v47, v22
	v_dual_fmac_f32 v127, v143, v111 :: v_dual_mul_f32 v18, v37, v18
	v_div_fmas_f32 v37, v73, v105, v121
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v76, -v84, v124, v85
	v_div_fixup_f32 v19, v36, v41, v19
	v_div_fmas_f32 v36, v74, v106, v122
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v130, v146, v114
	v_fma_f32 v77, -v86, v125, v87
	v_dual_fmac_f32 v129, v145, v113 :: v_dual_mul_f32 v22, v63, v22
	v_dual_fmac_f32 v131, v147, v115 :: v_dual_mul_f32 v20, v49, v20
	v_div_fmas_f32 v35, v75, v107, v123
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v78, -v88, v126, v89
	v_div_fixup_f32 v21, v37, v45, v21
	v_div_fmas_f32 v37, v76, v108, v124
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v79, -v90, v127, v91
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v30.l, v18.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v17, v40, v17
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v24, v36, v51, v24
	v_div_fmas_f32 v36, v77, v109, v125
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v80, -v92, v128, v93
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v16.l, v20.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v19, v71, v19
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v23, v35, v48, v23
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v14.l, v22.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v35, v78, v110, v126
	s_mov_b32 vcc_lo, s10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v30, 1, v30
	v_mov_b16_e32 v29.l, v17.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v26, v37, v53, v26
	v_div_fmas_f32 v37, v79, v111, v127
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v81, -v94, v129, v95
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v21, v62, v21 :: v_dual_mul_f32 v24, v59, v24
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v25, v36, v52, v25
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v16, 1, v16
	v_mov_b16_e32 v15.l, v19.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v23, v58, v23 :: v_dual_and_b32 v14, 1, v14
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v36, v80, v112, v128
	v_fma_f32 v82, -v96, v130, v97
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v26, v55, v26 :: v_dual_and_b32 v29, 1, v29
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s12
	v_fma_f32 v83, -v98, v131, v99
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v18, v18
	v_cmp_o_f32_e64 s2, v20, v20
	v_cmp_o_f32_e64 s4, v22, v22
	v_add3_u32 v18, v18, v30, 0x7fff
	v_mov_b16_e32 v13.l, v21.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v28, v35, v57, v28
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v15, 1, v15
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v30, v81, v113, v129
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v16, v20, v16, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v20, v36, v61, v32
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v14, v22, v14, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v17, v17
	v_add3_u32 v17, v17, v29, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v29, v82, v114, v130
	s_mov_b32 vcc_lo, s14
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s3, v19, v19
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v20, v67, v20 :: v_dual_and_b32 v13, 1, v13
	v_mul_f32_e32 v8, v8, v28
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v28, v83, v115, v131
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v15, v19, v15, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v19, v30, v60, v31
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s4
	v_cmp_eq_u32_e64 s4, 0, v38
	v_mov_b16_e32 v12.l, v24.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v27, v37, v56, v27
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v25, v54, v25
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v11.l, v23.h
	v_cmp_o_f32_e64 s5, v21, v21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v22, v29, v65, v34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v13, v21, v13, 0x7fff
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v21, v28, v64, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v16.l, 0x7fff, v15.h, s3
	v_mov_b16_e32 v6.l, v20.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v15, v46, v19
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b32_e64 v0, 0x1054, v0, s4
	v_mov_b16_e32 v10.l, v26.h
	v_cndmask_b16 v18.l, 0x7fff, v17.h, s1
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v17, v50, v27 :: v_dual_and_b32 v12, 1, v12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v9.l, v25.h
	v_and_b32_e32 v11, 1, v11
	v_mov_b16_e32 v7.l, v8.h
	v_cndmask_b16 v14.l, 0x7fff, v13.h, s5
	v_and_b32_e32 v6, 1, v6
	v_mov_b16_e32 v2.l, v15.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v13, v43, v21
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_lshl_or_b32 v0, v0, 8, v0
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v19, v42, v22
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s6, v24, v24
	v_cmp_o_f32_e64 s7, v23, v23
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s0
	v_and_b32_e32 v10, 1, v10
	v_add3_u32 v12, v24, v12, 0x7fff
	v_mov_b16_e32 v5.l, v17.h
	v_and_b32_e32 v9, 1, v9
	v_add3_u32 v11, v23, v11, 0x7fff
	v_and_b32_e32 v7, 1, v7
	v_and_b32_e32 v2, 1, v2
	v_mov_b16_e32 v1.l, v13.h
	v_and_b32_e32 v0, 0x540054, v0
	v_mov_b16_e32 v3.l, v19.h
	v_cmp_o_f32_e64 s0, v25, v25
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s2
	v_cmp_o_f32_e64 s1, v8, v8
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s6
	v_and_b32_e32 v5, 1, v5
	v_add3_u32 v9, v25, v9, 0x7fff
	v_cndmask_b16 v12.l, 0x7fff, v11.h, s7
	v_add3_u32 v7, v8, v7, 0x7fff
	v_cndmask_b32_e64 v8, v14, v18, s4
	v_cndmask_b32_e64 v11, v18, v14, s4
	v_cndmask_b32_e64 v14, 0x3276, v39, s4
	v_and_b32_e32 v3, 1, v3
	v_and_b32_e32 v1, 1, v1
	v_add3_u32 v10, v26, v10, 0x7fff
	v_cmp_o_f32_e64 s2, v17, v17
	v_cmp_o_f32_e64 s3, v20, v20
	v_add3_u32 v5, v17, v5, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v9.h, s0
	v_add3_u32 v6, v20, v6, 0x7fff
	v_cndmask_b32_e64 v9, v12, v16, s4
	v_cndmask_b32_e64 v12, v16, v12, s4
	v_lshl_or_b32 v14, v14, 8, v14
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	v_cmp_o_f32_e64 s5, v15, v15
	v_cmp_o_f32_e64 s6, v19, v19
	v_cmp_o_f32_e64 s7, v13, v13
	v_add3_u32 v2, v15, v2, 0x7fff
	v_add3_u32 v3, v19, v3, 0x7fff
	v_add3_u32 v1, v13, v1, 0x7fff
	v_cndmask_b16 v7.l, 0x7fff, v5.h, s2
	v_cndmask_b16 v5.h, 0x7fff, v6.h, s3
	v_permlanex16_b32 v6, v12, s15, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v12, 0x760076, v14
	v_cndmask_b16 v10.h, 0x7fff, v10.h, vcc_lo
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s1
	v_cndmask_b16 v5.l, 0x7fff, v2.h, s5
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s6
	v_cndmask_b16 v2.l, 0x7fff, v1.h, s7
	v_lshl_or_b32 v0, v0, 4, v0
	v_lshl_or_b32 v1, v12, 4, v12
	v_cndmask_b32_e64 v12, v5, v10, s4
	v_cndmask_b32_e64 v3, v10, v5, s4
	v_cndmask_b32_e64 v5, v7, v2, s4
	v_permlanex16_b32 v11, v11, s15, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v10, 0x5040504, v0
	v_and_b32_e32 v13, 0x7060706, v1
	v_cndmask_b32_e64 v14, v2, v7, s4
	v_permlanex16_b32 v7, v3, s15, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v5, s15, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v11, v8, v10
	v_perm_b32 v1, v11, v8, v13
	v_perm_b32 v2, v6, v9, v10
	v_perm_b32 v3, v6, v9, v13
	v_perm_b32 v5, v7, v12, v10
	v_perm_b32 v6, v7, v12, v13
	v_perm_b32 v7, v15, v14, v10
	v_perm_b32 v8, v15, v14, v13
	s_clause 0x1
	buffer_store_b128 v[0:3], v4, s[20:23], 0 offen
	buffer_store_b128 v[5:8], v4, s[20:23], 0 offen offset:256
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 241
		.amdhsa_next_free_sgpr 51
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_shared_vgpr_count 0
		.amdhsa_inst_pref_size 63
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 226
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 51
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17620
; TotalNumSgprs: 53
; NumVgprs: 226
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 53
; NumVGPRsForWavesPerEU: 241
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.p2alignl 7, 3214868480
	.fill 96, 4, 3214868480
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.set amdgpu.max_num_named_barrier, 0
	.text
	.section	.debug_abbrev,"",@progbits
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x6c DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.byte	2                               ; Abbrev [2] 0x2a:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x30:0x46 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	291                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	290                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	361                             ; DW_AT_call_line
	.byte	30                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	307                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
	.section	".note.GNU-stack","",@progbits
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     global_buffer
      - .offset:         48
        .size:           4
        .value_kind:     by_value
      - .offset:         52
        .size:           4
        .value_kind:     by_value
      - .offset:         56
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 80
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     53
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn256_bk32_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     226
    .vgpr_spill_count: 0
    .wavefront_size: 32
    .workgroup_processor_mode: 1
amdhsa.target:   amdgcn-amd-amdhsa--gfx1151
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
	.section	.debug_line,"",@progbits
.Lline_table_start0:
