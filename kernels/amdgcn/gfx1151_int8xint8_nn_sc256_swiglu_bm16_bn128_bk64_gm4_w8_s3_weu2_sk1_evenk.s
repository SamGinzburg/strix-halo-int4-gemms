	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x30
	s_load_b32 s14, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s6, s2
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshlrev_b32_e32 v131, 4, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v3, 4, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshrrev_b32_e32 v4, 3, v0
	s_mov_b32 s27, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v2, 0x70, v131
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v47, 0, v131
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0x7f
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
	s_lshr_b32 s5, s5, 25
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
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s7, s7, 4
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s12, s4, 2
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v6, s14, v3
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s4, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_rcp_iflag_f32_e32 v1, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s5
	s_mul_hi_u32 s8, s5, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s12
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
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
	s_sub_i32 s13, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s15, s13, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s13, s13, s12
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s4, s7, s15
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s13
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s16, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s17, s16
	s_abs_i32 s13, s2
	s_cvt_f32_u32 s18, s17
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v1, 15, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[6:7]
	s_mov_b32 s7, 0x31027000
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v5, 2, v1
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
	s_mul_hi_u32 s12, s13, s12
	s_mov_b32 s6, 0x7ffffffe
	s_mul_i32 s19, s12, s17
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s30, s6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s13, s13, s19
	s_add_i32 s19, s12, 1
	s_sub_i32 s20, s13, s17
	s_cmp_ge_u32 s13, s17
	s_cselect_b32 s12, s19, s12
	s_cselect_b32 s13, s20, s13
	s_add_i32 s19, s12, 1
	s_cmp_ge_u32 s13, s17
	s_cselect_b32 s12, s19, s12
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s26, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s13, s12, s18
	.loc	1 303 14                        ; generate_amdgcn.py:303:14
	s_lshl_b32 s33, s23, 1
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s17, s13, s18
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[29:30], null, s33, v4, v[2:3]
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s3, s17, s16
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s16, s14, 0xff
.Ltmp13:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s3
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_ashr_i32 s3, s16, 31
.Ltmp15:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s15
.Ltmp16:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s12, s14, 63
.Ltmp17:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s13, s2, 4
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_lshr_b32 s3, s3, 24
.Ltmp19:
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s14, s13, s14
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s22, s17, 7
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v132, v6, v5, s14
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s14, s16, s3
.Ltmp21:
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s2, s33, s26
	v_lshl_add_u32 v133, s23, 6, v29
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s12, 63
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v2, s26, v132
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s15, s22, s2
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s12, 0x7f
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v4, s15, v29
	v_add_nc_u32_e32 v5, s15, v133
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s16, s23, 7
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s34, s26, 64
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s15, s15, s16
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 348 30 is_stmt 0              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v6, s34, v132
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v7, 0x80000000, v4, s3
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v4, s23, v4
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v9, s15, v29
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v8, 0x80000000, v5, s3
	.loc	1 358 39 is_stmt 1              ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v5, s23, v5
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v10, s15, v133
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v28, v2, s[4:7], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v6, s2
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 358 39 is_stmt 0              ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v6, s23, v9
	v_add3_u32 v11, s15, s23, v133
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[12:15], v7, s[28:31], 0 offen
	buffer_load_b128 v[16:19], v8, s[28:31], 0 offen
	v_cndmask_b32_e64 v7, 0x80000000, v9, s2
	v_cndmask_b32_e64 v8, 0x80000000, v10, s2
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1
	buffer_load_b128 v[20:23], v4, s[28:31], 0 offen
	buffer_load_b128 v[24:27], v5, s[28:31], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v6, s2
	v_cndmask_b32_e64 v5, 0x80000000, v11, s2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v46, v2, s[4:7], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[30:33], v7, s[28:31], 0 offen
	buffer_load_b128 v[34:37], v8, s[28:31], 0 offen
	buffer_load_b128 v[38:41], v4, s[28:31], 0 offen
	buffer_load_b128 v[42:45], v5, s[28:31], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v2, 1, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v4, 2, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s12, 0xbf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v11, 0x70, v2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v5, 48, v2
	v_lshlrev_b32_e32 v2, 3, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v3, v3, 1, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v135, v4, v5
	v_or_b32_e32 v134, v11, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v7, 2, v3
	v_or_b32_e32 v8, 4, v3
	v_or_b32_e32 v9, 6, v3
	v_or_b32_e32 v10, 8, v3
	v_or_b32_e32 v4, 10, v3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v48, 0, v135
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v5, 12, v3
	v_or_b32_e32 v6, 14, v3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(9)
	ds_store_b32 v48, v28 offset:32768
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
	ds_store_b128 v47, v[30:33] offset:8192
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
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshl_or_b32 v127, v1, 6, v12
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v64, 0x80, v17
	v_or_b32_e32 v65, 0x100, v17
	v_or_b32_e32 v67, 0x180, v17
	v_or_b32_e32 v69, 0x200, v17
	v_or_b32_e32 v72, 0x280, v17
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v128, 16, v127
	v_xor_b32_e32 v129, 32, v127
	v_xor_b32_e32 v130, 48, v127
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v75, 0x300, v17
	v_or_b32_e32 v77, 0x380, v17
	v_or_b32_e32 v79, 0x400, v17
	v_or_b32_e32 v81, 0x480, v17
	v_or_b32_e32 v83, 0x500, v17
	v_or_b32_e32 v85, 0x580, v17
	v_or_b32_e32 v87, 0x600, v17
	v_or_b32_e32 v89, 0x680, v17
	v_or_b32_e32 v91, 0x700, v17
	v_or_b32_e32 v93, 0x780, v17
	v_or_b32_e32 v68, 0x800, v17
	v_or_b32_e32 v70, 0x880, v17
	v_or_b32_e32 v71, 0x900, v17
	v_or_b32_e32 v73, 0x980, v17
	v_or_b32_e32 v74, 0xa00, v17
	v_or_b32_e32 v76, 0xa80, v17
	v_or_b32_e32 v78, 0xb00, v17
	v_or_b32_e32 v80, 0xb80, v17
	v_or_b32_e32 v82, 0xc00, v17
	v_or_b32_e32 v84, 0xc80, v17
	v_or_b32_e32 v86, 0xd00, v17
	v_or_b32_e32 v88, 0xd80, v17
	v_or_b32_e32 v90, 0xe00, v17
	v_or_b32_e32 v92, 0xe80, v17
	v_or_b32_e32 v94, 0xf00, v17
	v_or_b32_e32 v95, 0xf80, v17
	v_or_b32_e32 v61, 0x1000, v17
	v_or_b32_e32 v96, 0x1080, v17
	v_or_b32_e32 v97, 0x1100, v17
	v_or_b32_e32 v98, 0x1180, v17
	v_or_b32_e32 v99, 0x1200, v17
	v_or_b32_e32 v100, 0x1280, v17
	v_or_b32_e32 v101, 0x1300, v17
	v_or_b32_e32 v102, 0x1380, v17
	v_or_b32_e32 v103, 0x1400, v17
	v_or_b32_e32 v104, 0x1480, v17
	v_or_b32_e32 v105, 0x1500, v17
	v_or_b32_e32 v106, 0x1580, v17
	v_or_b32_e32 v107, 0x1600, v17
	v_or_b32_e32 v108, 0x1680, v17
	v_or_b32_e32 v109, 0x1700, v17
	v_or_b32_e32 v110, 0x1780, v17
	v_or_b32_e32 v111, 0x1800, v17
	v_or_b32_e32 v112, 0x1880, v17
	v_or_b32_e32 v113, 0x1900, v17
	v_or_b32_e32 v114, 0x1980, v17
	v_or_b32_e32 v115, 0x1a00, v17
	v_or_b32_e32 v116, 0x1a80, v17
	v_or_b32_e32 v117, 0x1b00, v17
	v_or_b32_e32 v118, 0x1b80, v17
	v_or_b32_e32 v119, 0x1c00, v17
	v_or_b32_e32 v120, 0x1c80, v17
	v_or_b32_e32 v121, 0x1d00, v17
	v_or_b32_e32 v122, 0x1d80, v17
	v_or_b32_e32 v123, 0x1e00, v17
	v_or_b32_e32 v124, 0x1e80, v17
	v_or_b32_e32 v125, 0x1f00, v17
	v_or_b32_e32 v126, 0x1f80, v17
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr127
                                        ; implicit-def: $vgpr128
                                        ; implicit-def: $vgpr129
                                        ; implicit-def: $vgpr130
                                        ; implicit-def: $vgpr17
                                        ; implicit-def: $vgpr64
                                        ; implicit-def: $vgpr65
                                        ; implicit-def: $vgpr67
                                        ; implicit-def: $vgpr69
                                        ; implicit-def: $vgpr72
                                        ; implicit-def: $vgpr75
                                        ; implicit-def: $vgpr77
                                        ; implicit-def: $vgpr79
                                        ; implicit-def: $vgpr81
                                        ; implicit-def: $vgpr83
                                        ; implicit-def: $vgpr85
                                        ; implicit-def: $vgpr87
                                        ; implicit-def: $vgpr89
                                        ; implicit-def: $vgpr91
                                        ; implicit-def: $vgpr93
                                        ; implicit-def: $vgpr68
                                        ; implicit-def: $vgpr70
                                        ; implicit-def: $vgpr71
                                        ; implicit-def: $vgpr73
                                        ; implicit-def: $vgpr74
                                        ; implicit-def: $vgpr76
                                        ; implicit-def: $vgpr78
                                        ; implicit-def: $vgpr80
                                        ; implicit-def: $vgpr82
                                        ; implicit-def: $vgpr84
                                        ; implicit-def: $vgpr86
                                        ; implicit-def: $vgpr88
                                        ; implicit-def: $vgpr90
                                        ; implicit-def: $vgpr92
                                        ; implicit-def: $vgpr94
                                        ; implicit-def: $vgpr95
                                        ; implicit-def: $vgpr61
                                        ; implicit-def: $vgpr96
                                        ; implicit-def: $vgpr97
                                        ; implicit-def: $vgpr98
                                        ; implicit-def: $vgpr99
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
.LBB0_3:                                ; %Flow162
	s_load_b64 s[20:21], s[0:1], 0x20
	v_or_b32_e32 v46, s13, v1
	s_ashr_i32 s1, s14, 8
	v_or_b32_e32 v62, s22, v3
	v_or_b32_e32 v63, s22, v7
	v_or_b32_e32 v60, s22, v8
	v_mul_lo_u32 v66, v46, s1
	v_or_b32_e32 v59, s22, v9
	v_or_b32_e32 v58, s22, v10
	v_or_b32_e32 v57, s22, v4
	v_or_b32_e32 v56, s22, v5
	v_or_b32_e32 v55, s22, v6
	v_add_nc_u32_e32 v54, s23, v3
	v_add_nc_u32_e32 v53, s23, v7
	v_add_nc_u32_e32 v52, s23, v8
	v_add_nc_u32_e32 v50, s23, v9
	v_add_nc_u32_e32 v48, s23, v10
	v_add_nc_u32_e32 v51, s23, v4
	v_add_nc_u32_e32 v49, s23, v5
	v_add_nc_u32_e32 v47, s23, v6
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v45, 0 :: v_dual_and_b32 v2, 48, v2
	v_or_b32_e32 v64, 0x80, v134
	v_or_b32_e32 v65, 0x100, v134
	v_or_b32_e32 v67, 0x180, v134
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v127, v1, 6, v2
	v_or_b32_e32 v69, 0x200, v134
	v_or_b32_e32 v72, 0x280, v134
	v_or_b32_e32 v75, 0x300, v134
	v_or_b32_e32 v77, 0x380, v134
	v_xor_b32_e32 v128, 16, v127
	v_xor_b32_e32 v129, 32, v127
	v_xor_b32_e32 v130, 48, v127
	v_or_b32_e32 v79, 0x400, v134
	v_or_b32_e32 v81, 0x480, v134
	v_or_b32_e32 v83, 0x500, v134
	v_or_b32_e32 v85, 0x580, v134
	v_or_b32_e32 v87, 0x600, v134
	v_or_b32_e32 v89, 0x680, v134
	v_or_b32_e32 v91, 0x700, v134
	v_or_b32_e32 v93, 0x780, v134
	v_or_b32_e32 v68, 0x800, v134
	v_or_b32_e32 v70, 0x880, v134
	v_or_b32_e32 v71, 0x900, v134
	v_or_b32_e32 v73, 0x980, v134
	v_or_b32_e32 v74, 0xa00, v134
	v_or_b32_e32 v76, 0xa80, v134
	v_or_b32_e32 v78, 0xb00, v134
	v_or_b32_e32 v80, 0xb80, v134
	v_or_b32_e32 v82, 0xc00, v134
	v_or_b32_e32 v84, 0xc80, v134
	v_or_b32_e32 v86, 0xd00, v134
	v_or_b32_e32 v88, 0xd80, v134
	v_or_b32_e32 v90, 0xe00, v134
	v_or_b32_e32 v92, 0xe80, v134
	v_or_b32_e32 v94, 0xf00, v134
	v_or_b32_e32 v95, 0xf80, v134
	v_or_b32_e32 v61, 0x1000, v134
	v_or_b32_e32 v96, 0x1080, v134
	v_or_b32_e32 v97, 0x1100, v134
	v_or_b32_e32 v98, 0x1180, v134
	v_or_b32_e32 v99, 0x1200, v134
	v_or_b32_e32 v100, 0x1280, v134
	v_or_b32_e32 v101, 0x1300, v134
	v_or_b32_e32 v102, 0x1380, v134
	v_or_b32_e32 v103, 0x1400, v134
	v_or_b32_e32 v104, 0x1480, v134
	v_or_b32_e32 v105, 0x1500, v134
	v_or_b32_e32 v106, 0x1580, v134
	v_or_b32_e32 v107, 0x1600, v134
	v_or_b32_e32 v108, 0x1680, v134
	v_or_b32_e32 v109, 0x1700, v134
	v_or_b32_e32 v110, 0x1780, v134
	v_or_b32_e32 v111, 0x1800, v134
	v_or_b32_e32 v112, 0x1880, v134
	v_or_b32_e32 v113, 0x1900, v134
	v_or_b32_e32 v114, 0x1980, v134
	v_or_b32_e32 v115, 0x1a00, v134
	v_or_b32_e32 v116, 0x1a80, v134
	v_or_b32_e32 v117, 0x1b00, v134
	v_or_b32_e32 v118, 0x1b80, v134
	v_or_b32_e32 v119, 0x1c00, v134
	v_or_b32_e32 v120, 0x1c80, v134
	v_or_b32_e32 v121, 0x1d00, v134
	v_or_b32_e32 v122, 0x1d80, v134
	v_or_b32_e32 v123, 0x1e00, v134
	v_or_b32_e32 v124, 0x1e80, v134
	v_or_b32_e32 v125, 0x1f00, v134
	v_or_b32_e32 v126, 0x1f80, v134
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v31, 0
	v_mov_b32_e32 v32, 0
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s44, s12, 6
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_mov_b32 s12, 0
	s_add_i32 s11, s34, 64
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_and_b32 s41, s25, 0xffff
	s_mov_b32 s40, s24
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s48, 0, 0x8400
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s35, 0, 0x6000
	s_add_i32 s44, s44, -3
	s_mov_b32 s45, 1
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
	s_mov_b32 s27, s12
	s_mov_b32 s47, s12
