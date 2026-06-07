	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x30
	s_load_b32 s13, s[0:1], 0x38
	v_mov_b32_e32 v218, v0
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s6, s2
	s_mov_b32 s27, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v120, 4, v218
	v_and_b32_e32 v3, 48, v120
	v_lshrrev_b32_e32 v1, 2, v218
	v_lshrrev_b32_e32 v2, 3, v218
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v59, 0, v120
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s22, 63
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
	s_lshr_b32 s9, s9, 26
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
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s12, s4, 2
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v1, s13, v1
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s4, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_rcp_iflag_f32_e32 v0, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v0
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
	v_rcp_iflag_f32_e32 v0, s18
	v_readfirstlane_b32 s18, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v0, 0x70, v120
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[6:7]
	s_mov_b32 s7, 0x31027000
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s18, s18, 0x4f7ffffe
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s31, s7
	s_mov_b64 s[24:25], s[10:11]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s6, s18
	s_sub_i32 s18, 0, s17
	s_mul_i32 s18, s18, s6
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_cselect_b32 s12, s19, s12
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s26, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s14, s12, s18
	.loc	1 303 14                        ; generate_amdgcn.py:303:14
	s_lshl_b32 s34, s23, 1
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s14, s14, s18
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[73:74], null, s34, v2, v[0:1]
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s3, s14, s16
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s16, s13, 0xff
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
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_lshr_b32 s3, s3, 24
.Ltmp17:
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s33, s2, 6
.Ltmp18:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s12, s13, 63
.Ltmp19:
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s2, s33, s13
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s22, s14, 7
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v122, v1, v3, s2
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s13, s16, s3
.Ltmp21:
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s15, s34, s26
	v_lshl_add_u32 v175, s23, 6, v73
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s12, 63
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v0, s26, v122
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s14, s22, s15
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s12, 0x7f
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s14, v73
	v_add_nc_u32_e32 v3, s14, v175
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s15, s23, 7
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v4, 0x80000000, v0, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s14, s14, s15
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v5, 0x80000000, v1, s2
	.loc	1 358 39 is_stmt 1              ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v1, s23, v1
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v7, s14, v73
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v6, 0x80000000, v3, s2
	.loc	1 358 39 is_stmt 1              ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v3, s23, v3
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v0, 64, v0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v8, s14, v175
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[19:22], v4, s[4:7], 0 offen
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 358 39 is_stmt 0              ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v4, s23, v7
	v_add3_u32 v9, s14, s23, v175
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[23:26], v5, s[28:31], 0 offen
	buffer_load_b128 v[27:30], v6, s[28:31], 0 offen
	v_cndmask_b32_e64 v5, 0x80000000, v7, s3
	v_cndmask_b32_e64 v6, 0x80000000, v8, s3
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1
	buffer_load_b128 v[31:34], v1, s[28:31], 0 offen
	buffer_load_b128 v[35:38], v3, s[28:31], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v4, s3
	v_cndmask_b32_e64 v3, 0x80000000, v9, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[39:42], v0, s[4:7], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[43:46], v5, s[28:31], 0 offen
	buffer_load_b128 v[47:50], v6, s[28:31], 0 offen
	buffer_load_b128 v[51:54], v1, s[28:31], 0 offen
	buffer_load_b128 v[55:58], v3, s[28:31], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v0, 1, v218
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v1, 15, v218
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v3, 1, v218
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v4, 4, v218
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s12, 0xbf
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_or_b32 v5, v2, 16, v1
	scratch_store_b32 off, v0, off offset:340 ; 4-byte Folded Spill
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v0, 48, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v3, 48, v3
	v_lshlrev_b32_e32 v2, 3, v218
	scratch_store_b32 off, v5, off offset:168 ; 4-byte Folded Spill
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v5, 32, v5
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v4, v4, 1, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v177, v120, v3
	v_or_b32_e32 v176, v0, v1
	scratch_store_b32 off, v5, off offset:344 ; 4-byte Folded Spill
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v7, 2, v4
	v_or_b32_e32 v8, 4, v4
	v_or_b32_e32 v9, 6, v4
	v_or_b32_e32 v10, 8, v4
	v_or_b32_e32 v11, 10, v4
	v_or_b32_e32 v12, 12, v4
	v_or_b32_e32 v13, 14, v4
	v_or_b32_e32 v14, 64, v4
	v_or_b32_e32 v15, 0x42, v4
	v_or_b32_e32 v16, 0x44, v4
	v_or_b32_e32 v17, 0x46, v4
	v_or_b32_e32 v18, 0x48, v4
	v_or_b32_e32 v3, 0x4a, v4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v60, 0, v177
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v5, 0x4c, v4
	v_or_b32_e32 v6, 0x4e, v4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(9)
	ds_store_b128 v60, v[19:22] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v59, v[23:26]
	s_waitcnt vmcnt(7)
	ds_store_b128 v59, v[27:30] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(6)
	ds_store_b128 v59, v[31:34] offset:16384
	s_waitcnt vmcnt(5)
	ds_store_b128 v59, v[35:38] offset:20480
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v60, v[39:42] offset:36864
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v59, v[43:46] offset:8192
	s_waitcnt vmcnt(2)
	ds_store_b128 v59, v[47:50] offset:12288
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v59, v[51:54] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v59, v[55:58] offset:28672
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v49, v0, v1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v19, 0x430, v2
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v0, 0x180, v49
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshl_or_b32 v219, v1, 6, v19
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v240, 0x80, v49
	v_or_b32_e32 v249, 0x100, v49
	v_or_b32_e32 v238, 0x580, v49
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x200, v49
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v220, 16, v219
	v_xor_b32_e32 v221, 32, v219
	v_xor_b32_e32 v222, 48, v219
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v239, 0x600, v49
	scratch_store_b32 off, v0, off offset:12 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x280, v49
	v_or_b32_e32 v242, 0x800, v49
	v_or_b32_e32 v237, 0x880, v49
	v_or_b32_e32 v241, 0xc80, v49
	v_or_b32_e32 v253, 0xd00, v49
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	scratch_store_b32 off, v0, off offset:20 ; 4-byte Folded Spill
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v0, 0x300, v49
	v_or_b32_e32 v246, 0x1980, v49
	v_or_b32_e32 v252, 0x1a00, v49
	v_or_b32_e32 v248, 0x1a80, v49
	v_or_b32_e32 v243, 0x1b00, v49
	scratch_store_b32 off, v0, off offset:24 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x380, v49
	v_or_b32_e32 v244, 0x1b80, v49
	v_or_b32_e32 v250, 0x1c00, v49
	v_or_b32_e32 v254, 0x1c80, v49
	v_or_b32_e32 v232, 0x1e00, v49
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x400, v49
	v_or_b32_e32 v236, 0x1e80, v49
	v_or_b32_e32 v216, 0xc0, v49
	v_or_b32_e32 v217, 0x140, v49
	v_or_b32_e32 v233, 0x1c0, v49
	scratch_store_b32 off, v0, off offset:28 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x480, v49
	v_or_b32_e32 v215, 0x240, v49
	v_or_b32_e32 v235, 0x2c0, v49
	v_or_b32_e32 v255, 0x340, v49
	v_or_b32_e32 v214, 0x5c0, v49
	scratch_store_b32 off, v0, off offset:8 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x500, v49
	v_or_b32_e32 v251, 0x8c0, v49
	v_or_b32_e32 v245, 0x9c0, v49
	v_or_b32_e32 v247, 0xa40, v49
	v_or_b32_e32 v234, 0xbc0, v49
	scratch_store_b32 off, v0, off offset:16 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x680, v49
	v_or_b32_e32 v20, 0xc40, v49
	v_or_b32_e32 v21, 0xfc0, v49
	scratch_store_b32 off, v0, off offset:348 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x700, v49
	scratch_store_b32 off, v0, off offset:40 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x780, v49
	scratch_store_b32 off, v0, off offset:44 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x900, v49
	scratch_store_b32 off, v0, off offset:136 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x980, v49
	scratch_store_b32 off, v0, off offset:140 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xa00, v49
	scratch_store_b32 off, v0, off offset:124 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xa80, v49
	scratch_store_b32 off, v0, off offset:132 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xb00, v49
	scratch_store_b32 off, v0, off offset:144 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xb80, v49
	scratch_store_b32 off, v0, off offset:128 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xc00, v49
	scratch_store_b32 off, v0, off offset:148 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xd80, v49
	scratch_store_b32 off, v0, off offset:352 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xe00, v49
	scratch_store_b32 off, v0, off offset:356 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xe80, v49
	scratch_store_b32 off, v0, off offset:360 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf00, v49
	scratch_store_b32 off, v0, off offset:32 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf80, v49
	scratch_store_b32 off, v0, off offset:36 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1000, v49
	scratch_store_b32 off, v0, off offset:48 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1080, v49
	scratch_store_b32 off, v0, off offset:52 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1100, v49
	scratch_store_b32 off, v0, off offset:56 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1180, v49
	scratch_store_b32 off, v0, off offset:60 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1200, v49
	scratch_store_b32 off, v0, off offset:64 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1280, v49
	scratch_store_b32 off, v0, off offset:68 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1300, v49
	scratch_store_b32 off, v0, off offset:72 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1380, v49
	scratch_store_b32 off, v0, off offset:76 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1400, v49
	scratch_store_b32 off, v0, off offset:80 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1480, v49
	scratch_store_b32 off, v0, off offset:84 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1500, v49
	scratch_store_b32 off, v0, off offset:88 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1580, v49
	scratch_store_b32 off, v0, off offset:92 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1600, v49
	scratch_store_b32 off, v0, off offset:96 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1680, v49
	scratch_store_b32 off, v0, off offset:100 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1700, v49
	scratch_store_b32 off, v0, off offset:104 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1780, v49
	scratch_store_b32 off, v0, off offset:108 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1800, v49
	scratch_store_b32 off, v0, off offset:112 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1880, v49
	scratch_store_b32 off, v0, off offset:116 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1900, v49
	scratch_store_b32 off, v0, off offset:120 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1d00, v49
	scratch_store_b32 off, v0, off offset:152 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1d80, v49
	scratch_store_b32 off, v0, off offset:156 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1f00, v49
	scratch_store_b32 off, v0, off offset:400 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1f80, v49
	scratch_store_b32 off, v0, off offset:404 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 64, v49
	scratch_store_b32 off, v0, off offset:160 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x3c0, v49
	scratch_store_b32 off, v0, off offset:364 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x440, v49
	scratch_store_b32 off, v0, off offset:368 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x4c0, v49
	scratch_store_b32 off, v0, off offset:372 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x540, v49
	scratch_store_b32 off, v0, off offset:376 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x640, v49
	scratch_store_b32 off, v0, off offset:380 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x6c0, v49
	scratch_store_b32 off, v0, off offset:164 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x740, v49
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x7c0, v49
	scratch_store_b32 off, v0, off offset:388 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x840, v49
	scratch_store_b32 off, v0, off offset:392 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x940, v49
	scratch_store_b32 off, v0, off offset:396 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xac0, v49
	scratch_store_b32 off, v0, off offset:408 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xb40, v49
	scratch_store_b32 off, v0, off offset:412 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xcc0, v49
	scratch_store_b32 off, v0, off offset:420 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xd40, v49
	scratch_store_b32 off, v0, off offset:424 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xdc0, v49
	scratch_store_b32 off, v0, off offset:428 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xe40, v49
	scratch_store_b32 off, v0, off offset:432 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xec0, v49
	scratch_store_b32 off, v0, off offset:436 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf40, v49
	scratch_store_b32 off, v0, off offset:440 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1040, v49
	scratch_store_b32 off, v0, off offset:172 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x10c0, v49
	scratch_store_b32 off, v0, off offset:176 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1140, v49
	scratch_store_b32 off, v0, off offset:180 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x11c0, v49
	scratch_store_b32 off, v0, off offset:184 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1240, v49
	scratch_store_b32 off, v0, off offset:188 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x12c0, v49
	scratch_store_b32 off, v0, off offset:192 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1340, v49
	scratch_store_b32 off, v0, off offset:196 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x13c0, v49
	scratch_store_b32 off, v0, off offset:200 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1440, v49
	scratch_store_b32 off, v0, off offset:204 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x14c0, v49
	scratch_store_b32 off, v0, off offset:208 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1540, v49
	scratch_store_b32 off, v0, off offset:212 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x15c0, v49
	scratch_store_b32 off, v0, off offset:216 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1640, v49
	scratch_store_b32 off, v0, off offset:220 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x16c0, v49
	scratch_store_b32 off, v0, off offset:224 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1740, v49
	scratch_store_b32 off, v0, off offset:228 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x17c0, v49
	scratch_store_b32 off, v0, off offset:232 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1840, v49
	scratch_store_b32 off, v0, off offset:236 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x18c0, v49
	scratch_store_b32 off, v0, off offset:240 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1940, v49
	scratch_store_b32 off, v0, off offset:244 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x19c0, v49
	scratch_store_b32 off, v0, off offset:248 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1a40, v49
	scratch_store_b32 off, v0, off offset:252 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1ac0, v49
	scratch_store_b32 off, v0, off offset:256 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1b40, v49
	scratch_store_b32 off, v0, off offset:260 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1bc0, v49
	scratch_store_b32 off, v0, off offset:264 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1c40, v49
	scratch_store_b32 off, v0, off offset:268 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1cc0, v49
	scratch_store_b32 off, v0, off offset:272 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1d40, v49
	scratch_store_b32 off, v0, off offset:276 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1dc0, v49
	scratch_store_b32 off, v0, off offset:280 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1e40, v49
	scratch_store_b32 off, v0, off offset:284 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1ec0, v49
	scratch_store_b32 off, v0, off offset:288 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1f40, v49
	scratch_store_b32 off, v0, off offset:292 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1fc0, v49
	scratch_store_b32 off, v0, off offset:296 ; 4-byte Folded Spill
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr219
                                        ; implicit-def: $vgpr220
                                        ; implicit-def: $vgpr221
                                        ; implicit-def: $vgpr222
                                        ; implicit-def: $vgpr49
                                        ; implicit-def: $vgpr240
                                        ; implicit-def: $vgpr249
                                        ; implicit-def: $vgpr238
                                        ; implicit-def: $vgpr239
                                        ; implicit-def: $vgpr242
                                        ; implicit-def: $vgpr237
                                        ; implicit-def: $vgpr241
                                        ; implicit-def: $vgpr253
                                        ; implicit-def: $vgpr246
                                        ; implicit-def: $vgpr252
                                        ; implicit-def: $vgpr248
                                        ; implicit-def: $vgpr243
                                        ; implicit-def: $vgpr244
                                        ; implicit-def: $vgpr250
                                        ; implicit-def: $vgpr254
                                        ; implicit-def: $vgpr232
                                        ; implicit-def: $vgpr236
                                        ; implicit-def: $vgpr216
                                        ; implicit-def: $vgpr217
                                        ; implicit-def: $vgpr233
                                        ; implicit-def: $vgpr215
                                        ; implicit-def: $vgpr235
                                        ; implicit-def: $vgpr255
                                        ; implicit-def: $vgpr214
                                        ; implicit-def: $vgpr251
                                        ; implicit-def: $vgpr245
                                        ; implicit-def: $vgpr247
                                        ; implicit-def: $vgpr234
                                        ; implicit-def: $vgpr20
                                        ; implicit-def: $vgpr21
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
.LBB0_3:                                ; %Flow610
	scratch_load_b32 v19, off, off offset:168 ; 4-byte Folded Reload
	s_load_b64 s[20:21], s[0:1], 0x20
	s_ashr_i32 s1, s13, 8
	v_or_b32_e32 v155, s22, v4
	v_or_b32_e32 v152, s22, v7
	v_or_b32_e32 v153, s22, v8
	v_or_b32_e32 v154, s22, v9
	v_or_b32_e32 v140, s22, v10
	v_or_b32_e32 v141, s22, v11
	v_or_b32_e32 v142, s22, v12
	v_or_b32_e32 v143, s22, v13
	v_or_b32_e32 v124, s22, v14
	v_or_b32_e32 v125, s22, v15
	v_or_b32_e32 v126, s22, v16
	v_or_b32_e32 v127, s22, v17
	v_or_b32_e32 v128, s22, v18
	v_or_b32_e32 v129, s22, v3
	v_or_b32_e32 v130, s22, v5
	v_or_b32_e32 v131, s22, v6
	v_add_nc_u32_e32 v151, s23, v4
	v_add_nc_u32_e32 v147, s23, v7
	v_add_nc_u32_e32 v148, s23, v8
	v_add_nc_u32_e32 v149, s23, v9
	v_add_nc_u32_e32 v144, s23, v10
	v_add_nc_u32_e32 v150, s23, v11
	v_add_nc_u32_e32 v145, s23, v12
	v_add_nc_u32_e32 v146, s23, v13
	v_add_nc_u32_e32 v132, s23, v14
	v_add_nc_u32_e32 v133, s23, v15
	v_add_nc_u32_e32 v134, s23, v16
	v_add_nc_u32_e32 v135, s23, v17
	v_add_nc_u32_e32 v136, s23, v18
	v_add_nc_u32_e32 v137, s23, v3
	v_add_nc_u32_e32 v138, s23, v5
	v_add_nc_u32_e32 v139, s23, v6
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_add_i32 s35, s26, 64
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v0, s33, v19
	v_or_b32_e32 v19, 32, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_lo_u32 v157, v0, s1
	v_or_b32_e32 v19, s33, v19
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_lo_u32 v156, v19, s1
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v169, 0 :: v_dual_and_b32 v0, 0x430, v2
	v_or_b32_e32 v240, 0x80, v176
	v_or_b32_e32 v249, 0x100, v176
	v_or_b32_e32 v238, 0x580, v176
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v219, v1, 6, v0
	v_or_b32_e32 v0, 0x180, v176
	v_or_b32_e32 v239, 0x600, v176
	v_or_b32_e32 v242, 0x800, v176
	v_or_b32_e32 v237, 0x880, v176
	v_xor_b32_e32 v220, 16, v219
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x200, v176
	v_xor_b32_e32 v221, 32, v219
	v_xor_b32_e32 v222, 48, v219
	v_or_b32_e32 v241, 0xc80, v176
	v_or_b32_e32 v253, 0xd00, v176
	scratch_store_b32 off, v0, off offset:12 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x280, v176
	v_or_b32_e32 v246, 0x1980, v176
	v_or_b32_e32 v252, 0x1a00, v176
	v_or_b32_e32 v248, 0x1a80, v176
	v_or_b32_e32 v243, 0x1b00, v176
	scratch_store_b32 off, v0, off offset:20 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x300, v176
	v_or_b32_e32 v244, 0x1b80, v176
	v_or_b32_e32 v250, 0x1c00, v176
	v_or_b32_e32 v254, 0x1c80, v176
	v_or_b32_e32 v232, 0x1e00, v176
	scratch_store_b32 off, v0, off offset:24 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x380, v176
	v_or_b32_e32 v236, 0x1e80, v176
	v_or_b32_e32 v216, 0xc0, v176
	v_or_b32_e32 v217, 0x140, v176
	v_or_b32_e32 v233, 0x1c0, v176
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x400, v176
	v_or_b32_e32 v215, 0x240, v176
	v_or_b32_e32 v235, 0x2c0, v176
	v_or_b32_e32 v255, 0x340, v176
	v_or_b32_e32 v214, 0x5c0, v176
	scratch_store_b32 off, v0, off offset:28 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x480, v176
	v_or_b32_e32 v251, 0x8c0, v176
	v_or_b32_e32 v245, 0x9c0, v176
	v_or_b32_e32 v247, 0xa40, v176
	v_or_b32_e32 v234, 0xbc0, v176
	scratch_store_b32 off, v0, off offset:8 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x500, v176
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v115, 0
	scratch_store_b32 off, v0, off offset:16 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x680, v176
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v161, 0
	scratch_store_b32 off, v0, off offset:348 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x700, v176
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v107, 0
	scratch_store_b32 off, v0, off offset:40 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x780, v176
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v99, 0
	scratch_store_b32 off, v0, off offset:44 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x900, v176
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v83, 0
	scratch_store_b32 off, v0, off offset:136 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x980, v176
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v91, 0
	scratch_store_b32 off, v0, off offset:140 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xa00, v176
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v75, 0
	scratch_store_b32 off, v0, off offset:124 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xa80, v176
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v171, 0
	scratch_store_b32 off, v0, off offset:132 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xb00, v176
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v159, 0
	scratch_store_b32 off, v0, off offset:144 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xb80, v176
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v167, 0
	scratch_store_b32 off, v0, off offset:128 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xc00, v176
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v113, 0
	scratch_store_b32 off, v0, off offset:148 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xd80, v176
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v105, 0
	scratch_store_b32 off, v0, off offset:352 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xe00, v176
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v89, 0
	scratch_store_b32 off, v0, off offset:356 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xe80, v176
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v97, 0
	scratch_store_b32 off, v0, off offset:360 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf00, v176
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v81, 0
	scratch_store_b32 off, v0, off offset:32 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf80, v176
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v77, 0
	v_mov_b32_e32 v76, 0
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s11, s12, 6
	scratch_store_b32 off, v0, off offset:36 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1000, v176
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_mov_b32 s12, 0
	s_add_i32 s0, s35, 64
	scratch_store_b32 off, v0, off offset:48 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1080, v176
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_and_b32 s41, s25, 0xffff
	s_mov_b32 s40, s24
	scratch_store_b32 off, v0, off offset:52 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1100, v176
	s_add_i32 s49, 0, 0x8000
	s_add_i32 s46, 0, 0x9000
	s_add_i32 s45, 0, 0x2000
	s_add_i32 s10, 0, 0x4000
	scratch_store_b32 off, v0, off offset:56 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1180, v176
	s_add_i32 s44, 0, 0x6000
	s_add_i32 s11, s11, -3
	s_mov_b32 s47, 1
	s_mov_b32 s30, s6
	scratch_store_b32 off, v0, off offset:60 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1200, v176
	s_mov_b32 s31, s7
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	scratch_store_b32 off, v0, off offset:64 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1280, v176
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	scratch_store_b32 off, v0, off offset:68 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1300, v176
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_mov_b32 s27, s12
	s_mov_b32 s48, s12
	scratch_store_b32 off, v0, off offset:72 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1380, v176
	scratch_store_b32 off, v0, off offset:76 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1400, v176
	scratch_store_b32 off, v0, off offset:80 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1480, v176
	scratch_store_b32 off, v0, off offset:84 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1500, v176
	scratch_store_b32 off, v0, off offset:88 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1580, v176
	scratch_store_b32 off, v0, off offset:92 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1600, v176
	scratch_store_b32 off, v0, off offset:96 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1680, v176
	scratch_store_b32 off, v0, off offset:100 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1700, v176
	scratch_store_b32 off, v0, off offset:104 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1780, v176
	scratch_store_b32 off, v0, off offset:108 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1800, v176
	scratch_store_b32 off, v0, off offset:112 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1880, v176
	scratch_store_b32 off, v0, off offset:116 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1900, v176
	scratch_store_b32 off, v0, off offset:120 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1d00, v176
	scratch_store_b32 off, v0, off offset:152 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1d80, v176
	scratch_store_b32 off, v0, off offset:156 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1f00, v176
	scratch_store_b32 off, v0, off offset:400 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1f80, v176
	scratch_store_b32 off, v0, off offset:404 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 64, v176
	scratch_store_b32 off, v0, off offset:160 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x3c0, v176
	scratch_store_b32 off, v0, off offset:364 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x440, v176
	scratch_store_b32 off, v0, off offset:368 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x4c0, v176
	scratch_store_b32 off, v0, off offset:372 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x540, v176
	scratch_store_b32 off, v0, off offset:376 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x640, v176
	scratch_store_b32 off, v0, off offset:380 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x6c0, v176
	scratch_store_b32 off, v0, off offset:164 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x740, v176
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x7c0, v176
	scratch_store_b32 off, v0, off offset:388 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x840, v176
	scratch_store_b32 off, v0, off offset:392 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x940, v176
	scratch_store_b32 off, v0, off offset:396 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xac0, v176
	scratch_store_b32 off, v0, off offset:408 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xb40, v176
	scratch_store_b32 off, v0, off offset:412 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xc40, v176
	scratch_store_b32 off, v0, off offset:416 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xcc0, v176
	scratch_store_b32 off, v0, off offset:420 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xd40, v176
	scratch_store_b32 off, v0, off offset:424 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xdc0, v176
	scratch_store_b32 off, v0, off offset:428 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xe40, v176
	scratch_store_b32 off, v0, off offset:432 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xec0, v176
	scratch_store_b32 off, v0, off offset:436 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf40, v176
	scratch_store_b32 off, v0, off offset:440 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xfc0, v176
	scratch_store_b32 off, v0, off offset:444 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1040, v176
	scratch_store_b32 off, v0, off offset:172 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x10c0, v176
	scratch_store_b32 off, v0, off offset:176 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1140, v176
	scratch_store_b32 off, v0, off offset:180 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x11c0, v176
	scratch_store_b32 off, v0, off offset:184 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1240, v176
	scratch_store_b32 off, v0, off offset:188 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x12c0, v176
	scratch_store_b32 off, v0, off offset:192 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1340, v176
	scratch_store_b32 off, v0, off offset:196 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x13c0, v176
	scratch_store_b32 off, v0, off offset:200 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1440, v176
	scratch_store_b32 off, v0, off offset:204 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x14c0, v176
	scratch_store_b32 off, v0, off offset:208 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1540, v176
	scratch_store_b32 off, v0, off offset:212 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x15c0, v176
	scratch_store_b32 off, v0, off offset:216 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1640, v176
	scratch_store_b32 off, v0, off offset:220 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x16c0, v176
	scratch_store_b32 off, v0, off offset:224 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1740, v176
	scratch_store_b32 off, v0, off offset:228 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x17c0, v176
	scratch_store_b32 off, v0, off offset:232 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1840, v176
	scratch_store_b32 off, v0, off offset:236 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x18c0, v176
	scratch_store_b32 off, v0, off offset:240 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1940, v176
	scratch_store_b32 off, v0, off offset:244 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x19c0, v176
	scratch_store_b32 off, v0, off offset:248 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1a40, v176
	scratch_store_b32 off, v0, off offset:252 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1ac0, v176
	scratch_store_b32 off, v0, off offset:256 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1b40, v176
	scratch_store_b32 off, v0, off offset:260 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1bc0, v176
	scratch_store_b32 off, v0, off offset:264 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1c40, v176
	scratch_store_b32 off, v0, off offset:268 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1cc0, v176
	scratch_store_b32 off, v0, off offset:272 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1d40, v176
	scratch_store_b32 off, v0, off offset:276 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1dc0, v176
	scratch_store_b32 off, v0, off offset:280 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1e40, v176
	scratch_store_b32 off, v0, off offset:284 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1ec0, v176
	scratch_store_b32 off, v0, off offset:288 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1f40, v176
	scratch_store_b32 off, v0, off offset:292 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1fc0, v176
	scratch_store_b32 off, v0, off offset:296 ; 4-byte Folded Spill
