	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[6:7], s[0:1], 0x30
	s_load_b32 s31, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s9, s2
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v136, 3, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v3, 4, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_or_b32_e32 v138, 32, v136
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s7, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s6, s6, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s11, s6, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s11, s11, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s6, s6, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s6, s6, 4
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v4, s31, v3
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s8, s5
	s_sub_i32 s10, 0, s5
	v_rcp_iflag_f32_e32 v1, s8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s8, v1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v1, 15, v0
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_mul_f32 s8, s8, 0x4f7ffffe
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v137, 2, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_cvt_u32_f32 s8, s8
	s_mul_i32 s10, s10, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s10, s8, s10
	s_add_i32 s8, s8, s10
	s_xor_b32 s10, s2, s4
	s_mul_hi_u32 s8, s9, s8
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s9, s9, s11
	s_add_i32 s11, s8, 1
	s_sub_i32 s12, s9, s5
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s8, s11, s8
	s_cselect_b32 s9, s12, s9
	s_add_i32 s11, s8, 1
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s5, s11, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s10
	s_sub_i32 s5, s5, s10
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s18, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s6, s6, s18
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s4, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s17, s6, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s5, s4
	s_abs_i32 s6, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_f32_u32 s16, s6
	v_rcp_iflag_f32_e32 v2, s16
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	s_mov_b32 s11, 0x31027000
	s_mov_b64 s[28:29], s[14:15]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s16, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s39, s11
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s16, s16, 0x4f7ffffe
	s_cvt_u32_f32 s10, s16
	s_sub_i32 s16, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s16, s16, s10
	s_mul_hi_u32 s2, s10, s16
	s_xor_b32 s16, s4, s17
	s_add_i32 s2, s10, s2
	s_ashr_i32 s20, s16, 31
	s_mul_hi_u32 s2, s5, s2
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s19, s2, s6
	s_add_i32 s16, s2, 1
	s_sub_i32 s5, s5, s19
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s38, s10
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s19, s5, s6
	s_cmp_ge_u32 s5, s6
	s_cselect_b32 s2, s16, s2
	s_cselect_b32 s5, s19, s5
	s_add_i32 s16, s2, 1
	s_cmp_ge_u32 s5, s6
	s_cselect_b32 s2, s16, s2
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s30, s3, 6
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s3, s31, 0xff
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s2, s2, s20
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_ashr_i32 s5, s3, 31
.Ltmp15:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s2, s2, s20
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_lshr_b32 s5, s5, 24
.Ltmp17:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s20, s2, s17
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v5, s30, v137
	v_or_b32_e32 v6, s30, v136
	v_or_b32_e32 v7, s30, v138
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s17, s3, s5
.Ltmp19:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s3, s4, s20
.Ltmp20:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s16, s31, 63
.Ltmp21:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s3, s3, s18
	.loc	1 303 14                        ; generate_amdgcn.py:303:14
	s_lshl_b32 s6, s7, 1
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s26, s2, 7
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v5
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s2, s31, v6
	v_cmp_gt_i32_e64 s4, s31, v7
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s18, s3, 4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s16, 63
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s19, s6, s30
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s5, s18, s31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 348 30 is_stmt 0              ; generate_amdgcn.py:348:30
	v_add3_u32 v140, v4, v137, s5
	.loc	1 352 30 is_stmt 1              ; generate_amdgcn.py:352:30
	s_add_i32 s19, s26, s19
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s37, s37, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s3
	s_and_b32 s5, s2, s3
	s_and_b32 s4, s4, s3
	s_cmpk_gt_i32 s16, 0x7f
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v5, s30, v140
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s27, s30, 64
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s20, s7, 7
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v8, s27, v137
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 348 30 is_stmt 0              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v11, s27, v140
	.loc	1 342 17 is_stmt 1              ; generate_amdgcn.py:342:17
	v_or_b32_e32 v9, s27, v136
	v_or_b32_e32 v10, s27, v138
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v8
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v32, v5, s[8:11], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshlrev_b32_e32 v135, 4, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v2, 0x70, v135
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[33:34], null, s6, v136, v[2:3]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_add_u32 v139, s7, 6, v33
	v_add_nc_u32_e32 v2, s19, v33
	v_add_nc_u32_e32 v4, s19, v139
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v6, 0x80000000, v2, s5
	.loc	1 358 39 is_stmt 1              ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v2, s7, v2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s19, s19, s20
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v7, 0x80000000, v4, s4
	.loc	1 358 39 is_stmt 1              ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v4, s7, v4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[12:15], v6, s[36:39], 0 offen
	buffer_load_b128 v[16:19], v7, s[36:39], 0 offen
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v2, 0x80000000, v2, s5
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v6, s19, v33
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s31, v9
	v_cmp_gt_i32_e64 s5, s31, v10
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v7, s19, v139
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1
	buffer_load_b128 v[20:23], v2, s[36:39], 0 offen
	buffer_load_b128 v[24:27], v4, s[36:39], 0 offen
	.loc	1 358 39 is_stmt 0              ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v2, s7, v6
	v_add3_u32 v28, s19, s7, v139
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v4, 0x80000000, v11, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s2
	s_and_b32 s4, s5, s2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v5, 0x80000000, v6, vcc_lo
	v_cndmask_b32_e64 v6, 0x80000000, v7, s4
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	v_cndmask_b32_e64 v7, 0x80000000, v28, s4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v46, v4, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[28:31], v5, s[36:39], 0 offen
	buffer_load_b128 v[34:37], v6, s[36:39], 0 offen
	buffer_load_b128 v[38:41], v2, s[36:39], 0 offen
	buffer_load_b128 v[42:45], v7, s[36:39], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v2, 1, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v4, 2, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v47, 0, v135
	s_mov_b32 s4, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s16, 0xbf
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v11, 0x70, v2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v5, 48, v2
	v_lshlrev_b32_e32 v2, 3, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v3, v3, 1, v11
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v142, v4, v5
	v_or_b32_e32 v141, v11, v1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v7, 2, v3
	v_or_b32_e32 v8, 4, v3
	v_or_b32_e32 v9, 6, v3
	v_or_b32_e32 v10, 8, v3
	v_or_b32_e32 v4, 10, v3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v48, 0, v142
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v5, 12, v3
	v_or_b32_e32 v6, 14, v3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(9)
	ds_store_b32 v48, v32 offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v47, v[12:15]
	s_waitcnt vmcnt(7)
	ds_store_b128 v47, v[16:19] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(6)
	ds_store_b128 v47, v[20:23] offset:16384
	s_waitcnt vmcnt(5)
	ds_store_b128 v47, v[24:27] offset:20480
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b32 v48, v46 offset:33792
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v47, v[28:31] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v47, v[34:37] offset:12288
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v47, v[38:41] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v47, v[42:45] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v12, 48, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v17, v11, v1
	s_mov_b32 s14, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshl_or_b32 v131, v1, 6, v12
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v68, 0x80, v17
	v_or_b32_e32 v69, 0x100, v17
	v_or_b32_e32 v71, 0x180, v17
	v_or_b32_e32 v73, 0x200, v17
	v_or_b32_e32 v76, 0x280, v17
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v132, 16, v131
	v_xor_b32_e32 v133, 32, v131
	v_xor_b32_e32 v134, 48, v131
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v79, 0x300, v17
	v_or_b32_e32 v81, 0x380, v17
	v_or_b32_e32 v83, 0x400, v17
	v_or_b32_e32 v85, 0x480, v17
	v_or_b32_e32 v87, 0x500, v17
	v_or_b32_e32 v89, 0x580, v17
	v_or_b32_e32 v91, 0x600, v17
	v_or_b32_e32 v93, 0x680, v17
	v_or_b32_e32 v95, 0x700, v17
	v_or_b32_e32 v97, 0x780, v17
	v_or_b32_e32 v72, 0x800, v17
	v_or_b32_e32 v74, 0x880, v17
	v_or_b32_e32 v75, 0x900, v17
	v_or_b32_e32 v77, 0x980, v17
	v_or_b32_e32 v78, 0xa00, v17
	v_or_b32_e32 v80, 0xa80, v17
	v_or_b32_e32 v82, 0xb00, v17
	v_or_b32_e32 v84, 0xb80, v17
	v_or_b32_e32 v86, 0xc00, v17
	v_or_b32_e32 v88, 0xc80, v17
	v_or_b32_e32 v90, 0xd00, v17
	v_or_b32_e32 v92, 0xd80, v17
	v_or_b32_e32 v94, 0xe00, v17
	v_or_b32_e32 v96, 0xe80, v17
	v_or_b32_e32 v98, 0xf00, v17
	v_or_b32_e32 v99, 0xf80, v17
	v_or_b32_e32 v65, 0x1000, v17
	v_or_b32_e32 v100, 0x1080, v17
	v_or_b32_e32 v101, 0x1100, v17
	v_or_b32_e32 v102, 0x1180, v17
	v_or_b32_e32 v103, 0x1200, v17
	v_or_b32_e32 v104, 0x1280, v17
	v_or_b32_e32 v105, 0x1300, v17
	v_or_b32_e32 v106, 0x1380, v17
	v_or_b32_e32 v107, 0x1400, v17
	v_or_b32_e32 v108, 0x1480, v17
	v_or_b32_e32 v109, 0x1500, v17
	v_or_b32_e32 v110, 0x1580, v17
	v_or_b32_e32 v111, 0x1600, v17
	v_or_b32_e32 v112, 0x1680, v17
	v_or_b32_e32 v113, 0x1700, v17
	v_or_b32_e32 v114, 0x1780, v17
	v_or_b32_e32 v115, 0x1800, v17
	v_or_b32_e32 v116, 0x1880, v17
	v_or_b32_e32 v117, 0x1900, v17
	v_or_b32_e32 v118, 0x1980, v17
	v_or_b32_e32 v119, 0x1a00, v17
	v_or_b32_e32 v120, 0x1a80, v17
	v_or_b32_e32 v121, 0x1b00, v17
	v_or_b32_e32 v122, 0x1b80, v17
	v_or_b32_e32 v123, 0x1c00, v17
	v_or_b32_e32 v124, 0x1c80, v17
	v_or_b32_e32 v125, 0x1d00, v17
	v_or_b32_e32 v126, 0x1d80, v17
	v_or_b32_e32 v127, 0x1e00, v17
	v_or_b32_e32 v128, 0x1e80, v17
	v_or_b32_e32 v129, 0x1f00, v17
	v_or_b32_e32 v130, 0x1f80, v17
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s14, -1
                                        ; implicit-def: $vgpr131
                                        ; implicit-def: $vgpr132
                                        ; implicit-def: $vgpr133
                                        ; implicit-def: $vgpr134
                                        ; implicit-def: $vgpr17
                                        ; implicit-def: $vgpr68
                                        ; implicit-def: $vgpr69
                                        ; implicit-def: $vgpr71
                                        ; implicit-def: $vgpr73
                                        ; implicit-def: $vgpr76
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
                                        ; implicit-def: $vgpr72
                                        ; implicit-def: $vgpr74
                                        ; implicit-def: $vgpr75
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
                                        ; implicit-def: $vgpr99
                                        ; implicit-def: $vgpr65
                                        ; implicit-def: $vgpr100
                                        ; implicit-def: $vgpr101
                                        ; implicit-def: $vgpr102
                                        ; implicit-def: $vgpr103
                                        ; implicit-def: $vgpr104
                                        ; implicit-def: $vgpr105
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
.LBB0_3:                                ; %Flow162
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v50, s18, v1
	s_ashr_i32 s5, s17, 8
	v_or_b32_e32 v66, s26, v3
	v_or_b32_e32 v67, s26, v7
	v_or_b32_e32 v64, s26, v8
	v_mul_lo_u32 v70, v50, s5
	v_or_b32_e32 v63, s26, v9
	v_or_b32_e32 v62, s26, v10
	v_or_b32_e32 v61, s26, v4
	v_or_b32_e32 v60, s26, v5
	v_or_b32_e32 v59, s26, v6
	v_add_nc_u32_e32 v58, s7, v3
	v_add_nc_u32_e32 v57, s7, v7
	v_add_nc_u32_e32 v56, s7, v8
	v_add_nc_u32_e32 v54, s7, v9
	v_add_nc_u32_e32 v52, s7, v10
	v_add_nc_u32_e32 v55, s7, v4
	v_add_nc_u32_e32 v53, s7, v5
	v_add_nc_u32_e32 v51, s7, v6
	s_and_not1_b32 vcc_lo, exec_lo, s14
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v49, 0 :: v_dual_and_b32 v2, 48, v2
	v_or_b32_e32 v68, 0x80, v141
	v_or_b32_e32 v69, 0x100, v141
	v_or_b32_e32 v71, 0x180, v141
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v131, v1, 6, v2
	v_or_b32_e32 v73, 0x200, v141
	v_or_b32_e32 v76, 0x280, v141
	v_or_b32_e32 v79, 0x300, v141
	v_or_b32_e32 v81, 0x380, v141
	v_xor_b32_e32 v132, 16, v131
	v_xor_b32_e32 v133, 32, v131
	v_xor_b32_e32 v134, 48, v131
	v_or_b32_e32 v83, 0x400, v141
	v_or_b32_e32 v85, 0x480, v141
	v_or_b32_e32 v87, 0x500, v141
	v_or_b32_e32 v89, 0x580, v141
	v_or_b32_e32 v91, 0x600, v141
	v_or_b32_e32 v93, 0x680, v141
	v_or_b32_e32 v95, 0x700, v141
	v_or_b32_e32 v97, 0x780, v141
	v_or_b32_e32 v72, 0x800, v141
	v_or_b32_e32 v74, 0x880, v141
	v_or_b32_e32 v75, 0x900, v141
	v_or_b32_e32 v77, 0x980, v141
	v_or_b32_e32 v78, 0xa00, v141
	v_or_b32_e32 v80, 0xa80, v141
	v_or_b32_e32 v82, 0xb00, v141
	v_or_b32_e32 v84, 0xb80, v141
	v_or_b32_e32 v86, 0xc00, v141
	v_or_b32_e32 v88, 0xc80, v141
	v_or_b32_e32 v90, 0xd00, v141
	v_or_b32_e32 v92, 0xd80, v141
	v_or_b32_e32 v94, 0xe00, v141
	v_or_b32_e32 v96, 0xe80, v141
	v_or_b32_e32 v98, 0xf00, v141
	v_or_b32_e32 v99, 0xf80, v141
	v_or_b32_e32 v65, 0x1000, v141
	v_or_b32_e32 v100, 0x1080, v141
	v_or_b32_e32 v101, 0x1100, v141
	v_or_b32_e32 v102, 0x1180, v141
	v_or_b32_e32 v103, 0x1200, v141
	v_or_b32_e32 v104, 0x1280, v141
	v_or_b32_e32 v105, 0x1300, v141
	v_or_b32_e32 v106, 0x1380, v141
	v_or_b32_e32 v107, 0x1400, v141
	v_or_b32_e32 v108, 0x1480, v141
	v_or_b32_e32 v109, 0x1500, v141
	v_or_b32_e32 v110, 0x1580, v141
	v_or_b32_e32 v111, 0x1600, v141
	v_or_b32_e32 v112, 0x1680, v141
	v_or_b32_e32 v113, 0x1700, v141
	v_or_b32_e32 v114, 0x1780, v141
	v_or_b32_e32 v115, 0x1800, v141
	v_or_b32_e32 v116, 0x1880, v141
	v_or_b32_e32 v117, 0x1900, v141
	v_or_b32_e32 v118, 0x1980, v141
	v_or_b32_e32 v119, 0x1a00, v141
	v_or_b32_e32 v120, 0x1a80, v141
	v_or_b32_e32 v121, 0x1b00, v141
	v_or_b32_e32 v122, 0x1b80, v141
	v_or_b32_e32 v123, 0x1c00, v141
	v_or_b32_e32 v124, 0x1c80, v141
	v_or_b32_e32 v125, 0x1d00, v141
	v_or_b32_e32 v126, 0x1d80, v141
	v_or_b32_e32 v127, 0x1e00, v141
	v_or_b32_e32 v128, 0x1e80, v141
	v_or_b32_e32 v129, 0x1f00, v141
	v_or_b32_e32 v130, 0x1f80, v141
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v35, 0
	v_mov_b32_e32 v36, 0
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s15, s16, 6
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	s_mov_b32 s16, 0
	s_add_i32 s14, s27, 64
	s_and_b32 s41, s13, 0xffff
	s_mov_b32 s40, s12
	s_and_b32 s45, s29, 0xffff
	s_mov_b32 s44, s28
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s35, 0, 0x8400
	s_add_i32 s34, 0, 0x2000
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s33, 0, 0x6000
	s_add_i32 s15, s15, -3
	s_mov_b32 s49, 1
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	s_mov_b32 s46, s42
	s_mov_b32 s47, s43
	s_mov_b32 s4, s16
	s_mov_b32 s48, s16