.Ltmp23:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	s_mov_b32 s49, s0
	s_mov_b32 s0, s48
	s_mov_b32 s48, s27
	s_mov_b32 s27, s46
	s_mov_b32 s46, s10
	s_mov_b32 s10, s35
	s_mov_b32 s35, s26
	s_mov_b32 s26, s34
	.loc	1 308 14 is_stmt 1              ; generate_amdgcn.py:308:14
	s_lshl_b32 s34, s47, 6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v1, s49, v127
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s34, s11, s34
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v2, s49, v128
	.loc	1 348 30 is_stmt 0              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v3, s34, v132
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v137, s48, v134
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v140, s46, v134
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v24, s19 :: v_dual_mov_b32 v23, s18
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b32 v139, v3, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[25:28], v1
	ds_load_b128 v[141:144], v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v137 offset:1664
	ds_load_u8 v2, v137 offset:1536
	ds_load_u8 v3, v137 offset:1920
	ds_load_u8 v4, v137 offset:1792
	ds_load_u8 v5, v137 offset:1152
	ds_load_u8 v6, v137 offset:1024
	ds_load_u8 v7, v137 offset:1408
	ds_load_u8 v8, v137 offset:1280
	ds_load_u8 v9, v137 offset:640
	ds_load_u8 v10, v137 offset:512
	ds_load_u8 v11, v137 offset:896
	ds_load_u8 v12, v137 offset:768
	ds_load_u8 v13, v137 offset:128
	ds_load_u8 v14, v137
	ds_load_u8 v15, v137 offset:384
	ds_load_u8 v16, v137 offset:256
	ds_load_u8 v151, v137 offset:3712
	ds_load_u8 v152, v137 offset:3584
	ds_load_u8 v153, v137 offset:3968
	ds_load_u8 v154, v137 offset:3840
	ds_load_u8 v155, v137 offset:3200
	ds_load_u8 v156, v137 offset:3072
	ds_load_u8 v157, v137 offset:3456
	ds_load_u8 v158, v137 offset:3328
	ds_load_u8 v159, v137 offset:2688
	ds_load_u8 v160, v137 offset:2560
	ds_load_u8 v161, v137 offset:2944
	ds_load_u8 v162, v137 offset:2816
	ds_load_u8 v163, v137 offset:2176
	ds_load_u8 v164, v137 offset:2048
	ds_load_u8 v165, v137 offset:2432
	ds_load_u8 v166, v137 offset:2304
	ds_load_u8 v167, v137 offset:5760
	ds_load_u8 v168, v137 offset:5632
	ds_load_u8 v169, v137 offset:6016
	ds_load_u8 v170, v137 offset:5888
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v145, v140 offset:1664
	ds_load_u8 v146, v140 offset:1536
	ds_load_u8 v147, v140 offset:1920
	ds_load_u8 v148, v140 offset:1792
	ds_load_u8 v171, v140 offset:1152
	ds_load_u8 v172, v140 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v2, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v3, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v5, v8, v7, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v173, v140 offset:1408
	ds_load_u8 v174, v140 offset:1280
	ds_load_u8 v7, v140 offset:896
	ds_load_u8 v8, v140 offset:768
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v4, v2, 16, v1
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v1, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v2, v12, v11, 0xc0c0004
	v_lshl_or_b32 v3, v5, 16, v3
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v5, v140 offset:640
	ds_load_u8 v6, v140 offset:512
	ds_load_u8 v9, v140 offset:128
	ds_load_u8 v10, v140
	ds_load_u8 v11, v140 offset:384
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v2, v2, 16, v1
	s_waitcnt lgkmcnt(37)
	v_perm_b32 v1, v14, v13, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v13, v140 offset:256
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v12, v16, v15, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v14, v146, v145, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v15, v148, v147, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v16, v172, v171, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v22, s17 :: v_dual_mov_b32 v21, s16
	v_dual_mov_b32 v20, s15 :: v_dual_mov_b32 v19, s14
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v145, v174, v173, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v18, s13 :: v_dual_mov_b32 v17, s12
	v_lshl_or_b32 v1, v12, 16, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v148, v15, 16, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v147, v145, 16, v16
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	v_perm_b32 v6, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v7, v10, v9, 0xc0c0004
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s46, s35, 31
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s48, s34, s33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v13, v11, 0xc0c0004
	v_lshl_or_b32 v146, v6, 16, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[9:16], v[1:4], v[25:28], v[17:24] neg_lo:[1,1,0]
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s46, s46, 24
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v145, v8, 16, v7
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s35, s35, s46
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s48, s48, s22
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s35, s35, 8
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v149, s48, v29
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[1:8], v[145:148], v[25:28], v[17:24] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v22, v152, v151, 0xc0c0004
	v_perm_b32 v23, v154, v153, 0xc0c0004
	v_perm_b32 v28, v156, v155, 0xc0c0004
	v_perm_b32 v145, v158, v157, 0xc0c0004
	ds_load_u8 v181, v137 offset:4480
	ds_load_u8 v182, v137 offset:4352
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v17, v140 offset:3712
	ds_load_u8 v18, v140 offset:3584
	ds_load_u8 v19, v140 offset:3968
	ds_load_u8 v20, v140 offset:3840
	ds_load_u8 v21, v140 offset:3200
	ds_load_u8 v25, v140 offset:3072
	ds_load_u8 v26, v140 offset:3456
	ds_load_u8 v27, v140 offset:3328
	ds_load_u8 v147, v140 offset:2944
	ds_load_u8 v148, v140 offset:2816
	ds_load_u8 v153, v140 offset:2432
	ds_load_u8 v155, v140 offset:2304
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v24, v23, 16, v22
	v_lshl_or_b32 v23, v145, 16, v28
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v145, v140 offset:2688
	ds_load_u8 v146, v140 offset:2560
	ds_load_u8 v151, v140 offset:2176
	ds_load_u8 v152, v140 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v22, v160, v159, 0xc0c0004
	v_perm_b32 v28, v162, v161, 0xc0c0004
	v_perm_b32 v154, v166, v165, 0xc0c0004
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v150, s48, v133
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	s_add_i32 s48, s48, s23
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v22, v28, 16, v22
	v_perm_b32 v28, v164, v163, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v18, v20, v19, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v19, v25, v21, 0xc0c0004
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s35, s1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v20, v27, v26, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v21, v154, 16, v28
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v28, v18, 16, v17
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v18, v148, v147, 0xc0c0004
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v158, v66, s35, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s35, s35, s33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v27, v20, 16, v19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v146, v145, 0xc0c0004
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v159, v62, s35, 1
	v_add_lshl_u32 v154, v63, s35, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v160, v60, s35, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v26, v18, 16, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v152, v151, 0xc0c0004
	v_perm_b32 v18, v155, v153, 0xc0c0004
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v145, v59, s35, 1
	v_add_lshl_u32 v146, v58, s35, 1
	v_add_lshl_u32 v147, v57, s35, 1
	v_add_lshl_u32 v148, v56, s35, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v25, v18, 16, v17
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v151, v55, s35, 1
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_add_i32 s35, s35, s22
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	buffer_load_b128 v[17:20], v149, s[28:31], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[9:16], v[21:24], v[141:144], v[9:16] neg_lo:[1,1,0]
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	buffer_load_b128 v[21:24], v150, s[28:31], 0 offen
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v149, v54, s35, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[1:8], v[25:28], v[141:144], v[1:8] neg_lo:[1,1,0]
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v25, v53, s35, 1
	v_add_lshl_u32 v26, v52, s35, 1
	v_add_lshl_u32 v27, v50, s35, 1
	v_add_lshl_u32 v28, v48, s35, 1
	v_add_lshl_u32 v141, v51, s35, 1
	v_add_lshl_u32 v142, v49, s35, 1
	v_add_lshl_u32 v143, v47, s35, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v144, 0x80000000, v158 :: v_dual_cndmask_b32 v153, 0x80000000, v160
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v150, 0x80000000, v159 :: v_dual_cndmask_b32 v145, 0x80000000, v145
	v_dual_cndmask_b32 v152, 0x80000000, v154 :: v_dual_cndmask_b32 v147, 0x80000000, v147
	v_dual_cndmask_b32 v146, 0x80000000, v146 :: v_dual_cndmask_b32 v151, 0x80000000, v151
	v_dual_cndmask_b32 v148, 0x80000000, v148 :: v_dual_cndmask_b32 v149, 0x80000000, v149
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	v_dual_cndmask_b32 v27, 0x80000000, v27 :: v_dual_cndmask_b32 v28, 0x80000000, v28
	v_dual_cndmask_b32 v141, 0x80000000, v141 :: v_dual_cndmask_b32 v142, 0x80000000, v142
	v_cndmask_b32_e32 v143, 0x80000000, v143, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v158, v144, s[36:39], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0xf
	buffer_load_u16 v159, v150, s[40:43], 0 offen
	buffer_load_u16 v160, v152, s[40:43], 0 offen
	buffer_load_u16 v161, v153, s[40:43], 0 offen
	buffer_load_u16 v162, v145, s[40:43], 0 offen
	buffer_load_u16 v163, v146, s[40:43], 0 offen
	buffer_load_u16 v164, v147, s[40:43], 0 offen
	buffer_load_u16 v165, v148, s[40:43], 0 offen
	buffer_load_u16 v166, v151, s[40:43], 0 offen
	buffer_load_u16 v183, v149, s[40:43], 0 offen
	buffer_load_u16 v184, v25, s[40:43], 0 offen
	buffer_load_u16 v185, v26, s[40:43], 0 offen
	buffer_load_u16 v186, v27, s[40:43], 0 offen
	buffer_load_u16 v187, v28, s[40:43], 0 offen
	buffer_load_u16 v188, v141, s[40:43], 0 offen
	buffer_load_u16 v189, v142, s[40:43], 0 offen
	buffer_load_u16 v190, v143, s[40:43], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v175, v137 offset:5248
	ds_load_u8 v171, v137 offset:5504
	ds_load_u8 v172, v137 offset:5376
	ds_load_u8 v176, v137 offset:5120
	ds_load_u8 v177, v137 offset:4992
	ds_load_u8 v178, v137 offset:4864
	ds_load_u8 v179, v137 offset:4224
	ds_load_u8 v180, v137 offset:4096
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v156, s48, v29
	v_add_nc_u32_e32 v157, s48, v133
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v173, v137 offset:4736
	ds_load_u8 v174, v137 offset:4608
	v_perm_b32 v141, v168, v167, 0xc0c0004
	v_perm_b32 v142, v170, v169, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	buffer_load_b128 v[25:28], v156, s[28:31], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v138, s49, v129
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v153, v140 offset:5760
	ds_load_u8 v154, v140 offset:5632
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v144, v142, 16, v141
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v136, s49, v130
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s35, s45, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s35, 2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v145, v172, v171, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v143, v176, v175, 0xc0c0004
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s45, s35, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v141, v178, v177, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s35, s45, 10
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_lshl_b32 s46, s45, 13
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v143, v145, 16, v143
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	buffer_load_b128 v[145:148], v157, s[28:31], 0 offen
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v149, v174, v173, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v156, v140 offset:7040
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s35, s35, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s46, s46, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s49, s47, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v142, v141, 16, v149
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[149:152], v138
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v138, v180, v179, 0xc0c0004
	v_perm_b32 v141, v182, v181, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	ds_load_u8 v154, v140 offset:4736
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s48, s35, 0x8000
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v141, v141, 16, v138
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v138, v140 offset:6016
	ds_load_u8 v155, v140 offset:5888
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[9:16], v[141:144], v[149:152], v[9:16] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v141, v140 offset:5248
	ds_load_u8 v142, v140 offset:5120
	ds_load_u8 v143, v140 offset:5504
	ds_load_u8 v144, v140 offset:5376
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v138, v155, v138, 0xc0c0004
	ds_load_u8 v155, v140 offset:4608
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v142, v144, v143, 0xc0c0004
	v_lshl_or_b32 v144, v138, 16, v153
	ds_load_u8 v153, v140 offset:4224
	v_lshl_or_b32 v143, v142, 16, v141
	ds_load_u8 v138, v140 offset:4992
	ds_load_u8 v141, v140 offset:4864
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v142, v155, v154, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v141, v138, 0xc0c0004
	ds_load_u8 v141, v140 offset:4096
	v_lshl_or_b32 v142, v138, 16, v142
	ds_load_u8 v138, v140 offset:4480
	ds_load_u8 v154, v140 offset:4352
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v141, v141, v153, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v153, v137 offset:7808
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v138, v154, v138, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v154, v137 offset:7680
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v141, v138, 16, v141
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v138, v137 offset:8064
	ds_load_u8 v155, v137 offset:7936
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[1:8], v[141:144], v[149:152], v[1:8] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v141, v137 offset:7296
	ds_load_u8 v142, v137 offset:7168
	ds_load_u8 v143, v137 offset:7552
	ds_load_u8 v144, v137 offset:7424
	ds_load_u8 v149, v137 offset:6784
	ds_load_u8 v150, v137 offset:6656
	ds_load_u8 v151, v137 offset:7040
	ds_load_u8 v152, v137 offset:6912
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v153, v154, v153, 0xc0c0004
	ds_load_u8 v154, v137 offset:6272
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	v_perm_b32 v138, v155, v138, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v142, v144, v143, 0xc0c0004
	ds_load_u8 v155, v137 offset:6144
	v_lshl_or_b32 v144, v138, 16, v153
	v_lshl_or_b32 v143, v142, 16, v141
	ds_load_u8 v138, v137 offset:6528
	ds_load_u8 v137, v137 offset:6400
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v141, v140 offset:7808
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v142, v150, v149, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v149, v140 offset:7680
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v150, v152, v151, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v151, v140 offset:8064
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v142, v150, 16, v142
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v150, v140 offset:7936
	ds_load_u8 v152, v140 offset:7296
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v153, v155, v154, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v154, v140 offset:7168
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v137, v137, v138, 0xc0c0004
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v138, v140 offset:7552
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v149, v149, v141, 0xc0c0004
	ds_load_u8 v141, v140 offset:7424
	ds_load_u8 v155, v140 offset:6784
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v150, v150, v151, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v151, v154, v152, 0xc0c0004
	ds_load_u8 v154, v140 offset:6656
	v_lshl_or_b32 v152, v150, 16, v149
	ds_load_u8 v150, v140 offset:6144
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v138, v141, v138, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v141, v137, 16, v153
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v151, v138, 16, v151
	ds_load_u8 v137, v140 offset:6912
	ds_load_u8 v138, v140 offset:6272
	ds_load_u8 v157, v140 offset:6528
	ds_load_u8 v140, v140 offset:6400
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v149, v154, v155, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v137, v137, v156, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[153:156], v136
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v138, v150, v138, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v136, v140, v157, 0xc0c0004
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v150, v137, 16, v149
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v149, v136, 16, v138
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[9:16], v[141:144], v[153:156], v[9:16] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[1:8], v[149:152], v[153:156], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v10, v10
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v137, s35, v135
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v15, v15
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v4, v4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(21)
	ds_store_b32 v137, v139 offset:32768
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v13, v13
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v1, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v8, v8
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v12, v12
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v7, v7
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_add_i32 s35, s46, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s47, s44
	s_mov_b32 s47, s49
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v137, 16, v158
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v140, 16, v161
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v144, 16, v165
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v144, v137, v144
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v155, 16, v188
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v156, 16, v189
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v32, v144, v15 :: v_dual_lshlrev_b32 v157, 16, v190
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v138, 16, v159
	v_lshlrev_b32_e32 v142, 16, v163
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v140, v137, v140
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v157, v137, v157
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v153, 16, v186
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v138, v137, v138
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v150, 16, v183
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v142, v137, v142
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v154, 16, v187
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v155, v137, v155
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v43, v138, v9
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v150, v137, v150 :: v_dual_lshlrev_b32 v139, 16, v160
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v149, 16, v166
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v35, v142, v13
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v154, v137, v154 :: v_dual_lshlrev_b32 v143, 16, v164
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v30, v150, v1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v149, v137, v149
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v143, v137, v143 :: v_dual_lshlrev_b32 v152, 16, v185
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v151, 16, v184
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v139, v137, v139
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v31, v149, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v152, v137, v152 :: v_dual_lshlrev_b32 v141, 16, v162
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v36, v143, v14 :: v_dual_mul_f32 v151, v137, v151
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v34, v157, v8
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v153, v137, v153 :: v_dual_add_nc_u32 v136, s46, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v141, v137, v141
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v45, v151, v2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v137, v137, v156 :: v_dual_fmac_f32 v44, v139, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v39, v140, v11 :: v_dual_fmac_f32 v40, v141, v12
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v41, v152, v3 :: v_dual_fmac_f32 v38, v155, v6
	v_dual_fmac_f32 v42, v153, v4 :: v_dual_fmac_f32 v37, v154, v5
	v_fmac_f32_e32 v33, v137, v7
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	ds_store_b128 v136, v[17:20]
	ds_store_b128 v136, v[21:24] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v136, v[25:28] offset:16384
	s_waitcnt vmcnt(0)
	ds_store_b128 v136, v[145:148] offset:20480
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v17, v134
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v30, 0
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s48, 0, 0x8400
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s35, 0, 0x6000
.LBB0_8:                                ; %Flow163
	v_dual_mov_b32 v26, 0 :: v_dual_add_nc_u32 v1, s0, v127
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	v_cndmask_b32_e64 v18, 0, 1, s3
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v2, s0, v128
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v3, s0, v129
	v_dual_mov_b32 v19, 0 :: v_dual_add_nc_u32 v4, s0, v130
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
	v_add_nc_u32_e32 v131, s27, v89
	v_add_nc_u32_e32 v132, s27, v87
	v_add_nc_u32_e32 v20, s27, v93
	v_add_nc_u32_e32 v135, s27, v81
	v_add_nc_u32_e32 v21, s27, v91
	v_add_nc_u32_e32 v133, s27, v85
	v_add_nc_u32_e32 v134, s27, v83
	v_add_nc_u32_e32 v136, s27, v79
	v_add_nc_u32_e32 v137, s27, v77
	v_add_nc_u32_e32 v138, s27, v75
	v_add_nc_u32_e32 v164, s27, v72
	v_add_nc_u32_e32 v165, s27, v69
	v_add_nc_u32_e32 v166, s27, v67
	v_add_nc_u32_e32 v167, s27, v65
	v_add_nc_u32_e32 v168, s27, v64
	v_add_nc_u32_e32 v169, s27, v17
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v131, v131
	ds_load_u8 v132, v132
	ds_load_u8 v20, v20
	ds_load_u8 v135, v135
	ds_load_u8 v136, v136
	ds_load_u8 v133, v133
	ds_load_u8 v134, v134
	ds_load_u8 v21, v21
	ds_load_u8 v164, v164
	ds_load_u8 v165, v165
	ds_load_u8 v137, v137
	ds_load_u8 v168, v168
	ds_load_u8 v169, v169
	ds_load_u8 v166, v166
	ds_load_u8 v167, v167
	ds_load_u8 v138, v138
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v170, s27, v92
	v_add_nc_u32_e32 v171, s27, v90
	v_add_nc_u32_e32 v18, s27, v95
	v_add_nc_u32_e32 v174, s27, v84
	v_add_nc_u32_e32 v172, s27, v88
	v_add_nc_u32_e32 v173, s27, v86
	v_add_nc_u32_e32 v175, s27, v82
	v_add_nc_u32_e32 v176, s27, v80
	v_add_nc_u32_e32 v177, s27, v78
	v_add_nc_u32_e32 v178, s27, v76
	v_add_nc_u32_e32 v179, s27, v74
	v_add_nc_u32_e32 v180, s27, v73
	v_add_nc_u32_e32 v181, s27, v71
	v_add_nc_u32_e32 v182, s27, v70
	v_add_nc_u32_e32 v183, s27, v68
	v_add_nc_u32_e32 v19, s27, v94
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v134, v165, v164, 0xc0c0004
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
	v_add_nc_u32_e32 v22, s27, v126
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_perm_b32 v132, v132, v131, 0xc0c0004
	v_perm_b32 v20, v21, v20, 0xc0c0004
	v_perm_b32 v135, v136, v135, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v136, v138, v137, 0xc0c0004
	v_perm_b32 v18, v169, v168, 0xc0c0004
	v_perm_b32 v137, v167, v166, 0xc0c0004
	v_mov_b32_e32 v131, 0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v23, s27, v125
	v_add_nc_u32_e32 v25, s27, v124
	v_add_nc_u32_e32 v26, s27, v123
	v_add_nc_u32_e32 v28, s27, v122
	v_add_nc_u32_e32 v29, s27, v121
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v138, v131 :: v_dual_add_nc_u32 v139, s27, v120
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v140, s27, v119
	v_add_nc_u32_e32 v151, s27, v108
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v21, v20, 16, v132
	v_lshl_or_b32 v20, v133, 16, v135
	v_lshl_or_b32 v19, v136, 16, v134
	v_lshl_or_b32 v18, v137, 16, v18
	v_mov_b32_e32 v132, v131
	v_mov_b32_e32 v133, v131
	v_mov_b32_e32 v134, v131
	v_mov_b32_e32 v135, v131
	v_mov_b32_e32 v136, v131
	v_mov_b32_e32 v137, v131
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v165, v175, v170, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v152, s27, v107
	v_add_nc_u32_e32 v149, s27, v110
	v_add_nc_u32_e32 v155, s27, v104
	v_add_nc_u32_e32 v141, s27, v118
	v_add_nc_u32_e32 v142, s27, v117
	v_add_nc_u32_e32 v143, s27, v116
	v_add_nc_u32_e32 v144, s27, v115
	v_add_nc_u32_e32 v145, s27, v114
	v_add_nc_u32_e32 v146, s27, v113
	v_add_nc_u32_e32 v147, s27, v112
	v_add_nc_u32_e32 v148, s27, v111
	v_add_nc_u32_e32 v150, s27, v109
	v_add_nc_u32_e32 v153, s27, v106
	v_add_nc_u32_e32 v154, s27, v105
	v_add_nc_u32_e32 v156, s27, v103
	v_add_nc_u32_e32 v157, s27, v102
	v_add_nc_u32_e32 v158, s27, v101
	v_add_nc_u32_e32 v159, s27, v100
	v_add_nc_u32_e32 v160, s27, v99
	v_add_nc_u32_e32 v161, s27, v98
	v_add_nc_u32_e32 v162, s27, v97
	v_add_nc_u32_e32 v163, s27, v96
	v_add_nc_u32_e32 v170, s27, v61
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[131:138], v[18:21], v[13:16], v[131:138] neg_lo:[1,1,0]
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
	ds_load_u8 v139, v139
	ds_load_u8 v140, v140
	ds_load_u8 v28, v28
	ds_load_u8 v29, v29
	ds_load_u8 v23, v23
	ds_load_u8 v143, v143
	ds_load_u8 v144, v144
	ds_load_u8 v141, v141
	ds_load_u8 v147, v147
	ds_load_u8 v148, v148
	ds_load_u8 v145, v145
	ds_load_u8 v146, v146
	ds_load_u8 v142, v142
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
	v_wmma_i32_16x16x16_iu8 v[131:138], v[18:21], v[9:12], v[131:138] neg_lo:[1,1,0]
	v_lshl_or_b32 v21, v149, 16, v151
	v_lshl_or_b32 v20, v152, 16, v150
	v_lshl_or_b32 v19, v154, 16, v153
	v_lshl_or_b32 v18, v156, 16, v155
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	v_perm_b32 v23, v140, v139, 0xc0c0004
	v_perm_b32 v26, v29, v28, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v28, v144, v143, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v142, v141, 0xc0c0004
	v_perm_b32 v139, v148, v147, 0xc0c0004
	v_perm_b32 v140, v146, v145, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[131:138], v[18:21], v[5:8], v[131:138] neg_lo:[1,1,0]
	v_lshl_or_b32 v21, v22, 16, v25
	v_lshl_or_b32 v20, v26, 16, v23
	v_lshl_or_b32 v19, v29, 16, v28
	v_lshl_or_b32 v18, v140, 16, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[131:138], v[18:21], v[1:4], v[131:138] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v22, v133
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v23, v134
	v_cvt_f32_i32_e32 v18, v135
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v19, v136
	v_cvt_f32_i32_e32 v20, v137
	v_cvt_f32_i32_e32 v21, v138
	v_cvt_f32_i32_e32 v25, v131
	v_cvt_f32_i32_e32 v26, v132