.Ltmp23:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s51, s48, 6
	s_mov_b32 s50, s27
	s_mov_b32 s27, s26
	s_mov_b32 s26, s35
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s35, s0, s51
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v178, s50, v176
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v187, s19 :: v_dual_add_nc_u32 v0, s35, v122
	v_mov_b32_e32 v185, s17
	v_dual_mov_b32 v186, s18 :: v_dual_add_nc_u32 v179, s10, v176
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[65:68], v0, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v178 offset:1664
	ds_load_u8 v1, v178 offset:1536
	v_dual_mov_b32 v184, s16 :: v_dual_mov_b32 v181, s13
	v_mov_b32_e32 v182, s14
	v_mov_b32_e32 v180, s12
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s10, s27, 31
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v183, s15
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s10, s10, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s27, s27, s10
	s_ashr_i32 s27, s27, 8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s50, s27, s34
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v178 offset:1920
	ds_load_u8 v2, v178 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v178 offset:1152
	ds_load_u8 v3, v178 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v178 offset:1408
	ds_load_u8 v4, v178 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v4, v3, 0xc0c0004
	v_lshl_or_b32 v3, v1, 16, v0
	ds_load_u8 v0, v178 offset:640
	ds_load_u8 v1, v178 offset:512
	v_lshl_or_b32 v2, v4, 16, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v178 offset:896
	ds_load_u8 v4, v178 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v4, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v1, v1, 16, v0
	ds_load_u8 v0, v178 offset:128
	ds_load_u8 v4, v178
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v4, v0, 0xc0c0004
	ds_load_u8 v4, v178 offset:384
	ds_load_u8 v5, v178 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v0, v4, 16, v0
	ds_load_u8 v4, v178 offset:1728
	ds_load_u8 v5, v178 offset:1600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	ds_load_u8 v5, v178 offset:1984
	ds_load_u8 v6, v178 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v178 offset:1216
	ds_load_u8 v7, v178 offset:1088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v178 offset:1472
	ds_load_u8 v8, v178 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v8, v7, 0xc0c0004
	v_lshl_or_b32 v7, v5, 16, v4
	ds_load_u8 v4, v178 offset:704
	ds_load_u8 v5, v178 offset:576
	v_lshl_or_b32 v6, v8, 16, v6
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	ds_load_u8 v5, v178 offset:960
	ds_load_u8 v8, v178 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v8, v5, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v5, v5, 16, v4
	ds_load_u8 v4, v178 offset:192
	ds_load_u8 v8, v178 offset:64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v8, v4, 0xc0c0004
	ds_load_u8 v8, v178 offset:448
	ds_load_u8 v9, v178 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v4, v8, 16, v4
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v8, v179 offset:1664
	ds_load_u8 v9, v179 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	ds_load_u8 v9, v179 offset:1920
	ds_load_u8 v10, v179 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v179 offset:1152
	ds_load_u8 v11, v179 offset:1024
	v_lshl_or_b32 v20, v9, 16, v8
	ds_load_u8 v8, v179 offset:640
	ds_load_u8 v9, v179 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v179 offset:1408
	ds_load_u8 v12, v179 offset:1280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v19, v11, 16, v10
	ds_load_u8 v9, v179 offset:896
	ds_load_u8 v10, v179 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	v_lshl_or_b32 v18, v9, 16, v8
	ds_load_u8 v8, v179 offset:128
	ds_load_u8 v9, v179
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	ds_load_u8 v9, v179 offset:384
	ds_load_u8 v10, v179 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v9, 16, v8
	ds_load_u8 v8, v179 offset:1728
	ds_load_u8 v9, v179 offset:1600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	ds_load_u8 v9, v179 offset:1984
	ds_load_u8 v10, v179 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v179 offset:1216
	ds_load_u8 v11, v179 offset:1088
	v_lshl_or_b32 v72, v9, 16, v8
	ds_load_u8 v8, v179 offset:704
	ds_load_u8 v9, v179 offset:576
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v179 offset:1472
	ds_load_u8 v12, v179 offset:1344
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v71, v11, 16, v10
	ds_load_u8 v9, v179 offset:960
	ds_load_u8 v10, v179 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	v_lshl_or_b32 v70, v9, 16, v8
	ds_load_u8 v8, v179 offset:192
	ds_load_u8 v9, v179 offset:64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	ds_load_u8 v9, v179 offset:448
	ds_load_u8 v10, v179 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v9, 16, v8
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v8, s49, v219
	ds_load_b128 v[21:24], v8
	ds_load_b128 v[188:191], v8 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[0:3], v[21:24], v[180:187] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[0:3], v[188:191], v[180:187] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[4:7], v[21:24], v[180:187] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[4:7], v[188:191], v[180:187] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[33:40], v[17:20], v[21:24], v[180:187] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[69:72], v[21:24], v[180:187] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[17:20], v[188:191], v[180:187] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[69:72], v[188:191], v[180:187] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v178 offset:3712
	ds_load_u8 v69, v178 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v178 offset:3968
	ds_load_u8 v70, v178 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v178 offset:3200
	ds_load_u8 v71, v178 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v178 offset:3456
	ds_load_u8 v72, v178 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	v_lshl_or_b32 v72, v69, 16, v0
	ds_load_u8 v0, v178 offset:2688
	ds_load_u8 v69, v178 offset:2560
	v_lshl_or_b32 v71, v71, 16, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v178 offset:2944
	ds_load_u8 v70, v178 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v69, 16, v0
	ds_load_u8 v0, v178 offset:2176
	ds_load_u8 v69, v178 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v178 offset:2432
	ds_load_u8 v121, v178 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v121, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v69, 16, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v0, s49, v220
	ds_load_b128 v[180:183], v0
	ds_load_b128 v[184:187], v0 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[69:72], v[180:183], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[69:72], v[184:187], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v0, v178 offset:3776
	ds_load_u8 v69, v178 offset:3648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v178 offset:4032
	ds_load_u8 v70, v178 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v178 offset:3264
	ds_load_u8 v71, v178 offset:3136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v178 offset:3520
	ds_load_u8 v72, v178 offset:3392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	v_lshl_or_b32 v72, v69, 16, v0
	ds_load_u8 v0, v178 offset:2752
	ds_load_u8 v69, v178 offset:2624
	v_lshl_or_b32 v71, v71, 16, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v178 offset:3008
	ds_load_u8 v70, v178 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v69, 16, v0
	ds_load_u8 v0, v178 offset:2240
	ds_load_u8 v69, v178 offset:2112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v178 offset:2496
	ds_load_u8 v121, v178 offset:2368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v121, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v69, 16, v0
	v_wmma_i32_16x16x16_iu8 v[9:16], v[69:72], v[180:183], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[69:72], v[184:187], v[25:32] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v179 offset:3712
	ds_load_u8 v69, v179 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v179 offset:3968
	ds_load_u8 v70, v179 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v179 offset:3200
	ds_load_u8 v71, v179 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v179 offset:3456
	ds_load_u8 v72, v179 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	v_lshl_or_b32 v72, v69, 16, v0
	ds_load_u8 v0, v179 offset:2688
	ds_load_u8 v69, v179 offset:2560
	v_lshl_or_b32 v71, v71, 16, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v179 offset:2944
	ds_load_u8 v70, v179 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v69, 16, v0
	ds_load_u8 v0, v179 offset:2176
	ds_load_u8 v69, v179 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v179 offset:2432
	ds_load_u8 v121, v179 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v121, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v69, 16, v0
	ds_load_u8 v0, v179 offset:3776
	ds_load_u8 v121, v179 offset:3648
	v_wmma_i32_16x16x16_iu8 v[33:40], v[69:72], v[180:183], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[69:72], v[184:187], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v121, v0, 0xc0c0004
	ds_load_u8 v121, v179 offset:4032
	ds_load_u8 v188, v179 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v188, v121, 0xc0c0004
	ds_load_u8 v188, v179 offset:3264
	ds_load_u8 v189, v179 offset:3136
	v_lshl_or_b32 v191, v121, 16, v0
	ds_load_u8 v0, v179 offset:2752
	ds_load_u8 v121, v179 offset:2624
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v188, v189, v188, 0xc0c0004
	ds_load_u8 v189, v179 offset:3520
	ds_load_u8 v190, v179 offset:3392
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v121, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v189, v190, v189, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v190, v189, 16, v188
	ds_load_u8 v121, v179 offset:3008
	ds_load_u8 v188, v179 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v188, v121, 0xc0c0004
	v_lshl_or_b32 v189, v121, 16, v0
	ds_load_u8 v0, v179 offset:2240
	ds_load_u8 v121, v179 offset:2112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v121, v0, 0xc0c0004
	ds_load_u8 v121, v179 offset:2496
	ds_load_u8 v188, v179 offset:2368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v188, v121, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v188, v121, 16, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v178 offset:5760
	ds_load_u8 v69, v178 offset:5632
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[1:8], v[188:191], v[180:183], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[188:191], v[184:187], v[17:24] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v178 offset:6016
	ds_load_u8 v70, v178 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v178 offset:5248
	ds_load_u8 v71, v178 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v178 offset:5504
	ds_load_u8 v72, v178 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	v_lshl_or_b32 v72, v69, 16, v0
	ds_load_u8 v0, v178 offset:4736
	ds_load_u8 v69, v178 offset:4608
	v_lshl_or_b32 v71, v71, 16, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v178 offset:4992
	ds_load_u8 v70, v178 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v69, 16, v0
	ds_load_u8 v0, v178 offset:4224
	ds_load_u8 v69, v178 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v178 offset:4480
	ds_load_u8 v121, v178 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v121, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v69, 16, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v0, s49, v221
	ds_load_b128 v[180:183], v0
	ds_load_b128 v[184:187], v0 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[69:72], v[180:183], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[69:72], v[184:187], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v0, v178 offset:5824
	ds_load_u8 v69, v178 offset:5696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v178 offset:6080
	ds_load_u8 v70, v178 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v178 offset:5312
	ds_load_u8 v71, v178 offset:5184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v178 offset:5568
	ds_load_u8 v72, v178 offset:5440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	v_lshl_or_b32 v72, v69, 16, v0
	ds_load_u8 v0, v178 offset:4800
	ds_load_u8 v69, v178 offset:4672
	v_lshl_or_b32 v71, v71, 16, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v178 offset:5056
	ds_load_u8 v70, v178 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v69, 16, v0
	ds_load_u8 v0, v178 offset:4288
	ds_load_u8 v69, v178 offset:4160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v178 offset:4544
	ds_load_u8 v121, v178 offset:4416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v121, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v69, 16, v0
	v_wmma_i32_16x16x16_iu8 v[9:16], v[69:72], v[180:183], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[69:72], v[184:187], v[25:32] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v179 offset:5760
	ds_load_u8 v69, v179 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v179 offset:6016
	ds_load_u8 v70, v179 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v179 offset:5248
	ds_load_u8 v71, v179 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v179 offset:5504
	ds_load_u8 v72, v179 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	v_lshl_or_b32 v72, v69, 16, v0
	ds_load_u8 v0, v179 offset:4736
	ds_load_u8 v69, v179 offset:4608
	v_lshl_or_b32 v71, v71, 16, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v179 offset:4992
	ds_load_u8 v70, v179 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v69, 16, v0
	ds_load_u8 v0, v179 offset:4224
	ds_load_u8 v69, v179 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v179 offset:4480
	ds_load_u8 v121, v179 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v121, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v69, 16, v0
	ds_load_u8 v0, v179 offset:5824
	ds_load_u8 v121, v179 offset:5696
	v_wmma_i32_16x16x16_iu8 v[33:40], v[69:72], v[180:183], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[69:72], v[184:187], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v121, v0, 0xc0c0004
	ds_load_u8 v121, v179 offset:6080
	ds_load_u8 v188, v179 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v188, v121, 0xc0c0004
	ds_load_u8 v188, v179 offset:5312
	ds_load_u8 v189, v179 offset:5184
	v_lshl_or_b32 v191, v121, 16, v0
	ds_load_u8 v0, v179 offset:4800
	ds_load_u8 v121, v179 offset:4672
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v188, v189, v188, 0xc0c0004
	ds_load_u8 v189, v179 offset:5568
	ds_load_u8 v190, v179 offset:5440
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v121, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v189, v190, v189, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v190, v189, 16, v188
	ds_load_u8 v121, v179 offset:5056
	ds_load_u8 v188, v179 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v188, v121, 0xc0c0004
	v_lshl_or_b32 v189, v121, 16, v0
	ds_load_u8 v0, v179 offset:4288
	ds_load_u8 v121, v179 offset:4160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v121, v0, 0xc0c0004
	ds_load_u8 v121, v179 offset:4544
	ds_load_u8 v188, v179 offset:4416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v188, v121, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v188, v121, 16, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v178 offset:7808
	ds_load_u8 v69, v178 offset:7680
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[1:8], v[188:191], v[180:183], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[188:191], v[184:187], v[17:24] neg_lo:[1,1,0]
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v188, v130, s50, 1
	v_add_lshl_u32 v189, v131, s50, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v178 offset:8064
	ds_load_u8 v70, v178 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v178 offset:7296
	ds_load_u8 v71, v178 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v178 offset:7552
	ds_load_u8 v72, v178 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	v_lshl_or_b32 v72, v69, 16, v0
	ds_load_u8 v0, v178 offset:6784
	ds_load_u8 v69, v178 offset:6656
	v_lshl_or_b32 v71, v71, 16, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v178 offset:7040
	ds_load_u8 v70, v178 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v69, 16, v0
	ds_load_u8 v0, v178 offset:6272
	ds_load_u8 v69, v178 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v178 offset:6528
	ds_load_u8 v121, v178 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v121, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_lshl_or_b32 v69, v69, 16, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v0, s49, v222
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s49, s35, s34
	s_add_i32 s10, s49, s22
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[180:183], v0
	ds_load_b128 v[184:187], v0 offset:2048
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	s_add_i32 s49, s10, s23
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s27, s1
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_add_i32 s51, s50, s22
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v188, 0x80000000, v188 :: v_dual_cndmask_b32 v189, 0x80000000, v189
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v190, v151, s51, 1
	v_add_lshl_u32 v191, v147, s51, 1
	v_add_lshl_u32 v192, v148, s51, 1
	v_add_lshl_u32 v193, v149, s51, 1
	v_add_lshl_u32 v194, v144, s51, 1
	v_add_lshl_u32 v195, v150, s51, 1
	v_add_lshl_u32 v196, v145, s51, 1
	v_add_lshl_u32 v197, v146, s51, 1
	v_add_lshl_u32 v198, v132, s51, 1
	v_add_lshl_u32 v199, v133, s51, 1
	v_add_lshl_u32 v200, v134, s51, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[69:72], v[180:183], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[69:72], v[184:187], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v0, v178 offset:7872
	ds_load_u8 v69, v178 offset:7744
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v201, v135, s51, 1
	v_add_lshl_u32 v202, v136, s51, 1
	v_add_lshl_u32 v203, v137, s51, 1
	v_add_lshl_u32 v204, v138, s51, 1
	v_add_lshl_u32 v205, v139, s51, 1
	v_dual_cndmask_b32 v190, 0x80000000, v190 :: v_dual_cndmask_b32 v191, 0x80000000, v191
	v_dual_cndmask_b32 v192, 0x80000000, v192 :: v_dual_cndmask_b32 v193, 0x80000000, v193
	v_dual_cndmask_b32 v194, 0x80000000, v194 :: v_dual_cndmask_b32 v195, 0x80000000, v195
	v_dual_cndmask_b32 v196, 0x80000000, v196 :: v_dual_cndmask_b32 v197, 0x80000000, v197
	v_dual_cndmask_b32 v198, 0x80000000, v198 :: v_dual_cndmask_b32 v199, 0x80000000, v199
	v_dual_cndmask_b32 v200, 0x80000000, v200 :: v_dual_cndmask_b32 v201, 0x80000000, v201
	v_dual_cndmask_b32 v202, 0x80000000, v202 :: v_dual_cndmask_b32 v203, 0x80000000, v203
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v178 offset:8128
	ds_load_u8 v70, v178 offset:8000
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_dual_cndmask_b32 v204, 0x80000000, v204 :: v_dual_cndmask_b32 v205, 0x80000000, v205
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v41, v41
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s47, s47, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v43, v43
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lt_i32 s47, 2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v45, v45
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s47, s47, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v42, v42
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s52, s47, 12
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v178 offset:7360
	ds_load_u8 v71, v178 offset:7232
	v_cvt_f32_i32_e32 v64, v64
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s51, s48, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v178 offset:7616
	ds_load_u8 v72, v178 offset:7488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	v_lshl_or_b32 v72, v69, 16, v0
	ds_load_u8 v0, v178 offset:6848
	ds_load_u8 v69, v178 offset:6720
	v_lshl_or_b32 v71, v71, 16, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v178 offset:7104
	ds_load_u8 v70, v178 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v69, 16, v0
	ds_load_u8 v0, v178 offset:6336
	ds_load_u8 v69, v178 offset:6208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v178 offset:6592
	ds_load_u8 v121, v178 offset:6464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v121, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v69, 16, v0
	v_wmma_i32_16x16x16_iu8 v[9:16], v[69:72], v[180:183], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[69:72], v[184:187], v[25:32] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v179 offset:7808
	ds_load_u8 v69, v179 offset:7680
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v178, v16
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v16, v129, s50, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v179 offset:8064
	ds_load_u8 v70, v179 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v179 offset:7296
	ds_load_u8 v71, v179 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v179 offset:7552
	ds_load_u8 v72, v179 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	v_lshl_or_b32 v72, v69, 16, v0
	ds_load_u8 v0, v179 offset:6784
	ds_load_u8 v69, v179 offset:6656
	v_lshl_or_b32 v71, v71, 16, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v179 offset:7040
	ds_load_u8 v70, v179 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v69, 16, v0
	ds_load_u8 v0, v179 offset:6272
	ds_load_u8 v69, v179 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v179 offset:6528
	ds_load_u8 v121, v179 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v121, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v69, 16, v0
	v_wmma_i32_16x16x16_iu8 v[33:40], v[69:72], v[180:183], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[69:72], v[184:187], v[49:56] neg_lo:[1,1,0]
	ds_load_u8 v0, v179 offset:7872
	ds_load_u8 v69, v179 offset:7744
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v53, v53
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v179 offset:8128
	ds_load_u8 v70, v179 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v179 offset:7360
	ds_load_u8 v71, v179 offset:7232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v179 offset:7616
	ds_load_u8 v72, v179 offset:7488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	v_lshl_or_b32 v72, v69, 16, v0
	ds_load_u8 v0, v179 offset:6848
	ds_load_u8 v69, v179 offset:6720
	v_lshl_or_b32 v71, v71, 16, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v179 offset:7104
	ds_load_u8 v70, v179 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v69, 16, v0
	ds_load_u8 v0, v179 offset:6336
	ds_load_u8 v69, v179 offset:6208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v179 offset:6592
	ds_load_u8 v121, v179 offset:6464
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v179, v15
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v15, v128, s50, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v121, v69, 0xc0c0004
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v121, v13
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v13, v126, s50, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v69, v69, 16, v0
	v_cvt_f32_i32_e32 v0, v51
	v_cvt_f32_i32_e32 v51, v55
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v55, v9
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v9, v142, s50, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[1:8], v[69:72], v[180:183], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[69:72], v[184:187], v[17:24] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v69, v58
	v_cvt_f32_i32_e32 v70, v57
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v57, v50
	v_cvt_f32_i32_e32 v181, v1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v1, v157, s27, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v180, v2
	v_cvt_f32_i32_e32 v183, v3
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v2, v156, s27, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v3, v155, s50, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v182, v4
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v4, v152, s50, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v185, v5
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v5, v153, s50, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v184, v6
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v6, v154, s50, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v187, v7
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v7, v140, s50, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v58, v49
	v_cvt_f32_i32_e32 v50, v54
	v_cvt_f32_i32_e32 v49, v56
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v54, v10
	v_cvt_f32_i32_e32 v56, v12
	v_cvt_f32_i32_e32 v71, v11
	v_cvt_f32_i32_e32 v72, v14
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v186, v8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	v_add_lshl_u32 v8, v141, s50, 1
	v_add_lshl_u32 v10, v143, s50, 1
	v_add_lshl_u32 v11, v124, s50, 1
	v_add_lshl_u32 v12, v125, s50, 1
	v_add_lshl_u32 v14, v127, s50, 1
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_cndmask_b32 v6, 0x80000000, v6
	v_dual_cndmask_b32 v7, 0x80000000, v7 :: v_dual_cndmask_b32 v8, 0x80000000, v8
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v206, v1, s[36:39], 0 offen
	buffer_load_u16 v207, v2, s[36:39], 0 offen
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s10, v73
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	v_dual_cndmask_b32 v11, 0x80000000, v11 :: v_dual_cndmask_b32 v12, 0x80000000, v12
	v_dual_cndmask_b32 v13, 0x80000000, v13 :: v_dual_cndmask_b32 v14, 0x80000000, v14
	s_clause 0x1f
	buffer_load_u16 v208, v3, s[40:43], 0 offen
	buffer_load_u16 v209, v4, s[40:43], 0 offen
	buffer_load_u16 v210, v5, s[40:43], 0 offen
	buffer_load_u16 v211, v6, s[40:43], 0 offen
	buffer_load_u16 v212, v7, s[40:43], 0 offen
	buffer_load_u16 v213, v8, s[40:43], 0 offen
	buffer_load_u16 v223, v9, s[40:43], 0 offen
	buffer_load_u16 v224, v10, s[40:43], 0 offen
	buffer_load_u16 v225, v11, s[40:43], 0 offen
	buffer_load_u16 v226, v12, s[40:43], 0 offen
	buffer_load_u16 v227, v13, s[40:43], 0 offen
	buffer_load_u16 v228, v14, s[40:43], 0 offen
	buffer_load_u16 v229, v15, s[40:43], 0 offen
	buffer_load_u16 v230, v16, s[40:43], 0 offen
	buffer_load_u16 v188, v188, s[40:43], 0 offen
	buffer_load_u16 v189, v189, s[40:43], 0 offen
	buffer_load_u16 v190, v190, s[40:43], 0 offen
	buffer_load_u16 v191, v191, s[40:43], 0 offen
	buffer_load_u16 v192, v192, s[40:43], 0 offen
	buffer_load_u16 v193, v193, s[40:43], 0 offen
	buffer_load_u16 v194, v194, s[40:43], 0 offen
	buffer_load_u16 v195, v195, s[40:43], 0 offen
	buffer_load_u16 v196, v196, s[40:43], 0 offen
	buffer_load_u16 v197, v197, s[40:43], 0 offen
	buffer_load_u16 v198, v198, s[40:43], 0 offen
	buffer_load_u16 v199, v199, s[40:43], 0 offen
	buffer_load_u16 v200, v200, s[40:43], 0 offen
	buffer_load_u16 v201, v201, s[40:43], 0 offen
	buffer_load_u16 v202, v202, s[40:43], 0 offen
	buffer_load_u16 v203, v203, s[40:43], 0 offen
	buffer_load_u16 v204, v204, s[40:43], 0 offen
	buffer_load_u16 v205, v205, s[40:43], 0 offen
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v5, s10, v175
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v9, s49, v73
	v_add_nc_u32_e32 v13, s49, v175
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[1:4], v1, s[28:31], 0 offen
	buffer_load_b128 v[5:8], v5, s[28:31], 0 offen
	buffer_load_b128 v[9:12], v9, s[28:31], 0 offen
	buffer_load_b128 v[13:16], v13, s[28:31], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s50, s52, 0
	s_mov_b32 s27, s45
	v_add_nc_u32_e32 v231, s50, v177
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s45, s50, s52
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v18, v18
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(38)
	ds_store_b128 v231, v[65:68] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v65, s45, v120
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v23, v23
	s_mov_b32 s49, s46
	s_mov_b32 s10, s44
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s46, s50, 0x8000
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_add_i32 s44, s45, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s48, s11
	s_mov_b32 s48, s51
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v65, v[1:4]
	s_waitcnt vmcnt(2)
	ds_store_b128 v65, v[5:8] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	ds_store_b128 v65, v[9:12] offset:16384
	s_waitcnt vmcnt(0)
	ds_store_b128 v65, v[13:16] offset:20480
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v1, 16, v206
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v2, 16, v208
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v3, v1, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v168, v3, v41
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v3, 16, v209
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v4, v1, v3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v169, v4, v42
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v4, 16, v210
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v1, v4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v160, v5, v43
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v5, 16, v211
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v6, v1, v5
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v161, v6, v44
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v6, 16, v212
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v1, v6
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v114, v7, v45
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v7, 16, v213
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v8, v1, v7
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v115, v8, v46 :: v_dual_lshlrev_b32 v8, 16, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v9, v1, v8
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v106, v9, v47 :: v_dual_lshlrev_b32 v9, 16, v224
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v10, v1, v9
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v107, v10, v48 :: v_dual_lshlrev_b32 v10, 16, v225
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v11, v1, v10
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v98, v11, v55 :: v_dual_lshlrev_b32 v11, 16, v226
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v12, v1, v11
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v99, v12, v54 :: v_dual_lshlrev_b32 v12, 16, v227
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v13, v1, v12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v90, v13, v71 :: v_dual_lshlrev_b32 v13, 16, v228
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v14, v1, v13
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v91, v14, v56 :: v_dual_lshlrev_b32 v14, 16, v229
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v15, v1, v14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v82, v15, v121 :: v_dual_lshlrev_b32 v15, 16, v230
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v16, v1, v15
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v83, v16, v72
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v16, 16, v188
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v41, v1, v16
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v74, v41, v179 :: v_dual_lshlrev_b32 v41, 16, v189
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v42, v1, v41
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v75, v42, v178 :: v_dual_lshlrev_b32 v42, 16, v207
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v171, v2, v70
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v172, v2, v69
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v164, v2, v59
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v165, v2, v60
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v6
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v116, v2, v61
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v117, v2, v62
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v8
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v108, v2, v63
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v109, v2, v64
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v10
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v100, v2, v25
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v101, v2, v26
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v92, v2, v27
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v93, v2, v28
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v84, v2, v29
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v85, v2, v30
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v16
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v76, v2, v31
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v77, v2, v32 :: v_dual_lshlrev_b32 v2, 16, v190
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v3, v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v158, v3, v33 :: v_dual_lshlrev_b32 v3, 16, v191
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v4, v1, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v170, v4, v34
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v4, 16, v192
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v5, v1, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v162, v5, v35 :: v_dual_lshlrev_b32 v5, 16, v193
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v6, v1, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v163, v6, v36 :: v_dual_lshlrev_b32 v6, 16, v194
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v7, v1, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v118, v7, v37 :: v_dual_lshlrev_b32 v7, 16, v195
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v8, v1, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v119, v8, v38 :: v_dual_lshlrev_b32 v8, 16, v196
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v9, v1, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v110, v9, v39 :: v_dual_lshlrev_b32 v9, 16, v197
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v10, v1, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v111, v10, v40 :: v_dual_lshlrev_b32 v10, 16, v198
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v11, v1, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v102, v11, v181 :: v_dual_lshlrev_b32 v11, 16, v199
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v12, v1, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v103, v12, v180
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v12, 16, v200
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v13, v1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v94, v13, v183 :: v_dual_lshlrev_b32 v13, 16, v201
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v14, v1, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v95, v14, v182
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v14, 16, v202
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v15, v1, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v86, v15, v185 :: v_dual_lshlrev_b32 v15, 16, v203
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v16, v1, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v87, v16, v184
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v16, 16, v204
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v25, v1, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v78, v25, v187 :: v_dual_lshlrev_b32 v25, 16, v205
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v1, v1, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v79, v1, v186
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v1, v42, v2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v173, v1, v58
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v1, v42, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v174, v1, v57 :: v_dual_mul_f32 v1, v42, v4
	v_fmac_f32_e32 v166, v1, v0
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v42, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v167, v0, v52 :: v_dual_mul_f32 v0, v42, v6
	v_dual_fmac_f32 v123, v0, v53 :: v_dual_mul_f32 v0, v42, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v159, v0, v50 :: v_dual_mul_f32 v0, v42, v8
	v_fmac_f32_e32 v112, v0, v51
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v42, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v113, v0, v49 :: v_dual_mul_f32 v0, v42, v10
	v_fmac_f32_e32 v104, v0, v17
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v42, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v105, v0, v18 :: v_dual_mul_f32 v0, v42, v12
	v_fmac_f32_e32 v96, v0, v19
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v42, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v97, v0, v20 :: v_dual_mul_f32 v0, v42, v14
	v_fmac_f32_e32 v88, v0, v21
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v42, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v89, v0, v22 :: v_dual_mul_f32 v0, v42, v16
	v_fmac_f32_e32 v80, v0, v23
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v42, v25
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v81, v0, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v49, v176
	s_branch .LBB0_8