.Ltmp23:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	s_mov_b32 s50, s0
	s_mov_b32 s0, s30
	s_mov_b32 s30, s27
	.loc	1 308 14 is_stmt 1              ; generate_amdgcn.py:308:14
	s_lshl_b32 s27, s48, 6
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v144, s1, v141
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s27, s14, s27
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s1, s0, 31
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v11, s27, v137
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s1, s1, 24
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v143, s4, v141
	.loc	1 352 30 is_stmt 0              ; generate_amdgcn.py:352:30
	s_mul_i32 s4, s27, s6
	.loc	1 342 17 is_stmt 1              ; generate_amdgcn.py:342:17
	v_or_b32_e32 v12, s27, v136
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s0, s0, s1
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s4, s4, s26
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v13, s27, v138
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v14, s27, v140
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s52, s0, 8
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e64 s0, s31, v11
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	s_add_i32 s51, s4, s7
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s1, s31, v12
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v11, s51, v33
	v_add_nc_u32_e32 v12, s51, v139
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s51, s52, s6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v10, s50, v131
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v15, s4, v33
	v_add_nc_u32_e32 v16, s4, v139
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s31, v13
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v13, v70, s52, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v17, v66, s51, 1
	v_add_lshl_u32 v18, v67, s51, 1
	v_add_lshl_u32 v19, v64, s51, 1
	v_add_lshl_u32 v20, v63, s51, 1
	v_add_lshl_u32 v21, v62, s51, 1
	v_add_lshl_u32 v22, v61, s51, 1
	v_add_lshl_u32 v23, v60, s51, 1
	v_add_lshl_u32 v24, v59, s51, 1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v14, 0x80000000, v14, s0
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s52, s5
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v30, 0x80000000, v15, s1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_add_i32 s51, s51, s26
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v31, 0x80000000, v16, s4
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v32, v58, s51, 1
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v167, 0x80000000, v11, s1
	v_cndmask_b32_e64 v171, 0x80000000, v12, s4
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v161, 0x80000000, v13 :: v_dual_cndmask_b32 v168, 0x80000000, v18
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v162, 0x80000000, v17 :: v_dual_cndmask_b32 v169, 0x80000000, v19
	v_dual_cndmask_b32 v170, 0x80000000, v20 :: v_dual_cndmask_b32 v173, 0x80000000, v22
	v_dual_cndmask_b32 v172, 0x80000000, v21 :: v_dual_cndmask_b32 v175, 0x80000000, v24
	v_cndmask_b32_e32 v174, 0x80000000, v23, vcc_lo
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v145, v14, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[26:29], v10
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v10, v143 offset:1664
	ds_load_u8 v11, v143 offset:1536
	ds_load_u8 v12, v143 offset:1920
	ds_load_u8 v13, v143 offset:1792
	ds_load_u8 v14, v143 offset:1152
	ds_load_u8 v15, v143 offset:1024
	ds_load_u8 v16, v143 offset:1408
	ds_load_u8 v17, v143 offset:1280
	ds_load_u8 v18, v143 offset:640
	ds_load_u8 v19, v143 offset:512
	ds_load_u8 v20, v143 offset:896
	ds_load_u8 v21, v143 offset:768
	ds_load_u8 v22, v143 offset:128
	ds_load_u8 v23, v143
	ds_load_u8 v24, v143 offset:384
	ds_load_u8 v146, v143 offset:256
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v147, v144 offset:1664
	ds_load_u8 v148, v144 offset:1536
	ds_load_u8 v150, v144 offset:1920
	ds_load_u8 v151, v144 offset:1792
	ds_load_u8 v152, v144 offset:1152
	ds_load_u8 v153, v144 offset:1024
	ds_load_u8 v163, v144 offset:1408
	ds_load_u8 v164, v144 offset:1280
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v11, v13, v12, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v15, v17, v16, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v165, v144 offset:640
	ds_load_u8 v13, v144 offset:512
	ds_load_u8 v16, v144 offset:128
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v12, v11, 16, v10
	v_lshl_or_b32 v11, v15, 16, v14
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v14, v144 offset:896
	ds_load_u8 v15, v144 offset:768
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v10, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v17, v21, v20, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v19, v23, v22, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v20, v144 offset:384
	ds_load_u8 v22, v144 offset:256
	ds_load_u8 v18, v144
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v9, s50, v132
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v21, v146, v24, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v23, v148, v147, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v10, v17, 16, v10
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v17, v151, v150, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v24, v153, v152, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v150, v164, v163, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v13, v13, v165, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[146:149], v9
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v166, v143 offset:3712
	ds_load_u8 v163, v143 offset:3968
	ds_load_u8 v176, v143 offset:3584
	ds_load_u8 v165, v143 offset:3072
	ds_load_u8 v178, v143 offset:3456
	ds_load_u8 v179, v143 offset:3328
	ds_load_u8 v180, v143 offset:2688
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v15, v18, v16, 0xc0c0004
	v_perm_b32 v16, v22, v20, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v9, v21, 16, v19
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v153, v17, 16, v23
	v_lshl_or_b32 v152, v150, 16, v24
	v_lshl_or_b32 v151, v14, 16, v13
	v_lshl_or_b32 v150, v16, 16, v15
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v164, v143 offset:3840
	ds_load_u8 v177, v143 offset:3200
	v_wmma_i32_16x16x16_iu8 v[17:24], v[9:12], v[26:29], v[1:8] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v25, s50, v133
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[9:16], v[150:153], v[26:29], v[1:8] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v143 offset:2560
	ds_load_u8 v2, v143 offset:2944
	ds_load_u8 v5, v143 offset:2816
	ds_load_u8 v6, v143 offset:2176
	ds_load_u8 v7, v143 offset:2048
	ds_load_u8 v8, v143 offset:2432
	ds_load_u8 v26, v143 offset:2304
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v27, v144 offset:3712
	ds_load_u8 v28, v144 offset:3584
	ds_load_u8 v152, v144 offset:3072
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v3, v176, v166, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v29, v144 offset:3968
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v151, v179, v178, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v153, v144 offset:3328
	ds_load_u8 v176, v144 offset:2688
	ds_load_u8 v178, v144 offset:4864
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v154, v57, s51, 1
	v_add_lshl_u32 v155, v56, s51, 1
	v_add_lshl_u32 v156, v54, s51, 1
	v_add_lshl_u32 v157, v52, s51, 1
	v_add_lshl_u32 v158, v55, s51, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v1, v1, v180, 0xc0c0004
	v_perm_b32 v4, v164, v163, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v2, v5, v2, 0xc0c0004
	v_perm_b32 v150, v165, v177, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v5, v144 offset:3456
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v159, v53, s51, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v4, v4, 16, v3
	v_lshl_or_b32 v2, v2, 16, v1
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v1, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v7, v26, v8, 0xc0c0004
	v_lshl_or_b32 v3, v151, 16, v150
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v150, v144 offset:3840
	ds_load_u8 v151, v144 offset:3200
	ds_load_u8 v6, v144 offset:2560
	ds_load_u8 v8, v144 offset:2944
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v1, v7, 16, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v7, v144 offset:2816
	ds_load_u8 v26, v144 offset:2432
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v160, v51, s51, 1
	v_cndmask_b32_e32 v184, 0x80000000, v159, vcc_lo
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[17:24], v[1:4], v[146:149], v[17:24] neg_lo:[1,1,0]
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[163:166], v25
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v1, v144 offset:2176
	ds_load_u8 v25, v144 offset:2048
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v2, v28, v27, 0xc0c0004
	ds_load_u8 v27, v144 offset:2304
	ds_load_u8 v179, v144 offset:4224
	ds_load_u8 v180, v144 offset:4096
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v5, v153, v5, 0xc0c0004
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e32 v183, 0x80000000, v158, vcc_lo
	v_cndmask_b32_e32 v185, 0x80000000, v160, vcc_lo
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v181, v144 offset:4480
	ds_load_u8 v182, v144 offset:4352
	s_mov_b32 s1, s33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s33, s49, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v3, v150, v29, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v28, v152, v151, 0xc0c0004
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s33, 2
	s_mov_b32 s4, s34
	s_cselect_b32 s49, s33, 0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v4, v3, 16, v2
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v2, v6, v176, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v7, v7, v8, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v6, v143 offset:6016
	ds_load_u8 v8, v143 offset:5888
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v1, v25, v1, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v25, v143 offset:5504
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v27, v143 offset:5376
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v3, v5, 16, v28
	v_lshl_or_b32 v2, v7, 16, v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v143 offset:5760
	ds_load_u8 v28, v143 offset:5632
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v1, v26, 16, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v26, v143 offset:4736
	ds_load_u8 v150, v143 offset:4608
	ds_load_u8 v7, v143 offset:5248
	ds_load_u8 v29, v143 offset:5120
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s33, s49, 10
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s34, s49, 13
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[9:16], v[1:4], v[146:149], v[9:16] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v143 offset:4992
	ds_load_u8 v2, v143 offset:4864
	ds_load_u8 v146, v143 offset:4224
	ds_load_u8 v147, v143 offset:4096
	ds_load_u8 v148, v143 offset:4480
	ds_load_u8 v149, v143 offset:4352
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v176, v144 offset:5760
	ds_load_u8 v177, v144 offset:5632
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s33, s33, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s34, s34, 0
	s_mov_b32 s0, s35
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s35, s33, 0x8000
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v4, v8, v6, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v6, v144 offset:5888
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v8, v27, v25, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v27, v144 offset:5376
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v3, v28, v5, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	v_perm_b32 v25, v150, v26, 0xc0c0004
	v_perm_b32 v7, v29, v7, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v5, v144 offset:6016
	ds_load_u8 v26, v144 offset:5504
	ds_load_u8 v29, v144 offset:4992
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v2, v1, 16, v25
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v1, v147, v146, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v146, v149, v148, 0xc0c0004
	v_lshl_or_b32 v4, v4, 16, v3
	v_lshl_or_b32 v3, v8, 16, v7
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v7, v144 offset:5248
	ds_load_u8 v8, v144 offset:5120
	ds_load_u8 v25, v144 offset:4736
	ds_load_u8 v28, v144 offset:4608
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v1, v146, 16, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[1:4], v[163:166], v[17:24] neg_lo:[1,1,0]
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_dual_cndmask_b32 v1, 0x80000000, v32 :: v_dual_cndmask_b32 v2, 0x80000000, v154
	v_dual_cndmask_b32 v3, 0x80000000, v155 :: v_dual_cndmask_b32 v4, 0x80000000, v156
	v_cndmask_b32_e32 v32, 0x80000000, v157, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v146, v161, s[40:43], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0xf
	buffer_load_u16 v147, v162, s[44:47], 0 offen
	buffer_load_u16 v148, v168, s[44:47], 0 offen
	buffer_load_u16 v149, v169, s[44:47], 0 offen
	buffer_load_u16 v150, v170, s[44:47], 0 offen
	buffer_load_u16 v151, v172, s[44:47], 0 offen
	buffer_load_u16 v152, v173, s[44:47], 0 offen
	buffer_load_u16 v153, v174, s[44:47], 0 offen
	buffer_load_u16 v154, v175, s[44:47], 0 offen
	buffer_load_u16 v155, v1, s[44:47], 0 offen
	buffer_load_u16 v156, v2, s[44:47], 0 offen
	buffer_load_u16 v157, v3, s[44:47], 0 offen
	buffer_load_u16 v158, v4, s[44:47], 0 offen
	buffer_load_u16 v159, v32, s[44:47], 0 offen
	buffer_load_u16 v160, v183, s[44:47], 0 offen
	buffer_load_u16 v161, v184, s[44:47], 0 offen
	buffer_load_u16 v162, v185, s[44:47], 0 offen
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	v_perm_b32 v32, v177, v176, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	buffer_load_b128 v[1:4], v30, s[36:39], 0 offen
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v30, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v29, v178, v29, 0xc0c0004
	v_perm_b32 v172, v180, v179, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v168, v8, v7, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	buffer_load_b128 v[5:8], v31, s[36:39], 0 offen
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v28, v25, 0xc0c0004
	v_lshl_or_b32 v170, v30, 16, v32
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v173, v143 offset:7040
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v169, v26, 16, v168
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	buffer_load_b128 v[25:28], v167, s[36:39], 0 offen
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v168, v29, 16, v31
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	buffer_load_b128 v[29:32], v171, s[36:39], 0 offen
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v167, v182, v181, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v171, s50, v134
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s50, s48, 1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v167, v167, 16, v172
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v172, v143 offset:7808
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[9:16], v[167:170], v[163:166], v[9:16] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v163, v143 offset:7680
	ds_load_u8 v164, v143 offset:8064
	ds_load_u8 v165, v143 offset:7936
	ds_load_u8 v166, v143 offset:7296
	ds_load_u8 v167, v143 offset:7168
	ds_load_u8 v168, v143 offset:7552
	ds_load_u8 v169, v143 offset:7424
	ds_load_u8 v170, v143 offset:6784
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v163, v163, v172, 0xc0c0004
	ds_load_u8 v172, v143 offset:6656
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v165, v167, v166, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v167, v169, v168, 0xc0c0004
	ds_load_u8 v168, v143 offset:6144
	v_lshl_or_b32 v166, v164, 16, v163
	ds_load_u8 v163, v143 offset:6912
	ds_load_u8 v164, v143 offset:6272
	v_lshl_or_b32 v165, v167, 16, v165
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v167, v172, v170, 0xc0c0004
	ds_load_u8 v172, v143 offset:6528
	ds_load_u8 v143, v143 offset:6400
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v163, v163, v173, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v173, v168, v164, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v164, v163, 16, v167
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[167:170], v171
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v171, v144 offset:7808
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v143, v143, v172, 0xc0c0004
	v_lshl_or_b32 v163, v143, 16, v173
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v143, v144 offset:7680
	ds_load_u8 v172, v144 offset:8064
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[17:24], v[163:166], v[167:170], v[17:24] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v163, v144 offset:7936
	ds_load_u8 v164, v144 offset:7296
	ds_load_u8 v165, v144 offset:7168
	ds_load_u8 v166, v144 offset:7552
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v18, v18
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v143, v143, v171, 0xc0c0004
	ds_load_u8 v171, v144 offset:7424
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v163, v163, v172, 0xc0c0004
	ds_load_u8 v172, v144 offset:6784
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v165, v171, v166, 0xc0c0004
	v_lshl_or_b32 v166, v163, 16, v143
	ds_load_u8 v143, v144 offset:6656
	ds_load_u8 v163, v144 offset:7040
	v_lshl_or_b32 v165, v165, 16, v164
	ds_load_u8 v164, v144 offset:6912
	ds_load_u8 v171, v144 offset:6272
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v143, v143, v172, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v164, v163, 16, v143
	ds_load_u8 v143, v144 offset:6144
	ds_load_u8 v163, v144 offset:6528
	ds_load_u8 v144, v144 offset:6400
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v143, v143, v171, 0xc0c0004
	v_perm_b32 v144, v144, v163, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v163, v144, 16, v143
	v_wmma_i32_16x16x16_iu8 v[9:16], v[163:166], v[167:170], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v12, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v15, v15
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v143, 16, v146
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v144, 16, v147
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v147, 16, v150
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v150, 16, v153
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v153, 16, v156
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v156, 16, v159
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v171, s33, v142
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_add_i32 s33, s34, 0x4000
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v159, 16, v162
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s48, s15
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v156, v143, v156
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_store_b32 v171, v145 offset:32768
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v145, 16, v148
	v_lshlrev_b32_e32 v148, 16, v151
	v_lshlrev_b32_e32 v151, 16, v154
	v_lshlrev_b32_e32 v146, 16, v149
	v_lshlrev_b32_e32 v149, 16, v152
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v152, 16, v155
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v159, v143, v159 :: v_dual_lshlrev_b32 v154, 16, v157
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v155, 16, v158
	v_lshlrev_b32_e32 v157, 16, v160
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v148, v143, v148
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v154, v143, v154
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v38, v159, v16
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v155, v143, v155
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v150, v143, v150
	v_mul_f32_e32 v145, v143, v145
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v157, v143, v157
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v39, v148, v21 :: v_dual_mul_f32 v144, v143, v144
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v36, v150, v23
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v147, v143, v147 :: v_dual_fmac_f32 v48, v145, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v45, v154, v11 :: v_dual_fmac_f32 v42, v157, v14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v47, v144, v17 :: v_dual_fmac_f32 v44, v147, v20
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v151, v143, v151
	v_mul_f32_e32 v146, v143, v146
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v158, 16, v161
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v46, v155, v12 :: v_dual_fmac_f32 v41, v156, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v35, v151, v24
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v152, v143, v152 :: v_dual_fmac_f32 v43, v146, v19
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v172, s34, v135
	s_mov_b32 s48, s50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v34, v152, v9
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v149, v143, v149
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v40, v149, v22 :: v_dual_mul_f32 v153, v143, v153
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v143, v143, v158
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v172, v[1:4]
	s_waitcnt vmcnt(2)
	ds_store_b128 v172, v[5:8] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v172, v[25:28] offset:16384
	s_waitcnt vmcnt(0)
	ds_store_b128 v172, v[29:32] offset:20480
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v49, v153, v10
	v_fmac_f32_e32 v37, v143, v15
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v17, v141
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v34, 0
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s35, 0, 0x8400
	s_add_i32 s34, 0, 0x2000
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s33, 0, 0x6000
.LBB0_8:                                ; %Flow163
	v_dual_mov_b32 v26, 0 :: v_dual_add_nc_u32 v1, s0, v131
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v18, 0, 1, s3
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v2, s0, v132
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v3, s0, v133
	v_dual_mov_b32 v19, 0 :: v_dual_add_nc_u32 v4, s0, v134
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cmp_ne_u32_e64 s0, 1, v18
	v_mov_b32_e32 v18, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[13:16], v1
	ds_load_b128 v[9:12], v2
	ds_load_b128 v[5:8], v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[1:4], v4
	v_dual_mov_b32 v24, 0 :: v_dual_and_b32 v27, 0xf0, v0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v135, s4, v93
	v_add_nc_u32_e32 v136, s4, v91
	v_add_nc_u32_e32 v20, s4, v97
	v_add_nc_u32_e32 v139, s4, v85
	v_add_nc_u32_e32 v21, s4, v95
	v_add_nc_u32_e32 v137, s4, v89
	v_add_nc_u32_e32 v138, s4, v87
	v_add_nc_u32_e32 v140, s4, v83
	v_add_nc_u32_e32 v141, s4, v81
	v_add_nc_u32_e32 v142, s4, v79
	v_add_nc_u32_e32 v164, s4, v76
	v_add_nc_u32_e32 v165, s4, v73
	v_add_nc_u32_e32 v166, s4, v71
	v_add_nc_u32_e32 v167, s4, v69
	v_add_nc_u32_e32 v168, s4, v68
	v_add_nc_u32_e32 v169, s4, v17
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v135, v135
	ds_load_u8 v136, v136
	ds_load_u8 v20, v20
	ds_load_u8 v139, v139
	ds_load_u8 v140, v140
	ds_load_u8 v137, v137
	ds_load_u8 v138, v138
	ds_load_u8 v21, v21
	ds_load_u8 v164, v164
	ds_load_u8 v165, v165
	ds_load_u8 v141, v141
	ds_load_u8 v168, v168
	ds_load_u8 v169, v169
	ds_load_u8 v166, v166
	ds_load_u8 v167, v167
	ds_load_u8 v142, v142
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v170, s4, v96
	v_add_nc_u32_e32 v171, s4, v94
	v_add_nc_u32_e32 v18, s4, v99
	v_add_nc_u32_e32 v174, s4, v88
	v_add_nc_u32_e32 v172, s4, v92
	v_add_nc_u32_e32 v173, s4, v90
	v_add_nc_u32_e32 v175, s4, v86
	v_add_nc_u32_e32 v176, s4, v84
	v_add_nc_u32_e32 v177, s4, v82
	v_add_nc_u32_e32 v178, s4, v80
	v_add_nc_u32_e32 v179, s4, v78
	v_add_nc_u32_e32 v180, s4, v77
	v_add_nc_u32_e32 v181, s4, v75
	v_add_nc_u32_e32 v182, s4, v74
	v_add_nc_u32_e32 v183, s4, v72
	v_add_nc_u32_e32 v19, s4, v98
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v138, v165, v164, 0xc0c0004
	ds_load_u8 v164, v170
	ds_load_u8 v165, v171
	ds_load_u8 v170, v18
	ds_load_u8 v171, v174
	ds_load_u8 v174, v175
	ds_load_u8 v172, v172
	ds_load_u8 v173, v173
	ds_load_u8 v175, v19
	ds_load_u8 v178, v178
	ds_load_u8 v179, v179
	ds_load_u8 v176, v176
	ds_load_u8 v182, v182
	ds_load_u8 v183, v183
	ds_load_u8 v180, v180
	ds_load_u8 v181, v181
	ds_load_u8 v177, v177
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v22, s4, v130
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v136, v136, v135, 0xc0c0004
	v_perm_b32 v20, v21, v20, 0xc0c0004
	v_perm_b32 v139, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v140, v142, v141, 0xc0c0004
	v_perm_b32 v18, v169, v168, 0xc0c0004
	v_perm_b32 v141, v167, v166, 0xc0c0004
	v_mov_b32_e32 v135, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v23, s4, v129
	v_add_nc_u32_e32 v25, s4, v128
	v_add_nc_u32_e32 v26, s4, v127
	v_add_nc_u32_e32 v28, s4, v126
	v_add_nc_u32_e32 v29, s4, v125
	v_add_nc_u32_e32 v30, s4, v124
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v142, v135 :: v_dual_add_nc_u32 v31, s4, v123
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v151, s4, v112
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v21, v20, 16, v136
	v_lshl_or_b32 v20, v137, 16, v139
	v_lshl_or_b32 v19, v140, 16, v138
	v_lshl_or_b32 v18, v141, 16, v18
	v_mov_b32_e32 v136, v135
	v_mov_b32_e32 v137, v135
	v_mov_b32_e32 v138, v135
	v_mov_b32_e32 v139, v135
	v_mov_b32_e32 v140, v135
	v_mov_b32_e32 v141, v135
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v165, v175, v170, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v152, s4, v111
	v_add_nc_u32_e32 v149, s4, v114
	v_add_nc_u32_e32 v155, s4, v108
	v_add_nc_u32_e32 v32, s4, v122
	v_add_nc_u32_e32 v33, s4, v121
	v_add_nc_u32_e32 v143, s4, v120
	v_add_nc_u32_e32 v144, s4, v119
	v_add_nc_u32_e32 v145, s4, v118
	v_add_nc_u32_e32 v146, s4, v117
	v_add_nc_u32_e32 v147, s4, v116
	v_add_nc_u32_e32 v148, s4, v115
	v_add_nc_u32_e32 v150, s4, v113
	v_add_nc_u32_e32 v153, s4, v110
	v_add_nc_u32_e32 v154, s4, v109
	v_add_nc_u32_e32 v156, s4, v107
	v_add_nc_u32_e32 v157, s4, v106
	v_add_nc_u32_e32 v158, s4, v105
	v_add_nc_u32_e32 v159, s4, v104
	v_add_nc_u32_e32 v160, s4, v103
	v_add_nc_u32_e32 v161, s4, v102
	v_add_nc_u32_e32 v162, s4, v101
	v_add_nc_u32_e32 v163, s4, v100
	v_add_nc_u32_e32 v170, s4, v65
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[135:142], v[18:21], v[13:16], v[135:142] neg_lo:[1,1,0]
	v_lshl_or_b32 v21, v165, 16, v164
	ds_load_u8 v151, v151
	ds_load_u8 v152, v152
	ds_load_u8 v149, v149
	ds_load_u8 v155, v155
	ds_load_u8 v156, v156
	ds_load_u8 v153, v153
	ds_load_u8 v154, v154
	ds_load_u8 v150, v150
	ds_load_u8 v159, v159
	ds_load_u8 v160, v160
	ds_load_u8 v157, v157
	ds_load_u8 v163, v163
	ds_load_u8 v165, v170
	ds_load_u8 v161, v161
	ds_load_u8 v162, v162
	ds_load_u8 v158, v158
	ds_load_u8 v25, v25
	ds_load_u8 v26, v26
	ds_load_u8 v22, v22
	ds_load_u8 v30, v30
	ds_load_u8 v31, v31
	ds_load_u8 v28, v28
	ds_load_u8 v29, v29
	ds_load_u8 v23, v23
	ds_load_u8 v143, v143
	ds_load_u8 v144, v144
	ds_load_u8 v32, v32
	ds_load_u8 v147, v147
	ds_load_u8 v148, v148
	ds_load_u8 v145, v145
	ds_load_u8 v146, v146
	ds_load_u8 v33, v33
	v_perm_b32 v166, v174, v171, 0xc0c0004
	v_perm_b32 v167, v173, v172, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v168, v179, v178, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v169, v177, v176, 0xc0c0004
	v_perm_b32 v18, v183, v182, 0xc0c0004
	v_perm_b32 v164, v181, v180, 0xc0c0004
	v_lshl_or_b32 v20, v167, 16, v166
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	v_lshl_or_b32 v19, v169, 16, v168
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	v_lshl_or_b32 v18, v164, 16, v18
	v_perm_b32 v150, v156, v155, 0xc0c0004
	v_perm_b32 v152, v154, v153, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v153, v160, v159, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v154, v158, v157, 0xc0c0004
	v_perm_b32 v155, v165, v163, 0xc0c0004
	v_perm_b32 v156, v162, v161, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[135:142], v[18:21], v[9:12], v[135:142] neg_lo:[1,1,0]
	v_lshl_or_b32 v21, v149, 16, v151
	v_lshl_or_b32 v20, v152, 16, v150
	v_lshl_or_b32 v19, v154, 16, v153
	v_lshl_or_b32 v18, v156, 16, v155
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	v_perm_b32 v23, v31, v30, 0xc0c0004
	v_perm_b32 v26, v29, v28, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v28, v144, v143, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v33, v32, 0xc0c0004
	v_perm_b32 v30, v148, v147, 0xc0c0004
	v_perm_b32 v31, v146, v145, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[135:142], v[18:21], v[5:8], v[135:142] neg_lo:[1,1,0]
	v_lshl_or_b32 v21, v22, 16, v25
	v_lshl_or_b32 v20, v26, 16, v23
	v_lshl_or_b32 v19, v29, 16, v28
	v_lshl_or_b32 v18, v31, 16, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[135:142], v[18:21], v[1:4], v[135:142] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v22, v137
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v23, v138
	v_cvt_f32_i32_e32 v18, v139
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v19, v140
	v_cvt_f32_i32_e32 v20, v141
	v_cvt_f32_i32_e32 v21, v142
	v_cvt_f32_i32_e32 v25, v135
	v_cvt_f32_i32_e32 v26, v136