.LBB0_10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v132, 0
	v_mov_b32_e32 v131, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v135, s10, v89
	v_add_nc_u32_e32 v136, s10, v87
	v_add_nc_u32_e32 v133, s10, v93
	v_add_nc_u32_e32 v139, s10, v81
	v_add_nc_u32_e32 v134, s10, v91
	v_add_nc_u32_e32 v137, s10, v85
	v_add_nc_u32_e32 v138, s10, v83
	v_add_nc_u32_e32 v140, s10, v79
	v_add_nc_u32_e32 v141, s10, v77
	v_add_nc_u32_e32 v142, s10, v75
	v_add_nc_u32_e32 v171, s10, v72
	v_add_nc_u32_e32 v172, s10, v69
	v_add_nc_u32_e32 v173, s10, v67
	v_add_nc_u32_e32 v174, s10, v65
	v_add_nc_u32_e32 v175, s10, v64
	v_add_nc_u32_e32 v176, s10, v17
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v135, v135
	ds_load_u8 v136, v136
	ds_load_u8 v133, v133
	ds_load_u8 v139, v139
	ds_load_u8 v140, v140
	ds_load_u8 v137, v137
	ds_load_u8 v138, v138
	ds_load_u8 v134, v134
	ds_load_u8 v171, v171
	ds_load_u8 v172, v172
	ds_load_u8 v141, v141
	ds_load_u8 v175, v175
	ds_load_u8 v176, v176
	ds_load_u8 v173, v173
	ds_load_u8 v174, v174
	ds_load_u8 v142, v142
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v177, s10, v92
	v_add_nc_u32_e32 v178, s10, v90
	v_add_nc_u32_e32 v131, s10, v95
	v_add_nc_u32_e32 v181, s10, v84
	v_add_nc_u32_e32 v179, s10, v88
	v_add_nc_u32_e32 v180, s10, v86
	v_add_nc_u32_e32 v182, s10, v82
	v_add_nc_u32_e32 v183, s10, v80
	v_add_nc_u32_e32 v184, s10, v78
	v_add_nc_u32_e32 v185, s10, v76
	v_add_nc_u32_e32 v186, s10, v74
	v_add_nc_u32_e32 v187, s10, v73
	v_add_nc_u32_e32 v188, s10, v71
	v_add_nc_u32_e32 v189, s10, v70
	v_add_nc_u32_e32 v190, s10, v68
	v_add_nc_u32_e32 v132, s10, v94
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v138, v172, v171, 0xc0c0004
	ds_load_u8 v171, v177
	ds_load_u8 v172, v178
	ds_load_u8 v177, v131
	ds_load_u8 v178, v181
	ds_load_u8 v181, v182
	ds_load_u8 v179, v179
	ds_load_u8 v180, v180
	ds_load_u8 v182, v132
	ds_load_u8 v185, v185
	ds_load_u8 v186, v186
	ds_load_u8 v183, v183
	ds_load_u8 v189, v189
	ds_load_u8 v190, v190
	ds_load_u8 v187, v187
	ds_load_u8 v188, v188
	ds_load_u8 v184, v184
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v24, s10, v126
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_perm_b32 v136, v136, v135, 0xc0c0004
	v_perm_b32 v133, v134, v133, 0xc0c0004
	v_perm_b32 v139, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v140, v142, v141, 0xc0c0004
	v_perm_b32 v131, v176, v175, 0xc0c0004
	v_perm_b32 v141, v174, v173, 0xc0c0004
	v_dual_mov_b32 v135, 0 :: v_dual_add_nc_u32 v28, s10, v125
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v29, s10, v124
	v_add_nc_u32_e32 v143, s10, v123
	v_add_nc_u32_e32 v144, s10, v122
	v_add_nc_u32_e32 v145, s10, v121
	v_add_nc_u32_e32 v146, s10, v120
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v142, v135 :: v_dual_add_nc_u32 v147, s10, v119
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v158, s10, v108
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v134, v133, 16, v136
	v_lshl_or_b32 v133, v137, 16, v139
	v_lshl_or_b32 v132, v140, 16, v138
	v_lshl_or_b32 v131, v141, 16, v131
	v_mov_b32_e32 v136, v135
	v_mov_b32_e32 v137, v135
	v_mov_b32_e32 v138, v135
	v_mov_b32_e32 v139, v135
	v_mov_b32_e32 v140, v135
	v_mov_b32_e32 v141, v135
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v159, s10, v107
	v_add_nc_u32_e32 v156, s10, v110
	v_add_nc_u32_e32 v162, s10, v104
	v_add_nc_u32_e32 v148, s10, v118
	v_add_nc_u32_e32 v149, s10, v117
	v_add_nc_u32_e32 v150, s10, v116
	v_add_nc_u32_e32 v151, s10, v115
	v_add_nc_u32_e32 v152, s10, v114
	v_add_nc_u32_e32 v153, s10, v113
	v_add_nc_u32_e32 v154, s10, v112
	v_add_nc_u32_e32 v155, s10, v111
	v_add_nc_u32_e32 v157, s10, v109
	v_add_nc_u32_e32 v160, s10, v106
	v_add_nc_u32_e32 v161, s10, v105
	v_add_nc_u32_e32 v163, s10, v103
	v_add_nc_u32_e32 v164, s10, v102
	v_add_nc_u32_e32 v165, s10, v101
	v_add_nc_u32_e32 v166, s10, v100
	v_add_nc_u32_e32 v167, s10, v99
	v_add_nc_u32_e32 v168, s10, v98
	v_add_nc_u32_e32 v169, s10, v97
	v_add_nc_u32_e32 v170, s10, v96
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v172, v182, v177, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v177, s10, v61
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[135:142], v[131:134], v[13:16], v[135:142] neg_lo:[1,1,0]
	ds_load_u8 v132, v158
	ds_load_u8 v133, v159
	ds_load_u8 v134, v156
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
	ds_load_u8 v29, v29
	ds_load_u8 v143, v143
	ds_load_u8 v24, v24
	ds_load_u8 v146, v146
	ds_load_u8 v147, v147
	ds_load_u8 v144, v144
	ds_load_u8 v145, v145
	ds_load_u8 v28, v28
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
	v_perm_b32 v131, v188, v187, 0xc0c0004
	v_lshl_or_b32 v16, v172, 16, v171
	v_lshl_or_b32 v15, v174, 16, v173
	v_lshl_or_b32 v14, v176, 16, v175
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v13, v131, 16, v13
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v131, v133, v132, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v132, v157, v134, 0xc0c0004
	v_perm_b32 v133, v158, v156, 0xc0c0004
	v_perm_b32 v134, v160, v159, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v156, v162, v161, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v157, v165, v163, 0xc0c0004
	v_perm_b32 v158, v166, v164, 0xc0c0004
	v_perm_b32 v159, v168, v167, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[135:142], v[13:16], v[9:12], v[135:142] neg_lo:[1,1,0]
	v_lshl_or_b32 v12, v132, 16, v131
	v_lshl_or_b32 v11, v134, 16, v133
	v_lshl_or_b32 v10, v157, 16, v156
	v_lshl_or_b32 v9, v159, 16, v158
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v13, v143, v29, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v14, v28, v24, 0xc0c0004
	v_perm_b32 v15, v147, v146, 0xc0c0004
	v_perm_b32 v16, v145, v144, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v24, v151, v150, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v149, v148, 0xc0c0004
	v_perm_b32 v29, v155, v154, 0xc0c0004
	v_perm_b32 v131, v153, v152, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[135:142], v[9:12], v[5:8], v[135:142] neg_lo:[1,1,0]
	v_lshl_or_b32 v8, v14, 16, v13
	v_lshl_or_b32 v7, v16, 16, v15
	v_lshl_or_b32 v6, v28, 16, v24
	v_lshl_or_b32 v5, v131, 16, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[135:142], v[5:8], v[1:4], v[135:142] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v133, v137
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v134, v138
	v_cvt_f32_i32_e32 v28, v139
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v29, v140
	v_cvt_f32_i32_e32 v131, v141
	v_cvt_f32_i32_e32 v132, v142
	v_cvt_f32_i32_e32 v24, v135
	v_cvt_f32_i32_e32 v135, v136
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
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt lgkmcnt(0)
	v_add_lshl_u32 v1, v66, s0, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s4, -1, 0
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s0, s0, s33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s4
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v2, v62, s0, 1
	v_add_lshl_u32 v3, v63, s0, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_and_b32 s9, s9, 0xffff
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v4, v60, s0, 1
	v_add_lshl_u32 v5, v58, s0, 1
	v_add_lshl_u32 v6, v57, s0, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v153, v1, s[8:11], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v1, 0x80000000, v2 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	v_cndmask_b32_e32 v2, 0x80000000, v3, vcc_lo
	v_add_lshl_u32 v3, v59, s0, 1
	v_add_lshl_u32 v7, v56, s0, 1
	v_add_lshl_u32 v8, v55, s0, 1
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_add_i32 s0, s0, s22
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v9, s0, v54, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v6, 0x80000000, v6
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v10, s0, v53, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_cndmask_b32 v8, 0x80000000, v8
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v11, s0, v52, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	s_clause 0x7
	buffer_load_u16 v155, v1, s[24:27], 0 offen
	buffer_load_u16 v154, v2, s[24:27], 0 offen
	buffer_load_u16 v150, v4, s[24:27], 0 offen
	buffer_load_u16 v149, v3, s[24:27], 0 offen
	buffer_load_u16 v141, v5, s[24:27], 0 offen
	buffer_load_u16 v140, v6, s[24:27], 0 offen
	buffer_load_u16 v137, v7, s[24:27], 0 offen
	buffer_load_u16 v136, v8, s[24:27], 0 offen
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v4, s0, v50, 1
	v_add_lshl_u32 v5, s0, v48, 1
	v_cndmask_b32_e32 v1, 0x80000000, v9, vcc_lo
	v_add_lshl_u32 v6, s0, v51, 1
	v_add_lshl_u32 v7, s0, v49, 1
	v_add_lshl_u32 v8, s0, v47, 1
	v_dual_cndmask_b32 v2, 0x80000000, v10 :: v_dual_cndmask_b32 v3, 0x80000000, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v7, 0x80000000, v7
	s_clause 0x7
	buffer_load_u16 v157, v1, s[24:27], 0 offen
	buffer_load_u16 v156, v2, s[24:27], 0 offen
	buffer_load_u16 v152, v3, s[24:27], 0 offen
	buffer_load_u16 v151, v4, s[24:27], 0 offen
	buffer_load_u16 v148, v5, s[24:27], 0 offen
	buffer_load_u16 v146, v6, s[24:27], 0 offen
	buffer_load_u16 v139, v7, s[24:27], 0 offen
	buffer_load_u16 v138, v8, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v1, s48, v127
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v2, s48, v128
	v_dual_mov_b32 v142, 0 :: v_dual_add_nc_u32 v3, s48, v129
	v_dual_mov_b32 v145, 0 :: v_dual_add_nc_u32 v4, s48, v130
	v_mov_b32_e32 v130, 0
	ds_load_b128 v[13:16], v1
	ds_load_b128 v[9:12], v2
	ds_load_b128 v[5:8], v3
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[1:4], v4
	v_cndmask_b32_e64 v128, 0, 1, s2
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v144, 0
	v_mov_b32_e32 v129, 0
	v_mov_b32_e32 v143, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_ne_u32_e64 s0, 1, v128
	v_mov_b32_e32 v128, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v158, s46, v89
	v_add_nc_u32_e32 v159, s46, v87
	v_add_nc_u32_e32 v144, s46, v93
	v_add_nc_u32_e32 v162, s46, v81
	v_add_nc_u32_e32 v145, s46, v91
	v_add_nc_u32_e32 v160, s46, v85
	v_add_nc_u32_e32 v161, s46, v83
	v_add_nc_u32_e32 v163, s46, v79
	v_add_nc_u32_e32 v164, s46, v77
	v_add_nc_u32_e32 v165, s46, v75
	v_add_nc_u32_e32 v193, s46, v72
	v_add_nc_u32_e32 v194, s46, v69
	v_add_nc_u32_e32 v195, s46, v67
	v_add_nc_u32_e32 v196, s46, v65
	v_add_nc_u32_e32 v197, s46, v64
	v_add_nc_u32_e32 v198, s46, v17
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
	v_add_nc_u32_e32 v199, s46, v92
	v_add_nc_u32_e32 v200, s46, v90
	v_add_nc_u32_e32 v142, s46, v95
	v_add_nc_u32_e32 v203, s46, v84
	v_add_nc_u32_e32 v201, s46, v88
	v_add_nc_u32_e32 v202, s46, v86
	v_add_nc_u32_e32 v204, s46, v82
	v_add_nc_u32_e32 v205, s46, v80
	v_add_nc_u32_e32 v206, s46, v78
	v_add_nc_u32_e32 v207, s46, v76
	v_add_nc_u32_e32 v208, s46, v74
	v_add_nc_u32_e32 v209, s46, v73
	v_add_nc_u32_e32 v210, s46, v71
	v_add_nc_u32_e32 v211, s46, v70
	v_add_nc_u32_e32 v212, s46, v68
	v_add_nc_u32_e32 v143, s46, v94
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
	v_add_nc_u32_e32 v129, s46, v125
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
	v_add_nc_u32_e32 v128, s46, v126
	v_add_nc_u32_e32 v130, s46, v124
	v_add_nc_u32_e32 v147, s46, v123
	v_add_nc_u32_e32 v166, s46, v122
	v_add_nc_u32_e32 v167, s46, v121
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v165, v158 :: v_dual_add_nc_u32 v168, s46, v120
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v169, s46, v119
	v_add_nc_u32_e32 v180, s46, v108
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
	v_add_nc_u32_e32 v181, s46, v107
	v_add_nc_u32_e32 v178, s46, v110
	v_add_nc_u32_e32 v184, s46, v104
	v_add_nc_u32_e32 v170, s46, v118
	v_add_nc_u32_e32 v171, s46, v117
	v_add_nc_u32_e32 v172, s46, v116
	v_add_nc_u32_e32 v173, s46, v115
	v_add_nc_u32_e32 v174, s46, v114
	v_add_nc_u32_e32 v175, s46, v113
	v_add_nc_u32_e32 v176, s46, v112
	v_add_nc_u32_e32 v177, s46, v111
	v_add_nc_u32_e32 v179, s46, v109
	v_add_nc_u32_e32 v182, s46, v106
	v_add_nc_u32_e32 v183, s46, v105
	v_add_nc_u32_e32 v185, s46, v103
	v_add_nc_u32_e32 v186, s46, v102
	v_add_nc_u32_e32 v187, s46, v101
	v_add_nc_u32_e32 v188, s46, v100
	v_add_nc_u32_e32 v189, s46, v99
	v_add_nc_u32_e32 v190, s46, v98
	v_add_nc_u32_e32 v191, s46, v97
	v_add_nc_u32_e32 v192, s46, v96
	v_add_nc_u32_e32 v199, s46, v61
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
	ds_load_u8 v130, v130
	ds_load_u8 v147, v147
	ds_load_u8 v128, v128
	ds_load_u8 v168, v168
	ds_load_u8 v169, v169
	ds_load_u8 v166, v166
	ds_load_u8 v167, v167
	ds_load_u8 v129, v129
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
	v_perm_b32 v130, v147, v130, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v128, v129, v128, 0xc0c0004
	v_perm_b32 v129, v169, v168, 0xc0c0004
	v_perm_b32 v147, v167, v166, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v166, v173, v172, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v171, v170, 0xc0c0004
	v_perm_b32 v168, v177, v176, 0xc0c0004
	v_perm_b32 v169, v175, v174, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[158:165], v[142:145], v[5:8], v[158:165] neg_lo:[1,1,0]
	v_lshl_or_b32 v145, v128, 16, v130
	v_lshl_or_b32 v144, v147, 16, v129
	v_lshl_or_b32 v143, v167, 16, v166
	v_lshl_or_b32 v142, v169, 16, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[158:165], v[142:145], v[1:4], v[158:165] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v130, v160
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v142, v161
	v_cvt_f32_i32_e32 v128, v162
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v129, v163
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
	v_add_nc_u32_e32 v89, s35, v89
	v_add_nc_u32_e32 v87, s35, v87
	v_add_nc_u32_e32 v93, s35, v93
	v_add_nc_u32_e32 v81, s35, v81
	v_add_nc_u32_e32 v91, s35, v91
	v_add_nc_u32_e32 v85, s35, v85
	v_add_nc_u32_e32 v83, s35, v83
	v_add_nc_u32_e32 v79, s35, v79
	v_add_nc_u32_e32 v77, s35, v77
	v_add_nc_u32_e32 v75, s35, v75
	v_add_nc_u32_e32 v72, s35, v72
	v_add_nc_u32_e32 v69, s35, v69
	v_add_nc_u32_e32 v67, s35, v67
	v_add_nc_u32_e32 v65, s35, v65
	v_add_nc_u32_e32 v64, s35, v64
	v_add_nc_u32_e32 v17, s35, v17
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v89, v89
	ds_load_u8 v87, v87
	ds_load_u8 v93, v93
	ds_load_u8 v81, v81
	ds_load_u8 v79, v79
	ds_load_u8 v85, v85
	ds_load_u8 v83, v83
	ds_load_u8 v91, v91
	ds_load_u8 v72, v72
	ds_load_u8 v69, v69
	ds_load_u8 v77, v77
	ds_load_u8 v64, v64
	ds_load_u8 v17, v17
	ds_load_u8 v67, v67
	ds_load_u8 v65, v65
	ds_load_u8 v75, v75
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v92, s35, v92
	v_add_nc_u32_e32 v90, s35, v90
	v_add_nc_u32_e32 v95, s35, v95
	v_add_nc_u32_e32 v84, s35, v84
	v_add_nc_u32_e32 v94, s35, v94
	v_add_nc_u32_e32 v88, s35, v88
	v_add_nc_u32_e32 v86, s35, v86
	v_add_nc_u32_e32 v82, s35, v82
	v_add_nc_u32_e32 v80, s35, v80
	v_add_nc_u32_e32 v78, s35, v78
	v_add_nc_u32_e32 v76, s35, v76
	v_add_nc_u32_e32 v74, s35, v74
	v_add_nc_u32_e32 v73, s35, v73
	v_add_nc_u32_e32 v71, s35, v71
	v_add_nc_u32_e32 v70, s35, v70
	v_add_nc_u32_e32 v68, s35, v68
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v87, v87, v89, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v89, v91, v93, 0xc0c0004
	v_perm_b32 v79, v79, v81, 0xc0c0004
	v_perm_b32 v81, v83, v85, 0xc0c0004
	ds_load_u8 v83, v92
	ds_load_u8 v85, v90
	ds_load_u8 v90, v95
	ds_load_u8 v84, v84
	ds_load_u8 v82, v82
	ds_load_u8 v88, v88
	ds_load_u8 v86, v86
	ds_load_u8 v91, v94
	ds_load_u8 v92, v76
	ds_load_u8 v93, v74
	ds_load_u8 v80, v80
	ds_load_u8 v94, v70
	ds_load_u8 v95, v68
	ds_load_u8 v127, v73
	ds_load_u8 v158, v71
	ds_load_u8 v159, v78
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v126, s35, v126
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v69, v69, v72, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v72, v75, v77, 0xc0c0004
	v_perm_b32 v17, v17, v64, 0xc0c0004
	v_perm_b32 v64, v65, v67, 0xc0c0004
	v_mov_b32_e32 v67, 0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v125, s35, v125
	v_add_nc_u32_e32 v124, s35, v124
	v_add_nc_u32_e32 v123, s35, v123
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v71, v67 :: v_dual_add_nc_u32 v122, s35, v122
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v121, s35, v121
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v73, v67 :: v_dual_add_nc_u32 v120, s35, v120
	v_dual_mov_b32 v74, v67 :: v_dual_add_nc_u32 v119, s35, v119
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v108, s35, v108
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v78, v89, 16, v87
	v_lshl_or_b32 v77, v81, 16, v79
	v_lshl_or_b32 v76, v72, 16, v69
	v_lshl_or_b32 v75, v64, 16, v17
	v_mov_b32_e32 v68, v67
	v_mov_b32_e32 v69, v67
	v_mov_b32_e32 v70, v67
	v_mov_b32_e32 v72, v67
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v17, v85, v83, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v64, v91, v90, 0xc0c0004
	v_perm_b32 v65, v82, v84, 0xc0c0004
	v_perm_b32 v79, v86, v88, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v81, v93, v92, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v159, v80, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v107, s35, v107
	v_add_nc_u32_e32 v110, s35, v110
	v_add_nc_u32_e32 v104, s35, v104
	v_add_nc_u32_e32 v103, s35, v103
	v_add_nc_u32_e32 v102, s35, v102
	v_add_nc_u32_e32 v101, s35, v101
	v_add_nc_u32_e32 v100, s35, v100
	v_add_nc_u32_e32 v99, s35, v99
	v_add_nc_u32_e32 v98, s35, v98
	v_add_nc_u32_e32 v97, s35, v97
	v_add_nc_u32_e32 v96, s35, v96
	v_add_nc_u32_e32 v61, s35, v61
	v_add_nc_u32_e32 v118, s35, v118
	v_add_nc_u32_e32 v117, s35, v117
	v_add_nc_u32_e32 v116, s35, v116
	v_add_nc_u32_e32 v115, s35, v115
	v_add_nc_u32_e32 v114, s35, v114
	v_add_nc_u32_e32 v113, s35, v113
	v_add_nc_u32_e32 v112, s35, v112
	v_add_nc_u32_e32 v111, s35, v111
	v_add_nc_u32_e32 v109, s35, v109
	v_add_nc_u32_e32 v106, s35, v106
	v_add_nc_u32_e32 v105, s35, v105
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[67:74], v[75:78], v[13:16], v[67:74] neg_lo:[1,1,0]
	v_lshl_or_b32 v16, v64, 16, v17
	v_lshl_or_b32 v15, v79, 16, v65
	v_lshl_or_b32 v14, v80, 16, v81
	v_perm_b32 v13, v95, v94, 0xc0c0004
	ds_load_u8 v64, v108
	ds_load_u8 v65, v107
	ds_load_u8 v75, v110
	ds_load_u8 v76, v104
	ds_load_u8 v77, v103
	ds_load_u8 v78, v106
	ds_load_u8 v79, v105
	ds_load_u8 v80, v109
	ds_load_u8 v81, v100
	ds_load_u8 v82, v99
	ds_load_u8 v83, v102
	ds_load_u8 v84, v96
	ds_load_u8 v61, v61
	ds_load_u8 v85, v98
	ds_load_u8 v86, v97
	ds_load_u8 v87, v101
	ds_load_u8 v88, v124
	ds_load_u8 v89, v123
	ds_load_u8 v90, v126
	ds_load_u8 v91, v120
	ds_load_u8 v92, v119
	ds_load_u8 v93, v122
	ds_load_u8 v94, v121
	ds_load_u8 v95, v125
	ds_load_u8 v96, v116
	ds_load_u8 v97, v115
	ds_load_u8 v98, v118
	ds_load_u8 v99, v112
	ds_load_u8 v100, v111
	ds_load_u8 v101, v114
	ds_load_u8 v102, v113
	ds_load_u8 v103, v117
	v_perm_b32 v17, v158, v127, 0xc0c0004
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v61, v61, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v13, v17, 16, v13
	v_perm_b32 v17, v65, v64, 0xc0c0004
	v_perm_b32 v64, v80, v75, 0xc0c0004
	v_perm_b32 v65, v77, v76, 0xc0c0004
	v_perm_b32 v75, v79, v78, 0xc0c0004
	v_perm_b32 v76, v82, v81, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v77, v87, v83, 0xc0c0004
	v_perm_b32 v78, v86, v85, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[67:74], v[13:16], v[9:12], v[67:74] neg_lo:[1,1,0]
	v_lshl_or_b32 v12, v64, 16, v17
	v_lshl_or_b32 v11, v75, 16, v65
	v_lshl_or_b32 v10, v77, 16, v76
	v_lshl_or_b32 v9, v78, 16, v61
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v13, v89, v88, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v14, v95, v90, 0xc0c0004
	v_perm_b32 v15, v92, v91, 0xc0c0004
	v_perm_b32 v16, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v17, v97, v96, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v103, v98, 0xc0c0004
	v_perm_b32 v64, v100, v99, 0xc0c0004
	v_perm_b32 v65, v102, v101, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[67:74], v[9:12], v[5:8], v[67:74] neg_lo:[1,1,0]
	v_lshl_or_b32 v8, v14, 16, v13
	v_lshl_or_b32 v7, v16, 16, v15
	v_lshl_or_b32 v6, v61, 16, v17
	v_lshl_or_b32 v5, v65, 16, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[67:74], v[5:8], v[1:4], v[67:74] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v127, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v158, v68
	v_cvt_f32_i32_e32 v161, v69
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v162, v70
	v_cvt_f32_i32_e32 v159, v71
	v_cvt_f32_i32_e32 v160, v72
	v_cvt_f32_i32_e32 v163, v73
	v_cvt_f32_i32_e32 v164, v74