.LBB0_7:
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v21, off offset:444
	scratch_store_b32 off, v20, off offset:416
	s_add_i32 s49, 0, 0x8000
	s_add_i32 s46, 0, 0x9000
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v158, 0
	s_add_i32 s45, 0, 0x2000
	s_add_i32 s10, 0, 0x4000
	s_add_i32 s44, 0, 0x6000
.LBB0_8:                                ; %._crit_edge
	v_dual_mov_b32 v39, 0 :: v_dual_add_nc_u32 v0, s49, v219
	v_dual_mov_b32 v120, v215 :: v_dual_add_nc_u32 v1, s49, v220
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[29:32], v0
	ds_load_b128 v[25:28], v0 offset:2048
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v0, s49, v221
	v_dual_mov_b32 v37, 0 :: v_dual_add_nc_u32 v2, s49, v222
	ds_load_b128 v[21:24], v1
	ds_load_b128 v[17:20], v1 offset:2048
	ds_load_b128 v[13:16], v0
	ds_load_b128 v[9:12], v0 offset:2048
	ds_load_b128 v[5:8], v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[1:4], v2 offset:2048
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v35, 0
	v_cndmask_b32_e64 v33, 0, 1, s2
	v_mov_b32_e32 v44, 0
	v_dual_mov_b32 v122, v214 :: v_dual_mov_b32 v43, 0
	scratch_store_b32 off, v0, off offset:324 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_cmp_ne_u32_e64 s0, 1, v33
	v_mov_b32_e32 v33, 0
	v_dual_mov_b32 v223, v242 :: v_dual_mov_b32 v210, 0
	v_mov_b32_e32 v197, v246
	scratch_store_b32 off, v0, off offset:328 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v225, v240
	scratch_store_b32 off, v44, off offset:316 ; 4-byte Folded Spill
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v203, v238
	scratch_store_b32 off, v0, off offset:300 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v201, v252
	v_dual_mov_b32 v227, v239 :: v_dual_mov_b32 v206, v249
	scratch_store_b32 off, v0, off offset:312 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v199, v232
	v_mov_b32_e32 v226, v253
	v_mov_b32_e32 v200, v248
	v_mov_b32_e32 v202, v254
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:304
	scratch_store_b32 off, v44, off offset:320
	v_mov_b32_e32 v0, 0
	v_mov_b32_e32 v198, v236
	s_clause 0x9                            ; 40-byte Folded Reload
	scratch_load_b32 v214, off, off offset:400
	scratch_load_b32 v215, off, off offset:404
	scratch_load_b32 v236, off, off offset:364
	scratch_load_b32 v246, off, off offset:368
	scratch_load_b32 v249, off, off offset:372
	scratch_load_b32 v252, off, off offset:376
	scratch_load_b32 v253, off, off offset:380
	scratch_load_b32 v248, off, off offset:384
	scratch_load_b32 v254, off, off offset:388
	scratch_load_b32 v232, off, off offset:392
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v191, v243
	scratch_store_b32 off, v0, off offset:308 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v205, v244
	v_mov_b32_e32 v231, v251
	v_mov_b32_e32 v229, v245
	scratch_store_b32 off, v0, off offset:332 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_mov_b32_e32 v228, v234
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v207, off, off offset:416
	scratch_load_b32 v244, off, off offset:420
	scratch_load_b32 v238, off, off offset:424
	scratch_load_b32 v245, off, off offset:428
	scratch_load_b32 v243, off, off offset:432
	scratch_load_b32 v239, off, off offset:436
	scratch_load_b32 v234, off, off offset:440
	scratch_load_b32 v208, off, off offset:444
	v_mov_b32_e32 v192, v241
	v_mov_b32_e32 v224, v237
	scratch_store_b32 off, v0, off offset:336 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v240, off, off offset:352
	scratch_load_b32 v237, off, off offset:348
	scratch_load_b32 v241, off, off offset:356
	scratch_load_b32 v242, off, off offset:360
	v_mov_b32_e32 v204, v250
	scratch_load_b32 v250, off, off offset:396 ; 4-byte Folded Reload
	v_mov_b32_e32 v230, v247
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v251, off, off offset:408
	scratch_load_b32 v247, off, off offset:412
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v209, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:164 ; 4-byte Folded Reload
	s_mov_b32 s12, 0
	s_waitcnt vmcnt(13)
	v_add_nc_u32_e32 v40, s27, v238
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v33, s27, v253
	v_add_nc_u32_e32 v34, s27, v248
	v_add_nc_u32_e32 v36, s27, v252
	v_add_nc_u32_e32 v35, s27, v246
	v_add_nc_u32_e32 v37, s27, v217
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v38, s27, v234
	v_add_nc_u32_e32 v39, s27, v207
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v33
	ds_load_u8 v34, v34
	ds_load_u8 v36, v36
	ds_load_u8 v35, v35
	ds_load_u8 v40, v40
	ds_load_u8 v37, v37
	ds_load_u8 v38, v38
	ds_load_u8 v39, v39
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s27, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v33, s27, v254
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v34, s27, v249
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v35, s27, v122
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v35, v35
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	v_lshl_or_b32 v36, v33, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v0, s27, v235
	v_add_nc_u32_e32 v33, s27, v120
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v35, v35, 16, v34
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v34, s27, v255
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v33, v33
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v33, s27, v236
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v33, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v33, off, off offset:160 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v0, s27, v216
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s27, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v33, s27, v233
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v37, v33, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v37, s27, v243
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v33, v33, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v0, s27, v239
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v37, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v37, s27, v208
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v38, s27, v244
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v48, v37, 16, v0
	ds_load_u8 v38, v38
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v0, s27, v251
	v_add_nc_u32_e32 v37, s27, v230
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v39, s27, v245
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v37, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v37, s27, v228
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v40, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v47, v39, 16, v38
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v38, s27, v247
	scratch_load_b32 v39, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v38, s27, v250
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v46, v37, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v0, s27, v231
	v_add_nc_u32_e32 v37, s27, v232
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	ds_load_u8 v0, v0
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v37, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v37, s27, v229
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v45, v37, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:224
	scratch_load_b32 v37, off, off offset:220
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v40, s27, v40
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v40, v40
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v39, s27, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v38, s27, v38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s27, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s27, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	ds_load_u8 v0, v0
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v37, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v37, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s27, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v61, v37, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v38, s27, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:216 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s27, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v40, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v60, v39, 16, v38
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:196
	scratch_load_b32 v37, off, off offset:188
	v_add_nc_u32_e32 v0, s27, v0
	scratch_load_b32 v39, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v40, s27, v40
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v38, s27, v38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v37, s27, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v40, v40
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s27, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	ds_load_u8 v37, v37
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v37, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v37, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s27, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v59, v37, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:176
	scratch_load_b32 v37, off, off offset:172
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v38, s27, v38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s27, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s27, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	ds_load_u8 v0, v0
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v37, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v37, off, off offset:184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s27, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v58, v37, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:288
	scratch_load_b32 v37, off, off offset:284
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v38, s27, v38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s27, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s27, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	ds_load_u8 v0, v0
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v37, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v37, off, off offset:296 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s27, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v65, v37, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:256 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v38, s27, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:280 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s27, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v39, 16, v38
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:260
	scratch_load_b32 v37, off, off offset:252
	v_add_nc_u32_e32 v0, s27, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v38, s27, v38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s27, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v37, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v37, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s27, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v63, v37, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:240
	scratch_load_b32 v37, off, off offset:236
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v38, s27, v38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s27, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s27, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	ds_load_u8 v0, v0
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v37, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v37, off, off offset:248 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s27, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v62, v37, 16, v0
	v_dual_mov_b32 v44, s19 :: v_dual_mov_b32 v43, s18
	v_dual_mov_b32 v42, s17 :: v_dual_mov_b32 v41, s16
	v_dual_mov_b32 v40, s15 :: v_dual_mov_b32 v39, s14
	v_dual_mov_b32 v38, s13 :: v_dual_mov_b32 v37, s12
	v_wmma_i32_16x16x16_iu8 v[50:57], v[33:36], v[29:32], v[37:44] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[50:57], v[45:48], v[21:24], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[50:57], v[58:61], v[13:16], v[50:57] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[50:57], v[62:65], v[5:8], v[50:57] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v0, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v194, v50
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v50, s27, v227
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v195, v51
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v51, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v0, off offset:324 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v55
	ds_load_u8 v50, v50
	v_cvt_f32_i32_e32 v121, v52
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v52, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v193, v53
	scratch_store_b32 off, v0, off offset:328 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v56
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v53, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v0, off offset:300 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v57
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_store_b32 off, v0, off offset:312 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s27, v237
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v50, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v51, s27, v51
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s27, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v51, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v69, v50, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:20
	scratch_load_b32 v50, off, off offset:12
	v_add_nc_u32_e32 v52, s27, v52
	v_add_nc_u32_e32 v53, s27, v53
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v52, v52
	ds_load_u8 v53, v53
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s27, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s27, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v50, off, off          ; 4-byte Folded Reload
	v_add_nc_u32_e32 v51, s27, v51
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s27, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v52, s27, v203
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v52, v52
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v53, s27, v226
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v68, v52, 16, v51
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v51, off, off offset:24
	scratch_load_b32 v52, off, off offset:148
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v53, v53
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v51, s27, v51
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v52, s27, v52
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	ds_load_u8 v52, v52
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v51, s27, v206
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v67, v50, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v0, s27, v225
	v_add_nc_u32_e32 v50, s27, v49
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	ds_load_u8 v0, v0
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v50, off, off offset:4 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s27, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v51, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v66, v50, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v0, s27, v242
	v_add_nc_u32_e32 v50, s27, v241
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v50, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v51, s27, v51
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s27, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v51, s27, v192
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v73, v50, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:132
	scratch_load_b32 v50, off, off offset:124
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s27, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s27, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v52, s27, v240
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v52, v52
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v50, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v53, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v72, v52, 16, v51
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v51, off, off offset:144
	scratch_load_b32 v52, off, off offset:80
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v50, s27, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v53, s27, v53
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v51, s27, v51
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v52, s27, v52
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v53, v53
	ds_load_u8 v51, v51
	ds_load_u8 v52, v52
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v51, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v71, v50, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v0, s27, v224
	v_add_nc_u32_e32 v50, s27, v223
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v50, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v51, s27, v51
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s27, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v51, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v70, v50, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:100
	scratch_load_b32 v50, off, off offset:96
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v51, s27, v51
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s27, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s27, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	ds_load_u8 v0, v0
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v50, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s27, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v51, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v178, v50, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v51, s27, v51
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v52, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v52, s27, v52
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v52, v52
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v53, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v177, v52, 16, v51
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v51, off, off offset:72
	scratch_load_b32 v50, off, off offset:64
	v_add_nc_u32_e32 v0, s27, v0
	v_add_nc_u32_e32 v52, s27, v204
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v52, v52
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v53, s27, v53
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v51, s27, v51
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s27, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v53, v53
	ds_load_u8 v51, v51
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v50, off, off offset:76 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s27, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v51, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v176, v50, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:52
	scratch_load_b32 v50, off, off offset:48
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v51, s27, v51
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s27, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s27, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	ds_load_u8 v0, v0
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v50, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s27, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v51, s27, v214
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v175, v50, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v0, s27, v198
	v_add_nc_u32_e32 v50, s27, v199
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	ds_load_u8 v0, v0
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v50, s27, v215
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v51, s27, v202
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v182, v50, 16, v0
	ds_load_u8 v51, v51
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v0, s27, v200
	v_add_nc_u32_e32 v50, s27, v201
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v52, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v50, s27, v205
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v52, s27, v52
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v52, v52
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v181, v52, 16, v51
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v51, s27, v191
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v51, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v180, v50, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:116
	scratch_load_b32 v50, off, off offset:112
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v51, s27, v51
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s27, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s27, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	ds_load_u8 v0, v0
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v50, s27, v197
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v179, v50, 16, v0
	v_wmma_i32_16x16x16_iu8 v[50:57], v[66:69], v[25:28], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[50:57], v[70:73], v[17:20], v[50:57] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[50:57], v[175:178], v[9:12], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[50:57], v[179:182], v[1:4], v[50:57] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v0, v50
	v_cvt_f32_i32_e32 v213, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v212, v53
	v_cvt_f32_i32_e32 v210, v54
	v_cvt_f32_i32_e32 v211, v55
	scratch_store_b32 off, v0, off offset:304 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v51
	v_cvt_f32_i32_e32 v196, v56
	v_cvt_f32_i32_e32 v209, v57
	v_wmma_i32_16x16x16_iu8 v[50:57], v[66:69], v[29:32], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[37:44], v[33:36], v[25:28], v[37:44] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[50:57], v[70:73], v[21:24], v[50:57] neg_lo:[1,1,0]
	v_mov_b32_e32 v72, 0
	v_wmma_i32_16x16x16_iu8 v[37:44], v[45:48], v[17:20], v[37:44] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[50:57], v[175:178], v[13:16], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[37:44], v[58:61], v[9:12], v[37:44] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[50:57], v[179:182], v[5:8], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[37:44], v[62:65], v[1:4], v[37:44] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v36, v41
	v_cvt_f32_i32_e32 v34, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v35, v38
	v_cvt_f32_i32_e32 v33, v40
	v_cvt_f32_i32_e32 v40, v52
	scratch_store_b32 off, v36, off offset:332 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v36, v42
	v_cvt_f32_i32_e32 v41, v53
	v_cvt_f32_i32_e32 v38, v54
	v_cvt_f32_i32_e32 v37, v57
	v_cvt_f32_i32_e32 v42, v50
	scratch_store_b32 off, v36, off offset:336 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v36, v43
	scratch_store_b32 off, v0, off offset:308 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v39
	v_cvt_f32_i32_e32 v39, v55
	v_cvt_f32_i32_e32 v43, v51
	scratch_store_b32 off, v36, off offset:316 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v36, v44
	scratch_store_b32 off, v36, off offset:320 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v36, v56