.LBB0_10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v30, 0
	v_mov_b32_e32 v31, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v135, s1, v93
	v_add_nc_u32_e32 v136, s1, v91
	v_add_nc_u32_e32 v30, s1, v97
	v_add_nc_u32_e32 v139, s1, v85
	v_add_nc_u32_e32 v31, s1, v95
	v_add_nc_u32_e32 v137, s1, v89
	v_add_nc_u32_e32 v138, s1, v87
	v_add_nc_u32_e32 v140, s1, v83
	v_add_nc_u32_e32 v141, s1, v81
	v_add_nc_u32_e32 v142, s1, v79
	v_add_nc_u32_e32 v171, s1, v76
	v_add_nc_u32_e32 v172, s1, v73
	v_add_nc_u32_e32 v173, s1, v71
	v_add_nc_u32_e32 v174, s1, v69
	v_add_nc_u32_e32 v175, s1, v68
	v_add_nc_u32_e32 v176, s1, v17
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v135, v135
	ds_load_u8 v136, v136
	ds_load_u8 v30, v30
	ds_load_u8 v139, v139
	ds_load_u8 v140, v140
	ds_load_u8 v137, v137
	ds_load_u8 v138, v138
	ds_load_u8 v31, v31
	ds_load_u8 v171, v171
	ds_load_u8 v172, v172
	ds_load_u8 v141, v141
	ds_load_u8 v175, v175
	ds_load_u8 v176, v176
	ds_load_u8 v173, v173
	ds_load_u8 v174, v174
	ds_load_u8 v142, v142
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v177, s1, v96
	v_add_nc_u32_e32 v178, s1, v94
	v_add_nc_u32_e32 v28, s1, v99
	v_add_nc_u32_e32 v181, s1, v88
	v_add_nc_u32_e32 v179, s1, v92
	v_add_nc_u32_e32 v180, s1, v90
	v_add_nc_u32_e32 v182, s1, v86
	v_add_nc_u32_e32 v183, s1, v84
	v_add_nc_u32_e32 v184, s1, v82
	v_add_nc_u32_e32 v185, s1, v80
	v_add_nc_u32_e32 v186, s1, v78
	v_add_nc_u32_e32 v187, s1, v77
	v_add_nc_u32_e32 v188, s1, v75
	v_add_nc_u32_e32 v189, s1, v74
	v_add_nc_u32_e32 v190, s1, v72
	v_add_nc_u32_e32 v29, s1, v98
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v138, v172, v171, 0xc0c0004
	ds_load_u8 v171, v177
	ds_load_u8 v172, v178
	ds_load_u8 v177, v28
	ds_load_u8 v178, v181
	ds_load_u8 v181, v182
	ds_load_u8 v179, v179
	ds_load_u8 v180, v180
	ds_load_u8 v182, v29
	ds_load_u8 v185, v185
	ds_load_u8 v186, v186
	ds_load_u8 v183, v183
	ds_load_u8 v189, v189
	ds_load_u8 v190, v190
	ds_load_u8 v187, v187
	ds_load_u8 v188, v188
	ds_load_u8 v184, v184
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v24, s1, v130
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v136, v136, v135, 0xc0c0004
	v_perm_b32 v30, v31, v30, 0xc0c0004
	v_perm_b32 v139, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v140, v142, v141, 0xc0c0004
	v_perm_b32 v28, v176, v175, 0xc0c0004
	v_perm_b32 v141, v174, v173, 0xc0c0004
	v_dual_mov_b32 v135, 0 :: v_dual_add_nc_u32 v32, s1, v129
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v33, s1, v128
	v_add_nc_u32_e32 v143, s1, v127
	v_add_nc_u32_e32 v144, s1, v126
	v_add_nc_u32_e32 v145, s1, v125
	v_add_nc_u32_e32 v146, s1, v124
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v142, v135 :: v_dual_add_nc_u32 v147, s1, v123
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v158, s1, v112
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v31, v30, 16, v136
	v_lshl_or_b32 v30, v137, 16, v139
	v_lshl_or_b32 v29, v140, 16, v138
	v_lshl_or_b32 v28, v141, 16, v28
	v_mov_b32_e32 v136, v135
	v_mov_b32_e32 v137, v135
	v_mov_b32_e32 v138, v135
	v_mov_b32_e32 v139, v135
	v_mov_b32_e32 v140, v135
	v_mov_b32_e32 v141, v135
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v159, s1, v111
	v_add_nc_u32_e32 v156, s1, v114
	v_add_nc_u32_e32 v162, s1, v108
	v_add_nc_u32_e32 v148, s1, v122
	v_add_nc_u32_e32 v149, s1, v121
	v_add_nc_u32_e32 v150, s1, v120
	v_add_nc_u32_e32 v151, s1, v119
	v_add_nc_u32_e32 v152, s1, v118
	v_add_nc_u32_e32 v153, s1, v117
	v_add_nc_u32_e32 v154, s1, v116
	v_add_nc_u32_e32 v155, s1, v115
	v_add_nc_u32_e32 v157, s1, v113
	v_add_nc_u32_e32 v160, s1, v110
	v_add_nc_u32_e32 v161, s1, v109
	v_add_nc_u32_e32 v163, s1, v107
	v_add_nc_u32_e32 v164, s1, v106
	v_add_nc_u32_e32 v165, s1, v105
	v_add_nc_u32_e32 v166, s1, v104
	v_add_nc_u32_e32 v167, s1, v103
	v_add_nc_u32_e32 v168, s1, v102
	v_add_nc_u32_e32 v169, s1, v101
	v_add_nc_u32_e32 v170, s1, v100
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v172, v182, v177, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v177, s1, v65
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[135:142], v[28:31], v[13:16], v[135:142] neg_lo:[1,1,0]
	ds_load_u8 v29, v158
	ds_load_u8 v30, v159
	ds_load_u8 v31, v156
	ds_load_u8 v156, v162
	ds_load_u8 v158, v163
	ds_load_u8 v159, v160
	ds_load_u8 v160, v161
	ds_load_u8 v157, v157
	ds_load_u8 v161, v166
	ds_load_u8 v162, v167
	ds_load_u8 v163, v164
	ds_load_u8 v164, v170
	ds_load_u8 v166, v177
	ds_load_u8 v167, v168
	ds_load_u8 v168, v169
	ds_load_u8 v165, v165
	ds_load_u8 v33, v33
	ds_load_u8 v143, v143
	ds_load_u8 v24, v24
	ds_load_u8 v146, v146
	ds_load_u8 v147, v147
	ds_load_u8 v144, v144
	ds_load_u8 v145, v145
	ds_load_u8 v32, v32
	ds_load_u8 v150, v150
	ds_load_u8 v151, v151
	ds_load_u8 v148, v148
	ds_load_u8 v154, v154
	ds_load_u8 v155, v155
	ds_load_u8 v152, v152
	ds_load_u8 v153, v153
	ds_load_u8 v149, v149
	v_perm_b32 v173, v181, v178, 0xc0c0004
	v_perm_b32 v174, v180, v179, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v175, v186, v185, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v176, v184, v183, 0xc0c0004
	v_perm_b32 v13, v190, v189, 0xc0c0004
	v_perm_b32 v28, v188, v187, 0xc0c0004
	v_lshl_or_b32 v16, v172, 16, v171
	v_lshl_or_b32 v15, v174, 16, v173
	v_lshl_or_b32 v14, v176, 16, v175
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v13, v28, 16, v13
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v28, v30, v29, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v29, v157, v31, 0xc0c0004
	v_perm_b32 v30, v158, v156, 0xc0c0004
	v_perm_b32 v31, v160, v159, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v156, v162, v161, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v157, v165, v163, 0xc0c0004
	v_perm_b32 v158, v166, v164, 0xc0c0004
	v_perm_b32 v159, v168, v167, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[135:142], v[13:16], v[9:12], v[135:142] neg_lo:[1,1,0]
	v_lshl_or_b32 v12, v29, 16, v28
	v_lshl_or_b32 v11, v31, 16, v30
	v_lshl_or_b32 v10, v157, 16, v156
	v_lshl_or_b32 v9, v159, 16, v158
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v13, v143, v33, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v14, v32, v24, 0xc0c0004
	v_perm_b32 v15, v147, v146, 0xc0c0004
	v_perm_b32 v16, v145, v144, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v24, v151, v150, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v149, v148, 0xc0c0004
	v_perm_b32 v29, v155, v154, 0xc0c0004
	v_perm_b32 v30, v153, v152, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[135:142], v[9:12], v[5:8], v[135:142] neg_lo:[1,1,0]
	v_lshl_or_b32 v8, v14, 16, v13
	v_lshl_or_b32 v7, v16, 16, v15
	v_lshl_or_b32 v6, v28, 16, v24
	v_lshl_or_b32 v5, v30, 16, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[135:142], v[5:8], v[1:4], v[135:142] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v32, v137
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v33, v138
	v_cvt_f32_i32_e32 v28, v139
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v29, v140
	v_cvt_f32_i32_e32 v30, v141
	v_cvt_f32_i32_e32 v31, v142
	v_cvt_f32_i32_e32 v24, v135
	v_cvt_f32_i32_e32 v135, v136
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s30, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s0, s0, 24
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s0, s30, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s30, s14
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s31, s15
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s5
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt lgkmcnt(0)
	v_add_lshl_u32 v1, v70, s0, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s1, -1, 0
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s0, s0, s6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v2, v66, s0, 1
	v_add_lshl_u32 v3, v67, s0, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_and_b32 s13, s13, 0xffff
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v4, v64, s0, 1
	v_add_lshl_u32 v5, v62, s0, 1
	v_add_lshl_u32 v6, v61, s0, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v153, v1, s[12:15], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v1, 0x80000000, v2 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	v_cndmask_b32_e32 v2, 0x80000000, v3, vcc_lo
	v_add_lshl_u32 v3, v63, s0, 1
	v_add_lshl_u32 v7, v60, s0, 1
	v_add_lshl_u32 v8, v59, s0, 1
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_add_i32 s0, s0, s26
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v9, s0, v58, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v6, 0x80000000, v6
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v10, s0, v57, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_cndmask_b32 v8, 0x80000000, v8
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v11, s0, v56, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	s_clause 0x7
	buffer_load_u16 v155, v1, s[28:31], 0 offen
	buffer_load_u16 v154, v2, s[28:31], 0 offen
	buffer_load_u16 v150, v4, s[28:31], 0 offen
	buffer_load_u16 v149, v3, s[28:31], 0 offen
	buffer_load_u16 v141, v5, s[28:31], 0 offen
	buffer_load_u16 v140, v6, s[28:31], 0 offen
	buffer_load_u16 v137, v7, s[28:31], 0 offen
	buffer_load_u16 v136, v8, s[28:31], 0 offen
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v4, s0, v54, 1
	v_add_lshl_u32 v5, s0, v52, 1
	v_cndmask_b32_e32 v1, 0x80000000, v9, vcc_lo
	v_add_lshl_u32 v6, s0, v55, 1
	v_add_lshl_u32 v7, s0, v53, 1
	v_add_lshl_u32 v8, s0, v51, 1
	v_dual_cndmask_b32 v2, 0x80000000, v10 :: v_dual_cndmask_b32 v3, 0x80000000, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	s_clause 0x7
	buffer_load_u16 v157, v1, s[28:31], 0 offen
	buffer_load_u16 v156, v2, s[28:31], 0 offen
	buffer_load_u16 v152, v3, s[28:31], 0 offen
	buffer_load_u16 v151, v4, s[28:31], 0 offen
	buffer_load_u16 v148, v5, s[28:31], 0 offen
	buffer_load_u16 v146, v6, s[28:31], 0 offen
	buffer_load_u16 v139, v7, s[28:31], 0 offen
	buffer_load_u16 v138, v8, s[28:31], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v1, s35, v131
	v_dual_mov_b32 v131, 0 :: v_dual_add_nc_u32 v2, s35, v132
	v_dual_mov_b32 v142, 0 :: v_dual_add_nc_u32 v3, s35, v133
	v_dual_mov_b32 v145, 0 :: v_dual_add_nc_u32 v4, s35, v134
	v_mov_b32_e32 v134, 0
	ds_load_b128 v[13:16], v1
	ds_load_b128 v[9:12], v2
	ds_load_b128 v[5:8], v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[1:4], v4
	v_cndmask_b32_e64 v132, 0, 1, s2
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v144, 0
	v_mov_b32_e32 v133, 0
	v_mov_b32_e32 v143, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_ne_u32_e64 s0, 1, v132
	v_mov_b32_e32 v132, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v158, s34, v93
	v_add_nc_u32_e32 v159, s34, v91
	v_add_nc_u32_e32 v144, s34, v97
	v_add_nc_u32_e32 v162, s34, v85
	v_add_nc_u32_e32 v145, s34, v95
	v_add_nc_u32_e32 v160, s34, v89
	v_add_nc_u32_e32 v161, s34, v87
	v_add_nc_u32_e32 v163, s34, v83
	v_add_nc_u32_e32 v164, s34, v81
	v_add_nc_u32_e32 v165, s34, v79
	v_add_nc_u32_e32 v193, s34, v76
	v_add_nc_u32_e32 v194, s34, v73
	v_add_nc_u32_e32 v195, s34, v71
	v_add_nc_u32_e32 v196, s34, v69
	v_add_nc_u32_e32 v197, s34, v68
	v_add_nc_u32_e32 v198, s34, v17
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v158, v158
	ds_load_u8 v159, v159
	ds_load_u8 v144, v144
	ds_load_u8 v162, v162
	ds_load_u8 v163, v163
	ds_load_u8 v160, v160
	ds_load_u8 v161, v161
	ds_load_u8 v145, v145
	ds_load_u8 v193, v193
	ds_load_u8 v194, v194
	ds_load_u8 v164, v164
	ds_load_u8 v197, v197
	ds_load_u8 v198, v198
	ds_load_u8 v195, v195
	ds_load_u8 v196, v196
	ds_load_u8 v165, v165
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v199, s34, v96
	v_add_nc_u32_e32 v200, s34, v94
	v_add_nc_u32_e32 v142, s34, v99
	v_add_nc_u32_e32 v203, s34, v88
	v_add_nc_u32_e32 v201, s34, v92
	v_add_nc_u32_e32 v202, s34, v90
	v_add_nc_u32_e32 v204, s34, v86
	v_add_nc_u32_e32 v205, s34, v84
	v_add_nc_u32_e32 v206, s34, v82
	v_add_nc_u32_e32 v207, s34, v80
	v_add_nc_u32_e32 v208, s34, v78
	v_add_nc_u32_e32 v209, s34, v77
	v_add_nc_u32_e32 v210, s34, v75
	v_add_nc_u32_e32 v211, s34, v74
	v_add_nc_u32_e32 v212, s34, v72
	v_add_nc_u32_e32 v143, s34, v98
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v161, v194, v193, 0xc0c0004
	ds_load_u8 v193, v199
	ds_load_u8 v194, v200
	ds_load_u8 v199, v142
	ds_load_u8 v200, v203
	ds_load_u8 v203, v204
	ds_load_u8 v201, v201
	ds_load_u8 v202, v202
	ds_load_u8 v204, v143
	ds_load_u8 v207, v207
	ds_load_u8 v208, v208
	ds_load_u8 v205, v205
	ds_load_u8 v211, v211
	ds_load_u8 v212, v212
	ds_load_u8 v209, v209
	ds_load_u8 v210, v210
	ds_load_u8 v206, v206
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v133, s34, v129
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v159, v159, v158, 0xc0c0004
	v_perm_b32 v144, v145, v144, 0xc0c0004
	v_perm_b32 v162, v163, v162, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v163, v165, v164, 0xc0c0004
	v_perm_b32 v142, v198, v197, 0xc0c0004
	v_perm_b32 v164, v196, v195, 0xc0c0004
	v_mov_b32_e32 v158, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v132, s34, v130
	v_add_nc_u32_e32 v134, s34, v128
	v_add_nc_u32_e32 v147, s34, v127
	v_add_nc_u32_e32 v166, s34, v126
	v_add_nc_u32_e32 v167, s34, v125
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v165, v158 :: v_dual_add_nc_u32 v168, s34, v124
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v169, s34, v123
	v_add_nc_u32_e32 v180, s34, v112
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v145, v144, 16, v159
	v_lshl_or_b32 v144, v160, 16, v162
	v_lshl_or_b32 v143, v163, 16, v161
	v_lshl_or_b32 v142, v164, 16, v142
	v_mov_b32_e32 v159, v158
	v_mov_b32_e32 v160, v158
	v_mov_b32_e32 v161, v158
	v_mov_b32_e32 v162, v158
	v_mov_b32_e32 v163, v158
	v_mov_b32_e32 v164, v158
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v193, v194, v193, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v194, v204, v199, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v181, s34, v111
	v_add_nc_u32_e32 v178, s34, v114
	v_add_nc_u32_e32 v184, s34, v108
	v_add_nc_u32_e32 v170, s34, v122
	v_add_nc_u32_e32 v171, s34, v121
	v_add_nc_u32_e32 v172, s34, v120
	v_add_nc_u32_e32 v173, s34, v119
	v_add_nc_u32_e32 v174, s34, v118
	v_add_nc_u32_e32 v175, s34, v117
	v_add_nc_u32_e32 v176, s34, v116
	v_add_nc_u32_e32 v177, s34, v115
	v_add_nc_u32_e32 v179, s34, v113
	v_add_nc_u32_e32 v182, s34, v110
	v_add_nc_u32_e32 v183, s34, v109
	v_add_nc_u32_e32 v185, s34, v107
	v_add_nc_u32_e32 v186, s34, v106
	v_add_nc_u32_e32 v187, s34, v105
	v_add_nc_u32_e32 v188, s34, v104
	v_add_nc_u32_e32 v189, s34, v103
	v_add_nc_u32_e32 v190, s34, v102
	v_add_nc_u32_e32 v191, s34, v101
	v_add_nc_u32_e32 v192, s34, v100
	v_add_nc_u32_e32 v199, s34, v65
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[158:165], v[142:145], v[13:16], v[158:165] neg_lo:[1,1,0]
	v_lshl_or_b32 v145, v194, 16, v193
	ds_load_u8 v180, v180
	ds_load_u8 v181, v181
	ds_load_u8 v178, v178
	ds_load_u8 v184, v184
	ds_load_u8 v185, v185
	ds_load_u8 v182, v182
	ds_load_u8 v183, v183
	ds_load_u8 v179, v179
	ds_load_u8 v188, v188
	ds_load_u8 v189, v189
	ds_load_u8 v186, v186
	ds_load_u8 v192, v192
	ds_load_u8 v194, v199
	ds_load_u8 v190, v190
	ds_load_u8 v191, v191
	ds_load_u8 v187, v187
	ds_load_u8 v134, v134
	ds_load_u8 v147, v147
	ds_load_u8 v132, v132
	ds_load_u8 v168, v168
	ds_load_u8 v169, v169
	ds_load_u8 v166, v166
	ds_load_u8 v167, v167
	ds_load_u8 v133, v133
	ds_load_u8 v172, v172
	ds_load_u8 v173, v173
	ds_load_u8 v170, v170
	ds_load_u8 v176, v176
	ds_load_u8 v177, v177
	ds_load_u8 v174, v174
	ds_load_u8 v175, v175
	ds_load_u8 v171, v171
	v_perm_b32 v195, v203, v200, 0xc0c0004
	v_perm_b32 v196, v202, v201, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v197, v208, v207, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v198, v206, v205, 0xc0c0004
	v_perm_b32 v142, v212, v211, 0xc0c0004
	v_perm_b32 v193, v210, v209, 0xc0c0004
	v_lshl_or_b32 v144, v196, 16, v195
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v180, v181, v180, 0xc0c0004
	v_lshl_or_b32 v143, v198, 16, v197
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v178, v179, v178, 0xc0c0004
	v_lshl_or_b32 v142, v193, 16, v142
	v_perm_b32 v179, v185, v184, 0xc0c0004
	v_perm_b32 v181, v183, v182, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v182, v189, v188, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v183, v187, v186, 0xc0c0004
	v_perm_b32 v184, v194, v192, 0xc0c0004
	v_perm_b32 v185, v191, v190, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[158:165], v[142:145], v[9:12], v[158:165] neg_lo:[1,1,0]
	v_lshl_or_b32 v145, v178, 16, v180
	v_lshl_or_b32 v144, v181, 16, v179
	v_lshl_or_b32 v143, v183, 16, v182
	v_lshl_or_b32 v142, v185, 16, v184
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v134, v147, v134, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	v_perm_b32 v133, v169, v168, 0xc0c0004
	v_perm_b32 v147, v167, v166, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v166, v173, v172, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v171, v170, 0xc0c0004
	v_perm_b32 v168, v177, v176, 0xc0c0004
	v_perm_b32 v169, v175, v174, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[158:165], v[142:145], v[5:8], v[158:165] neg_lo:[1,1,0]
	v_lshl_or_b32 v145, v132, 16, v134
	v_lshl_or_b32 v144, v147, 16, v133
	v_lshl_or_b32 v143, v167, 16, v166
	v_lshl_or_b32 v142, v169, 16, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[158:165], v[142:145], v[1:4], v[158:165] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v134, v160
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v142, v161
	v_cvt_f32_i32_e32 v132, v162
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v133, v163
	v_cvt_f32_i32_e32 v143, v164
	v_cvt_f32_i32_e32 v144, v165
	v_cvt_f32_i32_e32 v145, v158
	v_cvt_f32_i32_e32 v147, v159
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v163, 0
	v_mov_b32_e32 v164, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v93, s33, v93
	v_add_nc_u32_e32 v91, s33, v91
	v_add_nc_u32_e32 v97, s33, v97
	v_add_nc_u32_e32 v85, s33, v85
	v_add_nc_u32_e32 v95, s33, v95
	v_add_nc_u32_e32 v89, s33, v89
	v_add_nc_u32_e32 v87, s33, v87
	v_add_nc_u32_e32 v83, s33, v83
	v_add_nc_u32_e32 v81, s33, v81
	v_add_nc_u32_e32 v79, s33, v79
	v_add_nc_u32_e32 v76, s33, v76
	v_add_nc_u32_e32 v73, s33, v73
	v_add_nc_u32_e32 v71, s33, v71
	v_add_nc_u32_e32 v69, s33, v69
	v_add_nc_u32_e32 v68, s33, v68
	v_add_nc_u32_e32 v17, s33, v17
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v93, v93
	ds_load_u8 v91, v91
	ds_load_u8 v97, v97
	ds_load_u8 v85, v85
	ds_load_u8 v83, v83
	ds_load_u8 v89, v89
	ds_load_u8 v87, v87
	ds_load_u8 v95, v95
	ds_load_u8 v76, v76
	ds_load_u8 v73, v73
	ds_load_u8 v81, v81
	ds_load_u8 v68, v68
	ds_load_u8 v17, v17
	ds_load_u8 v71, v71
	ds_load_u8 v69, v69
	ds_load_u8 v79, v79
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v96, s33, v96
	v_add_nc_u32_e32 v94, s33, v94
	v_add_nc_u32_e32 v99, s33, v99
	v_add_nc_u32_e32 v88, s33, v88
	v_add_nc_u32_e32 v98, s33, v98
	v_add_nc_u32_e32 v92, s33, v92
	v_add_nc_u32_e32 v90, s33, v90
	v_add_nc_u32_e32 v86, s33, v86
	v_add_nc_u32_e32 v84, s33, v84
	v_add_nc_u32_e32 v82, s33, v82
	v_add_nc_u32_e32 v80, s33, v80
	v_add_nc_u32_e32 v78, s33, v78
	v_add_nc_u32_e32 v77, s33, v77
	v_add_nc_u32_e32 v75, s33, v75
	v_add_nc_u32_e32 v74, s33, v74
	v_add_nc_u32_e32 v72, s33, v72
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v91, v91, v93, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v93, v95, v97, 0xc0c0004
	v_perm_b32 v83, v83, v85, 0xc0c0004
	v_perm_b32 v85, v87, v89, 0xc0c0004
	ds_load_u8 v87, v96
	ds_load_u8 v89, v94
	ds_load_u8 v94, v99
	ds_load_u8 v88, v88
	ds_load_u8 v86, v86
	ds_load_u8 v92, v92
	ds_load_u8 v90, v90
	ds_load_u8 v95, v98
	ds_load_u8 v96, v80
	ds_load_u8 v97, v78
	ds_load_u8 v84, v84
	ds_load_u8 v98, v74
	ds_load_u8 v99, v72
	ds_load_u8 v131, v77
	ds_load_u8 v158, v75
	ds_load_u8 v159, v82
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v130, s33, v130
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v73, v73, v76, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v76, v79, v81, 0xc0c0004
	v_perm_b32 v17, v17, v68, 0xc0c0004
	v_perm_b32 v68, v69, v71, 0xc0c0004
	v_mov_b32_e32 v71, 0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v129, s33, v129
	v_add_nc_u32_e32 v128, s33, v128
	v_add_nc_u32_e32 v127, s33, v127
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v75, v71 :: v_dual_add_nc_u32 v126, s33, v126
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v125, s33, v125
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v77, v71 :: v_dual_add_nc_u32 v124, s33, v124
	v_dual_mov_b32 v78, v71 :: v_dual_add_nc_u32 v123, s33, v123
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v112, s33, v112
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v82, v93, 16, v91
	v_lshl_or_b32 v81, v85, 16, v83
	v_lshl_or_b32 v80, v76, 16, v73
	v_lshl_or_b32 v79, v68, 16, v17
	v_mov_b32_e32 v72, v71
	v_mov_b32_e32 v73, v71
	v_mov_b32_e32 v74, v71
	v_mov_b32_e32 v76, v71
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v17, v89, v87, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v68, v95, v94, 0xc0c0004
	v_perm_b32 v69, v86, v88, 0xc0c0004
	v_perm_b32 v83, v90, v92, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v85, v97, v96, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v159, v84, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v111, s33, v111
	v_add_nc_u32_e32 v114, s33, v114
	v_add_nc_u32_e32 v108, s33, v108
	v_add_nc_u32_e32 v107, s33, v107
	v_add_nc_u32_e32 v106, s33, v106
	v_add_nc_u32_e32 v105, s33, v105
	v_add_nc_u32_e32 v104, s33, v104
	v_add_nc_u32_e32 v103, s33, v103
	v_add_nc_u32_e32 v102, s33, v102
	v_add_nc_u32_e32 v101, s33, v101
	v_add_nc_u32_e32 v100, s33, v100
	v_add_nc_u32_e32 v65, s33, v65
	v_add_nc_u32_e32 v122, s33, v122
	v_add_nc_u32_e32 v121, s33, v121
	v_add_nc_u32_e32 v120, s33, v120
	v_add_nc_u32_e32 v119, s33, v119
	v_add_nc_u32_e32 v118, s33, v118
	v_add_nc_u32_e32 v117, s33, v117
	v_add_nc_u32_e32 v116, s33, v116
	v_add_nc_u32_e32 v115, s33, v115
	v_add_nc_u32_e32 v113, s33, v113
	v_add_nc_u32_e32 v110, s33, v110
	v_add_nc_u32_e32 v109, s33, v109
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[71:78], v[79:82], v[13:16], v[71:78] neg_lo:[1,1,0]
	v_lshl_or_b32 v16, v68, 16, v17
	v_lshl_or_b32 v15, v83, 16, v69
	v_lshl_or_b32 v14, v84, 16, v85
	v_perm_b32 v13, v99, v98, 0xc0c0004
	ds_load_u8 v68, v112
	ds_load_u8 v69, v111
	ds_load_u8 v79, v114
	ds_load_u8 v80, v108
	ds_load_u8 v81, v107
	ds_load_u8 v82, v110
	ds_load_u8 v83, v109
	ds_load_u8 v84, v113
	ds_load_u8 v85, v104
	ds_load_u8 v86, v103
	ds_load_u8 v87, v106
	ds_load_u8 v88, v100
	ds_load_u8 v65, v65
	ds_load_u8 v89, v102
	ds_load_u8 v90, v101
	ds_load_u8 v91, v105
	ds_load_u8 v92, v128
	ds_load_u8 v93, v127
	ds_load_u8 v94, v130
	ds_load_u8 v95, v124
	ds_load_u8 v96, v123
	ds_load_u8 v97, v126
	ds_load_u8 v98, v125
	ds_load_u8 v99, v129
	ds_load_u8 v100, v120
	ds_load_u8 v101, v119
	ds_load_u8 v102, v122
	ds_load_u8 v103, v116
	ds_load_u8 v104, v115
	ds_load_u8 v105, v118
	ds_load_u8 v106, v117
	ds_load_u8 v107, v121
	v_perm_b32 v17, v158, v131, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v65, v65, v88, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v13, v17, 16, v13
	v_perm_b32 v17, v69, v68, 0xc0c0004
	v_perm_b32 v68, v84, v79, 0xc0c0004
	v_perm_b32 v69, v81, v80, 0xc0c0004
	v_perm_b32 v79, v83, v82, 0xc0c0004
	v_perm_b32 v80, v86, v85, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v81, v91, v87, 0xc0c0004
	v_perm_b32 v82, v90, v89, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[71:78], v[13:16], v[9:12], v[71:78] neg_lo:[1,1,0]
	v_lshl_or_b32 v12, v68, 16, v17
	v_lshl_or_b32 v11, v79, 16, v69
	v_lshl_or_b32 v10, v81, 16, v80
	v_lshl_or_b32 v9, v82, 16, v65
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v13, v93, v92, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v14, v99, v94, 0xc0c0004
	v_perm_b32 v15, v96, v95, 0xc0c0004
	v_perm_b32 v16, v98, v97, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v17, v101, v100, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v107, v102, 0xc0c0004
	v_perm_b32 v68, v104, v103, 0xc0c0004
	v_perm_b32 v69, v106, v105, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[71:78], v[9:12], v[5:8], v[71:78] neg_lo:[1,1,0]
	v_lshl_or_b32 v8, v14, 16, v13
	v_lshl_or_b32 v7, v16, 16, v15
	v_lshl_or_b32 v6, v65, 16, v17
	v_lshl_or_b32 v5, v69, 16, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[71:78], v[5:8], v[1:4], v[71:78] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v131, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v158, v72
	v_cvt_f32_i32_e32 v161, v73
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v162, v74
	v_cvt_f32_i32_e32 v159, v75
	v_cvt_f32_i32_e32 v160, v76
	v_cvt_f32_i32_e32 v163, v77
	v_cvt_f32_i32_e32 v164, v78