.LBB0_16:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s34, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s26, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s0, s0, 24
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s27, s11
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s0, s34, s0
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v61.h, v138.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s0, 8
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v0, 16, v0
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt lgkmcnt(0)
	v_add_lshl_u32 v1, v66, s0, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s1, -1, 0
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s0, s0, s33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v2, v62, s0, 1
	v_add_lshl_u32 v3, v63, s0, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v4, v60, s0, 1
	v_add_lshl_u32 v5, v59, s0, 1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	v_cndmask_b32_e32 v6, 0x80000000, v3, vcc_lo
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v3, v1, s[8:11], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v1, 0x80000000, v4, vcc_lo
	v_add_lshl_u32 v4, v58, s0, 1
	v_add_lshl_u32 v7, v57, s0, 1
	v_add_lshl_u32 v8, v56, s0, 1
	v_cndmask_b32_e32 v9, 0x80000000, v5, vcc_lo
	v_add_lshl_u32 v5, v55, s0, 1
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_add_i32 s0, s0, s22
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v10, 0x80000000, v4, vcc_lo
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v14, s0, v54, 1
	v_add_lshl_u32 v15, s0, v53, 1
	v_add_lshl_u32 v16, s0, v52, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v11, 0x80000000, v7 :: v_dual_cndmask_b32 v12, 0x80000000, v8
	v_cndmask_b32_e32 v13, 0x80000000, v5, vcc_lo
	s_clause 0x7
	buffer_load_u16 v4, v2, s[24:27], 0 offen
	buffer_load_u16 v5, v6, s[24:27], 0 offen
	buffer_load_u16 v6, v1, s[24:27], 0 offen
	buffer_load_u16 v7, v9, s[24:27], 0 offen
	buffer_load_u16 v8, v10, s[24:27], 0 offen
	buffer_load_u16 v9, v11, s[24:27], 0 offen
	buffer_load_u16 v10, v12, s[24:27], 0 offen
	buffer_load_u16 v11, v13, s[24:27], 0 offen
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v13, s0, v50, 1
	v_dual_cndmask_b32 v1, 0x80000000, v14 :: v_dual_cndmask_b32 v12, 0x80000000, v16
	v_cndmask_b32_e32 v2, 0x80000000, v15, vcc_lo
	v_add_lshl_u32 v14, s0, v48, 1
	v_add_lshl_u32 v15, s0, v51, 1
	v_add_lshl_u32 v16, s0, v49, 1
	v_add_lshl_u32 v17, s0, v47, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v13, 0x80000000, v13 :: v_dual_cndmask_b32 v14, 0x80000000, v14
	v_dual_cndmask_b32 v15, 0x80000000, v15 :: v_dual_cndmask_b32 v16, 0x80000000, v16
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x7
	buffer_load_u16 v47, v1, s[24:27], 0 offen
	buffer_load_u16 v48, v2, s[24:27], 0 offen
	buffer_load_u16 v12, v12, s[24:27], 0 offen
	buffer_load_u16 v13, v13, s[24:27], 0 offen
	buffer_load_u16 v14, v14, s[24:27], 0 offen
	buffer_load_u16 v15, v15, s[24:27], 0 offen
	buffer_load_u16 v16, v16, s[24:27], 0 offen
	buffer_load_u16 v17, v17, s[24:27], 0 offen
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v49.l, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e64 v49.h, v153.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e64 v57.h, v146.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v50.h, v155.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e64 v53.h, v151.l
	v_mov_b16_e32 v57.l, v49.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v50.l, v49.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v53.l, v49.l
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v2, 1, v27
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e64 v27.h, v157.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v57, v49, v57
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v27.l, v49.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v50, v49, v50
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v53, v49, v53
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v1, v46, s23
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e64 v46.h, v156.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v51.h, v154.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e64 v52.h, v152.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v54.h, v150.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e64 v56.h, v148.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v63.h, v136.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_dual_mov_b32 v64, 0x5410 :: v_dual_mul_f32 v27, v49, v27
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v46.l, v49.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v51.l, v49.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v52.l, v49.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v54.l, v49.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v56.l, v49.l
	v_mov_b16_e32 v61.l, v49.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v63.l, v49.l
	v_mov_b16_e64 v55.h, v149.l
	v_mov_b16_e64 v58.h, v141.l
	v_mov_b16_e64 v59.h, v140.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e64 v60.h, v139.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e64 v62.h, v137.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_dual_mov_b32 v65, 0x7632 :: v_dual_mul_f32 v46, v49, v46
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v55.l, v49.l
	v_mov_b16_e32 v58.l, v49.l
	v_mov_b16_e32 v59.l, v49.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v60.l, v49.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v62.l, v49.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v51, v49, v51
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v52, v49, v52
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v54, v49, v54
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v56, v49, v56
	v_mul_f32_e32 v61, v49, v61
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v63, v49, v63
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v24, v27, v24, v30
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v66.h, v49.l
	v_mov_b16_e32 v67.h, v49.l
	v_mov_b16_e32 v68.h, v49.l
	v_mov_b16_e32 v69.h, v49.l
	v_mov_b16_e32 v70.h, v49.l
	v_mov_b16_e32 v71.h, v49.l
	v_mov_b16_e32 v72.h, v49.l
	v_mov_b16_e32 v73.h, v49.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v55, v49, v55
	v_mul_f32_e32 v59, v49, v59
	v_mul_f32_e32 v58, v49, v58
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v60, v49, v60
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v49, v49, v62
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v27, v46, v135, v45
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v30, v24, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v27, v45, v27, s3
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v3, 16, v3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v25, v50, v25, v43
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v43, v25, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v4, 16, v4
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v5, 16, v5
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v50, v53, v134, v42
	v_fma_f32 v46, v52, v133, v41
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v7, 16, v7
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v10, 16, v10
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v29, v57, v29, v38
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v6, v3, v6
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v22, v54, v22, v39
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v42, v50, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v8, 16, v8
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v38, v29, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v28, v56, v28, v37
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v4, v3, v4
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v12, 16, v12
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v13, 16, v13
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v52, v61, v132, v34
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v15, 16, v15
	v_lshlrev_b32_e32 v14, 16, v14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v21, v63, v21, v31
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v8, v3, v8 :: v_dual_lshlrev_b32 v17, 16, v17
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v15, v3, v15
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v23, v55, v23, v40
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v22, v39, v22, s3
	v_cndmask_b32_e64 v28, v37, v28, s3
	v_cndmask_b32_e64 v34, v34, v52, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v15, v15, v160, v29
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v21, v31, v21, s3
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v31, 16, v47
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v20, v49, v20, v32
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v15, v29, v15, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v13, v3, v13
	v_mul_f32_e32 v14, v3, v14
	v_mul_f32_e32 v17, v3, v17
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v23, v40, v23, s3
	v_cndmask_b32_e64 v20, v32, v20, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v13, v13, v162, v30
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v11, 16, v11
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v18, v58, v18, v35
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v32, 16, v48
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v19, v59, v19, v36
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v31, v3, v31
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v6, v130, v22
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v14, v14, v159, v28
	v_fma_f32 v17, v17, v164, v34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v30, v13, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v3, v7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v19, v36, v19, s3
	v_cndmask_b32_e64 v18, v35, v18, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v3, v5
	v_mul_f32_e32 v9, v3, v9
	v_mul_f32_e32 v10, v3, v10
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v12, v3, v12
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v22, v6, s2
	v_cndmask_b32_e64 v14, v28, v14, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v32, v3, v32
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v34, v17, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v11, v3, v11
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v3, v3, v16
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v16, v31, v127, v24
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v22, 0xbfb8aa3b, v13
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v7, v7, v142, v23
	v_fma_f32 v26, v51, v26, v44
	v_fma_f32 v8, v8, v128, v18
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v24, v16, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v24, 0xbfb8aa3b, v15
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v9, v9, v129, v19
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v23, v7, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v23, 0xbfb8aa3b, v14
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v31, v32, v158, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v44, v26, s3
	v_cndmask_b32_e64 v9, v19, v9, s2
	v_cndmask_b32_e64 v8, v18, v8, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v19, 0xbfb8aa3b, v16
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v10, v10, v143, v20
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v27, v31, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v51, v60, v131, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v41, v46, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v4, v4, v145, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v20, v10, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v20, 0xbfb8aa3b, v18
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v5, v5, v147, v26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v33, v51, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v22
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v25, v4, s2
	v_cndmask_b32_e64 v5, v26, v5, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v26, 0xbfb8aa3b, v17
	v_cndmask_b32_e64 v22, 0, 0x42800000, s1
	v_cndmask_b32_e64 v24, 0, 0x42800000, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v11, v11, v144, v21
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v26
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v13
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v15
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v21, v11, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0x42800000, s5
	v_exp_f32_e32 v22, v22
	v_exp_f32_e32 v24, v24
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v19
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v23
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v17
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v3, v3, v163, v33
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v18
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, s3
	v_exp_f32_e32 v26, v26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v33, v3, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v19, 0, 0x42800000, s0
	v_cndmask_b32_e64 v23, 0, 0x42800000, s4
	v_exp_f32_e32 v20, v20
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s5
	v_mul_f32_e32 v25, 0xbfb8aa3b, v3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v12, v12, v161, v41
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v22, v22, v29
	v_ldexp_f32 v24, v24, v31
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v16
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v41, v12, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v23, 0xbfb8aa3b, v14 :: v_dual_add_f32 v24, 1.0, v24
	v_ldexp_f32 v26, v26, v33
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_dual_add_f32 v22, 1.0, v22 :: v_dual_mul_f32 v21, 0xbfb8aa3b, v12
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v19, v19
	v_ldexp_f32 v20, v20, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v31, null, v22, v22, v13
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v35, null, v24, v24, v15
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, s0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v20, 1.0, v20
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v21, 0, 0x42800000, s2
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v44, v31
	v_rcp_f32_e32 v46, v35
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v19, v19, v28
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v12
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v27, null, v20, v20, v18
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v25
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v21, v21
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v42, v27
	v_fma_f32 v53, -v31, v44, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v55, -v35, v46, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v25, 0, 0x42800000, s6
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v39, null, v26, v26, v17
	v_fmac_f32_e32 v44, v53, v44
	v_div_scale_f32 v29, null, v19, v19, v16
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v21, v21, v30
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v46, v55, v46
	v_fma_f32 v51, -v27, v42, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v43, v29
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v48, v39
	v_fmac_f32_e32 v42, v51, v42
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v25, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v33, null, v21, v21, v12
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v23, v23, v32
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s6
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v52, -v29, v43, 1.0
	v_rcp_f32_e32 v45, v33
	v_div_scale_f32 v28, vcc_lo, v18, v20, v18
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v57, -v39, v48, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v25, v25, v34
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v30, s0, v16, v19, v16
	v_div_scale_f32 v34, s2, v12, v21, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v54, -v33, v45, 1.0
	v_fmac_f32_e32 v48, v57, v48
	v_div_scale_f32 v38, s4, v14, v23, v14
	v_mul_f32_e32 v51, v28, v42
	v_fmac_f32_e32 v45, v54, v45
	v_fmac_f32_e32 v43, v52, v43
	v_div_scale_f32 v37, null, v23, v23, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v59, -v27, v51, v28
	v_mul_f32_e32 v54, v34, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v25, 1.0, v25 :: v_dual_mul_f32 v52, v30, v43
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v47, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v51, v59, v42
	v_div_scale_f32 v32, s1, v13, v22, v13
	v_fma_f32 v60, -v29, v52, v30
	v_div_scale_f32 v41, null, v25, v25, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v27, -v27, v51, v28
	v_fma_f32 v62, -v33, v54, v34
	v_fmac_f32_e32 v52, v60, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v49, v41
	v_mul_f32_e32 v53, v32, v44
	v_div_fmas_f32 v27, v27, v42, v51
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v28, -v29, v52, v30
	v_fma_f32 v56, -v37, v47, 1.0
	v_fmac_f32_e32 v54, v62, v45
	v_fma_f32 v61, -v31, v53, v32
	v_div_scale_f32 v50, s6, v3, v25, v3
	v_div_fmas_f32 v28, v28, v43, v52
	v_fma_f32 v58, -v41, v49, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v53, v61, v44
	v_div_scale_f32 v36, s3, v15, v24, v15
	v_div_fixup_f32 v16, v28, v19, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v49, v58, v49
	v_fma_f32 v29, -v31, v53, v32
	v_fma_f32 v30, -v33, v54, v34
	s_mov_b32 vcc_lo, s1
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v4, v16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v47, v56, v47 :: v_dual_mul_f32 v58, v50, v49
	v_div_fmas_f32 v29, v29, v44, v53
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v18, v27, v20, v18
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v56, v38, v47
	v_div_fmas_f32 v20, v30, v45, v54
	v_div_fixup_f32 v13, v29, v22, v13
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v40, s5, v17, v26, v17
	v_fma_f32 v74, -v37, v56, v38
	v_mul_f32_e32 v55, v36, v46
	v_div_fixup_f32 v12, v20, v21, v12
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v7, v7, v13
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v67.l, v4.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v56, v74, v47
	v_fma_f32 v63, -v35, v55, v36
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v6, v6, v12
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v68.l, v7.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v5, v5, v18
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v32, -v37, v56, v38
	v_fmac_f32_e32 v55, v63, v46
	v_mul_f32_e32 v57, v40, v48
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v69.l, v6.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v76, -v41, v58, v50
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v4, v4
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v31, -v35, v55, v36
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s2, v6, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v58, v76, v49
	v_div_fmas_f32 v19, v31, v46, v55
	s_mov_b32 vcc_lo, s4
	v_div_fmas_f32 v18, v32, v47, v56
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v34, -v41, v58, v50
	v_div_fixup_f32 v15, v19, v24, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v14, v18, v23, v14
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v8, v8, v14
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v14, 1, v67
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v75, -v39, v57, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v71.l, v8.h
	v_add3_u32 v4, v4, v14, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v57, v75, v48
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s4, v8, v8
	v_and_b32_e32 v14, 1, v71
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
	v_and_b32_e32 v12, 1, v68
	v_mov_b16_e32 v66.l, v5.h
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v3, v10, v3 :: v_dual_and_b32 v10, 1, v69
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v7, v7, v12, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v13, 1, v66
	v_mov_b16_e32 v73.l, v3.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s1
	v_add3_u32 v5, v5, v13, 0x7fff
	v_cndmask_b16 v5.l, 0x7fff, v4.h, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v12, 1, v73
	v_cmp_o_f32_e64 s0, v3, v3
	v_cndmask_b16 v5.h, 0x7fff, v5.h, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add3_u32 v0, v6, v10, 0x7fff
	v_add3_u32 v3, v3, v12, 0x7fff
	v_cndmask_b32_e32 v10, 0x3276, v65, vcc_lo
	v_mov_b16_e32 v72.l, v11.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v9, v9, v15
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s5, v11, v11
	v_cndmask_b16 v7.l, 0x7fff, v0.h, s2
	v_cndmask_b16 v0.l, 0x7fff, v3.h, s0
	v_and_b32_e32 v6, 1, v72
	v_mov_b16_e32 v70.l, v9.h
	v_cmp_o_f32_e64 s3, v9, v9
	v_lshl_or_b32 v10, v10, 8, v10
	s_mov_b32 s0, 0x76543210
	v_add3_u32 v6, v11, v6, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b16 v0.h, 0x7fff, v6.h, s5
	v_and_b32_e32 v13, 1, v70
	v_add3_u32 v9, v9, v13, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v4.h, 0x7fff, v9.h, s3
	v_dual_cndmask_b32 v9, 0x1054, v64 :: v_dual_cndmask_b32 v8, v4, v5
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
	v_or_b32_e32 v7, s22, v2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v4, 0x5040504, v4
	v_and_b32_e32 v5, 0x7060706, v5
	v_permlanex16_b32 v6, v6, s0, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s22, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_perm_b32 v2, v3, v8, v4
	v_perm_b32 v3, v3, v8, v5
	s_delay_alu instid0(VALU_DEP_3)
	v_perm_b32 v4, v6, v0, v4
	v_perm_b32 v5, v6, v0, v5
	v_add_lshl_u32 v0, v7, v1, 1
	buffer_store_b128 v[2:5], v0, s[20:23], 0 offen
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_sgpr 50
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 213
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 50
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15848
; TotalNumSgprs: 52
; NumVgprs: 213
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 52
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     52
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm16_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
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