.LBB0_10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0xc                            ; 52-byte Folded Spill
	scratch_store_b32 off, v43, off offset:744
	scratch_store_b32 off, v42, off offset:740
	scratch_store_b32 off, v41, off offset:728
	scratch_store_b32 off, v40, off offset:724
	scratch_store_b32 off, v210, off offset:588
	scratch_store_b32 off, v39, off offset:576
	scratch_store_b32 off, v38, off offset:572
	scratch_store_b32 off, v37, off offset:536
	scratch_store_b32 off, v36, off offset:532
	scratch_store_b32 off, v35, off offset:512
	scratch_store_b32 off, v34, off offset:508
	scratch_store_b32 off, v33, off offset:472
	scratch_store_b32 off, v0, off offset:468
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v0, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v34, 0
	v_mov_b32_e32 v33, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 28 is_stmt 0                ; generate_amdgcn.py:0:28
	s_mov_b32 s12, 0
	.loc	1 358 31 is_stmt 1              ; generate_amdgcn.py:358:31
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v36, off, off offset:16
	scratch_load_b32 v34, off, off offset:40
	scratch_load_b32 v35, off, off offset:28
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v0, s10, v237
	v_add_nc_u32_e32 v33, s10, v227
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v33, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v34, s10, v34
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v34, v34
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s10, v33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v34, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v69, v33, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:20
	scratch_load_b32 v33, off, off offset:12
	v_add_nc_u32_e32 v35, s10, v35
	v_add_nc_u32_e32 v36, s10, v36
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v35, v35
	ds_load_u8 v36, v36
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s10, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s10, v33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v33, off, off          ; 4-byte Folded Reload
	v_add_nc_u32_e32 v34, s10, v34
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v34, v34
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s10, v33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v35, s10, v203
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v35, v35
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v36, s10, v252
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v68, v35, 16, v34
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v34, off, off offset:24 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v35, s10, v246
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v36, v36
	ds_load_u8 v35, v35
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v34, s10, v34
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v34, s10, v206
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v67, v33, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v0, s10, v225
	v_add_nc_u32_e32 v33, s10, v49
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v34, v34
	ds_load_u8 v0, v0
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v33, off, off offset:4 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s10, v33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v34, s10, v248
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v66, v33, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:164 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v33, s10, v253
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v34, v34
	ds_load_u8 v33, v33
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s10, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v33, s10, v254
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v34, s10, v249
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v73, v33, 16, v0
	ds_load_u8 v34, v34
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v0, s10, v235
	v_add_nc_u32_e32 v33, s10, v120
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v35, s10, v122
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v35, v35
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v33, s10, v236
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v35, 16, v34
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v34, s10, v255
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v34, s10, v217
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v71, v33, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v33, off, off offset:160 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v0, s10, v216
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v34, v34
	ds_load_u8 v0, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s10, v33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v33, s10, v233
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v33, 16, v0
	v_dual_mov_b32 v40, s19 :: v_dual_mov_b32 v39, s18
	v_dual_mov_b32 v38, s17 :: v_dual_mov_b32 v37, s16
	v_dual_mov_b32 v36, s15 :: v_dual_mov_b32 v35, s14
	v_dual_mov_b32 v34, s13 :: v_dual_mov_b32 v33, s12
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v0, s10, v242
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[41:48], v[66:69], v[29:32], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[50:57], v[70:73], v[29:32], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[58:65], v[66:69], v[25:28], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[70:73], v[25:28], v[33:40] neg_lo:[1,1,0]
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v25, s10, v241
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v28, s10, v226
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v27, off, off offset:148
	scratch_load_b32 v29, off, off offset:136
	scratch_load_b32 v26, off, off offset:32
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v25, v25
	ds_load_u8 v28, v28
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v32, s10, v238
	v_add_nc_u32_e32 v66, s10, v250
	v_add_nc_u32_e32 v30, s10, v234
	v_add_nc_u32_e32 v31, s10, v207
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v32, v32
	ds_load_u8 v66, v66
	ds_load_u8 v30, v30
	ds_load_u8 v31, v31
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v0, v25, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v25, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v27, s10, v27
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v29, s10, v29
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v26, s10, v26
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v27, v27
	ds_load_u8 v29, v29
	ds_load_u8 v26, v26
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s10, v25
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v25, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v26, s10, v192
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v26, v26
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v27, s10, v240
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v27, v27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	v_lshl_or_b32 v28, v25, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:132
	scratch_load_b32 v25, off, off offset:124
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v27, v27, 16, v26
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v26, off, off offset:144 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s10, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v25, s10, v25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v26, s10, v26
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v25, v25
	ds_load_u8 v26, v26
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v25, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v25, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s10, v25
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v25, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v25, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v0, s10, v224
	v_add_nc_u32_e32 v25, s10, v223
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v25, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v25, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v25, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s10, v25
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v25, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v29, v25, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v29, s10, v243
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v25, v25, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v0, s10, v239
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v29, v29
	v_wmma_i32_16x16x16_iu8 v[58:65], v[25:28], v[17:20], v[58:65] neg_lo:[1,1,0]
	ds_load_u8 v0, v0
	v_wmma_i32_16x16x16_iu8 v[41:48], v[25:28], v[21:24], v[41:48] neg_lo:[1,1,0]
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v25, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v29, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v29, s10, v208
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v29, v29
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v30, s10, v244
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v30, v30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v31, s10, v245
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v31, v31
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	v_lshl_or_b32 v32, v29, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v0, s10, v251
	v_add_nc_u32_e32 v29, s10, v230
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v31, v31, 16, v30
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v30, s10, v247
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v29, v29
	ds_load_u8 v30, v30
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v29, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v29, s10, v228
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v29, v29
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v29, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v0, s10, v231
	v_add_nc_u32_e32 v29, s10, v232
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v29, v29
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v29, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v29, s10, v229
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v29, v29
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v66, v29, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v29, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[33:40], v[29:32], v[17:20], v[33:40] neg_lo:[1,1,0]
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v18, off, off offset:104
	scratch_load_b32 v17, off, off offset:96
	scratch_load_b32 v20, off, off offset:88
	scratch_load_b32 v19, off, off offset:80
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[50:57], v[29:32], v[21:24], v[50:57] neg_lo:[1,1,0]
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v24, off, off offset:212
	scratch_load_b32 v22, off, off offset:228
	scratch_load_b32 v21, off, off offset:56
	scratch_load_b32 v23, off, off offset:204
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v25, s10, v25
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v25, v25
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v0, s10, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v17, s10, v17
	v_add_nc_u32_e32 v18, s10, v18
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v19, s10, v19
	v_add_nc_u32_e32 v20, s10, v20
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v24, s10, v24
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	ds_load_u8 v19, v19
	ds_load_u8 v20, v20
	ds_load_u8 v24, v24
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v22, s10, v22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v21, s10, v21
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v23, s10, v23
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v22, v22
	ds_load_u8 v21, v21
	ds_load_u8 v23, v23
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v17, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s10, v17
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v18, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v18, s10, v18
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v19, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v19, s10, v19
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	v_lshl_or_b32 v20, v17, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v19, v19, 16, v18
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:72
	scratch_load_b32 v17, off, off offset:64
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s10, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v18, s10, v18
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s10, v17
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v18, v18
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v17, off, off offset:76 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s10, v17
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v17, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:52
	scratch_load_b32 v17, off, off offset:48
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s10, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s10, v17
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v17, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s10, v17
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v21, v17, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v21, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v17, v17, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[58:65], v[17:20], v[9:12], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[17:20], v[13:16], v[41:48] neg_lo:[1,1,0]
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v17, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v21, s10, v21
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s10, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	ds_load_u8 v0, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s10, v17
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v21, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v21, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s10, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v22, off, off offset:208 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v22, s10, v22
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v23, off, off offset:216 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v23, s10, v23
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v23, v23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	v_lshl_or_b32 v24, v21, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v23, v23, 16, v22
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v22, off, off offset:196
	scratch_load_b32 v21, off, off offset:188
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s10, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v22, s10, v22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s10, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v22, v22
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v21, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v21, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s10, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v22, v21, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:176
	scratch_load_b32 v21, off, off offset:172
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s10, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s10, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v21, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v21, off, off offset:184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s10, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v25, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v21, v21, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v0, s10, v198
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[33:40], v[21:24], v[9:12], v[33:40] neg_lo:[1,1,0]
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v9, s10, v199
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v10, s10, v214
	v_add_nc_u32_e32 v11, s10, v204
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[50:57], v[21:24], v[13:16], v[50:57] neg_lo:[1,1,0]
	ds_load_u8 v9, v9
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v13, off, off offset:292
	scratch_load_b32 v14, off, off offset:268
	scratch_load_b32 v15, off, off offset:276
	scratch_load_b32 v12, off, off offset:152
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v10, v10
	ds_load_u8 v11, v11
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v9, s10, v215
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v10, s10, v202
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v11, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v13, s10, v13
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v14, s10, v14
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v15, s10, v15
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v12, s10, v12
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v13, v13
	ds_load_u8 v14, v14
	ds_load_u8 v15, v15
	ds_load_u8 v12, v12
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v11, s10, v11
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v11, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	v_lshl_or_b32 v12, v9, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v0, s10, v200
	v_add_nc_u32_e32 v9, s10, v201
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v11, v11, 16, v10
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v10, s10, v191
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v9, v9
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v9, s10, v205
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:288
	scratch_load_b32 v9, off, off offset:284
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s10, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s10, v9
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v9, off, off offset:296 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s10, v9
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v13, v9, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v13, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v16, v9, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:256 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v13, s10, v13
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v13, v13
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v14, off, off offset:280 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v14, s10, v14
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v15, v14, 16, v13
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v13, off, off offset:260
	scratch_load_b32 v9, off, off offset:252
	v_add_nc_u32_e32 v0, s10, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v13, s10, v13
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s10, v9
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v13, v13
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v9, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s10, v9
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v13, v9, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v13, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v14, v9, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:240
	scratch_load_b32 v9, off, off offset:236
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v13, s10, v13
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s10, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s10, v9
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v13, v13
	ds_load_u8 v0, v0
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v9, off, off offset:248 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s10, v9
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v13, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v13, v9, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:116
	scratch_load_b32 v9, off, off offset:112
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[50:57], v[13:16], v[5:8], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[13:16], v[1:4], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v67, v50
	v_cvt_f32_i32_e32 v68, v51
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v66, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v51, v54
	v_cvt_f32_i32_e32 v52, v55
	v_cvt_f32_i32_e32 v50, v57
	v_cvt_f32_i32_e32 v57, v34
	v_cvt_f32_i32_e32 v54, v35
	v_cvt_f32_i32_e32 v55, v36
	v_cvt_f32_i32_e32 v35, v37
	v_cvt_f32_i32_e32 v36, v38
	v_cvt_f32_i32_e32 v34, v40
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s10, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s10, v9
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v9, s10, v197
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v17, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v9, v9, 16, v0
	v_cvt_f32_i32_e32 v0, v56
	v_cvt_f32_i32_e32 v56, v33
	v_cvt_f32_i32_e32 v33, v39
	v_wmma_i32_16x16x16_iu8 v[41:48], v[9:12], v[5:8], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[58:65], v[9:12], v[1:4], v[58:65] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v73, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v71, v59
	v_cvt_f32_i32_e32 v70, v60
	v_cvt_f32_i32_e32 v69, v61
	v_cvt_f32_i32_e32 v61, v62
	v_cvt_f32_i32_e32 v60, v63
	v_cvt_f32_i32_e32 v58, v64
	v_cvt_f32_i32_e32 v59, v65
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v39, v45
	v_cvt_f32_i32_e32 v40, v46
	v_cvt_f32_i32_e32 v37, v47
	v_cvt_f32_i32_e32 v38, v48
	v_cvt_f32_i32_e32 v72, v41
	v_cvt_f32_i32_e32 v41, v42
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s26, 31
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v73, off offset:788
	scratch_store_b32 off, v71, off offset:780
	scratch_store_b32 off, v41, off offset:776
	scratch_store_b32 off, v70, off offset:772
	scratch_store_b32 off, v44, off offset:768
	scratch_store_b32 off, v43, off offset:764
	scratch_store_b32 off, v61, off offset:760
	scratch_store_b32 off, v60, off offset:756
	scratch_store_b32 off, v213, off offset:736
	scratch_store_b32 off, v212, off offset:732
	scratch_store_b32 off, v40, off offset:692
	scratch_store_b32 off, v39, off offset:688
	scratch_store_b32 off, v59, off offset:672
	scratch_store_b32 off, v58, off offset:668
	scratch_store_b32 off, v38, off offset:652
	scratch_store_b32 off, v37, off offset:644
	scratch_store_b32 off, v57, off offset:624
	scratch_store_b32 off, v56, off offset:616
	scratch_store_b32 off, v68, off offset:608
	scratch_store_b32 off, v67, off offset:604
	scratch_store_b32 off, v211, off offset:592
	scratch_store_b32 off, v55, off offset:560
	scratch_store_b32 off, v54, off offset:556
	scratch_store_b32 off, v53, off offset:548
	scratch_store_b32 off, v66, off offset:544
	scratch_store_b32 off, v209, off offset:540
	scratch_store_b32 off, v36, off offset:500
	scratch_store_b32 off, v35, off offset:492
	scratch_store_b32 off, v52, off offset:488
	scratch_store_b32 off, v51, off offset:484
	scratch_store_b32 off, v34, off offset:464
	scratch_store_b32 off, v33, off offset:460
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v50, off offset:456
	scratch_store_b32 off, v0, off offset:452
	scratch_store_b32 off, v121, off offset:448
	s_lshr_b32 s0, s0, 24
	s_mov_b32 s11, 0x31027000
	s_add_i32 s0, s26, s0
	s_mov_b32 s10, 0x7ffffffe
	s_ashr_i32 s0, s0, 8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s26, s10
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v0, v157, s0, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s4, -1, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s4
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_mov_b32 v187, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s27, s11
	v_mov_b32_e32 v210, 0
	v_mov_b32_e32 v188, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	v_mov_b32_e32 v180, 0
	v_mov_b32_e32 v186, 0
	v_mov_b32_e32 v176, 0
	v_mov_b32_e32 v70, 0
	s_waitcnt lgkmcnt(5)
	v_mov_b32_e32 v22, 0
	v_mov_b32_e32 v24, 0
	v_mov_b32_e32 v182, 0
	v_mov_b32_e32 v178, 0
	v_mov_b32_e32 v184, 0
	s_waitcnt lgkmcnt(1)
	v_mov_b32_e32 v6, 0
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v4, 0
	s_mov_b32 s12, 0
	v_mov_b32_e32 v179, 0
	v_mov_b32_e32 v185, 0
	v_mov_b32_e32 v175, 0
	v_mov_b32_e32 v71, 0
	v_mov_b32_e32 v21, 0
	v_mov_b32_e32 v23, 0
	v_mov_b32_e32 v181, 0
	v_mov_b32_e32 v177, 0
	v_mov_b32_e32 v183, 0
	v_mov_b32_e32 v73, 0
	v_mov_b32_e32 v121, 0
	v_mov_b32_e32 v5, 0
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:784 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v156, s0, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s0, s0, s34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:808 ; 4-byte Folded Spill
	.loc	1 366 22 is_stmt 0              ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v0, v155, s0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:800 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v152, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:804 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v153, s0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:792 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v154, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:796 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v140, s0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:720 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v141, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:716 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v142, s0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:680 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v143, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:676 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v124, s0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:632 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v125, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:628 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v126, s0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:584 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v127, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:580 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v128, s0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:520 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v129, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:516 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v130, s0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:476 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v131, s0, 1
	.loc	1 370 39 is_stmt 1              ; generate_amdgcn.py:370:39
	s_add_i32 s0, s0, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[24:27], 0 offen
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:480 ; 4-byte Folded Spill
	.loc	1 370 31 is_stmt 0              ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v0, s0, v151, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:832 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v147, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:828 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v148, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:816 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v149, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:824 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v144, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:812 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v150, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:820 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v145, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:684 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v146, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:704 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v132, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:648 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v133, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:664 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v134, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:612 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v135, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:620 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v136, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:524 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v137, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:528 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v138, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:496 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v139, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	buffer_load_u16 v0, v0, s[24:27], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:504 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s46, v219
	ds_load_b128 v[45:48], v0
	ds_load_b128 v[33:36], v0 offset:2048
	v_add_nc_u32_e32 v0, s46, v220
	ds_load_b128 v[41:44], v0
	ds_load_b128 v[29:32], v0 offset:2048
	v_add_nc_u32_e32 v0, s46, v221
	ds_load_b128 v[37:40], v0
	ds_load_b128 v[0:3], v0 offset:2048
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v220, 0
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[0:3], off offset:852 ; 16-byte Folded Spill
	v_add_nc_u32_e32 v0, s46, v222
	ds_load_b128 v[25:28], v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[0:3], v0 offset:2048
	v_mov_b32_e32 v222, 0
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[0:3], off offset:836 ; 16-byte Folded Spill
	v_cndmask_b32_e64 v0, 0, 1, s3
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_mov_b32_e32 v3, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s0, 1, v0
	v_mov_b32_e32 v0, 0
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:164 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v1, s45, v253
	v_add_nc_u32_e32 v2, s45, v248
	v_add_nc_u32_e32 v4, s45, v252
	v_add_nc_u32_e32 v3, s45, v246
	v_add_nc_u32_e32 v8, s45, v238
	v_add_nc_u32_e32 v5, s45, v217
	v_add_nc_u32_e32 v6, s45, v234
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	ds_load_u8 v2, v2
	ds_load_u8 v4, v4
	ds_load_u8 v3, v3
	ds_load_u8 v8, v8
	v_dual_mov_b32 v212, v69 :: v_dual_mov_b32 v19, v195
	v_mov_b32_e32 v20, v196
	ds_load_u8 v5, v5
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v17, off, off offset:44 ; 4-byte Folded Reload
	v_dual_mov_b32 v18, v194 :: v_dual_add_nc_u32 v7, s45, v207
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v6, v6
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[187:190], off, off offset:852
	scratch_load_b128 v[183:186], off, off offset:836
	ds_load_u8 v7, v7
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v0, s45, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v1, s45, v254
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v2, s45, v249
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v3, s45, v122
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	v_lshl_or_b32 v4, v1, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v0, s45, v235
	v_add_nc_u32_e32 v1, s45, v120
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v3, v3, 16, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v2, s45, v255
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v1, v1
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v1, s45, v236
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v2, v1, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v1, off, off offset:160 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v0, s45, v216
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s45, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v1, s45, v233
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v5, v1, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v5, s45, v243
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v1, v1, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v0, s45, v239
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v5
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v5, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v5, s45, v208
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v6, s45, v244
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v16, v5, 16, v0
	ds_load_u8 v6, v6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v0, s45, v251
	v_add_nc_u32_e32 v5, s45, v230
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v5, v5
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v7, s45, v245
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v7, v7
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v5, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v5, s45, v228
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v5
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v8, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v15, v7, 16, v6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v6, s45, v247
	scratch_load_b32 v7, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v6, v6
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v6, s45, v250
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v14, v5, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v0, s45, v231
	v_add_nc_u32_e32 v5, s45, v232
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v6, v6
	ds_load_u8 v0, v0
	ds_load_u8 v5, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v5, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v5, s45, v229
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v6, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v13, v5, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:224
	scratch_load_b32 v5, off, off offset:220
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v8, s45, v8
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v8, v8
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v7, s45, v7
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v7, v7
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v6, s45, v6
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s45, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s45, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v6, v6
	ds_load_u8 v0, v0
	ds_load_u8 v5, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v5, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v5, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s45, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v6, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v61, v5, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v6, s45, v6
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v6, v6
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v7, off, off offset:216 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v7, s45, v7
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v7, v7
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v8, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v60, v7, 16, v6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v6, off, off offset:196
	scratch_load_b32 v5, off, off offset:188
	v_add_nc_u32_e32 v0, s45, v0
	scratch_load_b32 v7, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v8, s45, v8
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v6, s45, v6
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v5, s45, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v8, v8
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v7, s45, v7
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v6, v6
	ds_load_u8 v5, v5
	ds_load_u8 v7, v7
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v5, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v5, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s45, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v6, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v59, v5, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:176
	scratch_load_b32 v5, off, off offset:172
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v6, s45, v6
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s45, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s45, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v6, v6
	ds_load_u8 v0, v0
	ds_load_u8 v5, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v5, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v5, off, off offset:184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s45, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v6, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v58, v5, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:288
	scratch_load_b32 v5, off, off offset:284
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v6, s45, v6
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s45, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s45, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v6, v6
	ds_load_u8 v0, v0
	ds_load_u8 v5, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v5, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v5, off, off offset:296 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s45, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v6, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v65, v5, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:256 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v6, s45, v6
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v6, v6
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v7, off, off offset:280 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v7, s45, v7
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v7, v7
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v7, 16, v6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v6, off, off offset:260
	scratch_load_b32 v5, off, off offset:252
	v_add_nc_u32_e32 v0, s45, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v6, s45, v6
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s45, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v6, v6
	ds_load_u8 v5, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v5, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v5, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s45, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v6, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v63, v5, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:240
	scratch_load_b32 v5, off, off offset:236
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v6, s45, v6
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s45, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s45, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v6, v6
	ds_load_u8 v0, v0
	ds_load_u8 v5, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v5, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v5, off, off offset:248 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s45, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v5, 16, v0
	v_dual_mov_b32 v5, s12 :: v_dual_mov_b32 v6, s13
	v_dual_mov_b32 v7, s14 :: v_dual_mov_b32 v8, s15
	v_dual_mov_b32 v9, s16 :: v_dual_mov_b32 v10, s17
	v_dual_mov_b32 v11, s18 :: v_dual_mov_b32 v12, s19
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v0, s45, v237
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[50:57], v[1:4], v[45:48], v[5:12] neg_lo:[1,1,0]
	ds_load_u8 v0, v0
	v_wmma_i32_16x16x16_iu8 v[50:57], v[13:16], v[41:44], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[50:57], v[58:61], v[37:40], v[50:57] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[50:57], v[62:65], v[25:28], v[50:57] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v71, v50
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v50, s45, v227
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v70, v51
	v_cvt_f32_i32_e32 v24, v52
	v_cvt_f32_i32_e32 v23, v53
	v_cvt_f32_i32_e32 v21, v54
	ds_load_u8 v50, v50
	v_cvt_f32_i32_e32 v22, v55
	v_cvt_f32_i32_e32 v219, v56
	v_cvt_f32_i32_e32 v220, v57
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v50, s45, v17
	scratch_load_b32 v17, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v51, s45, v17
	scratch_load_b32 v17, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v50, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v51, s45, v17
	scratch_load_b32 v17, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v52, s45, v17
	scratch_load_b32 v17, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v52, v52
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v53, s45, v17
	scratch_load_b32 v17, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v53, v53
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s45, v17
	scratch_load_b32 v17, off, off          ; 4-byte Folded Reload
	v_add_nc_u32_e32 v0, s45, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v52, s45, v203
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v52, v52
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v53, s45, v226
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v68, v52, 16, v51
	ds_load_u8 v53, v53
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s45, v17
	scratch_load_b32 v17, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v51, s45, v17
	scratch_load_b32 v17, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v51, s45, v206
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v67, v50, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v0, s45, v225
	v_add_nc_u32_e32 v50, s45, v49
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	ds_load_u8 v0, v0
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s45, v17
	scratch_load_b32 v17, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v50, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v0, s45, v242
	v_add_nc_u32_e32 v50, s45, v241
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s45, v17
	scratch_load_b32 v17, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v51, s45, v17
	scratch_load_b32 v17, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v51, s45, v192
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v178, v50, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v52, s45, v17
	scratch_load_b32 v17, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v52, v52
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s45, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s45, v17
	scratch_load_b32 v17, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v52, s45, v240
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v52, v52
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v177, v52, 16, v51
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s45, v17
	scratch_load_b32 v17, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v51, s45, v17
	scratch_load_b32 v17, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v176, v50, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v0, s45, v224
	v_add_nc_u32_e32 v50, s45, v223
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s45, v17
	scratch_load_b32 v17, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v51, s45, v17
	scratch_load_b32 v17, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v175, v50, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v50, s45, v17
	scratch_load_b32 v17, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s45, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s45, v17
	scratch_load_b32 v17, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v51, s45, v17
	scratch_load_b32 v17, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v182, v50, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v51, s45, v17
	scratch_load_b32 v17, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v52, s45, v17
	scratch_load_b32 v17, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v52, v52
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v52, s45, v17
	scratch_load_b32 v17, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v52, v52
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v53, s45, v17
	scratch_load_b32 v17, off, off offset:64 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v0, s45, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v53, v53
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s45, v17
	scratch_load_b32 v17, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v181, v52, 16, v51
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v52, s45, v204
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v52, v52
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s45, v17
	scratch_load_b32 v17, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v51, s45, v17
	scratch_load_b32 v17, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v180, v50, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v50, s45, v17
	scratch_load_b32 v17, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s45, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s45, v17
	scratch_load_b32 v17, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v51, s45, v17
	scratch_load_b32 v17, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v51, s45, v214
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v179, v50, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v0, s45, v198
	v_add_nc_u32_e32 v50, s45, v199
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	ds_load_u8 v0, v0
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v50, s45, v215
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v51, s45, v202
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v196, v50, 16, v0
	ds_load_u8 v51, v51
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v0, s45, v200
	v_add_nc_u32_e32 v50, s45, v201
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v50, s45, v205
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v52, s45, v17
	scratch_load_b32 v17, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v52, v52
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v53, s45, v17
	scratch_load_b32 v17, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v53, v53
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v195, v52, 16, v51
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v51, s45, v191
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_lshl_or_b32 v194, v50, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v50, s45, v17
	scratch_load_b32 v17, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s45, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v51, s45, v17
	v_mov_b32_e32 v17, v193
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v50, s45, v197
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v193, v50, 16, v0
	v_wmma_i32_16x16x16_iu8 v[50:57], v[66:69], v[33:36], v[5:12] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[50:57], v[175:178], v[29:32], v[50:57] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[50:57], v[179:182], v[187:190], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[50:57], v[193:196], v[183:186], v[50:57] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v213, v50
	v_cvt_f32_i32_e32 v221, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v0, v52
	v_cvt_f32_i32_e32 v222, v53
	v_cvt_f32_i32_e32 v209, v54
	v_cvt_f32_i32_e32 v211, v55
	v_cvt_f32_i32_e32 v73, v56
	v_cvt_f32_i32_e32 v121, v57
	v_wmma_i32_16x16x16_iu8 v[50:57], v[66:69], v[45:48], v[5:12] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[5:12], v[1:4], v[33:36], v[5:12] neg_lo:[1,1,0]
	v_mov_b32_e32 v69, v212
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[50:57], v[175:178], v[41:44], v[50:57] neg_lo:[1,1,0]
	v_mov_b32_e32 v178, v211
	v_wmma_i32_16x16x16_iu8 v[5:12], v[13:16], v[29:32], v[5:12] neg_lo:[1,1,0]
	v_mov_b32_e32 v177, v209
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[50:57], v[179:182], v[37:40], v[50:57] neg_lo:[1,1,0]
	v_mov_b32_e32 v182, v221
	v_wmma_i32_16x16x16_iu8 v[5:12], v[58:61], v[187:190], v[5:12] neg_lo:[1,1,0]
	v_mov_b32_e32 v181, v213
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[50:57], v[193:196], v[25:28], v[50:57] neg_lo:[1,1,0]
	v_mov_b32_e32 v196, v20
	v_wmma_i32_16x16x16_iu8 v[5:12], v[62:65], v[183:186], v[5:12] neg_lo:[1,1,0]
	v_dual_mov_b32 v184, v222 :: v_dual_mov_b32 v183, v0
	v_dual_mov_b32 v195, v19 :: v_dual_mov_b32 v194, v18
	v_mov_b32_e32 v193, v17
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v3, v7
	v_cvt_f32_i32_e32 v4, v8
	v_cvt_f32_i32_e32 v1, v9
	v_cvt_f32_i32_e32 v2, v10
	v_cvt_f32_i32_e32 v0, v11
	v_cvt_f32_i32_e32 v222, v12
	v_cvt_f32_i32_e32 v185, v52
	v_cvt_f32_i32_e32 v186, v53
	v_cvt_f32_i32_e32 v180, v54
	v_cvt_f32_i32_e32 v179, v55
	v_cvt_f32_i32_e32 v176, v56
	v_cvt_f32_i32_e32 v175, v57
	v_cvt_f32_i32_e32 v187, v50
	v_cvt_f32_i32_e32 v188, v51
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0xe                            ; 60-byte Folded Spill
	scratch_store_b32 off, v121, off offset:752
	scratch_store_b32 off, v73, off offset:748
	scratch_store_b32 off, v6, off offset:712
	scratch_store_b32 off, v5, off offset:708
	scratch_store_b32 off, v71, off offset:700
	scratch_store_b32 off, v70, off offset:696
	scratch_store_b32 off, v24, off offset:660
	scratch_store_b32 off, v23, off offset:656
	scratch_store_b32 off, v4, off offset:640
	scratch_store_b32 off, v3, off offset:636
	scratch_store_b32 off, v2, off offset:600
	scratch_store_b32 off, v1, off offset:596
	scratch_store_b32 off, v22, off offset:568
	scratch_store_b32 off, v21, off offset:564
	scratch_store_b32 off, v0, off offset:552
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v4, 0
	v_mov_b32_e32 v53, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:296 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v17, s44, v245
	v_add_nc_u32_e32 v245, s44, v207
	v_add_nc_u32_e32 v3, s44, v237
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v243, s44, v243
	v_add_nc_u32_e32 v73, s44, v206
	v_dual_mov_b32 v206, v219 :: v_dual_add_nc_u32 v239, s44, v239
	v_mov_b32_e32 v212, v185
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v6, off, off offset:16
	scratch_load_b32 v7, off, off offset:8
	scratch_load_b32 v50, off, off
	scratch_load_b32 v8, off, off offset:28
	v_mov_b32_e32 v23, v179
	v_mov_b32_e32 v207, v193
	v_mov_b32_e32 v209, v181
	v_mov_b32_e32 v211, v183
	v_mov_b32_e32 v237, v186
	v_mov_b32_e32 v19, v187
	v_dual_mov_b32 v21, v222 :: v_dual_mov_b32 v22, v184
	v_dual_mov_b32 v24, v176 :: v_dual_add_nc_u32 v179, s44, v249
	v_add_nc_u32_e32 v249, s44, v236
	v_mov_b32_e32 v236, v196
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:116
	scratch_load_b32 v20, off, off offset:148
	v_add_nc_u32_e32 v193, s44, v215
	scratch_load_b32 v18, off, off offset:24 ; 4-byte Folded Reload
	v_dual_mov_b32 v210, v182 :: v_dual_add_nc_u32 v5, s44, v203
	v_add_nc_u32_e32 v181, s44, v214
	v_add_nc_u32_e32 v176, s44, v216
	v_add_nc_u32_e32 v4, s44, v227
	v_add_nc_u32_e32 v49, s44, v49
	v_add_nc_u32_e32 v182, s44, v204
	v_add_nc_u32_e32 v189, s44, v240
	v_add_nc_u32_e32 v187, s44, v242
	v_add_nc_u32_e32 v192, s44, v192
	v_add_nc_u32_e32 v190, s44, v226
	v_add_nc_u32_e32 v222, s44, v223
	v_add_nc_u32_e32 v198, s44, v198
	v_add_nc_u32_e32 v199, s44, v199
	v_add_nc_u32_e32 v202, s44, v202
	v_add_nc_u32_e32 v122, s44, v122
	v_add_nc_u32_e32 v191, s44, v191
	v_add_nc_u32_e32 v254, s44, v254
	v_add_nc_u32_e32 v248, s44, v248
	v_add_nc_u32_e32 v200, s44, v200
	v_add_nc_u32_e32 v201, s44, v201
	v_add_nc_u32_e32 v197, s44, v197
	v_add_nc_u32_e32 v120, s44, v120
	v_add_nc_u32_e32 v208, s44, v208
	v_add_nc_u32_e32 v244, s44, v244
	v_add_nc_u32_e32 v234, s44, v234
	v_add_nc_u32_e32 v238, s44, v238
	v_add_nc_u32_e32 v230, s44, v230
	v_add_nc_u32_e32 v228, s44, v228
	v_add_nc_u32_e32 v232, s44, v232
	v_add_nc_u32_e32 v247, s44, v247
	v_add_nc_u32_e32 v229, s44, v229
	v_add_nc_u32_e32 v250, s44, v250
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v0, s44, v0
	scratch_store_b32 off, v0, off offset:296 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:292 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v219, s44, v20
	scratch_load_b32 v20, off, off offset:144 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v51, s44, v18
	scratch_load_b32 v18, off, off offset:20 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v8, s44, v8
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s44, v0
	scratch_store_b32 off, v0, off offset:292 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:288 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v215, s44, v20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v20, off, off offset:140
	scratch_load_b32 v2, off, off offset:40
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v52, s44, v18
	scratch_load_b32 v18, off, off offset:12 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v6, s44, v6
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v0, s44, v0
	scratch_store_b32 off, v0, off offset:288 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:284 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v2, s44, v2
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v184, s44, v18
	scratch_load_b32 v18, off, off offset:4 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v7, s44, v7
	v_add_nc_u32_e32 v50, s44, v50
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s44, v0
	scratch_store_b32 off, v0, off offset:284 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:280 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v203, s44, v18
	scratch_load_b32 v18, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s44, v0
	scratch_store_b32 off, v0, off offset:280 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:276 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s44, v0
	scratch_store_b32 off, v0, off offset:276 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:272 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s44, v0
	scratch_store_b32 off, v0, off offset:272 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:268 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s44, v0
	scratch_store_b32 off, v0, off offset:268 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s44, v0
	scratch_store_b32 off, v0, off offset:264 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s44, v0
	scratch_store_b32 off, v0, off offset:260 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:256 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s44, v0
	scratch_store_b32 off, v0, off offset:256 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:252 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s44, v0
	scratch_store_b32 off, v0, off offset:252 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:248 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s44, v0
	scratch_store_b32 off, v0, off offset:248 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:244 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s44, v0
	scratch_store_b32 off, v0, off offset:244 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:240 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s44, v0
	scratch_store_b32 off, v0, off offset:240 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:236 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s44, v0
	scratch_store_b32 off, v0, off offset:236 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v66, s44, v0
	scratch_load_b32 v0, off, off offset:228 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v70, s44, v0
	scratch_load_b32 v0, off, off offset:224 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v63, s44, v0
	scratch_load_b32 v0, off, off offset:220 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v64, s44, v0
	scratch_load_b32 v0, off, off offset:216 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s44, v0
	scratch_load_b32 v0, off, off offset:212 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v65, s44, v0
	scratch_load_b32 v0, off, off offset:208 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v61, s44, v0
	scratch_load_b32 v0, off, off offset:204 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v62, s44, v0
	scratch_load_b32 v0, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s44, v0
	scratch_store_b32 off, v0, off offset:200 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s44, v0
	scratch_store_b32 off, v0, off offset:196 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v121, s44, v0
	scratch_load_b32 v0, off, off offset:188 ; 4-byte Folded Reload
	scratch_store_b32 off, v69, off offset:188 ; 4-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, s44, v0
	scratch_load_b32 v0, off, off offset:184 ; 4-byte Folded Reload
	scratch_store_b32 off, v180, off offset:184 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v180, s44, v246
	v_add_nc_u32_e32 v246, s44, v255
	v_add_nc_u32_e32 v255, s44, v235
	v_dual_mov_b32 v235, v194 :: v_dual_add_nc_u32 v194, s44, v205
	scratch_load_b32 v205, off, off offset:128 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v185, s44, v18
	scratch_load_b32 v18, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v213, s44, v0
	scratch_load_b32 v0, off, off offset:180 ; 4-byte Folded Reload
	scratch_store_b32 off, v175, off offset:180 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v175, s44, v252
	v_add_nc_u32_e32 v252, s44, v233
	v_add_nc_u32_e32 v233, s44, v225
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v214, s44, v205
	scratch_load_b32 v205, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v221, s44, v0
	scratch_load_b32 v0, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v216, s44, v205
	scratch_load_b32 v205, off, off offset:124 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v186, s44, v18
	v_mov_b32_e32 v18, v188
	v_add_nc_u32_e32 v188, s44, v241
	v_add_nc_u32_e32 v231, s44, v231
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v68, s44, v0
	scratch_load_b32 v0, off, off offset:172 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s44, v0
	scratch_load_b32 v0, off, off offset:164 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v177, off offset:172
	scratch_store_b32 off, v195, off offset:164
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v177, s44, v0
	scratch_load_b32 v0, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v195, s44, v0
	scratch_load_b32 v0, off, off offset:152 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v196, s44, v0
	scratch_load_b32 v0, off, off offset:120 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v178, off offset:176
	scratch_store_b32 off, v72, off offset:120
	v_add_nc_u32_e32 v72, s44, v1
	scratch_load_b32 v1, off, off offset:112 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v178, s44, v253
	v_add_nc_u32_e32 v253, s44, v217
	v_add_nc_u32_e32 v217, s44, v205
	v_dual_mov_b32 v205, v218 :: v_dual_add_nc_u32 v218, s44, v20
	scratch_load_b32 v20, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s44, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v183, s44, v1
	scratch_load_b32 v1, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v240, s44, v20
	v_dual_mov_b32 v20, v220 :: v_dual_add_nc_u32 v251, s44, v251
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s44, v1
	scratch_load_b32 v1, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, s44, v1
	scratch_load_b32 v1, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v11, s44, v1
	scratch_load_b32 v1, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v12, s44, v1
	scratch_load_b32 v1, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, s44, v1
	scratch_load_b32 v1, off, off offset:88 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v14, s44, v1
	scratch_load_b32 v1, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v15, s44, v1
	scratch_load_b32 v1, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v16, s44, v1
	scratch_load_b32 v1, off, off offset:76 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v53, s44, v1
	scratch_load_b32 v1, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v54, s44, v1
	scratch_load_b32 v1, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v55, s44, v1
	scratch_load_b32 v1, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v56, s44, v1
	scratch_load_b32 v1, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v57, s44, v1
	scratch_load_b32 v1, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v58, s44, v1
	scratch_load_b32 v1, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v59, s44, v1
	scratch_load_b32 v1, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v60, s44, v1
	scratch_load_b32 v1, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v220, v53
	ds_load_u8 v59, v59
	ds_load_u8 v60, v60
	ds_load_u8 v57, v57
	ds_load_u8 v58, v58
	ds_load_u8 v204, v54
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s44, v1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v3, v3
	ds_load_u8 v4, v4
	ds_load_u8 v1, v1
	ds_load_u8 v7, v7
	ds_load_u8 v8, v8
	ds_load_u8 v5, v5
	ds_load_u8 v6, v6
	ds_load_u8 v2, v2
	ds_load_u8 v52, v52
	ds_load_u8 v184, v184
	ds_load_u8 v50, v50
	ds_load_u8 v233, v233
	ds_load_u8 v49, v49
	ds_load_u8 v203, v203
	ds_load_u8 v73, v73
	ds_load_u8 v51, v51
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v4, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	v_perm_b32 v2, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v5, v184, v52, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v184, s44, v224
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v52, v1, 16, v3
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v1, v49, v233, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v51, v50, 0xc0c0004
	v_lshl_or_b32 v51, v4, 16, v2
	v_perm_b32 v2, v73, v203, 0xc0c0004
	ds_load_u8 v73, v187
	ds_load_u8 v187, v188
	ds_load_u8 v185, v185
	ds_load_u8 v188, v192
	ds_load_u8 v192, v219
	ds_load_u8 v189, v189
	ds_load_u8 v190, v190
	ds_load_u8 v186, v186
	ds_load_u8 v203, v216
	ds_load_u8 v216, v217
	ds_load_u8 v214, v214
	ds_load_u8 v184, v184
	ds_load_u8 v217, v222
	ds_load_u8 v218, v218
	ds_load_u8 v219, v240
	ds_load_u8 v215, v215
	ds_load_u8 v222, v11
	ds_load_u8 v233, v12
	ds_load_u8 v240, v9
	ds_load_u8 v241, v15
	ds_load_u8 v242, v16
	ds_load_u8 v223, v13
	ds_load_u8 v224, v14
	ds_load_u8 v225, v10
	ds_load_u8 v226, v55
	ds_load_u8 v227, v56
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v55, v192, v188, 0xc0c0004
	v_perm_b32 v53, v187, v73, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v54, v186, v185, 0xc0c0004
	v_perm_b32 v73, v190, v189, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v185, v216, v203, 0xc0c0004
	v_perm_b32 v189, v60, v59, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v184, v217, v184, 0xc0c0004
	v_lshl_or_b32 v56, v54, 16, v53
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v187, v219, v218, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v186, v215, v214, 0xc0c0004
	v_lshl_or_b32 v55, v73, 16, v55
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v73, v233, v222, 0xc0c0004
	v_mov_b32_e32 v218, v205
	v_lshl_or_b32 v53, v187, 16, v184
	v_lshl_or_b32 v54, v186, 16, v185
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v185, v242, v241, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v186, v224, v223, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v184, v225, v240, 0xc0c0004
	v_mov_b32_e32 v222, v21
	v_lshl_or_b32 v50, v6, 16, v5
	v_lshl_or_b32 v49, v2, 16, v1
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v4, s15
	v_mov_b32_e32 v6, s17
	v_mov_b32_e32 v8, s19
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_mov_b32_e32 v5, s16
	v_mov_b32_e32 v7, s18
	v_mov_b32_e32 v219, v206
	v_perm_b32 v188, v204, v220, 0xc0c0004
	v_mov_b32_e32 v220, v20
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v20, off, off offset:160 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[9:16], v[49:52], v[45:48], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v227, v226, 0xc0c0004
	v_lshl_or_b32 v59, v186, 16, v185
	v_lshl_or_b32 v60, v184, 16, v73
	v_lshl_or_b32 v57, v57, 16, v189
	v_wmma_i32_16x16x16_iu8 v[9:16], v[53:56], v[41:44], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v58, v188, 16, v187
	ds_load_u8 v73, v198
	ds_load_u8 v184, v199
	ds_load_u8 v185, v193
	ds_load_u8 v186, v202
	ds_load_u8 v182, v182
	ds_load_u8 v187, v195
	ds_load_u8 v188, v196
	ds_load_u8 v181, v181
	ds_load_u8 v189, v200
	ds_load_u8 v190, v201
	ds_load_u8 v192, v194
	ds_load_u8 v72, v72
	ds_load_u8 v183, v183
	ds_load_u8 v193, v197
	ds_load_u8 v0, v0
	ds_load_u8 v191, v191
	ds_load_u8 v177, v177
	ds_load_u8 v194, v178
	ds_load_u8 v195, v254
	ds_load_u8 v179, v179
	ds_load_u8 v180, v180
	ds_load_u8 v122, v122
	ds_load_u8 v175, v175
	ds_load_u8 v196, v248
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v73, v184, v73, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v181, v181, v185, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[57:60], v[37:40], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v183, v183, v72, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v0, v0, v193, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v72, v194, v177, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v122, v175, v122, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v177, v196, v195, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v178, s44, v20
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v184, v255
	ds_load_u8 v120, v120
	ds_load_u8 v185, v249
	ds_load_u8 v176, v176
	ds_load_u8 v197, v178
	ds_load_u8 v198, v252
	ds_load_u8 v199, v253
	ds_load_u8 v200, v246
	v_lshl_or_b32 v178, v181, 16, v73
	v_perm_b32 v73, v182, v186, 0xc0c0004
	v_perm_b32 v186, v188, v187, 0xc0c0004
	v_perm_b32 v187, v190, v189, 0xc0c0004
	v_perm_b32 v188, v191, v192, 0xc0c0004
	ds_load_u8 v189, v239
	ds_load_u8 v190, v243
	ds_load_u8 v191, v208
	ds_load_u8 v192, v244
	ds_load_u8 v194, v245
	ds_load_u8 v195, v17
	ds_load_u8 v196, v238
	ds_load_u8 v201, v234
	scratch_load_b32 v17, off, off offset:200 ; 4-byte Folded Reload
	v_lshl_or_b32 v181, v122, 16, v179
	v_lshl_or_b32 v182, v177, 16, v72
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v120, v120, v184, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v176, v197, v176, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v198, v199, v198, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v175, v200, v185, 0xc0c0004
	ds_load_u8 v184, v251
	ds_load_u8 v185, v230
	ds_load_u8 v197, v228
	ds_load_u8 v200, v231
	ds_load_u8 v202, v232
	ds_load_u8 v203, v229
	ds_load_u8 v204, v250
	ds_load_u8 v214, v247
	v_lshl_or_b32 v179, v198, 16, v176
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v176, v196, v195, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v122, v201, v191, 0xc0c0004
	v_lshl_or_b32 v180, v175, 16, v120
	v_perm_b32 v175, v194, v192, 0xc0c0004
	v_perm_b32 v120, v190, v189, 0xc0c0004
	ds_load_u8 v63, v63
	ds_load_u8 v64, v64
	ds_load_u8 v177, v66
	ds_load_u8 v61, v61
	ds_load_u8 v62, v62
	ds_load_u8 v189, v71
	ds_load_u8 v190, v65
	ds_load_u8 v191, v70
	ds_load_u8 v121, v121
	ds_load_u8 v194, v67
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v184, v185, v184, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v192, v202, v200, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v193, v204, v203, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v185, v214, v197, 0xc0c0004
	s_waitcnt vmcnt(0)
	ds_load_u8 v195, v17
	ds_load_u8 v196, v68
	ds_load_u8 v197, v69
	ds_load_u8 v198, v213
	ds_load_u8 v199, v221
	scratch_load_b32 v17, off, off offset:196 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu8 v[65:72], v[179:182], v[45:48], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v48, v122, 16, v120
	v_lshl_or_b32 v47, v176, 16, v175
	v_lshl_or_b32 v46, v185, 16, v184
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v64, v191, v177, 0xc0c0004
	v_lshl_or_b32 v45, v193, 16, v192
	v_perm_b32 v61, v62, v61, 0xc0c0004
	v_perm_b32 v62, v190, v189, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v121, v194, v121, 0xc0c0004
	v_lshl_or_b32 v64, v64, 16, v63
	v_wmma_i32_16x16x16_iu8 v[65:72], v[45:48], v[41:44], v[65:72] neg_lo:[1,1,0]
	v_lshl_or_b32 v63, v62, 16, v61
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v189, v197, v196, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v198, v199, v198, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v198, 16, v189
	s_waitcnt vmcnt(0)
	ds_load_u8 v200, v17
	scratch_load_b32 v17, off, off offset:288 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v177, v200, v195, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v62, v177, 16, v121
	v_lshl_or_b32 v177, v186, 16, v73
	v_mov_b32_e32 v186, v237
	v_wmma_i32_16x16x16_iu8 v[65:72], v[61:64], v[37:40], v[65:72] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	ds_load_u8 v120, v17
	scratch_load_b32 v17, off, off offset:284 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v122, v17
	scratch_load_b32 v17, off, off offset:296 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v122, v120, 0xc0c0004
	s_waitcnt vmcnt(0)
	ds_load_u8 v175, v17
	scratch_load_b32 v17, off, off offset:272 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v184, v17
	scratch_load_b32 v17, off, off offset:268 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v185, v17
	scratch_load_b32 v17, off, off offset:280 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v191, v17
	scratch_load_b32 v17, off, off offset:276 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v192, v17
	scratch_load_b32 v17, off, off offset:292 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v192, v191, 0xc0c0004
	s_waitcnt vmcnt(0)
	ds_load_u8 v176, v17
	scratch_load_b32 v17, off, off offset:256 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v176, v175, 0xc0c0004
	v_lshl_or_b32 v176, v188, 16, v187
	v_dual_mov_b32 v188, v18 :: v_dual_mov_b32 v187, v19
	v_lshl_or_b32 v175, v0, 16, v183
	v_perm_b32 v0, v185, v184, 0xc0c0004
	v_dual_mov_b32 v185, v212 :: v_dual_mov_b32 v184, v22
	v_lshl_or_b32 v183, v42, 16, v41
	v_wmma_i32_16x16x16_iu8 v[37:44], v[49:52], v[33:36], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[179:182], v[33:36], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v182, v73, 16, v0
	v_wmma_i32_16x16x16_iu8 v[9:16], v[175:178], v[25:28], v[9:16] neg_lo:[1,1,0]
	v_mov_b32_e32 v179, v23
	v_wmma_i32_16x16x16_iu8 v[37:44], v[53:56], v[29:32], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[45:48], v[29:32], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v212, v14
	s_waitcnt vmcnt(0)
	ds_load_u8 v190, v17
	scratch_load_b32 v17, off, off offset:252 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v193, v17
	scratch_load_b32 v17, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v193, v190, 0xc0c0004
	v_mov_b32_e32 v193, v207
	s_waitcnt vmcnt(0)
	ds_load_u8 v194, v17
	scratch_load_b32 v17, off, off offset:240 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v195, v17
	scratch_load_b32 v17, off, off offset:236 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v196, v17
	scratch_load_b32 v17, off, off offset:248 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v196, v195, 0xc0c0004
	scratch_load_b32 v195, off, off offset:164 ; 4-byte Folded Reload
	v_mov_b32_e32 v196, v236
	s_waitcnt vmcnt(1)
	ds_load_u8 v197, v17
	scratch_load_b32 v17, off, off offset:244 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v200, v17
	scratch_load_b32 v17, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v200, v197, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v180, v35, 16, v34
	s_waitcnt vmcnt(0)
	ds_load_u8 v201, v17
	scratch_load_b128 v[17:20], off, off offset:852 ; 16-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v201, v194, 0xc0c0004
	v_mov_b32_e32 v194, v235
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v181, v33, 16, v120
	v_wmma_i32_16x16x16_iu8 v[65:72], v[180:183], v[25:28], v[65:72] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v54, v65
	v_cvt_f32_i32_e32 v55, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v50, v67
	v_cvt_f32_i32_e32 v51, v68
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[37:44], v[57:60], v[17:20], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[61:64], v[17:20], v[1:8] neg_lo:[1,1,0]
	scratch_load_b128 v[17:20], off, off offset:836 ; 16-byte Folded Reload
	v_cvt_f32_i32_e32 v61, v10
	v_cvt_f32_i32_e32 v62, v11
	v_cvt_f32_i32_e32 v11, v69
	v_cvt_f32_i32_e32 v10, v72
	v_cvt_f32_i32_e32 v63, v12
	v_cvt_f32_i32_e32 v58, v15
	v_cvt_f32_i32_e32 v59, v16
	v_cvt_f32_i32_e32 v12, v70
	scratch_load_b32 v69, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[37:44], v[175:178], v[17:20], v[37:44] neg_lo:[1,1,0]
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v178, off, off offset:176
	scratch_load_b32 v177, off, off offset:172
	scratch_load_b32 v175, off, off offset:180
	v_wmma_i32_16x16x16_iu8 v[1:8], v[180:183], v[17:20], v[1:8] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v180, off, off offset:184
	scratch_load_b32 v72, off, off offset:120
	v_dual_mov_b32 v176, v24 :: v_dual_mov_b32 v183, v211
	v_dual_mov_b32 v182, v210 :: v_dual_mov_b32 v181, v209
	v_cvt_f32_i32_e32 v210, v9
	v_cvt_f32_i32_e32 v211, v13
	v_cvt_f32_i32_e32 v9, v71
	v_cvt_f32_i32_e32 v221, v37
	v_cvt_f32_i32_e32 v16, v38
	v_cvt_f32_i32_e32 v64, v39
	v_cvt_f32_i32_e32 v121, v40
	v_cvt_f32_i32_e32 v213, v41
	v_cvt_f32_i32_e32 v15, v42
	v_cvt_f32_i32_e32 v60, v43
	v_cvt_f32_i32_e32 v209, v44
	v_cvt_f32_i32_e32 v56, v1
	v_cvt_f32_i32_e32 v57, v2
	v_cvt_f32_i32_e32 v52, v3
	v_cvt_f32_i32_e32 v53, v4
	v_cvt_f32_i32_e32 v13, v5
	v_cvt_f32_i32_e32 v14, v6
	v_cvt_f32_i32_e32 v2, v7
	v_cvt_f32_i32_e32 v4, v8