.LBB0_16:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s27, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s30, s14
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s0, s0, 24
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s31, s15
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s0, s27, s0
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v65.h, v138.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 8
	s_mov_b32 s27, 0x31027000
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s5
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt lgkmcnt(0)
	v_add_lshl_u32 v1, v70, s0, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s1, -1, 0
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s0, s0, s6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v2, v66, s0, 1
	v_add_lshl_u32 v3, v67, s0, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v4, v64, s0, 1
	v_add_lshl_u32 v5, v63, s0, 1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	v_cndmask_b32_e32 v6, 0x80000000, v3, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v3, v1, s[12:15], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v1, 0x80000000, v4, vcc_lo
	v_add_lshl_u32 v4, v62, s0, 1
	v_add_lshl_u32 v7, v61, s0, 1
	v_add_lshl_u32 v8, v60, s0, 1
	v_cndmask_b32_e32 v9, 0x80000000, v5, vcc_lo
	v_add_lshl_u32 v5, v59, s0, 1
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_add_i32 s0, s0, s26
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v10, 0x80000000, v4, vcc_lo
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v14, s0, v58, 1
	v_add_lshl_u32 v15, s0, v57, 1
	v_add_lshl_u32 v16, s0, v56, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v11, 0x80000000, v7 :: v_dual_cndmask_b32 v12, 0x80000000, v8
	v_cndmask_b32_e32 v13, 0x80000000, v5, vcc_lo
	s_clause 0x7
	buffer_load_u16 v4, v2, s[28:31], 0 offen
	buffer_load_u16 v5, v6, s[28:31], 0 offen
	buffer_load_u16 v6, v1, s[28:31], 0 offen
	buffer_load_u16 v7, v9, s[28:31], 0 offen
	buffer_load_u16 v8, v10, s[28:31], 0 offen
	buffer_load_u16 v9, v11, s[28:31], 0 offen
	buffer_load_u16 v10, v12, s[28:31], 0 offen
	buffer_load_u16 v11, v13, s[28:31], 0 offen
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v13, s0, v54, 1
	v_dual_cndmask_b32 v1, 0x80000000, v14 :: v_dual_cndmask_b32 v12, 0x80000000, v16
	v_cndmask_b32_e32 v2, 0x80000000, v15, vcc_lo
	v_add_lshl_u32 v14, s0, v52, 1
	v_add_lshl_u32 v15, s0, v55, 1
	v_add_lshl_u32 v16, s0, v53, 1
	v_add_lshl_u32 v17, s0, v51, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v13, 0x80000000, v13 :: v_dual_cndmask_b32 v14, 0x80000000, v14
	v_dual_cndmask_b32 v15, 0x80000000, v15 :: v_dual_cndmask_b32 v16, 0x80000000, v16
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v17, 0x80000000, v17 :: v_dual_and_b32 v0, 16, v0
	s_clause 0x7
	buffer_load_u16 v51, v1, s[28:31], 0 offen
	buffer_load_u16 v52, v2, s[28:31], 0 offen
	buffer_load_u16 v12, v12, s[28:31], 0 offen
	buffer_load_u16 v13, v13, s[28:31], 0 offen
	buffer_load_u16 v14, v14, s[28:31], 0 offen
	buffer_load_u16 v15, v15, s[28:31], 0 offen
	buffer_load_u16 v16, v16, s[28:31], 0 offen
	buffer_load_u16 v17, v17, s[28:31], 0 offen
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v53.l, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v53.h, v153.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e64 v61.h, v146.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v54.h, v155.l
	v_mov_b16_e64 v55.h, v154.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v61.l, v53.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v54.l, v53.l
	v_mov_b16_e32 v55.l, v53.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e64 v57.h, v151.l
	v_mov_b16_e32 v57.l, v53.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v61, v53, v61
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v54, v53, v54
	v_mul_f32_e32 v55, v53, v55
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v58.h, v150.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e64 v60.h, v148.l
	v_mov_b16_e64 v64.h, v139.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v67.h, v136.l
	v_mov_b16_e32 v58.l, v53.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v60.l, v53.l
	v_mov_b16_e32 v64.l, v53.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v67.l, v53.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v57, v53, v57
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v59.h, v149.l
	v_mov_b16_e32 v59.l, v53.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v58, v53, v58
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v60, v53, v60
	v_mul_f32_e32 v64, v53, v64
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v67, v53, v67
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v2, 1, v27
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e64 v27.h, v157.l
	v_mov_b16_e64 v56.h, v152.l
	v_mov_b16_e32 v27.l, v53.l
	v_mov_b16_e32 v56.l, v53.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v59, v53, v59
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v63.h, v140.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_dual_mov_b32 v68, 0x5410 :: v_dual_mul_f32 v27, v53, v27
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v63.l, v53.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v65.l, v53.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v56, v53, v56
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v1, v50, s7
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v24, v27, v24, v34
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v63, v53, v63
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v65, v53, v65
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e64 v50.h, v156.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v62.h, v141.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v50.l, v53.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v62.l, v53.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v34, v24, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v66.h, v137.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_dual_mov_b32 v69, 0x7632 :: v_dual_mul_f32 v50, v53, v50
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v66.l, v53.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v62, v53, v62
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v70.h, v53.l
	v_mov_b16_e32 v71.h, v53.l
	v_mov_b16_e32 v72.h, v53.l
	v_mov_b16_e32 v73.h, v53.l
	v_mov_b16_e32 v74.h, v53.l
	v_mov_b16_e32 v75.h, v53.l
	v_mov_b16_e32 v76.h, v53.l
	v_mov_b16_e32 v77.h, v53.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v53, v53, v66
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v27, v50, v135, v49
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s25, s25, 0xffff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v27, v49, v27, s3
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v3, 16, v3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v25, v54, v25, v47
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v47, v25, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v4, 16, v4
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v5, 16, v5
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v33, v57, v33, v46
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(12)
	v_dual_mul_f32 v4, v3, v4 :: v_dual_lshlrev_b32 v7, 16, v7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v10, 16, v10
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v29, v61, v29, v42
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v22, v58, v22, v43
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v46, v33, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v28, v60, v28, v41
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v42, v29, s3
	v_cndmask_b32_e64 v22, v43, v22, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v8, 16, v8
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v23, v59, v23, v44
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v41, v28, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v6, v3, v6 :: v_dual_lshlrev_b32 v13, 16, v13
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v14, 16, v14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v15, 16, v15
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v21, v67, v21, v35
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v32, v56, v32, v45
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v44, v23, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v14, v3, v14
	v_mul_f32_e32 v15, v3, v15
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v21, v35, v21, s3
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v35, 16, v52
	v_lshlrev_b32_e32 v12, 16, v12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v6, v134, v22
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v15, v15, v160, v29
	v_fma_f32 v14, v14, v159, v28
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v45, v32, s3
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v34, 16, v51
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v31, v65, v31, v38
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v29, v15, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v13, v3, v13
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v8, v3, v8 :: v_dual_lshlrev_b32 v17, 16, v17
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v22, v6, s2
	v_cndmask_b32_e64 v14, v28, v14, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v13, v13, v162, v33
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v12, v3, v12
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v38, v31, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v17, v3, v17
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v19, v63, v19, v40
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v33, v13, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v3, v7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v11, 16, v11
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v18, v62, v18, v39
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v22, 0xbfb8aa3b, v13
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v7, v7, v142, v23
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v17, v17, v164, v31
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v20, v53, v20, v36
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v40, v19, s3
	v_cndmask_b32_e64 v18, v39, v18, s3
	v_cndmask_b32_e64 v7, v23, v7, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v23, 0xbfb8aa3b, v14
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v12, v12, v161, v32
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v3, v5
	v_mul_f32_e32 v9, v3, v9
	v_mul_f32_e32 v10, v3, v10
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v35, v3, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v32, v12, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v34, v3, v34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v31, v17, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v11, v3, v11
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v3, v3, v16
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v26, v55, v26, v48
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v16, v34, v131, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v36, v20, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v8, v8, v132, v18
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v34, v35, v158, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v48, v26, s3
	v_cndmask_b32_e64 v16, v24, v16, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v24, 0xbfb8aa3b, v15
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v9, v9, v133, v19
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v18, v8, s2
	v_cndmask_b32_e64 v18, v27, v34, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v30, v64, v30, v37
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v19, v9, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v19, 0xbfb8aa3b, v16
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v10, v10, v143, v20
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v37, v30, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v24
	v_cndmask_b32_e64 v22, 0, 0x42800000, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v4, v4, v145, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v20, v10, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v20, 0xbfb8aa3b, v18
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v5, v5, v147, v26
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v24, 0, 0x42800000, s3
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v13
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v25, v4, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v26, v5, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v26, 0xbfb8aa3b, v17
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v11, v11, v144, v21
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v15
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v23
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v21, v11, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v21, 0xbfb8aa3b, v12
	v_exp_f32_e32 v24, v24
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v18
	v_cndmask_b32_e64 v26, 0, 0x42800000, s5
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s3
	v_exp_f32_e32 v22, v22
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v19
	v_cndmask_b32_e64 v23, 0, 0x42800000, s4
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v17
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v3, v3, v163, v30
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s1
	v_exp_f32_e32 v20, v20
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s5
	v_exp_f32_e32 v26, v26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v30, v3, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v21
	v_ldexp_f32 v24, v24, v31
	v_cndmask_b32_e64 v19, 0, 0x42800000, s0
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v14
	v_cndmask_b32_e64 v21, 0, 0x42800000, s2
	v_ldexp_f32 v22, v22, v29
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v26, v26, v33
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v16
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v12
	v_ldexp_f32 v20, v20, v27
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v22, 1.0, v22
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v35, null, v24, v24, v15
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v21, v21
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s2
	v_exp_f32_e32 v19, v19
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, null, v22, v22, v13
	v_rcp_f32_e32 v46, v35
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v25, 0xbfb8aa3b, v3
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v27, null, v20, v20, v18
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v21, v21, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v44, v31
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v25
	v_ldexp_f32 v19, v19, v28
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v42, v27
	v_fma_f32 v55, -v35, v46, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v25, 0, 0x42800000, s6
	v_exp_f32_e32 v23, v23
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s6
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v46, v55, v46
	v_div_scale_f32 v33, null, v21, v21, v12
	v_fma_f32 v53, -v31, v44, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v51, -v27, v42, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v45, v33
	v_fmac_f32_e32 v44, v53, v44
	v_div_scale_f32 v29, null, v19, v19, v16
	v_fmac_f32_e32 v42, v51, v42
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v25, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v39, null, v26, v26, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v43, v29
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v54, -v33, v45, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v48, v39
	v_div_scale_f32 v30, s0, v16, v19, v16
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v23, v23, v32
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v25, v25, v34
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, s2, v12, v21, v12
	v_fma_f32 v52, -v29, v43, 1.0
	v_fmac_f32_e32 v45, v54, v45
	v_div_scale_f32 v28, vcc_lo, v18, v20, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v57, -v39, v48, 1.0
	v_dual_fmac_f32 v43, v52, v43 :: v_dual_mul_f32 v54, v34, v45
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v25, 1.0, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v23, 1.0, v23 :: v_dual_fmac_f32 v48, v57, v48
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v52, v30, v43
	v_div_scale_f32 v32, s1, v13, v22, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v41, null, v25, v25, v3
	v_div_scale_f32 v37, null, v23, v23, v14
	v_div_scale_f32 v50, s6, v3, v25, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v49, v41
	v_rcp_f32_e32 v47, v37
	v_fma_f32 v60, -v29, v52, v30
	v_div_scale_f32 v38, s4, v14, v23, v14
	v_fma_f32 v62, -v33, v54, v34
	v_div_scale_f32 v36, s3, v15, v24, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v52, v60, v43
	v_dual_mul_f32 v53, v32, v44 :: v_dual_fmac_f32 v54, v62, v45
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v58, -v41, v49, 1.0
	v_fma_f32 v56, -v37, v47, 1.0
	v_div_scale_f32 v40, s5, v17, v26, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v61, -v31, v53, v32
	v_fmac_f32_e32 v49, v58, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v47, v56, v47
	v_dual_fmac_f32 v53, v61, v44 :: v_dual_mul_f32 v58, v50, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v51, v28, v42 :: v_dual_mul_f32 v56, v38, v47
	v_fma_f32 v66, -v41, v58, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v59, -v27, v51, v28
	v_fma_f32 v64, -v37, v56, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v51, v59, v42 :: v_dual_fmac_f32 v56, v64, v47
	v_dual_mul_f32 v55, v36, v46 :: v_dual_fmac_f32 v58, v66, v49
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v27, -v27, v51, v28
	v_fma_f32 v28, -v29, v52, v30
	v_fma_f32 v29, -v31, v53, v32
	v_fma_f32 v30, -v33, v54, v34
	v_fma_f32 v63, -v35, v55, v36
	v_div_fmas_f32 v27, v27, v42, v51
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v32, -v37, v56, v38
	v_div_fmas_f32 v28, v28, v43, v52
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v18, v27, v20, v18
	v_div_fmas_f32 v29, v29, v44, v53
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v16, v28, v19, v16
	v_div_fmas_f32 v20, v30, v45, v54
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v13, v29, v22, v13
	v_fma_f32 v34, -v41, v58, v50
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v4, v16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v12, v20, v21, v12
	v_fmac_f32_e32 v55, v63, v46
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v7, v7, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v71.l, v4.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v6, v6, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v31, -v35, v55, v36
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v72.l, v7.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v5, v5, v18
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v57, v40, v48
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v73.l, v6.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v19, v31, v46, v55
	s_mov_b32 vcc_lo, s4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v4, v4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v18, v32, v47, v56
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v15, v19, v24, v15
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s2, v6, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v14, v18, v23, v14
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v8, v8, v14
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v14, 1, v71
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v65, -v39, v57, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v75.l, v8.h
	v_add3_u32 v4, v4, v14, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v57, v65, v48
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v8, v8
	v_and_b32_e32 v14, 1, v75
	v_cmp_o_f32_e64 s1, v7, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v33, -v39, v57, v40
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v8, v8, v14, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v16, v33, v48, v57
	s_mov_b32 vcc_lo, s6
	v_div_fmas_f32 v13, v34, v49, v58
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v4.l, 0x7fff, v8.h, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v12, v16, v26, v17
	v_div_fixup_f32 v3, v13, v25, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v11, v11, v12
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v12, 1, v72
	v_mov_b16_e32 v70.l, v5.h
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v3, v10, v3 :: v_dual_and_b32 v10, 1, v73
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v7, v7, v12, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v13, 1, v70
	v_mov_b16_e32 v77.l, v3.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s1
	v_add3_u32 v5, v5, v13, 0x7fff
	v_cndmask_b16 v5.l, 0x7fff, v4.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v12, 1, v77
	v_cmp_o_f32_e64 s0, v3, v3
	v_cndmask_b16 v5.h, 0x7fff, v5.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add3_u32 v0, v6, v10, 0x7fff
	v_add3_u32 v3, v3, v12, 0x7fff
	v_cndmask_b32_e32 v10, 0x3276, v69, vcc_lo
	v_mov_b16_e32 v76.l, v11.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v9, v9, v15
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s5, v11, v11
	v_cndmask_b16 v7.l, 0x7fff, v0.h, s2
	v_cndmask_b16 v0.l, 0x7fff, v3.h, s0
	v_and_b32_e32 v6, 1, v76
	v_mov_b16_e32 v74.l, v9.h
	v_cmp_o_f32_e64 s3, v9, v9
	v_lshl_or_b32 v10, v10, 8, v10
	s_mov_b32 s0, 0x76543210
	v_add3_u32 v6, v11, v6, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b16 v0.h, 0x7fff, v6.h, s5
	v_and_b32_e32 v13, 1, v74
	v_add3_u32 v9, v9, v13, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v4.h, 0x7fff, v9.h, s3
	v_dual_cndmask_b32 v9, 0x1054, v68 :: v_dual_cndmask_b32 v8, v4, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 8, v9
	v_dual_cndmask_b32 v3, v5, v4 :: v_dual_and_b32 v6, 0x540054, v9
	v_and_b32_e32 v9, 0x760076, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v3, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v4, v6, 4, v6
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v5, v9, 4, v9
	v_cndmask_b32_e32 v6, v7, v0, vcc_lo
	v_cndmask_b32_e32 v0, v0, v7, vcc_lo
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	v_or_b32_e32 v7, s26, v2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v4, 0x5040504, v4
	v_and_b32_e32 v5, 0x7060706, v5
	v_permlanex16_b32 v6, v6, s0, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s26, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_perm_b32 v2, v3, v8, v4
	v_perm_b32 v3, v3, v8, v5
	s_delay_alu instid0(VALU_DEP_3)
	v_perm_b32 v4, v6, v0, v4
	v_perm_b32 v5, v6, v0, v5
	v_add_lshl_u32 v0, v7, v1, 1
	buffer_store_b128 v[2:5], v0, s[24:27], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
		.amdhsa_next_free_sgpr 53
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 213
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 53
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16068
; TotalNumSgprs: 55
; NumVgprs: 213
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 55
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     55
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     213
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