.LBB0_16:
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v0, off, off offset:808
	scratch_load_b32 v5, off, off offset:788
	scratch_load_b32 v7, off, off offset:780
	scratch_load_b32 v23, off, off offset:736
	scratch_load_b32 v8, off, off offset:308
	scratch_load_b32 v27, off, off offset:732
	scratch_load_b32 v18, off, off offset:304
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v1.l, 0
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s35, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s26, s10
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s0, s0, 24
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s27, s11
	v_mov_b16_e32 v19.l, v1.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v28.l, v1.l
	v_mov_b16_e32 v30.l, v1.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s0, s35, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s12, s0, 8
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s12, s1
	s_cselect_b32 s0, -1, 0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s21, s21, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 s0, s3, s0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v1.h, v0.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	scratch_load_b32 v0, off, off offset:832 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v0.h, v0.l
	v_mov_b16_e32 v0.l, v1.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v3, v1, v0
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v3, v3, v5, v173
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	scratch_load_b32 v5, off, off offset:828 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v5.h, v5.l
	v_mov_b16_e32 v5.l, v1.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v6, v1, v5
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v6, v6, v7, v174
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v7, off, off offset:804 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v19.h, v7.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v1, v19
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v7, v7, v8, v172
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v8, off, off offset:800 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v172, v7, s2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v8.h, v8.l
	v_mov_b16_e32 v8.l, v1.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v17, v1, v8
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v21, v17, v18, v171
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v173, v3, s2
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	scratch_load_b32 v3, off, off offset:784 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v174, v6, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v6, off, off offset:772 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v21, v171, v21, s2
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v3.h, v3.l
	v_mov_b16_e32 v3.l, v1.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v3, v0
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v7, v0, v72, v158
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v3, v5
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v5, off, off offset:776 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v72, v158, v7, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v31, v0, v5, v170
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v5, off, off offset:740 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v0, v3, v8
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v170, v31, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v8, v0, v5, v168
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v0, v3, v19
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:792
	scratch_load_b32 v5, off, off offset:744
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v73, v168, v8, s2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v19.h, v19.l
	v_mov_b16_e32 v19.l, v1.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v22, v1, v19
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v26, v22, v23, v164
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v22, off, off offset:796 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v164, v26, s2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v22.h, v22.l
	v_mov_b16_e32 v22.l, v1.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v23, v1, v22
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v29, v23, v27, v165
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v23, off, off offset:764 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v24, v0, v5, v169
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	scratch_load_b32 v0, off, off offset:816 ; 4-byte Folded Reload
	v_mov_b16_e32 v5.l, v1.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v169, v24, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v169.h, v1.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v5.h, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v1, v5
	v_mul_f32_e32 v5, v3, v5
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v25, v0, v6, v166
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	scratch_load_b32 v0, off, off offset:824 ; 4-byte Folded Reload
	v_mov_b16_e32 v6.l, v1.l
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v27, v5, v23, v162
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v166, v25, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v27, v162, v27, s2
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v6.h, v0.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v1, v6
	v_mul_f32_e32 v5, v3, v6
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v6, off, off offset:768 ; 4-byte Folded Reload
	v_fma_f32 v0, v0, v69, v167
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v120, v167, v0, s2
	v_cndmask_b32_e64 v0, v165, v29, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v167.h, v1.l
	v_mov_b16_e64 v165.h, v1.l
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v33, v5, v6, v163
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v6, off, off offset:724 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v3, v19
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v163, v33, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v163.h, v1.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v34, v5, v6, v160
	scratch_load_b32 v6, off, off offset:728 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v3, v22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v160, v34, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v160.h, v1.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v35, v5, v6, v161
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:812
	scratch_load_b32 v6, off, off offset:760
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v161, v35, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v161.h, v1.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v28.h, v5.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v5, v1, v28
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v22, v5, v6, v123
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:820
	scratch_load_b32 v6, off, off offset:756
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v30.h, v5.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v5, v1, v30
	v_mul_f32_e32 v30, v3, v30
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v36, v5, v6, v159
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v5, v157, s12, 1
	v_add_lshl_u32 v6, v156, s12, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s12, s12, s34
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 366 22 is_stmt 0              ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v19, v155, s12, 1
	.loc	1 364 22 is_stmt 1              ; generate_amdgcn.py:364:22
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	s_clause 0x1
	buffer_load_u16 v37, v5, s[8:11], 0 offen
	buffer_load_u16 v38, v6, s[8:11], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v6, v152, s12, 1
	v_cndmask_b32_e64 v5, 0x80000000, v19, s0
	v_add_lshl_u32 v19, v153, s12, 1
	v_add_lshl_u32 v23, v154, s12, 1
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_add_i32 s10, s12, s22
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v32, s10, v150, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	s_clause 0x3
	buffer_load_u16 v40, v5, s[24:27], 0 offen
	buffer_load_u16 v42, v6, s[24:27], 0 offen
	buffer_load_u16 v43, v19, s[24:27], 0 offen
	buffer_load_u16 v46, v23, s[24:27], 0 offen
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v5, s10, v151, 1
	v_add_lshl_u32 v6, s10, v147, 1
	v_add_lshl_u32 v19, s10, v148, 1
	v_add_lshl_u32 v23, s10, v149, 1
	v_cndmask_b32_e64 v32, 0x80000000, v32, s0
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	s_clause 0x4
	buffer_load_u16 v48, v5, s[24:27], 0 offen
	buffer_load_u16 v49, v6, s[24:27], 0 offen
	buffer_load_u16 v65, v19, s[24:27], 0 offen
	buffer_load_u16 v66, v23, s[24:27], 0 offen
	buffer_load_u16 v67, v32, s[24:27], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	scratch_load_b32 v5, off, off offset:340 ; 4-byte Folded Reload
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v31, v140, s12, 1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v44, s10, v144, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v32, v141, s12, 1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v45, s10, v145, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v39, v142, s12, 1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v47, s10, v146, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v41, v143, s12, 1
	v_cndmask_b32_e64 v31, 0x80000000, v31, s0
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e64 v69, 0x80000000, v44, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v32, 0x80000000, v32, s0
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e64 v70, 0x80000000, v45, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v39, 0x80000000, v39, s0
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e64 v71, 0x80000000, v47, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v41, 0x80000000, v41, s0
	s_clause 0x6
	buffer_load_u16 v45, v31, s[24:27], 0 offen
	buffer_load_u16 v44, v32, s[24:27], 0 offen
	buffer_load_u16 v32, v39, s[24:27], 0 offen
	buffer_load_u16 v31, v41, s[24:27], 0 offen
	buffer_load_u16 v47, v69, s[24:27], 0 offen
	buffer_load_u16 v39, v70, s[24:27], 0 offen
	buffer_load_u16 v41, v71, s[24:27], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v159, v36, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s11, s33, s23
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v19.h, v1.l
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_add_i32 s11, s11, s22
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v159.h, v1.l
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 364 22 is_stmt 1              ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v8, 16, v38
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v36, 16, v40
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v7, 16, v37
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v37, 16, v42
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v38, 16, v43
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v69, v8, v38
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v43, 16, v49
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v49, 16, v66
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v66, v8, v36
	v_mul_f32_e32 v36, v7, v36
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v40, 16, v46
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v42, 16, v48
	v_lshlrev_b32_e32 v48, 16, v65
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v65, v8, v37 :: v_dual_lshlrev_b32 v46, 16, v67
	v_mul_f32_e32 v67, v8, v40
	v_mul_f32_e32 v40, v7, v40
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v70, v8, v43 :: v_dual_mul_f32 v37, v7, v37
	v_mul_f32_e32 v71, v8, v42
	v_dual_mul_f32 v43, v7, v43 :: v_dual_mul_f32 v122, v8, v49
	v_mul_f32_e32 v42, v7, v42
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v36, v36, v187, v73
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v16, v70, v16, v17
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v140, v8, v48 :: v_dual_mul_f32 v49, v7, v49
	v_mul_f32_e32 v48, v7, v48
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v67, v67, v184, v0
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v71, v71, v221, v18
	v_fma_f32 v42, v42, v210, v72
	v_fma_f32 v43, v43, v61, v68
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v61, v73, v36, s3
	v_cndmask_b32_e64 v73, v17, v16, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v141, v8, v46
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v63, v49, v63, v29
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v0, v67, s3
	v_cndmask_b32_e64 v71, v18, v71, s3
	v_cndmask_b32_e64 v0, v68, v43, s3
	v_cndmask_b32_e64 v68, v72, v42, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v16, 0xbfb8aa3b, v73
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v15, v141, v15, v35
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v38, v7, v38
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v64, v140, v64, v25
	v_fma_f32 v70, v122, v121, v120
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v17, 0xbfb8aa3b, v68
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v35, v15, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v15, 0xbfb8aa3b, v71
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v65, v65, v182, v20
	v_fma_f32 v37, v37, v188, v24
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v62, v48, v62, v27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v120, v70, s3
	v_cndmask_b32_e64 v64, v25, v64, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v18, 0xbfb8aa3b, v0
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v15
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v17
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v142, v69, v183, v26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v20, v65, s3
	v_cndmask_b32_e64 v65, v24, v37, s3
	v_cndmask_b32_e64 v63, v29, v63, s3
	v_cndmask_b32_e64 v62, v27, v62, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v24, 0xbfb8aa3b, v64 :: v_dual_mul_f32 v25, 0xbfb8aa3b, v67
	v_cndmask_b32_e64 v15, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v18
	v_cndmask_b32_e64 v17, 0, 0x42800000, s5
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v73
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v26, v142, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v26, 0xbfb8aa3b, v62 :: v_dual_fmac_f32 v15, 0xbfb8aa3b, v71
	v_mul_f32_e32 v27, 0xbfb8aa3b, v63
	v_cndmask_b32_e64 v18, 0, 0x42800000, s4
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v25
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v24
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v68
	v_exp_f32_e32 v16, v16
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v66, v66, v181, v21
	v_fma_f32 v40, v40, v186, v33
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v25, 0, 0x42800000, s6
	v_cndmask_b32_e64 v24, 0, 0x42800000, s7
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v27
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v18, 0xbfb8aa3b, v0 :: v_dual_fmac_f32 v25, 0xbfb8aa3b, v67
	v_exp_f32_e32 v15, v15
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v38, v38, v185, v34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v21, v66, s3
	v_cndmask_b32_e64 v21, v33, v40, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v27, 0, 0x42800000, s8
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s1
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v64
	v_exp_f32_e32 v18, v18
	v_ldexp_f32 v16, v16, v29
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v34, v38, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s4
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v63
	v_exp_f32_e32 v24, v24
	v_ldexp_f32 v15, v15, v33
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v72, 1.0, v16
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, s7
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v26
	v_ldexp_f32 v18, v18, v34
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v70, 1.0, v15
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v15, null, v72, v72, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v26, 0, 0x42800000, s9
	v_ldexp_f32 v24, v24, v37
	v_exp_f32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v37, v15
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, s9
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v122, 1.0, v24
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v27, v27
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v121, 1.0, v18
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s8
	v_exp_f32_e32 v25, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v34, null, v122, v122, v64
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v15, v37, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v62
	v_ldexp_f32 v17, v17, v35
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v147, v34
	v_div_scale_f32 v24, null, v121, v121, v0
	v_fmac_f32_e32 v37, v42, v37
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v27, v27, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v144, v24
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s6
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v18, s9, v71, v70, v71
	v_fma_f32 v154, -v34, v147, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v120, 1.0, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v17, null, v70, v70, v71
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v26, v26, v40
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v147, v154, v147
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v25, v25, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v38, v17
	v_fma_f32 v151, -v24, v144, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v141, 1.0, v26
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v26, null, v120, v120, v68
	v_div_scale_f32 v16, vcc_lo, v73, v72, v73
	v_div_scale_f32 v143, null, v141, v141, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v145, v26
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v142, 1.0, v27
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v150, -v17, v38, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v149, v143
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v140, 1.0, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v27, s7, v68, v120, v68
	v_div_scale_f32 v25, s8, v0, v121, v0
	v_div_scale_f32 v29, null, v140, v140, v67
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v152, -v26, v145, 1.0
	v_div_scale_f32 v33, s6, v67, v140, v67
	v_rcp_f32_e32 v146, v29
	v_div_scale_f32 v154, s5, v62, v141, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v145, v152, v145 :: v_dual_fmac_f32 v38, v150, v38
	v_fma_f32 v150, -v143, v149, 1.0
	v_dual_fmac_f32 v144, v151, v144 :: v_dual_mul_f32 v151, v16, v37
	v_div_scale_f32 v36, null, v142, v142, v63
	v_div_scale_f32 v40, s1, v63, v142, v63
	v_fma_f32 v153, -v29, v146, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v148, v36
	v_div_scale_f32 v35, s4, v64, v122, v64
	v_fmac_f32_e32 v149, v150, v149
	.loc	1 300 32 is_stmt 1              ; generate_amdgcn.py:300:32
	s_waitcnt vmcnt(7)
	v_and_b32_e32 v23, 56, v5
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v46, v7, v46 :: v_dual_lshlrev_b32 v47, 16, v47
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	scratch_load_b32 v5, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v45, 16, v45
	v_lshlrev_b32_e32 v44, 16, v44
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v42, -v36, v148, 1.0
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v41, 16, v41
	v_lshlrev_b32_e32 v39, 16, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v148, v42, v148 :: v_dual_lshlrev_b32 v31, 16, v31
	v_mul_f32_e32 v152, v18, v38
	v_fma_f32 v42, -v15, v151, v16
	v_dual_fmac_f32 v146, v153, v146 :: v_dual_mul_f32 v157, v40, v148
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v153, -v17, v152, v18
	v_fmac_f32_e32 v151, v42, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v155, v33, v146
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v42, s10, v136, 1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v152, v153, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v15, -v15, v151, v16
	v_mul_f32_e32 v153, v27, v145
	v_fma_f32 v16, -v17, v152, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v151, v15, v37, v151
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v17, -v26, v153, v27
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v18, v125, s12, 1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v152, v16, v38, v152
	v_fma_f32 v16, -v29, v155, v33
	v_mul_f32_e32 v150, v25, v144
	v_fmac_f32_e32 v153, v17, v145
	v_fma_f32 v17, -v36, v157, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v156, v35, v147 :: v_dual_fmac_f32 v155, v16, v146
	v_fma_f32 v15, -v24, v150, v25
	v_div_fixup_f32 v72, v151, v72, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v157, v17, v148 :: v_dual_mul_f32 v158, v154, v149
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v17, v124, s12, 1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v150, v15, v144
	v_fma_f32 v15, -v34, v156, v35
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v69, v69, v72
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v16, -v143, v158, v154
	v_fma_f32 v164, -v26, v153, v27
	v_fma_f32 v162, -v24, v150, v25
	v_fmac_f32_e32 v156, v15, v147
	.loc	1 366 22 is_stmt 1              ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v24, v126, s12, 1
	v_add_lshl_u32 v25, v127, s12, 1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v166, -v29, v155, v33
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v26, v128, s12, 1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v168, -v34, v156, v35
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v27, v129, s12, 1
	v_add_lshl_u32 v29, v130, s12, 1
	v_add_lshl_u32 v33, v131, s12, 1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v34, s10, v132, 1
	v_add_lshl_u32 v35, s10, v133, 1
	v_add_lshl_u32 v126, s10, v139, 1
	v_add_lshl_u32 v37, s10, v134, 1
	v_add_lshl_u32 v38, s10, v135, 1
	v_add_lshl_u32 v124, s10, v137, 1
	v_add_lshl_u32 v125, s10, v138, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	v_cndmask_b32_e64 v18, 0x80000000, v18, s0
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v15, s11, v23, 64
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v160.l, v69.h
	.loc	1 385 22 is_stmt 1              ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v158, v16, v149
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_or_b32_e32 v16, s11, v23
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v23, 0x80000000, v24, s0
	v_cndmask_b32_e64 v24, 0x80000000, v25, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v127, -v36, v157, v40
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v25, 0x80000000, v26, s0
	v_cndmask_b32_e64 v27, 0x80000000, v27, s0
	v_cndmask_b32_e64 v29, 0x80000000, v29, s0
	v_cndmask_b32_e64 v36, 0x80000000, v33, s0
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e64 v40, 0x80000000, v34, s0
	v_cndmask_b32_e64 v35, 0x80000000, v35, s0
	v_cndmask_b32_e64 v126, 0x80000000, v126, s0
	v_cndmask_b32_e64 v128, 0x80000000, v37, s0
	v_cndmask_b32_e64 v129, 0x80000000, v38, s0
	v_cndmask_b32_e64 v130, 0x80000000, v42, s0
	v_cndmask_b32_e64 v124, 0x80000000, v124, s0
	v_cndmask_b32_e64 v125, 0x80000000, v125, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0xf
	buffer_load_u16 v38, v17, s[24:27], 0 offen
	buffer_load_u16 v37, v18, s[24:27], 0 offen
	buffer_load_u16 v34, v23, s[24:27], 0 offen
	buffer_load_u16 v33, v24, s[24:27], 0 offen
	buffer_load_u16 v26, v25, s[24:27], 0 offen
	buffer_load_u16 v25, v27, s[24:27], 0 offen
	buffer_load_u16 v18, v29, s[24:27], 0 offen
	buffer_load_u16 v17, v36, s[24:27], 0 offen
	buffer_load_u16 v40, v40, s[24:27], 0 offen
	buffer_load_u16 v42, v35, s[24:27], 0 offen
	buffer_load_u16 v35, v128, s[24:27], 0 offen
	buffer_load_u16 v36, v129, s[24:27], 0 offen
	buffer_load_u16 v27, v130, s[24:27], 0 offen
	buffer_load_u16 v29, v124, s[24:27], 0 offen
	buffer_load_u16 v23, v125, s[24:27], 0 offen
	buffer_load_u16 v24, v126, s[24:27], 0 offen
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v126, v162, v144, v150
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v70, v152, v70, v71
	v_div_fmas_f32 v73, v164, v145, v153
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v124, -v143, v158, v154
	v_div_fmas_f32 v71, v166, v146, v155
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v68, v73, v120, v68
	v_div_fixup_f32 v0, v126, v121, v0
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v66, v66, v70
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v67, v71, v140, v67
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v125, 0xbfb8aa3b, v43
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v61, v61, v68
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v72, v168, v147, v156
	s_mov_b32 vcc_lo, s1
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v65, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v70, v127, v148, v157
	s_mov_b32 vcc_lo, s5
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v49, v49, v67
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v65, v124, v149, v158
	v_div_fixup_f32 v64, v72, v122, v64
	v_div_fixup_f32 v63, v70, v142, v63
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v19.l, v0.h
	v_mov_b16_e64 v159.l, v61.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v62, v65, v141, v62
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v65, 1, v160
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v21, v21, v63
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v161.l, v66.h
	v_mov_b16_e64 v167.l, v49.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v20, v20, v62
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v69, v69
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v48, v48, v64 :: v_dual_and_b32 v63, 1, v159
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v64, 1, v161
	v_and_b32_e32 v19, 1, v19
	v_add3_u32 v62, v69, v65, 0x7fff
	v_mov_b16_e64 v163.l, v21.h
	v_and_b32_e32 v65, 1, v167
	v_mov_b16_e64 v165.l, v20.h
	v_cmp_o_f32_e64 s0, v66, v66
	v_cmp_o_f32_e64 s1, v0, v0
	v_cmp_o_f32_e64 s4, v61, v61
	v_add3_u32 v0, v0, v19, 0x7fff
	v_cndmask_b16 v19.h, 0x7fff, v62.h, vcc_lo
	v_and_b32_e32 v62, 1, v163
	v_add3_u32 v61, v61, v63, 0x7fff
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v63, v8, v47
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v64, v66, v64, 0x7fff
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v47, v7, v47 :: v_dual_and_b32 v66, 1, v165
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s5, v21, v21
	v_cmp_o_f32_e64 s6, v20, v20
	v_add3_u32 v21, v21, v62, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v62, v20, v66, 0x7fff
	v_cndmask_b16 v20.l, 0x7fff, v61.h, s4
	v_add3_u32 v61, v49, v65, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v123, v22, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v65, off, off offset:688
	scratch_load_b32 v68, off, off offset:588
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v169.l, v48.h
	v_cndmask_b16 v22.h, 0x7fff, v61.h, vcc_lo
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v61, v63, v213, v49
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v63, off, off offset:720 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v20.h, 0x7fff, v0.h, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v125
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v21.l, 0x7fff, v62.h, s6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v49, v61, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v61, off, off offset:692 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v19.l, 0x7fff, v64.h, s0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v62, 0, 0x42800000, s1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v67, 1, v169
	v_cmp_o_f32_e64 s0, v48, v48
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v120, v8, v45
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v123, off, off offset:572 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v43
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v0, v48, v67, 0x7fff
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v48.l, v1.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s5
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v45, v7, v45
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v62, v62
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v22.l, 0x7fff, v0.h, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v38, 16, v38
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v37, 16, v37
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v25, 16, v25
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v18, 16, v18
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v40, 16, v40
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v42, 16, v42
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v32, 16, v32
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v27, 16, v27
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v23, 16, v23
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v48.h, v63.l
	v_mov_b16_e32 v63.l, v1.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v66, v1, v48
	v_mul_f32_e32 v48, v3, v48
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v66, v66, v68, v116
	scratch_load_b32 v68, off, off offset:592 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v30, v30, v61, v119
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v61, off, off offset:716 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v116, v66, s2
	v_cndmask_b32_e64 v30, v119, v30, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v46, v46, v212, v30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v30, v46, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v28, v3, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v28, v28, v65, v118
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v65, 0xbfb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v118, v28, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v46, v47, v211, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v28, v46, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v64, 0xbfb8aa3b, v49 :: v_dual_mul_f32 v67, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v64
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v63.h, v61.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v65
	v_ldexp_f32 v61, v62, v61
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v65, 0, 0x42800000, s1
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v1, v63
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v62, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s1
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v61, 1.0, v61
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v30
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_fma_f32 v64, v64, v68, v117
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v47, null, v61, v61, v43
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v65, v65
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v63, v3, v63
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v117, v64, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v28
	v_ldexp_f32 v65, v65, v69
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v67, v67
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v70, vcc_lo, v43, v61, v43
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v65, 1.0, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v72, null, v65, v65, v30
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v67, v67, v69
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v117, v72
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v67, 1.0, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v46, v62
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v62, v47
	v_div_scale_f32 v118, null, v67, v67, v28
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v121, -v72, v117, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v46, v46, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v68, -v47, v62, 1.0
	v_fmac_f32_e32 v117, v121, v117
	v_div_scale_f32 v121, s4, v30, v65, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v62, v68, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v68, null, v46, v46, v49
	v_mul_f32_e32 v69, v70, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v71, v68
	v_fma_f32 v73, -v47, v69, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v69, v73, v62
	v_div_scale_f32 v73, s1, v49, v46, v49
	v_fma_f32 v116, -v68, v71, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v47, -v47, v69, v70
	v_fmac_f32_e32 v71, v116, v71
	v_rcp_f32_e32 v116, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v47, v47, v62, v69
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v43, v47, v61, v43
	.loc	1 370 31 is_stmt 1              ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v61.l, v1.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v69, -v118, v116, 1.0
	v_fmac_f32_e32 v116, v69, v116
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v119, v8, v44 :: v_dual_mul_f32 v70, v73, v71
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v69, s5, v28, v67, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v62, -v68, v70, v73
	v_mul_f32_e32 v122, v69, v116
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v70, v62, v71
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v62, off, off offset:576 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v62, v63, v62, v115
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v63, v121, v117
	v_fma_f32 v68, -v68, v70, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v62, v115, v62, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v73, -v72, v63, v121
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v44, v7, v44
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v68, v68, v71, v70
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v115, -v118, v122, v69
	v_fmac_f32_e32 v63, v73, v117
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v44, v44, v179, v62
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v73, v8, v32
	v_mul_f32_e32 v32, v7, v32
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v122, v115, v116
	v_fma_f32 v70, -v72, v63, v121
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v44, v62, v44, s3
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	scratch_load_b32 v62, off, off offset:704 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v72, v8, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v69, -v118, v122, v69
	v_div_fmas_f32 v63, v70, v117, v63
	s_mov_b32 vcc_lo, s5
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v70, v119, v178, v64
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v31, v7, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v69, v69, v116, v122
	v_div_fixup_f32 v30, v63, v65, v30
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v63, off, off offset:540 ; 4-byte Folded Reload
	v_fma_f32 v48, v48, v123, v114
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v28, v69, v67, v28
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v44, v30
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v64, v70, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v48, v114, v48, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v45, v45, v180, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v48, v45, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v48, v120, v177, v66
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v44, v45, v28
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v66, v48, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v48.h, v1.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v45, v68, v46, v49
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v46.h, v1.l
	v_mov_b16_e32 v48.l, v44.h
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v49.l, v1.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v45, v28, v45
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v47, 1, v48
	v_mov_b16_e32 v46.l, v0.h
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v48.l, v45.h
	v_cmp_o_f32_e64 s0, v45, v45
	v_and_b32_e32 v46, 1, v46
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v46, v0, v46, 0x7fff
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v30, v43
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v30, off, off offset:672 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v43, v44, v47, 0x7fff
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v47, v8, v41
	v_mul_f32_e32 v41, v7, v41
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v46.l, v0.h
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v49.h, v62.l
	scratch_load_b32 v62, off, off offset:684 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v28, v1, v49
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v30, v28, v30, v113
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v28.h, 0x7fff, v46.h, vcc_lo
	v_mov_b16_e32 v46.h, v1.l
	v_cmp_o_f32_e32 vcc_lo, v44, v44
	v_and_b32_e32 v44, 1, v48
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v113, v30, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v28.l, 0x7fff, v43.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v47, v47, v209, v30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v47, v30, v47, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v30, 1, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v46, 0xbfb8aa3b, v47
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v30, v0, v30, 0x7fff
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v46
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v46, v8, v39
	v_mul_f32_e32 v39, v7, v39
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v43, v45, v44, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v44, off, off offset:668 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v30.h, 0x7fff, v30.h, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v45.l, v1.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v30.l, 0x7fff, v43.h, s0
	v_mov_b16_e32 v43.h, v1.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v61.h, v62.l
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v62, off, off offset:644 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v48, v1, v61
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fma_f32 v44, v48, v44, v112
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v48, v3, v49
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v49, off, off offset:680 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v112, v44, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v44, 0, 0x42800000, s1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v46, v46, v60, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v47
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v46, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v46, off, off offset:652 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v44, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v44, v44, v60
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v44, 1.0, v44
	.loc	1 366 22 is_stmt 1              ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v45.h, v49.l
	v_mov_b16_e32 v49.l, v1.l
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v46, v48, v46, v111
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v48, off, off offset:676 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v111, v46, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v41, v41, v59, v46
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v46, v41, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v46, null, v44, v44, v47
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v49.h, v48.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v48, v3, v61 :: v_dual_mul_f32 v61, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v59, v1, v49
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v48, v48, v62, v110
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v61
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v61, v1, v45
	v_mul_f32_e32 v45, v3, v45
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v59, v59, v63, v109
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v110, v48, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v60, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v61, v61, v196, v108
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v49, v3, v49
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v39, v39, v58, v48
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v0
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v110, off, off offset:532 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v61, v108, v61, s2
	v_cndmask_b32_e64 v59, v109, v59, s2
	v_cndmask_b32_e64 v39, v48, v39, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v48, v60
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v60, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v62, 0xbfb8aa3b, v39
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v62
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v48, v48, v63
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v63, -v46, v60, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v62, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v48, 1.0, v48
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v60, v63, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v39
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v63, null, v48, v48, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v62, v62
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v66, v63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v63, v66, 1.0
	v_fmac_f32_e32 v66, v69, v66
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v58, 0xbfb8aa3b, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v58
	v_cndmask_b32_e64 v58, 0, 0x42800000, s1
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v41
	v_exp_f32_e32 v58, v58
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v58, v58, v64
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v65, vcc_lo, v47, v44, v47
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v58, 1.0, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v62, v62, v64
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v64, v65, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v67, null, v58, v58, v41
	v_fma_f32 v68, -v46, v64, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v70, v67
	v_fmac_f32_e32 v64, v68, v60
	v_div_scale_f32 v68, s1, v0, v48, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v46, -v46, v64, v65
	v_mul_f32_e32 v65, v68, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v108, -v67, v70, 1.0
	v_div_fmas_f32 v46, v46, v60, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v60, -v63, v65, v68
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v70, v108, v70
	v_div_scale_f32 v108, s4, v41, v58, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v65, v60, v66
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	scratch_load_b32 v60, off, off offset:536 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v63, -v63, v65, v68
	v_div_fmas_f32 v63, v63, v66, v65
	s_mov_b32 vcc_lo, s4
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v66, v8, v37
	v_mul_f32_e32 v37, v7, v37
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v45, v45, v110, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v106, v45, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v32, v32, v176, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v45, v32, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v45, off, off offset:748 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fma_f32 v49, v49, v60, v107
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v60, v108, v70
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v107, v49, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v68, -v67, v60, v108
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v31, v31, v175, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v60, v68, v70
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v49, v31, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v65, -v67, v60, v108
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	scratch_load_b32 v49, off, off offset:664 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v67, v8, v38
	v_mul_f32_e32 v38, v7, v38
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v60, v65, v70, v60
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v65, off, off offset:752 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v41, v60, v58, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v31, v31, v41
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v0, v63, v48, v0
	.loc	1 370 31 is_stmt 1              ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v48.l, v1.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v43.l, v31.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v43, 1, v43
	v_add3_u32 v43, v31, v43, 0x7fff
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v65, v72, v65, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v59, v65, s3
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v62, 1.0, v62
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v71, null, v62, v62, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v69, v71
	v_fma_f32 v64, -v71, v69, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v69, v64, v69
	v_div_fixup_f32 v44, v46, v44, v47
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v46.h, v1.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v47.l, v1.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v41, v41, v44
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v64, s5, v39, v62, v39
	s_mov_b32 vcc_lo, s5
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v43.l, v41.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v109, v64, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v107, -v71, v109, v64
	v_fmac_f32_e32 v109, v107, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v64, -v71, v109, v64
	v_div_fmas_f32 v64, v64, v69, v109
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v31, off, off offset:624 ; 4-byte Folded Reload
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v48.h, v49.l
	scratch_load_b32 v49, off, off offset:648 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v39, v64, v62, v39
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v45, v73, v45, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v32, v32, v39
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v61, v45, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v45.h, v1.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v45.l, v32.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v39, v0
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v39, v1, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v45, 1, v45
	v_mov_b16_e32 v46.l, v0.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s0, v0, v0
	v_add3_u32 v44, v32, v45, 0x7fff
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v45, v8, v42
	v_mul_f32_e32 v42, v7, v42
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v39, v39, v31, v105
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v31.h, 0x7fff, v43.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	v_and_b32_e32 v32, 1, v46
	v_mov_b16_e32 v43.h, v1.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v105, v39, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v31.l, 0x7fff, v44.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v44, v0, v32, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v32, off, off offset:616 ; 4-byte Folded Reload
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v47.h, v49.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v43, 1, v43
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v45, v45, v57, v39
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v57, off, off offset:508 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v46, v1, v47
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v43, v41, v43, 0x7fff
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v0.l, v1.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v39, v45, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v45, 0xbfb8aa3b, v39
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v45, 0, 0x42800000, s1
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v45, v45
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v32, v46, v32, v104
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v46, v8, v40
	v_mul_f32_e32 v40, v7, v40
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v104, v32, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v32.h, 0x7fff, v43.h, vcc_lo
	v_cndmask_b16 v32.l, 0x7fff, v44.h, s0
	v_mov_b16_e32 v44.h, v1.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v43, v46, v56, v41
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v46, v3, v48
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v48, off, off offset:632
	scratch_load_b32 v56, off, off offset:604
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v41, v43, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v43, off, off offset:608 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v49, 0xbfb8aa3b, v41
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v49
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v0.h, v48.l
	v_mov_b16_e32 v48.l, v1.l
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v43, v46, v43, v103
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v46, off, off offset:628 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v103, v43, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v42, v42, v55, v43
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v55, v1, v0
	v_mul_f32_e32 v0, v3, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v43, v42, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v55, v55, v57, v100
	scratch_load_b32 v57, off, off offset:512 ; 4-byte Folded Reload
	v_fma_f32 v0, v0, v194, v98
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v55, v100, v55, s2
	v_cndmask_b32_e64 v0, v98, v0, s2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v48.h, v46.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v46, v3, v47
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v49, v1, v48
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v46, v46, v56, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v45, v45, v47
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v48, v3, v48
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v102, v46, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v45, 1.0, v45
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	v_fma_f32 v40, v40, v54, v46
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v43, null, v45, v45, v39
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v49, v49, v57, v101
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v46, v40, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v46, v47
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v47, v43
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v101, v49, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v56, 0xbfb8aa3b, v40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v56
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v46, v46, v57
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v57, -v43, v47, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v56, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v46, 1.0, v46 :: v_dual_fmac_f32 v47, v57, v47
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v57, null, v46, v46, v41
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v56, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v60, v57
	v_fma_f32 v63, -v57, v60, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v60, v63, v60
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v54, 0xbfb8aa3b, v42
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v54, 0, 0x42800000, s1
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, s1
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v54, v54
	v_ldexp_f32 v54, v54, v58
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v59, vcc_lo, v39, v45, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v54, 1.0, v54
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v56, v56, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v58, v59, v47
	v_div_scale_f32 v61, null, v54, v54, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v62, -v43, v58, v59
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v56, 1.0, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v64, v61
	v_fmac_f32_e32 v58, v62, v47
	v_div_scale_f32 v62, s1, v41, v46, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v65, null, v56, v56, v40
	v_fma_f32 v43, -v43, v58, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v59, v62, v60
	v_rcp_f32_e32 v63, v65
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v68, -v61, v64, 1.0
	v_div_fmas_f32 v43, v43, v47, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v47, -v57, v59, v62
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v64, v68, v64
	v_div_scale_f32 v68, s4, v42, v54, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v59, v47, v60
	v_fma_f32 v58, -v65, v63, 1.0
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_fma_f32 v47, v48, v195, v99
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v48, v68, v64
	v_div_fixup_f32 v39, v43, v45, v39
	v_fma_f32 v57, -v57, v59, v62
	v_fmac_f32_e32 v63, v58, v63
	v_div_scale_f32 v58, s5, v40, v56, v40
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v47, v99, v47, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v57, v57, v60, v59
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v60, off, off offset:696
	scratch_load_b32 v59, off, off offset:700
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v69, v58, v63
	v_fma_f32 v62, -v61, v48, v68
	s_mov_b32 vcc_lo, s4
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v45.l, v1.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v70, -v65, v69, v58
	v_fmac_f32_e32 v48, v62, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v70, v63
	v_fma_f32 v58, -v65, v69, v58
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v37, v37, v60, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v47, v37, s3
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	scratch_load_b32 v47, off, off offset:620 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v38, v38, v59, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v59, -v61, v48, v68
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v38, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v48, v59, v64, v48
	s_mov_b32 vcc_lo, s5
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v59, off, off offset:712 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v58, v58, v63, v69
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v64, off, off offset:448 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v42, v48, v54, v42
	v_div_fixup_f32 v38, v58, v56, v40
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v40, off, off offset:708 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v37, v37, v42
	v_mul_f32_e32 v0, v0, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	v_mov_b16_e32 v44.l, v0.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_and_b32_e32 v43, 1, v44
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v40, v67, v40, v55
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v55, v40, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v40, v57, v46, v41
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v41.l, v37.h
	v_mov_b16_e32 v41.h, v1.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v46.l, v1.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v40, v38, v40 :: v_dual_and_b32 v41, 1, v41
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v44.l, v40.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s0, v40, v40
	v_add3_u32 v41, v37, v41, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v37, off, off offset:560 ; 4-byte Folded Reload
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v46.h, v47.l
	scratch_load_b32 v47, off, off offset:612 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v59, v66, v59, v49
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v38, v1, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v49, v59, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v59, 16, v33
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v39, v42, v39 :: v_dual_lshlrev_b32 v42, 16, v36
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v36.h, 0x7fff, v41.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v41.h, v1.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v41.l, v39.h
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v41, v39, v41, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v37, v38, v37, v97
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v38, v0, v43, 0x7fff
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v43, v8, v42 :: v_dual_and_b32 v0, 1, v44
	v_mul_f32_e32 v42, v7, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v97, v37, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v36.l, 0x7fff, v38.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v38, v40, v0, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v0, off, off offset:556 ; 4-byte Folded Reload
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v45.h, v47.l
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v43, v43, v53, v37
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v39, v39
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v53.l, v1.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v44, v1, v45
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v37, v43, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v43, 0xbfb8aa3b, v37
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v39, 0, 0x42800000, s1
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v37
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v0, v44, v0, v96
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v44, 16, v35
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v35.h, 0x7fff, v41.h, vcc_lo
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v41, v3, v46
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v35.l, 0x7fff, v38.h, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v96, v0, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v43, v8, v44
	v_mul_f32_e32 v44, v7, v44
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v40, v43, v52, v0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v43, off, off offset:584 ; 4-byte Folded Reload
	v_mov_b16_e32 v52.l, v1.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v53.h, v43.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v43, v39
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v0, v40, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:548
	scratch_load_b32 v40, off, off offset:580
	scratch_load_b32 v46, off, off offset:544
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v47, v1, v53
	v_mul_f32_e32 v53, v3, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v53, v53, v64, v90
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v53, v90, v53, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v0, v41, v0, v95
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v52.h, v40.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v40, v3, v45
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s1
	v_mul_f32_e32 v45, 0xbfb8aa3b, v39
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v95, v0, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v40, v40, v46, v94
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v41, v43, v41
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v42, v42, v51, v0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v46, v1, v52
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v94, v40, s2
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v40, 1.0, v41
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v0, v42, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v52, v3, v52
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v0, v44, v50, v45
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v50, null, v40, v40, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v43, 0xbfb8aa3b, v39 :: v_dual_mul_f32 v44, 0xbfb8aa3b, v41
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v45, v0, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v45, off, off offset:468 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v51, v50
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v0, v43
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v44
	v_mul_f32_e32 v43, 0xbfb8aa3b, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v44, 0, 0x42800000, s1
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v41
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v45, v47, v45, v92
	scratch_load_b32 v47, off, off offset:472 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v46, v46, v47, v93
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v93, v46, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v0, v0, v47
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v46, v44
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v44, v92, v45, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v47, -v50, v51, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_dual_add_f32 v45, 1.0, v0 :: v_dual_fmac_f32 v48, 0xbfb8aa3b, v42
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, s1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v51, v47, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v54, null, v45, v45, v39
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v47, v48
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v55, vcc_lo, v37, v40, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v56, v54
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v0, v46, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v62, s4, v39, v45, v39
	v_dual_mul_f32 v57, v55, v51 :: v_dual_add_f32 v46, 1.0, v0
	.loc	1 366 22 is_stmt 1              ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v0, 16, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v34, v47, v48
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v33, -v50, v57, v55
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v47, -v54, v56, 1.0
	v_div_scale_f32 v58, null, v46, v46, v41
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v34, 1.0, v34 :: v_dual_fmac_f32 v57, v33, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v56, v47, v56
	v_rcp_f32_e32 v60, v58
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v47, v8, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v61, null, v34, v34, v42
	v_fma_f32 v33, -v50, v57, v55
	v_mul_f32_e32 v50, v62, v56
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v0, v7, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v49, v61
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v48, v8, v59
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v33, v33, v51, v57
	v_fma_f32 v51, -v54, v50, v62
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v55, -v58, v60, 1.0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v59, v7, v59
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v33, v33, v40, v37
	v_fmac_f32_e32 v50, v51, v56
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v51, v52, v193, v91
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v57, -v61, v49, 1.0
	v_fmac_f32_e32 v60, v55, v60
	v_div_scale_f32 v55, s5, v41, v46, v41
	v_fma_f32 v54, -v54, v50, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v49, v57, v49
	v_div_scale_f32 v57, s1, v42, v34, v42
	v_mul_f32_e32 v52, v55, v60
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v50, v54, v56, v50
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v54, off, off offset:660 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v63, v57, v49
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v62, -v58, v52, v55
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v91, v51, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v39, v50, v45, v39
	v_fma_f32 v64, -v61, v63, v57
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	scratch_load_b32 v45, off, off offset:528 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v52, v62, v60 :: v_dual_fmac_f32 v63, v64, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v56, -v61, v63, v57
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v0, v0, v54, v53
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v54, -v58, v52, v55
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v55, off, off offset:656 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v53, v0, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v52, v54, v60, v52
	s_mov_b32 vcc_lo, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v54, off, off offset:640 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v49, v56, v49, v63
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v53, v8, v25
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v41, v52, v46, v41
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v25, v7, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v34, v49, v34, v42
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v42, off, off offset:636 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v0, v34
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v55, v59, v55, v51
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v51, v55, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v38, v51, v41
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v42, v47, v42, v44
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v38, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v44, v42, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v42.l, v38.h
	v_mov_b16_e32 v42.h, v1.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v44.l, v1.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v34, v34, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v42, 1, v42
	v_cmp_o_f32_e64 s0, v34, v34
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v40, v38, v42, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v38, off, off offset:500 ; 4-byte Folded Reload
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v44.h, v45.l
	scratch_load_b32 v45, off, off offset:524 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v48, v48, v54, v43
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v42.l, v34.h
	v_mov_b16_e32 v42.h, v1.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v39, v1, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v43, v48, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v43.l, v0.h
	v_mov_b16_e32 v43.h, v1.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v33, v41, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v37, 1, v43
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v43.l, v1.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v40.l, v33.h
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v37, v0, v37, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v38, v39, v38, v89
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v39, 16, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v29.h, 0x7fff, v40.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v40.h, v1.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v89, v38, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v41, v8, v39
	v_mul_f32_e32 v39, v7, v39
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v29.l, 0x7fff, v37.h, vcc_lo
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v37, off, off offset:492 ; 4-byte Folded Reload
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v43.h, v45.l
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v14, v41, v14, v38
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v40, 1, v40
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v41, v1, v43 :: v_dual_and_b32 v0, 1, v42
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v38, v14, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v14, v33, v40, 0x7fff
	v_add3_u32 v0, v34, v0, 0x7fff
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v0.l, v1.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v40, 0xbfb8aa3b, v38
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v14.h, 0x7fff, v14.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v14.l, 0x7fff, v0.h, s0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v40
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v40, off, off offset:520 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v34, 0, 0x42800000, s1
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v37, v41, v37, v88
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v88, v37, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v37, v8, v27
	v_mul_f32_e32 v27, v7, v27
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v13, v37, v13, v33
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v37, v3, v44
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v44, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v33, v13, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v33, off, off offset:488 ; 4-byte Folded Reload
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v0.h, v40.l
	v_mov_b16_e32 v40.l, v1.l
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v33, v37, v33, v87
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v37, off, off offset:516 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v87, v33, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v12, v39, v12, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v33, v12, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v33, 0xbfb8aa3b, v12
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v33, 0, 0x42800000, s0
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v33, v33
	v_ldexp_f32 v33, v33, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v48, null, v33, v33, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v51, v48
	v_fma_f32 v55, -v48, v51, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v51, v55, v51 :: v_dual_mul_f32 v42, 0xbfb8aa3b, v13
	v_div_scale_f32 v55, s1, v12, v33, v12
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v42
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v42, v1, v0
	v_mul_f32_e32 v0, v3, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v34, v34
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v42, v42, v44, v84
	scratch_load_b32 v44, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v84, v42, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v34, v34, v41
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_dual_add_f32 v34, 1.0, v34 :: v_dual_fmac_f32 v41, 0xbfb8aa3b, v13
	.loc	1 366 22 is_stmt 1              ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v40.h, v37.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v37, v3, v43
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v43, off, off offset:484 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v39, v1, v40
	v_mul_f32_e32 v40, v3, v40
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v39, v39, v44, v85
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v85, v39, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v37, v37, v43, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v86, v37, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v11, v27, v11, v37
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v27, null, v34, v34, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v37, v11, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v37, v41
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v41, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v43, 0xbfb8aa3b, v11
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v37, v37, v44
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v44, -v27, v41, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v41, v44, v41
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v46, vcc_lo, v38, v34, v38
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v11
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v44, null, v37, v37, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v43, v43
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v47, v44
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v43, v43, v45
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v45, v46, v41
	v_fma_f32 v50, -v44, v47, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v43, 1.0, v43
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v49, -v27, v45, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v50, v47
	v_div_scale_f32 v52, null, v43, v43, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v45, v49, v41
	v_div_scale_f32 v49, s0, v13, v37, v13
	v_rcp_f32_e32 v50, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v27, -v27, v45, v46
	v_mul_f32_e32 v46, v49, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v27, v27, v41, v45
	v_fma_f32 v41, -v44, v46, v49
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v52, v50, 1.0
	v_div_fixup_f32 v27, v27, v34, v38
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v46, v41, v47
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	scratch_load_b32 v41, off, off offset:328 ; 4-byte Folded Reload
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v50, v45, v50
	v_div_scale_f32 v45, s4, v11, v43, v11
	v_fma_f32 v44, -v44, v46, v49
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v38.l, v1.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v56, v45, v50
	v_div_fmas_f32 v44, v44, v47, v46
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v46, off, off offset:564
	scratch_load_b32 v47, off, off offset:568
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v13, v44, v37, v13
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:504
	scratch_load_b32 v57, off, off offset:324
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v54, v8, v26
	v_mul_f32_e32 v26, v7, v26
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v37.h, v1.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v40, v40, v41, v83
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v41, v55, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v83, v40, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v49, -v48, v41, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v49, v51
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v25, v25, v47, v40
	s_waitcnt vmcnt(0)
	v_fma_f32 v0, v0, v57, v82
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v57, -v52, v56, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v40, v25, s3
	v_cndmask_b32_e64 v0, v82, v0, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v26, v26, v46, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v46, -v48, v41, v55
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v26, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v41, v46, v51, v41
	s_mov_b32 vcc_lo, s4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v51, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v6, s23, v5
	scratch_load_b32 v5, off, off offset:344 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v12, v41, v33, v12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:600
	scratch_load_b32 v41, off, off offset:596
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v12, v25, v12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v33, v53, v33, v39
	s_waitcnt vmcnt(0)
	v_fma_f32 v41, v54, v41, v42
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v39, v33, s3
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v33.l, v1.l
	v_mov_b16_e32 v33.h, v37.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v56, v57, v50
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v42, v41, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v25, v25, v27
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v27, v8, v24 :: v_dual_mul_f32 v34, v1, v33
	v_mul_f32_e32 v33, v3, v33
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v45, -v52, v56, v45
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v13, v26, v13
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v25, v25
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v24, v7, v24
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v40, v45, v50, v56
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v50, off, off offset:552 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v45, v8, v18
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v5, s23, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v11, v40, v43, v11
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v40, off, off offset:452 ; 4-byte Folded Reload
	s_mov_b32 s23, 0x31027000
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v0, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v11.l, v12.h
	v_mov_b16_e32 v11.h, v1.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v37.l, v0.h
	v_and_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v26, 1, v37
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	scratch_load_b32 v37, off, off offset:496 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v11, v12, v11, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v12, off, off offset:464 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v26, v0, v26, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v11.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v0.l, v13.h
	v_mov_b16_e32 v0.h, v1.l
	v_cndmask_b16 v11.l, 0x7fff, v26.h, vcc_lo
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v26, off, off offset:460 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fma_f32 v12, v34, v12, v81
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v34.l, v1.l
	v_mov_b16_e32 v34.h, v37.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v81, v12, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v37, v1, v34
	v_mul_f32_e32 v34, v3, v34
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v4, v27, v4, v12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v27.l, v25.h
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v26, v37, v26, v80
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v37, v8, v23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v27.h, v1.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v12, v4, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v23, v7, v23
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v80, v26, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v12, 1, v27
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v27, 0xbfb8aa3b, v4
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v2, v37, v2, v26
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v37, off, off offset:480 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v12, v25, v12, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v25.l, v1.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v26, v2, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v26, off, off offset:456 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v39, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v4
	v_exp_f32_e32 v27, v27
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v38.h, v37.l
	scratch_load_b32 v37, off, off offset:476 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v26, v33, v26, v79
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v33, v1, v38
	v_mul_f32_e32 v38, v3, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v79, v26, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v10, v24, v10, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v26, v10, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v26, 0xbfb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v26
	v_cndmask_b32_e64 v26, 0, 0x42800000, s1
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v25.h, v37.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v39, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v34, v34, v40, v78
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v40, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v3, v3, v25
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v27, v27, v37
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v78, v34, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v34, v1, v25
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v25, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v2
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	v_fma_f32 v9, v23, v9, v24
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v1.h, 0x7fff, v12.h, s0
	v_mov_b16_e32 v12.h, v1.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v23, null, v27, v27, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v24, v9, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v24, v37
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v37, v23
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v33, v33, v39, v77
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v39, 0xbfb8aa3b, v9
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v34, v34, v40, v76
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v77, v33, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v76, v34, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v24, v24, v40
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v40, -v23, v37, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v0, 1, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v24, 1.0, v24 :: v_dual_fmac_f32 v37, v40, v37
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v10
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	v_fma_f32 v45, v45, v50, v34
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v9
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v40, null, v24, v24, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v26, v26
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_add3_u32 v0, v13, v0, 0x7fff
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v43, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v26, v26, v41
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v42, vcc_lo, v4, v27, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v40, v43, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v26, 1.0, v26
	s_delay_alu instid0(TRANS32_DEP_2) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v39, v39, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v41, v42, v37
	v_fmac_f32_e32 v43, v47, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v44, null, v26, v26, v10
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v39, 1.0, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v46, -v23, v41, v42
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v8, v8, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v48, v44
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v17, v7, v17
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v49, null, v39, v39, v9
	v_fmac_f32_e32 v41, v46, v37
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v7, v18
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v8, v8, v222, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v47, v49
	v_fma_f32 v23, -v23, v41, v42
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v50, -v44, v48, 1.0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v33, v8, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v23, v23, v37, v41
	v_fmac_f32_e32 v48, v50, v48
	v_div_scale_f32 v50, s4, v10, v26, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v49, v47, 1.0
	v_div_fixup_f32 v4, v23, v27, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v47, v41, v47
	v_div_scale_f32 v46, s1, v2, v24, v2
	v_div_scale_f32 v41, s5, v9, v39, v9
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v42, v46, v43
	v_fma_f32 v37, -v40, v42, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v42, v37, v43 :: v_dual_mul_f32 v37, v50, v48
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v3, v3, v51, v74
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v40, -v40, v42, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v44, v37, v50
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v74, v3, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v18, v40, v43, v42
	v_fmac_f32_e32 v37, v46, v48
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v25, v38, v25, v75
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v38, v41, v47
	s_mov_b32 vcc_lo, s4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v7, v7, v219, v3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v40, -v44, v37, v50
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v75, v25, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v51, -v49, v38, v41
	v_div_fixup_f32 v2, v18, v24, v2
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v7, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v37, v40, v48, v37
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v38, v51, v47
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v17, v17, v220, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v10, v37, v26, v10
	v_fma_f32 v41, -v49, v38, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v25, v17, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v38, v41, v47, v38
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	v_mov_b32_e32 v13, 0x7632
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v7, v38, v39, v9
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v9, v17, v10
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v34, v45, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v3, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.l, v9.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v10, v2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.h, v1.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v8, v4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v12.l, v3.h
	v_mov_b16_e32 v10.h, v1.l
	v_mov_b16_e32 v10.l, v2.h
	v_and_b32_e32 v7, 1, v7
	v_cndmask_b16 v1.l, 0x7fff, v0.h, vcc_lo
	v_and_b32_e32 v8, 1, v12
	v_mov_b16_e32 v12.l, v4.h
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_add3_u32 v7, v9, v7, 0x7fff
	v_cmp_o_f32_e64 s0, v3, v3
	v_add3_u32 v0, v3, v8, 0x7fff
	v_and_b32_e32 v8, 1, v10
	v_and_b32_e32 v10, 1, v12
	v_cmp_o_f32_e64 s2, v2, v2
	v_cmp_o_f32_e64 s1, v4, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v3, v2, v8, 0x7fff
	v_and_b32_e32 v8, 16, v218
	v_cndmask_b16 v2.h, 0x7fff, v7.h, vcc_lo
	v_add3_u32 v9, v4, v10, 0x7fff
	v_cndmask_b16 v2.l, 0x7fff, v0.h, s0
	s_mov_b32 s0, 0x76543210
	v_cmp_eq_u32_e32 vcc_lo, 0, v8
	v_mov_b32_e32 v12, 0x5410
	v_cndmask_b16 v0.h, 0x7fff, v9.h, s1
	v_cndmask_b16 v0.l, 0x7fff, v3.h, s2
	v_dual_cndmask_b32 v4, v20, v28 :: v_dual_cndmask_b32 v13, 0x3276, v13
	v_dual_cndmask_b32 v7, v31, v21 :: v_dual_cndmask_b32 v8, v21, v31
	v_dual_cndmask_b32 v21, v1, v35 :: v_dual_cndmask_b32 v12, 0x1054, v12
	v_dual_cndmask_b32 v9, v11, v36 :: v_dual_cndmask_b32 v10, v36, v11
	v_cndmask_b32_e32 v1, v35, v1, vcc_lo
	v_cndmask_b32_e32 v11, v2, v29, vcc_lo
	v_cndmask_b32_e32 v3, v28, v20, vcc_lo
	v_cndmask_b32_e32 v20, v22, v32, vcc_lo
	v_cndmask_b32_e32 v17, v30, v19, vcc_lo
	v_lshl_or_b32 v12, v12, 8, v12
	v_lshl_or_b32 v13, v13, 8, v13
	v_cndmask_b32_e32 v2, v29, v2, vcc_lo
	v_permlanex16_b32 v4, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v12, 0x540054, v12
	v_and_b32_e32 v13, 0x760076, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v12, v12, 4, v12
	v_lshl_or_b32 v13, v13, 4, v13
	v_cndmask_b32_e32 v18, v19, v30, vcc_lo
	v_cndmask_b32_e32 v19, v32, v22, vcc_lo
	v_cndmask_b32_e32 v22, v0, v14, vcc_lo
	v_cndmask_b32_e32 v0, v14, v0, vcc_lo
	v_permlanex16_b32 v8, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v23, 0x5040504, v12
	v_and_b32_e32 v24, 0x7060706, v13
	v_permlanex16_b32 v18, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v0, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_perm_b32 v0, v4, v3, v23
	v_perm_b32 v1, v4, v3, v24
	v_perm_b32 v2, v8, v7, v23
	v_perm_b32 v3, v8, v7, v24
	v_add_lshl_u32 v4, v16, v6, 1
	v_perm_b32 v7, v10, v9, v23
	v_perm_b32 v8, v10, v9, v24
	v_perm_b32 v9, v14, v11, v23
	v_perm_b32 v10, v14, v11, v24
	v_add_lshl_u32 v6, v15, v6, 1
	v_perm_b32 v11, v18, v17, v23
	v_perm_b32 v12, v18, v17, v24
	v_perm_b32 v13, v20, v19, v23
	v_perm_b32 v14, v20, v19, v24
	v_add_lshl_u32 v16, v16, v5, 1
	v_perm_b32 v17, v25, v21, v23
	v_perm_b32 v18, v25, v21, v24
	v_perm_b32 v19, v26, v22, v23
	v_perm_b32 v20, v26, v22, v24
	v_add_lshl_u32 v5, v15, v5, 1
	s_clause 0x3
	buffer_store_b128 v[0:3], v4, s[20:23], 0 offen
	buffer_store_b128 v[7:10], v6, s[20:23], 0 offen
	buffer_store_b128 v[11:14], v16, s[20:23], 0 offen
	buffer_store_b128 v[17:20], v5, s[20:23], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 872
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 53
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 872
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 46212
; TotalNumSgprs: 55
; NumVgprs: 256
; ScratchSize: 872
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 55
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 872
    .sgpr_count:     55
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc256_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 351
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
