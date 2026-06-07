	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s31, s[0:1], 0x38
	v_mov_b32_e32 v226, v0
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	s_mov_b32 s48, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v124, 4, v226
	v_and_b32_e32 v179, 48, v124
	v_lshrrev_b32_e32 v1, 2, v226
	v_lshrrev_b32_e32 v126, 3, v226
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v59, 0, v124
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v180, 32, v126
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s27, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s26, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s10, s10, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v1, s31, v1
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_rcp_iflag_f32_e32 v0, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v0
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s9, s6
	s_mul_hi_u32 s9, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_sub_i32 s7, s7, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s5, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s9
	s_sub_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s16, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s6, s8, s16
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 295 20 is_stmt 0              ; generate_amdgcn.py:295:20
	s_min_i32 s7, s6, 4
	.loc	1 296 29 is_stmt 1              ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s5
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s6, s7
	s_abs_i32 s5, s2
	s_cvt_f32_u32 s17, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s17
	v_readfirstlane_b32 s17, v0
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[36:37], s[10:11]
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v0, 0x70, v124
	s_mov_b32 s11, 0x31027000
	s_mov_b64 s[28:29], s[14:15]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s39, s11
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s10, s17
	s_sub_i32 s17, 0, s6
	s_mul_i32 s17, s17, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s10, s17
	s_xor_b32 s17, s2, s7
	s_add_i32 s4, s10, s4
	s_ashr_i32 s17, s17, 31
	s_mul_hi_u32 s4, s5, s4
	s_mov_b32 s10, 0x7ffffffe
	s_mul_i32 s18, s4, s6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_mov_b32 s38, s10
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s5, s5, s18
	s_add_i32 s18, s4, 1
	s_sub_i32 s19, s5, s6
	s_cmp_ge_u32 s5, s6
	s_cselect_b32 s4, s18, s4
	s_cselect_b32 s5, s19, s5
	s_add_i32 s18, s4, 1
	s_cmp_ge_u32 s5, s6
	s_cselect_b32 s4, s18, s4
	.loc	1 303 14                        ; generate_amdgcn.py:303:14
	s_lshl_b32 s34, s27, 1
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s4, s4, s17
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s30, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s4, s4, s17
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_mad_u64_u32 v[77:78], null, s34, v126, v[0:1]
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s3, s31, 0x7f
.Ltmp13:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s17, s4, s7
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v2, s30, v179
	v_or_b32_e32 v3, s30, v126
	v_or_b32_e32 v4, s30, v180
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_ashr_i32 s5, s3, 31
.Ltmp15:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s17
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_lshr_b32 s5, s5, 25
.Ltmp17:
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s16
.Ltmp18:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s6, s31, 63
.Ltmp19:
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s26, s4, 7
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s7, s3, s5
.Ltmp21:
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v2
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s3, s31, v3
	v_cmp_gt_i32_e64 s4, s31, v4
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s33, s2, 6
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s18, s34, s30
	v_lshl_add_u32 v181, s27, 6, v77
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s6, 63
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s5, s33, s31
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s16, s26, s18
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 348 30 is_stmt 0              ; generate_amdgcn.py:348:30
	v_add3_u32 v182, v1, v179, s5
	.loc	1 352 22 is_stmt 1              ; generate_amdgcn.py:352:22
	s_and_b32 s37, s37, 0xffff
	.loc	1 352 30 is_stmt 0              ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v0, s16, v77
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_and_b32 s5, s3, s2
	s_and_b32 s4, s4, s2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s16, v181
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s6, 0x7f
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v2, s30, v182
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s3, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s35, s30, 64
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v3, 0x80000000, v0, s5
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v6, s35, v179
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v4, 0x80000000, v1, s4
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v0, s27, v0
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_lshl_b32 s17, s27, 7
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v1, s27, v1
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v7, s35, v126
	v_or_b32_e32 v8, s35, v180
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s16, s16, s17
	.loc	1 352 22 is_stmt 0              ; generate_amdgcn.py:352:22
	s_clause 0x1
	buffer_load_b128 v[19:22], v3, s[36:39], 0 offen
	buffer_load_b128 v[23:26], v4, s[36:39], 0 offen
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v3, s16, v77
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v5, 0x80000000, v2, vcc_lo
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v6
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v0, 0x80000000, v0, s5
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v2, 64, v2
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s4, s31, v7
	v_cmp_gt_i32_e64 s5, s31, v8
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v4, s16, v181
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1
	buffer_load_b128 v[31:34], v0, s[36:39], 0 offen
	buffer_load_b128 v[35:38], v1, s[36:39], 0 offen
	.loc	1 358 39 is_stmt 0              ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v0, s27, v3
	v_add3_u32 v9, s16, s27, v181
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s4, s3
	s_and_b32 s4, s5, s3
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v2, 0x80000000, v3, vcc_lo
	v_cndmask_b32_e64 v3, 0x80000000, v4, s4
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_cndmask_b32_e64 v4, 0x80000000, v9, s4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_clause 0x1
	buffer_load_b128 v[27:30], v5, s[8:11], 0 offen
	buffer_load_b128 v[39:42], v1, s[8:11], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[43:46], v2, s[36:39], 0 offen
	buffer_load_b128 v[47:50], v3, s[36:39], 0 offen
	buffer_load_b128 v[51:54], v0, s[36:39], 0 offen
	buffer_load_b128 v[55:58], v4, s[36:39], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v0, 1, v226
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v1, 15, v226
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshlrev_b32_e32 v2, 1, v226
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v3, 4, v226
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s6, 0xbf
	scratch_store_b32 off, v0, off offset:348 ; 4-byte Folded Spill
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v0, 48, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_or_b32 v6, v126, 16, v1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v5, 48, v2
	v_lshlrev_b32_e32 v2, 3, v226
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v4, v3, 1, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v3, 32, v6
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v184, v124, v5
	scratch_store_b32 off, v6, off offset:400 ; 4-byte Folded Spill
	v_or_b32_e32 v183, v0, v1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v7, 2, v4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	scratch_store_b32 off, v3, off offset:344 ; 4-byte Folded Spill
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
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
	v_add_nc_u32_e32 v60, 0, v184
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v5, 0x4c, v4
	v_or_b32_e32 v6, 0x4e, v4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(5)
	ds_store_b128 v60, v[27:30] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	ds_store_b128 v59, v[19:22]
	ds_store_b128 v59, v[23:26] offset:4096
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	ds_store_b128 v59, v[31:34] offset:16384
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
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v0, 0x100, v49
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshl_or_b32 v227, v1, 6, v19
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v240, 0x80, v49
	v_or_b32_e32 v245, 0x480, v49
	v_or_b32_e32 v242, 0x500, v49
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x180, v49
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v228, 16, v227
	v_xor_b32_e32 v229, 32, v227
	v_xor_b32_e32 v230, 48, v227
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v249, 0x580, v49
	scratch_store_b32 off, v0, off offset:8 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x200, v49
	v_or_b32_e32 v255, 0x600, v49
	v_or_b32_e32 v252, 0x680, v49
	v_or_b32_e32 v246, 0x800, v49
	v_or_b32_e32 v237, 0xb80, v49
	scratch_store_b32 off, v0, off offset:12 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x280, v49
	v_or_b32_e32 v253, 0xc00, v49
	v_or_b32_e32 v243, 0xc80, v49
	v_or_b32_e32 v247, 0xe00, v49
	v_or_b32_e32 v248, 0x1980, v49
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	scratch_store_b32 off, v0, off offset:16 ; 4-byte Folded Spill
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_or_b32_e32 v0, 0x300, v49
	v_or_b32_e32 v254, 0x1a00, v49
	v_or_b32_e32 v235, 0x1a80, v49
	v_or_b32_e32 v239, 0x1b00, v49
	v_or_b32_e32 v222, 0x1b80, v49
	scratch_store_b32 off, v0, off offset:20 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x380, v49
	v_or_b32_e32 v223, 0x1c00, v49
	v_or_b32_e32 v224, 0x1c80, v49
	v_or_b32_e32 v225, 0x1d00, v49
	v_or_b32_e32 v238, 0x1d80, v49
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x400, v49
	v_or_b32_e32 v241, 0x1e00, v49
	v_or_b32_e32 v236, 0x1e80, v49
	v_or_b32_e32 v251, 0x1f00, v49
	v_or_b32_e32 v250, 0x1f80, v49
	scratch_store_b32 off, v0, off offset:24 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x700, v49
	v_or_b32_e32 v244, 0x1c0, v49
	v_or_b32_e32 v20, 0x840, v49
	v_or_b32_e32 v21, 0x9c0, v49
	v_or_b32_e32 v22, 0xa40, v49
	scratch_store_b32 off, v0, off offset:52 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x780, v49
	v_or_b32_e32 v23, 0xbc0, v49
	v_or_b32_e32 v24, 0x15c0, v49
	scratch_store_b32 off, v0, off offset:56 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x880, v49
	scratch_store_b32 off, v0, off offset:352 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x900, v49
	scratch_store_b32 off, v0, off offset:36 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x980, v49
	scratch_store_b32 off, v0, off offset:136 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xa00, v49
	scratch_store_b32 off, v0, off offset:28 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xa80, v49
	scratch_store_b32 off, v0, off offset:32 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xb00, v49
	scratch_store_b32 off, v0, off offset:140 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xd00, v49
	scratch_store_b32 off, v0, off offset:364 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xd80, v49
	scratch_store_b32 off, v0, off offset:356 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xe80, v49
	scratch_store_b32 off, v0, off offset:40 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf00, v49
	scratch_store_b32 off, v0, off offset:44 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf80, v49
	scratch_store_b32 off, v0, off offset:48 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1000, v49
	scratch_store_b32 off, v0, off offset:60 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1080, v49
	scratch_store_b32 off, v0, off offset:64 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1100, v49
	scratch_store_b32 off, v0, off offset:68 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1180, v49
	scratch_store_b32 off, v0, off offset:72 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1200, v49
	scratch_store_b32 off, v0, off offset:76 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1280, v49
	scratch_store_b32 off, v0, off offset:80 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1300, v49
	scratch_store_b32 off, v0, off offset:84 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1380, v49
	scratch_store_b32 off, v0, off offset:88 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1400, v49
	scratch_store_b32 off, v0, off offset:92 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1480, v49
	scratch_store_b32 off, v0, off offset:96 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1500, v49
	scratch_store_b32 off, v0, off offset:100 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1580, v49
	scratch_store_b32 off, v0, off offset:104 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1600, v49
	scratch_store_b32 off, v0, off offset:108 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1680, v49
	scratch_store_b32 off, v0, off offset:112 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1700, v49
	scratch_store_b32 off, v0, off offset:116 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1780, v49
	scratch_store_b32 off, v0, off offset:120 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1800, v49
	scratch_store_b32 off, v0, off offset:124 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1880, v49
	scratch_store_b32 off, v0, off offset:128 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1900, v49
	scratch_store_b32 off, v0, off offset:132 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 64, v49
	scratch_store_b32 off, v0, off offset:144 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xc0, v49
	scratch_store_b32 off, v0, off offset:360 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x140, v49
	scratch_store_b32 off, v0, off offset:368 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x240, v49
	scratch_store_b32 off, v0, off offset:372 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x2c0, v49
	scratch_store_b32 off, v0, off offset:376 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x340, v49
	scratch_store_b32 off, v0, off offset:380 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x3c0, v49
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x440, v49
	scratch_store_b32 off, v0, off offset:388 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x4c0, v49
	scratch_store_b32 off, v0, off offset:392 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x540, v49
	scratch_store_b32 off, v0, off offset:396 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x5c0, v49
	scratch_store_b32 off, v0, off offset:404 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x640, v49
	scratch_store_b32 off, v0, off offset:148 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x6c0, v49
	scratch_store_b32 off, v0, off offset:152 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x740, v49
	scratch_store_b32 off, v0, off offset:408 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x7c0, v49
	scratch_store_b32 off, v0, off offset:156 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x8c0, v49
	scratch_store_b32 off, v0, off offset:416 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x940, v49
	scratch_store_b32 off, v0, off offset:420 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xac0, v49
	scratch_store_b32 off, v0, off offset:432 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xb40, v49
	scratch_store_b32 off, v0, off offset:436 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xc40, v49
	scratch_store_b32 off, v0, off offset:444 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xcc0, v49
	scratch_store_b32 off, v0, off offset:448 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xd40, v49
	scratch_store_b32 off, v0, off offset:452 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xdc0, v49
	scratch_store_b32 off, v0, off offset:456 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xe40, v49
	scratch_store_b32 off, v0, off offset:460 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xec0, v49
	scratch_store_b32 off, v0, off offset:464 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf40, v49
	scratch_store_b32 off, v0, off offset:468 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xfc0, v49
	scratch_store_b32 off, v0, off offset:160 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1040, v49
	scratch_store_b32 off, v0, off offset:164 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x10c0, v49
	scratch_store_b32 off, v0, off offset:168 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1140, v49
	scratch_store_b32 off, v0, off offset:172 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x11c0, v49
	scratch_store_b32 off, v0, off offset:176 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1240, v49
	scratch_store_b32 off, v0, off offset:180 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x12c0, v49
	scratch_store_b32 off, v0, off offset:184 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1340, v49
	scratch_store_b32 off, v0, off offset:188 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x13c0, v49
	scratch_store_b32 off, v0, off offset:192 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1440, v49
	scratch_store_b32 off, v0, off offset:196 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x14c0, v49
	scratch_store_b32 off, v0, off offset:200 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1540, v49
	scratch_store_b32 off, v0, off offset:204 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1640, v49
	scratch_store_b32 off, v0, off offset:208 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x16c0, v49
	scratch_store_b32 off, v0, off offset:212 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1740, v49
	scratch_store_b32 off, v0, off offset:216 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x17c0, v49
	scratch_store_b32 off, v0, off offset:220 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1840, v49
	scratch_store_b32 off, v0, off offset:224 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x18c0, v49
	scratch_store_b32 off, v0, off offset:228 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1940, v49
	scratch_store_b32 off, v0, off offset:232 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x19c0, v49
	scratch_store_b32 off, v0, off offset:236 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1a40, v49
	scratch_store_b32 off, v0, off offset:240 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1ac0, v49
	scratch_store_b32 off, v0, off offset:244 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1b40, v49
	scratch_store_b32 off, v0, off offset:248 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1bc0, v49
	scratch_store_b32 off, v0, off offset:252 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1c40, v49
	scratch_store_b32 off, v0, off offset:256 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1cc0, v49
	scratch_store_b32 off, v0, off offset:260 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1d40, v49
	scratch_store_b32 off, v0, off offset:264 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1dc0, v49
	scratch_store_b32 off, v0, off offset:268 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1e40, v49
	scratch_store_b32 off, v0, off offset:272 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1ec0, v49
	scratch_store_b32 off, v0, off offset:276 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1f40, v49
	scratch_store_b32 off, v0, off offset:280 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1fc0, v49
	scratch_store_b32 off, v0, off offset:284 ; 4-byte Folded Spill
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr0
                                        ; kill: killed $vgpr0
                                        ; implicit-def: $vgpr227
                                        ; implicit-def: $vgpr228
                                        ; implicit-def: $vgpr229
                                        ; implicit-def: $vgpr230
                                        ; implicit-def: $vgpr49
                                        ; implicit-def: $vgpr240
                                        ; implicit-def: $vgpr245
                                        ; implicit-def: $vgpr242
                                        ; implicit-def: $vgpr249
                                        ; implicit-def: $vgpr255
                                        ; implicit-def: $vgpr252
                                        ; implicit-def: $vgpr246
                                        ; implicit-def: $vgpr237
                                        ; implicit-def: $vgpr253
                                        ; implicit-def: $vgpr243
                                        ; implicit-def: $vgpr247
                                        ; implicit-def: $vgpr248
                                        ; implicit-def: $vgpr254
                                        ; implicit-def: $vgpr235
                                        ; implicit-def: $vgpr239
                                        ; implicit-def: $vgpr222
                                        ; implicit-def: $vgpr223
                                        ; implicit-def: $vgpr224
                                        ; implicit-def: $vgpr225
                                        ; implicit-def: $vgpr238
                                        ; implicit-def: $vgpr241
                                        ; implicit-def: $vgpr236
                                        ; implicit-def: $vgpr251
                                        ; implicit-def: $vgpr250
                                        ; implicit-def: $vgpr244
                                        ; implicit-def: $vgpr20
                                        ; implicit-def: $vgpr21
                                        ; implicit-def: $vgpr22
                                        ; implicit-def: $vgpr23
                                        ; implicit-def: $vgpr24
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
	v_and_or_b32 v19, v126, 16, v1
	s_load_b64 s[24:25], s[0:1], 0x20
	s_ashr_i32 s44, s7, 7
	v_or_b32_e32 v159, s26, v4
	v_or_b32_e32 v156, s26, v7
	v_or_b32_e32 v0, s33, v19
	v_or_b32_e32 v19, 32, v19
	v_or_b32_e32 v157, s26, v8
	v_or_b32_e32 v158, s26, v9
	v_or_b32_e32 v144, s26, v10
	v_mul_lo_u32 v161, v0, s44
	v_or_b32_e32 v19, s33, v19
	v_or_b32_e32 v145, s26, v11
	v_or_b32_e32 v146, s26, v12
	v_or_b32_e32 v147, s26, v13
	v_or_b32_e32 v128, s26, v14
	v_mul_lo_u32 v160, v19, s44
	v_or_b32_e32 v129, s26, v15
	v_or_b32_e32 v130, s26, v16
	v_or_b32_e32 v131, s26, v17
	v_or_b32_e32 v132, s26, v18
	v_or_b32_e32 v133, s26, v3
	v_or_b32_e32 v134, s26, v5
	v_or_b32_e32 v135, s26, v6
	v_add_nc_u32_e32 v155, s27, v4
	v_add_nc_u32_e32 v151, s27, v7
	v_add_nc_u32_e32 v152, s27, v8
	v_add_nc_u32_e32 v153, s27, v9
	v_add_nc_u32_e32 v148, s27, v10
	v_add_nc_u32_e32 v154, s27, v11
	v_add_nc_u32_e32 v149, s27, v12
	v_add_nc_u32_e32 v150, s27, v13
	v_add_nc_u32_e32 v136, s27, v14
	v_add_nc_u32_e32 v137, s27, v15
	v_add_nc_u32_e32 v138, s27, v16
	v_add_nc_u32_e32 v139, s27, v17
	v_add_nc_u32_e32 v140, s27, v18
	v_add_nc_u32_e32 v141, s27, v3
	v_add_nc_u32_e32 v142, s27, v5
	v_add_nc_u32_e32 v143, s27, v6
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v173, 0 :: v_dual_and_b32 v0, 0x430, v2
	v_or_b32_e32 v240, 0x80, v183
	v_or_b32_e32 v245, 0x480, v183
	v_or_b32_e32 v242, 0x500, v183
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v227, v1, 6, v0
	v_or_b32_e32 v0, 0x100, v183
	v_or_b32_e32 v249, 0x580, v183
	v_or_b32_e32 v255, 0x600, v183
	v_or_b32_e32 v252, 0x680, v183
	v_xor_b32_e32 v228, 16, v227
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x180, v183
	v_xor_b32_e32 v229, 32, v227
	v_xor_b32_e32 v230, 48, v227
	v_or_b32_e32 v246, 0x800, v183
	v_or_b32_e32 v237, 0xb80, v183
	scratch_store_b32 off, v0, off offset:8 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x200, v183
	v_or_b32_e32 v253, 0xc00, v183
	v_or_b32_e32 v243, 0xc80, v183
	v_or_b32_e32 v247, 0xe00, v183
	v_or_b32_e32 v248, 0x1980, v183
	scratch_store_b32 off, v0, off offset:12 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x280, v183
	v_or_b32_e32 v254, 0x1a00, v183
	v_or_b32_e32 v235, 0x1a80, v183
	v_or_b32_e32 v239, 0x1b00, v183
	v_or_b32_e32 v222, 0x1b80, v183
	scratch_store_b32 off, v0, off offset:16 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x300, v183
	v_or_b32_e32 v223, 0x1c00, v183
	v_or_b32_e32 v224, 0x1c80, v183
	v_or_b32_e32 v225, 0x1d00, v183
	v_or_b32_e32 v238, 0x1d80, v183
	scratch_store_b32 off, v0, off offset:20 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x380, v183
	v_or_b32_e32 v241, 0x1e00, v183
	v_or_b32_e32 v236, 0x1e80, v183
	v_or_b32_e32 v251, 0x1f00, v183
	v_or_b32_e32 v250, 0x1f80, v183
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x400, v183
	v_or_b32_e32 v244, 0x1c0, v183
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v119, 0
	scratch_store_b32 off, v0, off offset:24 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x700, v183
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v165, 0
	scratch_store_b32 off, v0, off offset:52 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x780, v183
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v111, 0
	scratch_store_b32 off, v0, off offset:56 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x880, v183
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v103, 0
	scratch_store_b32 off, v0, off offset:352 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x900, v183
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v87, 0
	scratch_store_b32 off, v0, off offset:36 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x980, v183
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v95, 0
	scratch_store_b32 off, v0, off offset:136 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xa00, v183
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v79, 0
	scratch_store_b32 off, v0, off offset:28 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xa80, v183
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v175, 0
	scratch_store_b32 off, v0, off offset:32 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xb00, v183
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v163, 0
	scratch_store_b32 off, v0, off offset:140 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xd00, v183
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v171, 0
	scratch_store_b32 off, v0, off offset:364 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xd80, v183
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v117, 0
	scratch_store_b32 off, v0, off offset:356 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xe80, v183
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v109, 0
	scratch_store_b32 off, v0, off offset:40 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf00, v183
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v93, 0
	scratch_store_b32 off, v0, off offset:44 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf80, v183
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v101, 0
	scratch_store_b32 off, v0, off offset:48 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1000, v183
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v85, 0
	scratch_store_b32 off, v0, off offset:60 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1080, v183
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v81, 0
	v_mov_b32_e32 v80, 0
.Ltmp22:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s15, s6, 6
	scratch_store_b32 off, v0, off offset:64 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1100, v183
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s16, 0
	s_add_i32 s14, s35, 64
	scratch_store_b32 off, v0, off offset:68 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1180, v183
	s_and_b32 s5, s13, 0xffff
	s_mov_b32 s4, s12
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	scratch_store_b32 off, v0, off offset:72 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1200, v183
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s47, 0, 0x9000
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s1, 0, 0x4000
	scratch_store_b32 off, v0, off offset:76 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1280, v183
	s_add_i32 s45, 0, 0x6000
	s_add_i32 s15, s15, -3
	s_mov_b32 s49, 1
	s_mov_b32 s38, s10
	scratch_store_b32 off, v0, off offset:80 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1300, v183
	s_mov_b32 s39, s11
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	scratch_store_b32 off, v0, off offset:84 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1380, v183
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	scratch_store_b32 off, v0, off offset:88 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1400, v183
	s_mov_b32 s42, s6
	s_mov_b32 s43, s7
	s_mov_b32 s48, s16
	s_mov_b32 s50, s16
	scratch_store_b32 off, v0, off offset:92 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1480, v183
	scratch_store_b32 off, v0, off offset:96 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1500, v183
	scratch_store_b32 off, v0, off offset:100 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1580, v183
	scratch_store_b32 off, v0, off offset:104 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1600, v183
	scratch_store_b32 off, v0, off offset:108 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1680, v183
	scratch_store_b32 off, v0, off offset:112 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1700, v183
	scratch_store_b32 off, v0, off offset:116 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1780, v183
	scratch_store_b32 off, v0, off offset:120 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1800, v183
	scratch_store_b32 off, v0, off offset:124 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1880, v183
	scratch_store_b32 off, v0, off offset:128 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1900, v183
	scratch_store_b32 off, v0, off offset:132 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 64, v183
	scratch_store_b32 off, v0, off offset:144 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xc0, v183
	scratch_store_b32 off, v0, off offset:360 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x140, v183
	scratch_store_b32 off, v0, off offset:368 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x240, v183
	scratch_store_b32 off, v0, off offset:372 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x2c0, v183
	scratch_store_b32 off, v0, off offset:376 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x340, v183
	scratch_store_b32 off, v0, off offset:380 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x3c0, v183
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x440, v183
	scratch_store_b32 off, v0, off offset:388 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x4c0, v183
	scratch_store_b32 off, v0, off offset:392 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x540, v183
	scratch_store_b32 off, v0, off offset:396 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x5c0, v183
	scratch_store_b32 off, v0, off offset:404 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x640, v183
	scratch_store_b32 off, v0, off offset:148 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x6c0, v183
	scratch_store_b32 off, v0, off offset:152 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x740, v183
	scratch_store_b32 off, v0, off offset:408 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x7c0, v183
	scratch_store_b32 off, v0, off offset:156 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x840, v183
	scratch_store_b32 off, v0, off offset:412 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x8c0, v183
	scratch_store_b32 off, v0, off offset:416 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x940, v183
	scratch_store_b32 off, v0, off offset:420 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x9c0, v183
	scratch_store_b32 off, v0, off offset:424 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xa40, v183
	scratch_store_b32 off, v0, off offset:428 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xac0, v183
	scratch_store_b32 off, v0, off offset:432 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xb40, v183
	scratch_store_b32 off, v0, off offset:436 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xbc0, v183
	scratch_store_b32 off, v0, off offset:440 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xc40, v183
	scratch_store_b32 off, v0, off offset:444 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xcc0, v183
	scratch_store_b32 off, v0, off offset:448 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xd40, v183
	scratch_store_b32 off, v0, off offset:452 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xdc0, v183
	scratch_store_b32 off, v0, off offset:456 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xe40, v183
	scratch_store_b32 off, v0, off offset:460 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xec0, v183
	scratch_store_b32 off, v0, off offset:464 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf40, v183
	scratch_store_b32 off, v0, off offset:468 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xfc0, v183
	scratch_store_b32 off, v0, off offset:160 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1040, v183
	scratch_store_b32 off, v0, off offset:164 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x10c0, v183
	scratch_store_b32 off, v0, off offset:168 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1140, v183
	scratch_store_b32 off, v0, off offset:172 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x11c0, v183
	scratch_store_b32 off, v0, off offset:176 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1240, v183
	scratch_store_b32 off, v0, off offset:180 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x12c0, v183
	scratch_store_b32 off, v0, off offset:184 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1340, v183
	scratch_store_b32 off, v0, off offset:188 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x13c0, v183
	scratch_store_b32 off, v0, off offset:192 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1440, v183
	scratch_store_b32 off, v0, off offset:196 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x14c0, v183
	scratch_store_b32 off, v0, off offset:200 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1540, v183
	scratch_store_b32 off, v0, off offset:204 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x15c0, v183
	scratch_store_b32 off, v0, off offset:472 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1640, v183
	scratch_store_b32 off, v0, off offset:208 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x16c0, v183
	scratch_store_b32 off, v0, off offset:212 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1740, v183
	scratch_store_b32 off, v0, off offset:216 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x17c0, v183
	scratch_store_b32 off, v0, off offset:220 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1840, v183
	scratch_store_b32 off, v0, off offset:224 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x18c0, v183
	scratch_store_b32 off, v0, off offset:228 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1940, v183
	scratch_store_b32 off, v0, off offset:232 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x19c0, v183
	scratch_store_b32 off, v0, off offset:236 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1a40, v183
	scratch_store_b32 off, v0, off offset:240 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1ac0, v183
	scratch_store_b32 off, v0, off offset:244 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1b40, v183
	scratch_store_b32 off, v0, off offset:248 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1bc0, v183
	scratch_store_b32 off, v0, off offset:252 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1c40, v183
	scratch_store_b32 off, v0, off offset:256 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1cc0, v183
	scratch_store_b32 off, v0, off offset:260 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1d40, v183
	scratch_store_b32 off, v0, off offset:264 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1dc0, v183
	scratch_store_b32 off, v0, off offset:268 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1e40, v183
	scratch_store_b32 off, v0, off offset:272 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1ec0, v183
	scratch_store_b32 off, v0, off offset:276 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1f40, v183
	scratch_store_b32 off, v0, off offset:280 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x1fc0, v183
	scratch_store_b32 off, v0, off offset:284 ; 4-byte Folded Spill
.Ltmp23:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 308 14                        ; generate_amdgcn.py:308:14
	s_lshl_b32 s52, s50, 6
	s_mov_b32 s51, s30
	s_mov_b32 s30, s35
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s35, s14, s52
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v76, s23 :: v_dual_add_nc_u32 v125, s48, v183
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v0, s35, v179
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v74, s21 :: v_dual_add_nc_u32 v185, s1, v183
	v_dual_mov_b32 v75, s22 :: v_dual_mov_b32 v72, s19
	v_mov_b32_e32 v71, s18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 343 23                        ; generate_amdgcn.py:343:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v0
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v0, s35, v182
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v70, s17 :: v_dual_mov_b32 v69, s16
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_mul_i32 s48, s35, s34
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s1, s51, 31
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	s_add_i32 s48, s48, s26
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s1, s1, 25
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	s_add_i32 s52, s48, s27
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s51, s51, s1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b128 v[65:68], v0, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v125 offset:1664
	ds_load_u8 v1, v125 offset:1536
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s51, s51, 7
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v73, s20
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s53, s51, s34
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s51, s44
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v195, v134, s53, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s1, -1, 0
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_add_i32 s54, s53, s26
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v196, v135, s53, 1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v197, v155, s54, 1
	v_add_lshl_u32 v198, v151, s54, 1
	v_add_lshl_u32 v199, v152, s54, 1
	v_add_lshl_u32 v200, v153, s54, 1
	v_add_lshl_u32 v201, v148, s54, 1
	v_add_lshl_u32 v202, v154, s54, 1
	v_add_lshl_u32 v203, v149, s54, 1
	v_add_lshl_u32 v204, v150, s54, 1
	v_add_lshl_u32 v205, v136, s54, 1
	v_add_lshl_u32 v206, v137, s54, 1
	v_add_lshl_u32 v207, v138, s54, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v125 offset:1920
	ds_load_u8 v2, v125 offset:1792
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v208, v139, s54, 1
	v_add_lshl_u32 v209, v140, s54, 1
	v_add_lshl_u32 v210, v141, s54, 1
	v_add_lshl_u32 v211, v142, s54, 1
	v_add_lshl_u32 v212, v143, s54, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v195, 0x80000000, v195, s1
	v_cndmask_b32_e64 v196, 0x80000000, v196, s1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e64 v197, 0x80000000, v197, s1
	v_cndmask_b32_e64 v198, 0x80000000, v198, s1
	v_cndmask_b32_e64 v199, 0x80000000, v199, s1
	v_cndmask_b32_e64 v200, 0x80000000, v200, s1
	v_cndmask_b32_e64 v201, 0x80000000, v201, s1
	v_cndmask_b32_e64 v202, 0x80000000, v202, s1
	v_cndmask_b32_e64 v203, 0x80000000, v203, s1
	v_cndmask_b32_e64 v204, 0x80000000, v204, s1
	v_cndmask_b32_e64 v205, 0x80000000, v205, s1
	v_cndmask_b32_e64 v206, 0x80000000, v206, s1
	v_cndmask_b32_e64 v207, 0x80000000, v207, s1
	v_cndmask_b32_e64 v208, 0x80000000, v208, s1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v125 offset:1152
	ds_load_u8 v3, v125 offset:1024
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e64 v209, 0x80000000, v209, s1
	v_cndmask_b32_e64 v210, 0x80000000, v210, s1
	v_cndmask_b32_e64 v211, 0x80000000, v211, s1
	v_cndmask_b32_e64 v212, 0x80000000, v212, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s49, s49, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s49, 2
	s_cselect_b32 s49, s49, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v125 offset:1408
	ds_load_u8 v4, v125 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v4, v3, 0xc0c0004
	v_lshl_or_b32 v3, v1, 16, v0
	ds_load_u8 v0, v125 offset:640
	ds_load_u8 v1, v125 offset:512
	v_lshl_or_b32 v2, v4, 16, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v125 offset:896
	ds_load_u8 v4, v125 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v4, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v1, v1, 16, v0
	ds_load_u8 v0, v125 offset:128
	ds_load_u8 v4, v125
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v4, v0, 0xc0c0004
	ds_load_u8 v4, v125 offset:384
	ds_load_u8 v5, v125 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v0, v4, 16, v0
	ds_load_u8 v4, v125 offset:1728
	ds_load_u8 v5, v125 offset:1600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	ds_load_u8 v5, v125 offset:1984
	ds_load_u8 v6, v125 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	ds_load_u8 v6, v125 offset:1216
	ds_load_u8 v7, v125 offset:1088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	ds_load_u8 v7, v125 offset:1472
	ds_load_u8 v8, v125 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v8, v7, 0xc0c0004
	v_lshl_or_b32 v7, v5, 16, v4
	ds_load_u8 v4, v125 offset:704
	ds_load_u8 v5, v125 offset:576
	v_lshl_or_b32 v6, v8, 16, v6
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	ds_load_u8 v5, v125 offset:960
	ds_load_u8 v8, v125 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v8, v5, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v5, v5, 16, v4
	ds_load_u8 v4, v125 offset:192
	ds_load_u8 v8, v125 offset:64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v8, v4, 0xc0c0004
	ds_load_u8 v8, v125 offset:448
	ds_load_u8 v9, v125 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v4, v8, 16, v4
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v8, v185 offset:1664
	ds_load_u8 v9, v185 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	ds_load_u8 v9, v185 offset:1920
	ds_load_u8 v10, v185 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v185 offset:1152
	ds_load_u8 v11, v185 offset:1024
	v_lshl_or_b32 v20, v9, 16, v8
	ds_load_u8 v8, v185 offset:640
	ds_load_u8 v9, v185 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v185 offset:1408
	ds_load_u8 v12, v185 offset:1280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v19, v11, 16, v10
	ds_load_u8 v9, v185 offset:896
	ds_load_u8 v10, v185 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	v_lshl_or_b32 v18, v9, 16, v8
	ds_load_u8 v8, v185 offset:128
	ds_load_u8 v9, v185
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	ds_load_u8 v9, v185 offset:384
	ds_load_u8 v10, v185 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v17, v9, 16, v8
	ds_load_u8 v8, v185 offset:1728
	ds_load_u8 v9, v185 offset:1600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	ds_load_u8 v9, v185 offset:1984
	ds_load_u8 v10, v185 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v185 offset:1216
	ds_load_u8 v11, v185 offset:1088
	v_lshl_or_b32 v189, v9, 16, v8
	ds_load_u8 v8, v185 offset:704
	ds_load_u8 v9, v185 offset:576
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v185 offset:1472
	ds_load_u8 v12, v185 offset:1344
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v188, v11, 16, v10
	ds_load_u8 v9, v185 offset:960
	ds_load_u8 v10, v185 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	v_lshl_or_b32 v187, v9, 16, v8
	ds_load_u8 v8, v185 offset:192
	ds_load_u8 v9, v185 offset:64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v9, v8, 0xc0c0004
	ds_load_u8 v9, v185 offset:448
	ds_load_u8 v10, v185 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v186, v9, 16, v8
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v8, s0, v227
	ds_load_b128 v[21:24], v8
	ds_load_b128 v[190:193], v8 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[0:3], v[21:24], v[69:76] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[0:3], v[190:193], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[4:7], v[21:24], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[4:7], v[190:193], v[69:76] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[33:40], v[17:20], v[21:24], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[186:189], v[21:24], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[17:20], v[190:193], v[69:76] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[186:189], v[190:193], v[69:76] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v125 offset:3712
	ds_load_u8 v69, v125 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v125 offset:3968
	ds_load_u8 v70, v125 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v125 offset:3200
	ds_load_u8 v71, v125 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v125 offset:3456
	ds_load_u8 v72, v125 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	v_lshl_or_b32 v72, v69, 16, v0
	ds_load_u8 v0, v125 offset:2688
	ds_load_u8 v69, v125 offset:2560
	v_lshl_or_b32 v71, v71, 16, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v125 offset:2944
	ds_load_u8 v70, v125 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v69, 16, v0
	ds_load_u8 v0, v125 offset:2176
	ds_load_u8 v69, v125 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v125 offset:2432
	ds_load_u8 v73, v125 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v73, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v69, 16, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v0, s0, v228
	ds_load_b128 v[73:76], v0
	ds_load_b128 v[186:189], v0 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[69:72], v[73:76], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[69:72], v[186:189], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v0, v125 offset:3776
	ds_load_u8 v69, v125 offset:3648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v125 offset:4032
	ds_load_u8 v70, v125 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v125 offset:3264
	ds_load_u8 v71, v125 offset:3136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v125 offset:3520
	ds_load_u8 v72, v125 offset:3392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	v_lshl_or_b32 v72, v69, 16, v0
	ds_load_u8 v0, v125 offset:2752
	ds_load_u8 v69, v125 offset:2624
	v_lshl_or_b32 v71, v71, 16, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v125 offset:3008
	ds_load_u8 v70, v125 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v69, 16, v0
	ds_load_u8 v0, v125 offset:2240
	ds_load_u8 v69, v125 offset:2112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v125 offset:2496
	ds_load_u8 v190, v125 offset:2368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v190, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v69, 16, v0
	v_wmma_i32_16x16x16_iu8 v[9:16], v[69:72], v[73:76], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[69:72], v[186:189], v[25:32] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v185 offset:3712
	ds_load_u8 v69, v185 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v185 offset:3968
	ds_load_u8 v70, v185 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v185 offset:3200
	ds_load_u8 v71, v185 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v185 offset:3456
	ds_load_u8 v72, v185 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	v_lshl_or_b32 v72, v69, 16, v0
	ds_load_u8 v0, v185 offset:2688
	ds_load_u8 v69, v185 offset:2560
	v_lshl_or_b32 v71, v71, 16, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v185 offset:2944
	ds_load_u8 v70, v185 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v69, 16, v0
	ds_load_u8 v0, v185 offset:2176
	ds_load_u8 v69, v185 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v185 offset:2432
	ds_load_u8 v190, v185 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v190, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v69, 16, v0
	ds_load_u8 v0, v185 offset:3776
	ds_load_u8 v190, v185 offset:3648
	v_wmma_i32_16x16x16_iu8 v[33:40], v[69:72], v[73:76], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[69:72], v[186:189], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v190, v0, 0xc0c0004
	ds_load_u8 v190, v185 offset:4032
	ds_load_u8 v191, v185 offset:3904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v190, v191, v190, 0xc0c0004
	ds_load_u8 v191, v185 offset:3264
	ds_load_u8 v192, v185 offset:3136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v191, v192, v191, 0xc0c0004
	ds_load_u8 v192, v185 offset:3520
	ds_load_u8 v193, v185 offset:3392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v192, v193, v192, 0xc0c0004
	v_lshl_or_b32 v193, v190, 16, v0
	ds_load_u8 v0, v185 offset:2752
	ds_load_u8 v190, v185 offset:2624
	v_lshl_or_b32 v192, v192, 16, v191
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v190, v0, 0xc0c0004
	ds_load_u8 v190, v185 offset:3008
	ds_load_u8 v191, v185 offset:2880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v190, v191, v190, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v191, v190, 16, v0
	ds_load_u8 v0, v185 offset:2240
	ds_load_u8 v190, v185 offset:2112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v190, v0, 0xc0c0004
	ds_load_u8 v190, v185 offset:2496
	ds_load_u8 v194, v185 offset:2368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v190, v194, v190, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v190, v190, 16, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v125 offset:5760
	ds_load_u8 v69, v125 offset:5632
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[1:8], v[190:193], v[73:76], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[190:193], v[186:189], v[17:24] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v125 offset:6016
	ds_load_u8 v70, v125 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v125 offset:5248
	ds_load_u8 v71, v125 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v125 offset:5504
	ds_load_u8 v72, v125 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	v_lshl_or_b32 v72, v69, 16, v0
	ds_load_u8 v0, v125 offset:4736
	ds_load_u8 v69, v125 offset:4608
	v_lshl_or_b32 v71, v71, 16, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v125 offset:4992
	ds_load_u8 v70, v125 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v69, 16, v0
	ds_load_u8 v0, v125 offset:4224
	ds_load_u8 v69, v125 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v125 offset:4480
	ds_load_u8 v73, v125 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v73, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v69, 16, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v0, s0, v229
	ds_load_b128 v[73:76], v0
	ds_load_b128 v[186:189], v0 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[69:72], v[73:76], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[69:72], v[186:189], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v0, v125 offset:5824
	ds_load_u8 v69, v125 offset:5696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v125 offset:6080
	ds_load_u8 v70, v125 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v125 offset:5312
	ds_load_u8 v71, v125 offset:5184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v125 offset:5568
	ds_load_u8 v72, v125 offset:5440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	v_lshl_or_b32 v72, v69, 16, v0
	ds_load_u8 v0, v125 offset:4800
	ds_load_u8 v69, v125 offset:4672
	v_lshl_or_b32 v71, v71, 16, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v125 offset:5056
	ds_load_u8 v70, v125 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v69, 16, v0
	ds_load_u8 v0, v125 offset:4288
	ds_load_u8 v69, v125 offset:4160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v125 offset:4544
	ds_load_u8 v190, v125 offset:4416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v190, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v69, v69, 16, v0
	v_wmma_i32_16x16x16_iu8 v[9:16], v[69:72], v[73:76], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[69:72], v[186:189], v[25:32] neg_lo:[1,1,0]
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v185 offset:5760
	ds_load_u8 v69, v185 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v185 offset:6016
	ds_load_u8 v70, v185 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v185 offset:5248
	ds_load_u8 v71, v185 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v185 offset:5504
	ds_load_u8 v72, v185 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	v_lshl_or_b32 v72, v69, 16, v0
	ds_load_u8 v0, v185 offset:4736
	ds_load_u8 v69, v185 offset:4608
	v_lshl_or_b32 v71, v71, 16, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v185 offset:4992
	ds_load_u8 v70, v185 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v69, 16, v0
	ds_load_u8 v0, v185 offset:4224
	ds_load_u8 v69, v185 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v185 offset:4480
	ds_load_u8 v190, v185 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v190, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v69, 16, v0
	ds_load_u8 v0, v185 offset:5824
	ds_load_u8 v190, v185 offset:5696
	v_wmma_i32_16x16x16_iu8 v[33:40], v[69:72], v[73:76], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[69:72], v[186:189], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v190, v0, 0xc0c0004
	ds_load_u8 v190, v185 offset:6080
	ds_load_u8 v191, v185 offset:5952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v190, v191, v190, 0xc0c0004
	ds_load_u8 v191, v185 offset:5312
	ds_load_u8 v192, v185 offset:5184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v191, v192, v191, 0xc0c0004
	ds_load_u8 v192, v185 offset:5568
	ds_load_u8 v193, v185 offset:5440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v192, v193, v192, 0xc0c0004
	v_lshl_or_b32 v193, v190, 16, v0
	ds_load_u8 v0, v185 offset:4800
	ds_load_u8 v190, v185 offset:4672
	v_lshl_or_b32 v192, v192, 16, v191
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v190, v0, 0xc0c0004
	ds_load_u8 v190, v185 offset:5056
	ds_load_u8 v191, v185 offset:4928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v190, v191, v190, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v191, v190, 16, v0
	ds_load_u8 v0, v185 offset:4288
	ds_load_u8 v190, v185 offset:4160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v190, v0, 0xc0c0004
	ds_load_u8 v190, v185 offset:4544
	ds_load_u8 v194, v185 offset:4416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v190, v194, v190, 0xc0c0004
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v194, v133, s53, 1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v190, v190, 16, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v125 offset:7808
	ds_load_u8 v69, v125 offset:7680
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v194, 0x80000000, v194, s1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[17:24], v[190:193], v[186:189], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[190:193], v[73:76], v[1:8] neg_lo:[1,1,0]
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v191, v130, s53, 1
	v_add_lshl_u32 v192, v131, s53, 1
	v_add_lshl_u32 v193, v132, s53, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v191, 0x80000000, v191, s1
	v_cndmask_b32_e64 v192, 0x80000000, v192, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v193, 0x80000000, v193, s1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v125 offset:8064
	ds_load_u8 v70, v125 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	ds_load_u8 v70, v125 offset:7296
	ds_load_u8 v71, v125 offset:7168
	v_lshl_or_b32 v189, v69, 16, v0
	ds_load_u8 v0, v125 offset:6784
	ds_load_u8 v69, v125 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v125 offset:7552
	ds_load_u8 v72, v125 offset:7424
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v72, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v188, v71, 16, v70
	ds_load_u8 v69, v125 offset:7040
	ds_load_u8 v70, v125 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	v_lshl_or_b32 v187, v69, 16, v0
	ds_load_u8 v0, v125 offset:6272
	ds_load_u8 v69, v125 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v69, v0, 0xc0c0004
	ds_load_u8 v69, v125 offset:6528
	ds_load_u8 v70, v125 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v70, v69, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v186, v69, 16, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v0, s0, v230
	ds_load_b128 v[69:72], v0
	ds_load_b128 v[73:76], v0 offset:2048
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[186:189], v[69:72], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[186:189], v[73:76], v[57:64] neg_lo:[1,1,0]
	ds_load_u8 v0, v125 offset:7872
	ds_load_u8 v186, v125 offset:7744
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v63, v63
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v186, v0, 0xc0c0004
	ds_load_u8 v186, v125 offset:8128
	ds_load_u8 v187, v125 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v186, v187, v186, 0xc0c0004
	ds_load_u8 v187, v125 offset:7360
	ds_load_u8 v188, v125 offset:7232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v188, v187, 0xc0c0004
	ds_load_u8 v188, v125 offset:7616
	ds_load_u8 v189, v125 offset:7488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v188, v189, v188, 0xc0c0004
	v_lshl_or_b32 v189, v186, 16, v0
	ds_load_u8 v0, v125 offset:6848
	ds_load_u8 v186, v125 offset:6720
	v_lshl_or_b32 v188, v188, 16, v187
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v186, v0, 0xc0c0004
	ds_load_u8 v186, v125 offset:7104
	ds_load_u8 v187, v125 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v186, v187, v186, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v187, v186, 16, v0
	ds_load_u8 v0, v125 offset:6336
	ds_load_u8 v186, v125 offset:6208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v186, v0, 0xc0c0004
	ds_load_u8 v186, v125 offset:6592
	ds_load_u8 v125, v125 offset:6464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v125, v125, v186, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v186, v125, 16, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v185 offset:7808
	ds_load_u8 v125, v185 offset:7680
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[9:16], v[186:189], v[69:72], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[25:32], v[186:189], v[73:76], v[25:32] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v125, v0, 0xc0c0004
	ds_load_u8 v125, v185 offset:8064
	ds_load_u8 v186, v185 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v125, v186, v125, 0xc0c0004
	ds_load_u8 v186, v185 offset:7296
	ds_load_u8 v187, v185 offset:7168
	v_lshl_or_b32 v189, v125, 16, v0
	ds_load_u8 v0, v185 offset:6784
	ds_load_u8 v125, v185 offset:6656
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v186, v187, v186, 0xc0c0004
	ds_load_u8 v187, v185 offset:7552
	ds_load_u8 v188, v185 offset:7424
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v125, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v188, v187, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v188, v187, 16, v186
	ds_load_u8 v125, v185 offset:7040
	ds_load_u8 v186, v185 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v125, v186, v125, 0xc0c0004
	v_lshl_or_b32 v187, v125, 16, v0
	ds_load_u8 v0, v185 offset:6272
	ds_load_u8 v125, v185 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v125, v0, 0xc0c0004
	ds_load_u8 v125, v185 offset:6528
	ds_load_u8 v186, v185 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v125, v186, v125, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v186, v125, 16, v0
	ds_load_u8 v0, v185 offset:7872
	ds_load_u8 v125, v185 offset:7744
	v_wmma_i32_16x16x16_iu8 v[33:40], v[186:189], v[69:72], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[186:189], v[73:76], v[49:56] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v125, v0, 0xc0c0004
	ds_load_u8 v125, v185 offset:8128
	ds_load_u8 v186, v185 offset:8000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v125, v186, v125, 0xc0c0004
	ds_load_u8 v186, v185 offset:7360
	ds_load_u8 v187, v185 offset:7232
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v186, v187, v186, 0xc0c0004
	ds_load_u8 v187, v185 offset:7616
	ds_load_u8 v188, v185 offset:7488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v188, v187, 0xc0c0004
	v_lshl_or_b32 v188, v125, 16, v0
	ds_load_u8 v0, v185 offset:6848
	ds_load_u8 v125, v185 offset:6720
	v_lshl_or_b32 v187, v187, 16, v186
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v125, v0, 0xc0c0004
	ds_load_u8 v125, v185 offset:7104
	ds_load_u8 v186, v185 offset:6976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v125, v186, v125, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v186, v125, 16, v0
	ds_load_u8 v0, v185 offset:6336
	ds_load_u8 v125, v185 offset:6208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v125, v0, 0xc0c0004
	ds_load_u8 v125, v185 offset:6592
	ds_load_u8 v185, v185 offset:6464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v125, v185, v125, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v185, v125, 16, v0
	v_cvt_f32_i32_e32 v0, v53
	v_cvt_f32_i32_e32 v53, v55
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v55, v9
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[1:8], v[185:188], v[69:72], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[17:24], v[185:188], v[73:76], v[17:24] neg_lo:[1,1,0]
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v73, v13
	v_cvt_f32_i32_e32 v69, v58
	v_cvt_f32_i32_e32 v70, v57
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v125, v1
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v1, s35, v126
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v76, v2
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v2, s48, v181
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v188, v5
	v_cvt_f32_i32_e32 v185, v4
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e32 vcc_lo, s31, v1
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	v_or_b32_e32 v1, s35, v180
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v4, v159, s53, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v186, v3
	v_cvt_f32_i32_e32 v187, v6
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v3, v160, s51, 1
	.loc	1 344 23                        ; generate_amdgcn.py:344:23
	v_cmp_gt_i32_e64 s0, s31, v1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v6, v156, s53, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v190, v7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v7, v157, s53, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v189, v8
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e64 v5, 0x80000000, v2, s0
	.loc	1 358 39                        ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v2, s52, v77
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v8, v158, s53, 1
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v57, v50
	v_cvt_f32_i32_e32 v58, v49
	v_cvt_f32_i32_e32 v50, v52
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e32 v9, 0x80000000, v2, vcc_lo
	.loc	1 358 39 is_stmt 0              ; generate_amdgcn.py:358:39
	v_add_nc_u32_e32 v2, s52, v181
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v52, v51
	v_cvt_f32_i32_e32 v49, v54
	v_cvt_f32_i32_e32 v51, v56
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v54, v10
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_cndmask_b32_e64 v13, 0x80000000, v2, s0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v2, v161, s51, 1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v56, v12
	v_cvt_f32_i32_e32 v71, v11
	v_cvt_f32_i32_e32 v72, v14
	v_cvt_f32_i32_e32 v74, v16
	v_cvt_f32_i32_e32 v75, v15
	.loc	1 352 30                        ; generate_amdgcn.py:352:30
	v_add_nc_u32_e32 v1, s48, v77
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v10, v144, s53, 1
	v_add_lshl_u32 v11, v145, s53, 1
	v_add_lshl_u32 v12, v146, s53, 1
	v_add_lshl_u32 v14, v147, s53, 1
	v_add_lshl_u32 v15, v128, s53, 1
	v_add_lshl_u32 v16, v129, s53, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v4, 0x80000000, v4, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v6, 0x80000000, v6, s1
	v_cndmask_b32_e64 v7, 0x80000000, v7, s1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s1
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v10, 0x80000000, v10, s1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s1
	v_cndmask_b32_e64 v14, 0x80000000, v14, s1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v213, v2, s[4:7], 0 offen
	buffer_load_u16 v214, v3, s[4:7], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0x1f
	buffer_load_u16 v215, v4, s[40:43], 0 offen
	buffer_load_u16 v216, v6, s[40:43], 0 offen
	buffer_load_u16 v217, v7, s[40:43], 0 offen
	buffer_load_u16 v218, v8, s[40:43], 0 offen
	buffer_load_u16 v219, v10, s[40:43], 0 offen
	buffer_load_u16 v220, v11, s[40:43], 0 offen
	buffer_load_u16 v221, v12, s[40:43], 0 offen
	buffer_load_u16 v231, v14, s[40:43], 0 offen
	buffer_load_u16 v232, v15, s[40:43], 0 offen
	buffer_load_u16 v233, v16, s[40:43], 0 offen
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
	buffer_load_u16 v206, v206, s[40:43], 0 offen
	buffer_load_u16 v207, v207, s[40:43], 0 offen
	buffer_load_u16 v208, v208, s[40:43], 0 offen
	buffer_load_u16 v209, v209, s[40:43], 0 offen
	buffer_load_u16 v210, v210, s[40:43], 0 offen
	buffer_load_u16 v211, v211, s[40:43], 0 offen
	buffer_load_u16 v212, v212, s[40:43], 0 offen
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x3
	buffer_load_b128 v[1:4], v1, s[36:39], 0 offen
	buffer_load_b128 v[5:8], v5, s[36:39], 0 offen
	buffer_load_b128 v[9:12], v9, s[36:39], 0 offen
	buffer_load_b128 v[13:16], v13, s[36:39], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s0, s49, 12
	s_mov_b32 s48, s46
	s_add_i32 s51, s0, 0
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v234, s51, v184
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_add_i32 s46, s51, s0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_barrier
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v20, v20
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(38)
	ds_store_b128 v234, v[65:68] offset:32768
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v65, s46, v124
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v23, v23
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s52, s50, 1
	s_mov_b32 s0, s47
	s_mov_b32 s1, s45
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s47, s51, 0x8000
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_add_i32 s45, s46, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s50, s15
	s_mov_b32 s50, s52
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
	v_lshlrev_b32_e32 v1, 16, v213
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v2, 16, v215
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v3, v1, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v172, v3, v41 :: v_dual_lshlrev_b32 v3, 16, v216
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v4, v1, v3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v173, v4, v42 :: v_dual_lshlrev_b32 v4, 16, v217
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v1, v4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v164, v5, v43 :: v_dual_lshlrev_b32 v5, 16, v218
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v6, v1, v5
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v165, v6, v44 :: v_dual_lshlrev_b32 v6, 16, v219
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v1, v6
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v118, v7, v45 :: v_dual_lshlrev_b32 v7, 16, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v8, v1, v7
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v119, v8, v46 :: v_dual_lshlrev_b32 v8, 16, v221
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v9, v1, v8
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v110, v9, v47
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v9, 16, v231
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v10, v1, v9
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v111, v10, v48
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v10, 16, v232
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v11, v1, v10
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v102, v11, v55 :: v_dual_lshlrev_b32 v11, 16, v233
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v12, v1, v11
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v103, v12, v54 :: v_dual_lshlrev_b32 v12, 16, v191
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v13, v1, v12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v94, v13, v71 :: v_dual_lshlrev_b32 v13, 16, v192
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v14, v1, v13
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v95, v14, v56 :: v_dual_lshlrev_b32 v14, 16, v193
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v15, v1, v14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v86, v15, v73 :: v_dual_lshlrev_b32 v15, 16, v194
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v16, v1, v15
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v87, v16, v72 :: v_dual_lshlrev_b32 v16, 16, v195
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v41, v1, v16
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v78, v41, v75 :: v_dual_lshlrev_b32 v41, 16, v196
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v42, v1, v41
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v79, v42, v74
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v42, 16, v214
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v175, v2, v70
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v176, v2, v69
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v168, v2, v59
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v169, v2, v60
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v6
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v120, v2, v61
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v121, v2, v62
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v8
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v112, v2, v63
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v113, v2, v64
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v10
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v104, v2, v25
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v105, v2, v26
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v96, v2, v27
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v97, v2, v28
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v88, v2, v29
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v89, v2, v30
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v16
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v80, v2, v31
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v2, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v81, v2, v32 :: v_dual_lshlrev_b32 v2, 16, v197
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v3, v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v162, v3, v33 :: v_dual_lshlrev_b32 v3, 16, v198
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v4, v1, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v174, v4, v34
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v4, 16, v199
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v5, v1, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v166, v5, v35 :: v_dual_lshlrev_b32 v5, 16, v200
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v6, v1, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v167, v6, v36 :: v_dual_lshlrev_b32 v6, 16, v201
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v7, v1, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v122, v7, v37 :: v_dual_lshlrev_b32 v7, 16, v202
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v8, v1, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v123, v8, v38 :: v_dual_lshlrev_b32 v8, 16, v203
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v9, v1, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v114, v9, v39 :: v_dual_lshlrev_b32 v9, 16, v204
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v10, v1, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v115, v10, v40 :: v_dual_lshlrev_b32 v10, 16, v205
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v11, v1, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v106, v11, v125 :: v_dual_lshlrev_b32 v11, 16, v206
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v12, v1, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v107, v12, v76 :: v_dual_lshlrev_b32 v12, 16, v207
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v13, v1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v98, v13, v186 :: v_dual_lshlrev_b32 v13, 16, v208
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v14, v1, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v99, v14, v185
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v14, 16, v209
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v15, v1, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v90, v15, v188 :: v_dual_lshlrev_b32 v15, 16, v210
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v16, v1, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v91, v16, v187
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v16, 16, v211
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v25, v1, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v82, v25, v190 :: v_dual_lshlrev_b32 v25, 16, v212
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v1, v1, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v83, v1, v189
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v1, v42, v2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v177, v1, v58
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v1, v42, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v178, v1, v57 :: v_dual_mul_f32 v1, v42, v4
	v_dual_fmac_f32 v170, v1, v52 :: v_dual_mul_f32 v1, v42, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v171, v1, v50
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v1, v42, v6
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v127, v1, v0 :: v_dual_mul_f32 v0, v42, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v163, v0, v49 :: v_dual_mul_f32 v0, v42, v8
	v_fmac_f32_e32 v116, v0, v53
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v42, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v117, v0, v51 :: v_dual_mul_f32 v0, v42, v10
	v_fmac_f32_e32 v108, v0, v17
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v42, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v109, v0, v18 :: v_dual_mul_f32 v0, v42, v12
	v_fmac_f32_e32 v100, v0, v19
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v42, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v101, v0, v20 :: v_dual_mul_f32 v0, v42, v14
	v_fmac_f32_e32 v92, v0, v21
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v42, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_dual_fmac_f32 v93, v0, v22 :: v_dual_mul_f32 v0, v42, v16
	v_fmac_f32_e32 v84, v0, v23
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v42, v25
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fmac_f32_e32 v85, v0, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v49, v183
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v162, 0
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s47, 0, 0x9000
	s_add_i32 s46, 0, 0x2000
	s_add_i32 s1, 0, 0x4000
	s_add_i32 s45, 0, 0x6000
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v24, off offset:472
	scratch_store_b32 off, v23, off offset:440
	scratch_store_b32 off, v22, off offset:428
	scratch_store_b32 off, v21, off offset:424
	scratch_store_b32 off, v20, off offset:412
.LBB0_8:                                ; %Flow611
	v_dual_mov_b32 v219, 0 :: v_dual_add_nc_u32 v0, s0, v227
	scratch_load_b32 v126, off, off offset:368 ; 4-byte Folded Reload
	v_dual_mov_b32 v124, v244 :: v_dual_add_nc_u32 v1, s0, v228
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[29:32], v0
	ds_load_b128 v[25:28], v0 offset:2048
	v_dual_mov_b32 v43, 0 :: v_dual_add_nc_u32 v0, s0, v229
	v_dual_mov_b32 v39, 0 :: v_dual_add_nc_u32 v2, s0, v230
	ds_load_b128 v[21:24], v1
	ds_load_b128 v[17:20], v1 offset:2048
	ds_load_b128 v[13:16], v0
	ds_load_b128 v[9:12], v0 offset:2048
	ds_load_b128 v[5:8], v2
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[1:4], v2 offset:2048
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v220, 0
	v_mov_b32_e32 v211, v255
	scratch_store_b32 off, v0, off offset:312 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v193, v252
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v205, v248
	scratch_store_b32 off, v0, off offset:320 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v231, v240
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v209, v254
	v_mov_b32_e32 v197, v243
	scratch_store_b32 off, v0, off offset:328 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v203, v238
	v_dual_mov_b32 v213, v223 :: v_dual_mov_b32 v212, v242
	scratch_store_b32 off, v0, off offset:288 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v207, v241
	v_mov_b32_e32 v198, v249
	v_mov_b32_e32 v214, v247
	v_mov_b32_e32 v208, v235
	scratch_store_b32 off, v0, off offset:292 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v189, v251
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v201, v250
	v_mov_b32_e32 v74, v253
	scratch_store_b32 off, v0, off offset:324 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v125, v237
	s_clause 0x11                           ; 72-byte Folded Reload
	scratch_load_b32 v237, off, off offset:404
	scratch_load_b32 v252, off, off offset:408
	scratch_load_b32 v215, off, off offset:412
	scratch_load_b32 v235, off, off offset:416
	scratch_load_b32 v254, off, off offset:420
	scratch_load_b32 v233, off, off offset:424
	scratch_load_b32 v234, off, off offset:428
	scratch_load_b32 v255, off, off offset:432
	scratch_load_b32 v251, off, off offset:436
	scratch_load_b32 v232, off, off offset:440
	scratch_load_b32 v249, off, off offset:444
	scratch_load_b32 v248, off, off offset:448
	scratch_load_b32 v242, off, off offset:452
	scratch_load_b32 v240, off, off offset:456
	scratch_load_b32 v247, off, off offset:460
	scratch_load_b32 v243, off, off offset:464
	scratch_load_b32 v238, off, off offset:468
	scratch_load_b32 v216, off, off offset:472
	v_mov_b32_e32 v202, v222
	v_mov_b32_e32 v210, v224
	scratch_store_b32 off, v0, off offset:304 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_mov_b32_e32 v204, v225
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v222, off, off offset:360
	scratch_load_b32 v223, off, off offset:372
	scratch_load_b32 v224, off, off offset:376
	scratch_load_b32 v225, off, off offset:380
	scratch_load_b32 v200, off, off offset:384
	scratch_load_b32 v188, off, off offset:388
	scratch_load_b32 v250, off, off offset:392
	scratch_load_b32 v253, off, off offset:396
	v_mov_b32_e32 v194, v246
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v195, off, off offset:352
	scratch_load_b32 v244, off, off offset:364
	scratch_load_b32 v246, off, off offset:356
	scratch_store_b32 off, v0, off offset:332 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_cndmask_b32_e64 v33, 0, 1, s2
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v37, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s0, 1, v33
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v199, v239
	scratch_store_b32 off, v0, off offset:296 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_mov_b32_e32 v206, v236
	s_and_not1_b32 vcc_lo, exec_lo, s2
	scratch_store_b32 off, v0, off offset:300 ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:152
	scratch_load_b32 v33, off, off offset:148
	s_mov_b32 s4, 0
	s_waitcnt vmcnt(18)
	v_add_nc_u32_e32 v40, s48, v242
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v34, s48, v252
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v36, s48, v253
	v_add_nc_u32_e32 v35, s48, v188
	v_add_nc_u32_e32 v37, s48, v126
	v_add_nc_u32_e32 v38, s48, v238
	v_add_nc_u32_e32 v39, s48, v249
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v34, v34
	ds_load_u8 v36, v36
	ds_load_u8 v35, v35
	ds_load_u8 v40, v40
	v_mov_b32_e32 v196, v74
	ds_load_u8 v37, v37
	ds_load_u8 v38, v38
	ds_load_u8 v39, v39
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s48, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s48, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v33, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s48, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v34, s48, v250
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v35, s48, v237
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v35, v35
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	v_lshl_or_b32 v36, v33, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v0, s48, v224
	v_add_nc_u32_e32 v33, s48, v223
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v35, v35, 16, v34
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v34, s48, v225
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v33, v33
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v33, s48, v200
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v33, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v33, off, off offset:144 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v0, s48, v222
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s48, v33
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v33, s48, v124
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v37, v33, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v37, s48, v247
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v33, v33, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v0, s48, v243
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v37, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v37, off, off offset:160 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s48, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v38, s48, v248
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v48, v37, 16, v0
	ds_load_u8 v38, v38
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v0, s48, v255
	v_add_nc_u32_e32 v37, s48, v234
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v39, s48, v240
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v37, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v37, s48, v232
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v40, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v47, v39, 16, v38
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v38, s48, v251
	scratch_load_b32 v39, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v38, s48, v254
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v46, v37, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v0, s48, v235
	v_add_nc_u32_e32 v37, s48, v215
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	ds_load_u8 v0, v0
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v37, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v37, s48, v233
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v45, v37, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:212
	scratch_load_b32 v37, off, off offset:208
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v40, s48, v40
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v40, v40
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v39, s48, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v38, s48, v38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s48, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s48, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	ds_load_u8 v0, v0
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v37, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v37, off, off offset:220 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s48, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v61, v37, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v38, s48, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v39, s48, v216
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v40, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v60, v39, 16, v38
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:188
	scratch_load_b32 v37, off, off offset:180
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v0, s48, v0
	scratch_load_b32 v39, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v40, s48, v40
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v38, s48, v38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v37, s48, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v40, v40
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s48, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	ds_load_u8 v37, v37
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v37, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v37, off, off offset:192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s48, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v59, v37, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:168
	scratch_load_b32 v37, off, off offset:164
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v38, s48, v38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s48, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s48, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	ds_load_u8 v0, v0
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v37, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v37, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s48, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v58, v37, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:276
	scratch_load_b32 v37, off, off offset:272
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v38, s48, v38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s48, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s48, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	ds_load_u8 v0, v0
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v37, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v37, off, off offset:284 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s48, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v65, v37, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:244 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v38, s48, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v39, off, off offset:268 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, s48, v39
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v39, v39
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v39, 16, v38
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:248
	scratch_load_b32 v37, off, off offset:240
	v_add_nc_u32_e32 v0, s48, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v38, s48, v38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s48, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v37, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v37, off, off offset:252 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s48, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v38, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v63, v37, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:228
	scratch_load_b32 v37, off, off offset:224
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v38, s48, v38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s48, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s48, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v38, v38
	ds_load_u8 v0, v0
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v37, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v37, off, off offset:236 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s48, v37
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v37, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v62, v37, 16, v0
	v_dual_mov_b32 v44, s11 :: v_dual_mov_b32 v43, s10
	v_dual_mov_b32 v42, s9 :: v_dual_mov_b32 v41, s8
	v_dual_mov_b32 v40, s7 :: v_dual_mov_b32 v39, s6
	v_dual_mov_b32 v38, s5 :: v_dual_mov_b32 v37, s4
	v_wmma_i32_16x16x16_iu8 v[50:57], v[33:36], v[29:32], v[37:44] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[50:57], v[45:48], v[21:24], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[50:57], v[58:61], v[13:16], v[50:57] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[50:57], v[62:65], v[5:8], v[50:57] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v0, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v185, v50
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v50, s48, v211
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v184, v53
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v53, s48, v212
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v0, off offset:312 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v54
	ds_load_u8 v50, v50
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v51, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v53, v53
	v_cvt_f32_i32_e32 v183, v52
	scratch_store_b32 off, v0, off offset:320 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v55
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v52, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v0, off offset:328 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v56
	scratch_store_b32 off, v0, off offset:288 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v57
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_store_b32 off, v0, off offset:292 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s48, v193
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v50, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v51, s48, v51
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s48, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v51, s48, v245
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v69, v50, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:16
	scratch_load_b32 v50, off, off offset:12
	v_add_nc_u32_e32 v52, s48, v52
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	ds_load_u8 v52, v52
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s48, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s48, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v52, s48, v198
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v52, v52
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v50, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v53, s48, v244
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v68, v52, 16, v51
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v51, off, off offset:20 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v52, s48, v74
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v53, v53
	ds_load_u8 v52, v52
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v50, s48, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v51, s48, v51
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v51, off, off          ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v67, v50, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v0, s48, v231
	v_add_nc_u32_e32 v50, s48, v49
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v50, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v51, s48, v51
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s48, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v51, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v66, v50, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:40 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v50, s48, v214
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v51, s48, v51
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s48, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v50, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s48, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v51, s48, v197
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v73, v50, 16, v0
	ds_load_u8 v51, v51
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v52, s48, v246
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v52, v52
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v53, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v72, v52, 16, v51
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v51, off, off offset:140
	scratch_load_b32 v52, off, off offset:92
	scratch_load_b32 v50, off, off offset:28
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v0, s48, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v53, s48, v53
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v51, s48, v51
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v52, s48, v52
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s48, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v53, v53
	ds_load_u8 v51, v51
	ds_load_u8 v52, v52
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v50, s48, v125
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v51, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v71, v50, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v0, s48, v195
	v_add_nc_u32_e32 v50, s48, v194
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v50, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v51, s48, v51
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s48, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v51, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v70, v50, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:112
	scratch_load_b32 v50, off, off offset:108
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v51, s48, v51
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s48, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s48, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	ds_load_u8 v0, v0
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v50, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s48, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v51, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v77, v50, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v51, s48, v51
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v52, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v52, s48, v52
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v52, v52
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v53, s48, v204
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v76, v52, 16, v51
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v51, off, off offset:84
	scratch_load_b32 v50, off, off offset:76
	v_add_nc_u32_e32 v0, s48, v0
	v_add_nc_u32_e32 v52, s48, v213
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v53, v53
	ds_load_u8 v0, v0
	ds_load_u8 v52, v52
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v51, s48, v51
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s48, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v50, off, off offset:88 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s48, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v51, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v75, v50, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:64
	scratch_load_b32 v50, off, off offset:60
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v51, s48, v51
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s48, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s48, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	ds_load_u8 v0, v0
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v50, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s48, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v51, s48, v189
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v74, v50, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v0, s48, v206
	v_add_nc_u32_e32 v50, s48, v207
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	ds_load_u8 v0, v0
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v50, s48, v201
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v51, s48, v210
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v182, v50, 16, v0
	ds_load_u8 v51, v51
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v0, s48, v208
	v_add_nc_u32_e32 v50, s48, v209
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v52, s48, v203
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v52, v52
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v50, s48, v202
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v181, v52, 16, v51
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v51, s48, v199
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v51, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v180, v50, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:128
	scratch_load_b32 v50, off, off offset:124
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v51, s48, v51
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s48, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s48, v50
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	ds_load_u8 v0, v0
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v50, s48, v205
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v179, v50, 16, v0
	v_wmma_i32_16x16x16_iu8 v[50:57], v[66:69], v[25:28], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[50:57], v[70:73], v[17:20], v[50:57] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[50:57], v[74:77], v[9:12], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[50:57], v[179:182], v[1:4], v[50:57] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v220, v50
	v_cvt_f32_i32_e32 v221, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v192, v52
	v_cvt_f32_i32_e32 v217, v53
	v_cvt_f32_i32_e32 v190, v54
	v_cvt_f32_i32_e32 v218, v55
	v_cvt_f32_i32_e32 v186, v56
	v_cvt_f32_i32_e32 v0, v57
	v_wmma_i32_16x16x16_iu8 v[50:57], v[66:69], v[29:32], v[37:44] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[37:44], v[33:36], v[25:28], v[37:44] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:324 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu8 v[50:57], v[70:73], v[21:24], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[37:44], v[45:48], v[17:20], v[37:44] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[50:57], v[74:77], v[13:16], v[50:57] neg_lo:[1,1,0]
	v_mov_b32_e32 v74, v196
	v_wmma_i32_16x16x16_iu8 v[37:44], v[58:61], v[9:12], v[37:44] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[50:57], v[179:182], v[5:8], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[37:44], v[62:65], v[1:4], v[37:44] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v0, v41
	v_cvt_f32_i32_e32 v35, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v36, v38
	v_cvt_f32_i32_e32 v33, v39
	v_cvt_f32_i32_e32 v34, v40
	scratch_store_b32 off, v0, off offset:304 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v42
	v_cvt_f32_i32_e32 v41, v52
	v_cvt_f32_i32_e32 v42, v53
	v_cvt_f32_i32_e32 v39, v54
	v_cvt_f32_i32_e32 v40, v55
	scratch_store_b32 off, v0, off offset:332 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v43
	v_cvt_f32_i32_e32 v37, v56
	v_cvt_f32_i32_e32 v38, v57
	v_cvt_f32_i32_e32 v43, v50
	scratch_store_b32 off, v0, off offset:296 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v44
	v_cvt_f32_i32_e32 v44, v51
	scratch_store_b32 off, v0, off offset:300 ; 4-byte Folded Spill
.LBB0_10:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v0, 0
	v_mov_b32_e32 v51, 0
	s_clause 0xe                            ; 60-byte Folded Spill
	scratch_store_b32 off, v220, off offset:756
	scratch_store_b32 off, v44, off offset:748
	scratch_store_b32 off, v43, off offset:744
	scratch_store_b32 off, v192, off offset:740
	scratch_store_b32 off, v42, off offset:736
	scratch_store_b32 off, v41, off offset:732
	scratch_store_b32 off, v190, off offset:604
	scratch_store_b32 off, v40, off offset:592
	scratch_store_b32 off, v39, off offset:588
	scratch_store_b32 off, v38, off offset:556
	scratch_store_b32 off, v37, off offset:552
	scratch_store_b32 off, v36, off offset:532
	scratch_store_b32 off, v35, off offset:528
	scratch_store_b32 off, v34, off offset:496
	scratch_store_b32 off, v33, off offset:492
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	scratch_store_b32 off, v0, off offset:308 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_mov_b32_e32 v66, 0
	scratch_store_b32 off, v0, off offset:316 ; 4-byte Folded Spill
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v33, 0
	v_mov_b32_e32 v36, 0
	v_mov_b32_e32 v54, 0
	v_mov_b32_e32 v34, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 28 is_stmt 0                ; generate_amdgcn.py:0:28
	s_mov_b32 s4, 0
	.loc	1 358 31 is_stmt 1              ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v34, off, off offset:52
	scratch_load_b32 v35, off, off offset:24
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v0, s1, v193
	v_add_nc_u32_e32 v33, s1, v211
	v_add_nc_u32_e32 v36, s1, v212
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v33, v33
	ds_load_u8 v36, v36
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v33, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v34, s1, v34
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v34, v34
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s1, v33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v34, s1, v245
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v69, v33, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:16
	scratch_load_b32 v33, off, off offset:12
	v_add_nc_u32_e32 v35, s1, v35
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v34, v34
	ds_load_u8 v35, v35
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s1, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s1, v33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v35, s1, v198
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v35, v35
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v33, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v36, s1, v253
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v68, v35, 16, v34
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v34, off, off offset:20 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v35, s1, v188
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v36, v36
	ds_load_u8 v35, v35
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v33, s1, v33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v33
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v34, s1, v34
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v34, off, off          ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v67, v33, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v0, s1, v231
	v_add_nc_u32_e32 v33, s1, v49
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v33, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v34, s1, v34
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v34, v34
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s1, v33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v34, s1, v252
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v66, v33, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:152
	scratch_load_b32 v33, off, off offset:148
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v34, v34
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s1, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s1, v33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v33, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s1, v33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v34, s1, v250
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v73, v33, 16, v0
	ds_load_u8 v34, v34
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v0, s1, v224
	v_add_nc_u32_e32 v33, s1, v223
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v34, v35, v34, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v35, s1, v237
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v35, v35
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v33, s1, v200
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v35, v36, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v72, v35, 16, v34
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v34, s1, v225
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v34, v34
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v34, s1, v126
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v71, v33, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v33, off, off offset:144 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v0, s1, v222
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v34, v34
	ds_load_u8 v0, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, s1, v33
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v33, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v33, s1, v124
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v33, v33
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v33, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_dual_mov_b32 v40, s11 :: v_dual_mov_b32 v39, s10
	v_dual_mov_b32 v38, s9 :: v_dual_mov_b32 v37, s8
	v_dual_mov_b32 v36, s7 :: v_dual_mov_b32 v35, s6
	v_dual_mov_b32 v34, s5 :: v_dual_mov_b32 v33, s4
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[41:48], v[66:69], v[29:32], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[50:57], v[70:73], v[29:32], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[58:65], v[66:69], v[25:28], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[70:73], v[25:28], v[33:40] neg_lo:[1,1,0]
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v26, off, off offset:44 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v25, s1, v214
	v_add_nc_u32_e32 v28, s1, v244
	v_add_nc_u32_e32 v27, s1, v74
	v_add_nc_u32_e32 v32, s1, v242
	v_add_nc_u32_e32 v66, s1, v254
	v_add_nc_u32_e32 v30, s1, v238
	v_add_nc_u32_e32 v31, s1, v249
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v25, v25
	ds_load_u8 v28, v28
	ds_load_u8 v27, v27
	ds_load_u8 v32, v32
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v29, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v66, v66
	ds_load_u8 v30, v30
	ds_load_u8 v31, v31
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s1, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v26, s1, v26
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v26, v26
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v25, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v25, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v29, s1, v29
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v29, v29
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s1, v25
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v25, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v26, s1, v197
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v26, v26
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v27, s1, v246
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v27, v27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	v_lshl_or_b32 v28, v25, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:32
	scratch_load_b32 v25, off, off offset:28
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v27, v27, 16, v26
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v26, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s1, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v25, s1, v25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v26, s1, v26
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v25, v25
	ds_load_u8 v26, v26
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v25, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v25, s1, v125
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v25, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v25, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v0, s1, v195
	v_add_nc_u32_e32 v25, s1, v194
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v25, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v25, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v25, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, s1, v25
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v25, v25
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v29, v25, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v29, s1, v247
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v25, v25, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v0, s1, v243
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v29, v29
	v_wmma_i32_16x16x16_iu8 v[58:65], v[25:28], v[17:20], v[58:65] neg_lo:[1,1,0]
	ds_load_u8 v0, v0
	v_wmma_i32_16x16x16_iu8 v[41:48], v[25:28], v[21:24], v[41:48] neg_lo:[1,1,0]
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v25, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v29, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v29, off, off offset:160 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v25, s1, v25
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v25, v25
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v29, s1, v29
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v29, v29
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v30, s1, v248
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v30, v30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v31, s1, v240
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v31, v31
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	v_lshl_or_b32 v32, v29, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v0, s1, v255
	v_add_nc_u32_e32 v29, s1, v234
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v31, v31, 16, v30
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v30, s1, v251
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v29, v29
	ds_load_u8 v30, v30
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v29, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v29, s1, v232
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v29, v29
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v29, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v0, s1, v235
	v_add_nc_u32_e32 v29, s1, v215
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v29, v29
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v29, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v29, s1, v233
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v29, v29
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v66, v29, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v29, v29, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[33:40], v[29:32], v[17:20], v[33:40] neg_lo:[1,1,0]
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v18, off, off offset:116
	scratch_load_b32 v17, off, off offset:108
	scratch_load_b32 v20, off, off offset:100
	scratch_load_b32 v19, off, off offset:92
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[50:57], v[29:32], v[21:24], v[50:57] neg_lo:[1,1,0]
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v24, off, off offset:204
	scratch_load_b32 v22, off, off offset:216
	scratch_load_b32 v21, off, off offset:68
	scratch_load_b32 v23, off, off offset:196
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v0, s1, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v17, s1, v17
	v_add_nc_u32_e32 v18, s1, v18
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v19, s1, v19
	v_add_nc_u32_e32 v20, s1, v20
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v24, s1, v24
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v17, v17
	ds_load_u8 v18, v18
	ds_load_u8 v19, v19
	ds_load_u8 v20, v20
	ds_load_u8 v24, v24
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v22, s1, v22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v21, s1, v21
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v23, s1, v23
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v22, v22
	ds_load_u8 v21, v21
	ds_load_u8 v23, v23
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v17, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s1, v17
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v18, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v18, s1, v18
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v18, v18
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v19, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v19, s1, v19
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v19, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v19, v20, v19, 0xc0c0004
	v_lshl_or_b32 v20, v17, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v19, v19, 16, v18
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:84
	scratch_load_b32 v17, off, off offset:76
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s1, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v18, s1, v18
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s1, v17
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v18, v18
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v17, off, off offset:88 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s1, v17
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v18, v17, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:64
	scratch_load_b32 v17, off, off offset:60
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s1, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s1, v17
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v17, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v17, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s1, v17
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v21, v17, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v21, off, off offset:208 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v17, v17, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[58:65], v[17:20], v[9:12], v[58:65] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[41:48], v[17:20], v[13:16], v[41:48] neg_lo:[1,1,0]
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v17, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v21, s1, v21
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s1, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	ds_load_u8 v0, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s1, v17
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v17, v17
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v21, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v21, off, off offset:220 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s1, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v22, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v22, s1, v22
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v22, v22
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v23, s1, v216
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v23, v23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	v_lshl_or_b32 v24, v21, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v23, v23, 16, v22
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v22, off, off offset:188
	scratch_load_b32 v21, off, off offset:180
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s1, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v22, s1, v22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s1, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v22, v22
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v21, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v21, off, off offset:192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s1, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v22, v21, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:168
	scratch_load_b32 v21, off, off offset:164
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s1, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s1, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v21, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v21, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, s1, v21
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v21, v21
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v25, v21, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v21, v21, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v0, s1, v206
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[33:40], v[21:24], v[9:12], v[33:40] neg_lo:[1,1,0]
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v9, s1, v207
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v10, s1, v189
	v_add_nc_u32_e32 v12, s1, v204
	v_add_nc_u32_e32 v11, s1, v213
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v9, v9
	v_wmma_i32_16x16x16_iu8 v[50:57], v[21:24], v[13:16], v[50:57] neg_lo:[1,1,0]
	ds_load_u8 v10, v10
	ds_load_u8 v12, v12
	ds_load_u8 v11, v11
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v13, off, off offset:280
	scratch_load_b32 v15, off, off offset:264
	scratch_load_b32 v14, off, off offset:256
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v9, s1, v201
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v10, s1, v210
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v11, s1, v203
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v11, v11
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	v_lshl_or_b32 v12, v9, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v0, s1, v208
	v_add_nc_u32_e32 v9, s1, v209
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v11, v11, 16, v10
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v10, s1, v199
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v9, v9
	ds_load_u8 v10, v10
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v9, s1, v202
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v10, v9, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:276
	scratch_load_b32 v9, off, off offset:272
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v13, s1, v13
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v15, s1, v15
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v14, s1, v14
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v13, v13
	ds_load_u8 v15, v15
	ds_load_u8 v14, v14
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s1, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s1, v9
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v9, off, off offset:284 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s1, v9
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v13, v9, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v13, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v16, v9, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:244 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v13, s1, v13
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v13, v13
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v14, off, off offset:268 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v14, s1, v14
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v14, v14
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v14, v15, v14, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v15, v14, 16, v13
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v13, off, off offset:248
	scratch_load_b32 v9, off, off offset:240
	v_add_nc_u32_e32 v0, s1, v0
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v13, s1, v13
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s1, v9
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v13, v13
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v9, off, off offset:252 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s1, v9
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v13, v9, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v13, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v14, v9, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:228
	scratch_load_b32 v9, off, off offset:224
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v13, s1, v13
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s1, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s1, v9
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v13, v13
	ds_load_u8 v0, v0
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v9, off, off offset:236 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s1, v9
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v13, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v13, v9, 16, v0
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:128
	scratch_load_b32 v9, off, off offset:124
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_wmma_i32_16x16x16_iu8 v[50:57], v[13:16], v[5:8], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[33:40], v[13:16], v[1:4], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v66, v50
	v_cvt_f32_i32_e32 v67, v51
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v51, v55
	v_cvt_f32_i32_e32 v50, v57
	v_cvt_f32_i32_e32 v55, v33
	v_cvt_f32_i32_e32 v33, v39
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s1, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, s1, v9
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v0, v0
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v9, s1, v205
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v9, v9
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v17, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v9, v9, 16, v0
	v_cvt_f32_i32_e32 v0, v52
	v_cvt_f32_i32_e32 v52, v53
	v_cvt_f32_i32_e32 v53, v35
	v_cvt_f32_i32_e32 v35, v37
	v_wmma_i32_16x16x16_iu8 v[41:48], v[9:12], v[5:8], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[58:65], v[9:12], v[1:4], v[58:65] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:316 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v54
	v_cvt_f32_i32_e32 v54, v36
	v_cvt_f32_i32_e32 v36, v38
	v_cvt_f32_i32_e32 v70, v58
	v_cvt_f32_i32_e32 v69, v59
	scratch_store_b32 off, v0, off offset:308 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v56
	v_cvt_f32_i32_e32 v68, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v60, v62
	v_cvt_f32_i32_e32 v59, v63
	v_cvt_f32_i32_e32 v57, v64
	v_cvt_f32_i32_e32 v58, v65
	v_cvt_f32_i32_e32 v56, v34
	v_cvt_f32_i32_e32 v34, v40
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v39, v45
	v_cvt_f32_i32_e32 v40, v46
	v_cvt_f32_i32_e32 v37, v47
	v_cvt_f32_i32_e32 v38, v48
	v_cvt_f32_i32_e32 v219, v41
	v_cvt_f32_i32_e32 v41, v42
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s30, 31
	s_clause 0x1e                           ; 124-byte Folded Spill
	scratch_store_b32 off, v70, off offset:816
	scratch_store_b32 off, v69, off offset:808
	scratch_store_b32 off, v41, off offset:804
	scratch_store_b32 off, v68, off offset:800
	scratch_store_b32 off, v44, off offset:796
	scratch_store_b32 off, v43, off offset:792
	scratch_store_b32 off, v60, off offset:788
	scratch_store_b32 off, v59, off offset:784
	scratch_store_b32 off, v221, off offset:760
	scratch_store_b32 off, v219, off offset:752
	scratch_store_b32 off, v40, off offset:708
	scratch_store_b32 off, v39, off offset:704
	scratch_store_b32 off, v58, off offset:688
	scratch_store_b32 off, v57, off offset:684
	scratch_store_b32 off, v38, off offset:668
	scratch_store_b32 off, v37, off offset:660
	scratch_store_b32 off, v56, off offset:640
	scratch_store_b32 off, v55, off offset:632
	scratch_store_b32 off, v67, off offset:624
	scratch_store_b32 off, v66, off offset:620
	scratch_store_b32 off, v218, off offset:608
	scratch_store_b32 off, v54, off offset:576
	scratch_store_b32 off, v53, off offset:572
	scratch_store_b32 off, v52, off offset:560
	scratch_store_b32 off, v36, off offset:520
	scratch_store_b32 off, v35, off offset:512
	scratch_store_b32 off, v51, off offset:508
	scratch_store_b32 off, v34, off offset:488
	scratch_store_b32 off, v33, off offset:484
	scratch_store_b32 off, v50, off offset:480
	scratch_store_b32 off, v0, off offset:476
	s_lshr_b32 s0, s0, 25
	s_mov_b32 s15, 0x31027000
	s_add_i32 s0, s30, s0
	s_mov_b32 s14, 0x7ffffffe
	s_ashr_i32 s0, s0, 7
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s30, s14
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s0, s44
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v0, v161, s0, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s1, -1, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_mov_b32 v219, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s31, s15
	v_mov_b32_e32 v236, 0
	s_waitcnt lgkmcnt(1)
	v_mov_b32_e32 v8, 0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	v_mov_b32_e32 v192, 0
	v_mov_b32_e32 v182, 0
	v_mov_b32_e32 v180, 0
	v_mov_b32_e32 v66, 0
	v_mov_b32_e32 v68, 0
	v_mov_b32_e32 v196, 0
	v_mov_b32_e32 v190, 0
	v_mov_b32_e32 v6, 0
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v4, 0
	s_mov_b32 s4, 0
	v_mov_b32_e32 v9, 0
	v_mov_b32_e32 v7, 0
	v_mov_b32_e32 v179, 0
	v_mov_b32_e32 v67, 0
	v_mov_b32_e32 v69, 0
	v_mov_b32_e32 v187, 0
	v_mov_b32_e32 v191, 0
	v_mov_b32_e32 v239, 0
	v_mov_b32_e32 v181, 0
	v_mov_b32_e32 v13, 0
	v_mov_b32_e32 v5, 0
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:812 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v160, s0, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s0, s0, s34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[12:15], 0 offen
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:836 ; 4-byte Folded Spill
	.loc	1 366 22 is_stmt 0              ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v0, v159, s0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:828 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v156, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:832 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v157, s0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:820 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v158, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:824 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v144, s0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:728 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v145, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:724 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v146, s0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:696 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v147, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:692 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v128, s0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:648 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v129, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:644 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v130, s0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:600 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v131, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:596 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v132, s0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:540 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v133, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:536 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v134, s0, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:500 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v135, s0, 1
	.loc	1 370 39 is_stmt 1              ; generate_amdgcn.py:370:39
	s_add_i32 s0, s0, s26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:504 ; 4-byte Folded Spill
	.loc	1 370 31 is_stmt 0              ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v0, s0, v155, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:860 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v151, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:856 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v152, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:844 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v153, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:852 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v148, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:840 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v154, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:848 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v149, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:700 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v150, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:712 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v136, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:664 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v137, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:680 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v138, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:628 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v139, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:636 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v140, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:544 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v141, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:548 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v142, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:516 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, s0, v143, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(0)
	scratch_store_b32 off, v0, off offset:524 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s47, v227
	ds_load_b128 v[45:48], v0
	ds_load_b128 v[33:36], v0 offset:2048
	v_add_nc_u32_e32 v0, s47, v228
	ds_load_b128 v[41:44], v0
	ds_load_b128 v[29:32], v0 offset:2048
	v_add_nc_u32_e32 v0, s47, v229
	ds_load_b128 v[37:40], v0
	ds_load_b128 v[21:24], v0 offset:2048
	v_add_nc_u32_e32 v0, s47, v230
	ds_load_b128 v[25:28], v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_b128 v[0:3], v0 offset:2048
	v_mov_b32_e32 v230, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v227, 0
	v_mov_b32_e32 v229, 0
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[0:3], off offset:864 ; 16-byte Folded Spill
	v_cndmask_b32_e64 v0, 0, 1, s3
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_mov_b32_e32 v1, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s0, 1, v0
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:336 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v0, off offset:340 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:152
	scratch_load_b32 v1, off, off offset:148
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v2, s46, v252
	v_add_nc_u32_e32 v4, s46, v253
	v_add_nc_u32_e32 v3, s46, v188
	v_add_nc_u32_e32 v8, s46, v242
	v_add_nc_u32_e32 v5, s46, v126
	v_add_nc_u32_e32 v6, s46, v238
	v_add_nc_u32_e32 v7, s46, v249
	v_mov_b32_e32 v241, v61
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	ds_load_u8 v4, v4
	ds_load_u8 v3, v3
	ds_load_u8 v8, v8
	v_mov_b32_e32 v220, v217
	v_dual_mov_b32 v19, v185 :: v_dual_mov_b32 v230, v74
	ds_load_u8 v5, v5
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v17, off, off offset:56 ; 4-byte Folded Reload
	v_mov_b32_e32 v20, v186
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v6, v6
	v_mov_b32_e32 v18, v184
	ds_load_u8 v7, v7
	v_mov_b32_e32 v228, v195
	v_mov_b32_e32 v236, v197
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s46, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v1, s46, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v1, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v2, s46, v250
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v3, s46, v237
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v3, v3
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	v_lshl_or_b32 v4, v1, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v0, s46, v224
	v_add_nc_u32_e32 v1, s46, v223
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v3, v3, 16, v2
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v2, s46, v225
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v1, v1
	ds_load_u8 v2, v2
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v1, s46, v200
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v2, v1, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v1, off, off offset:144 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v0, s46, v222
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s46, v1
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v1, s46, v124
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v1, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v5, v1, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v5, s46, v247
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v1, v1, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v0, s46, v243
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v5
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v5, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v5, off, off offset:160 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s46, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v6, s46, v248
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v16, v5, 16, v0
	ds_load_u8 v6, v6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v0, s46, v255
	v_add_nc_u32_e32 v5, s46, v234
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v5, v5
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v7, s46, v240
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v7, v7
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v5, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v5, s46, v232
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v5
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v8, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v15, v7, 16, v6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v6, s46, v251
	scratch_load_b32 v7, off, off offset:196 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v6, v6
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v6, s46, v254
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v14, v5, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v0, s46, v235
	v_add_nc_u32_e32 v5, s46, v215
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v6, v6
	ds_load_u8 v0, v0
	ds_load_u8 v5, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v5, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v5, s46, v233
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v6, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v13, v5, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:212
	scratch_load_b32 v5, off, off offset:208
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v8, s46, v8
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v8, v8
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v7, s46, v7
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v7, v7
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v6, s46, v6
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s46, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s46, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v6, v6
	ds_load_u8 v0, v0
	ds_load_u8 v5, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v5, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v5, off, off offset:220 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s46, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v6, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v61, v5, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v6, s46, v6
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v6, v6
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v7, s46, v216
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v7, v7
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v8, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v60, v7, 16, v6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v6, off, off offset:188
	scratch_load_b32 v5, off, off offset:180
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v0, s46, v0
	scratch_load_b32 v7, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v8, s46, v8
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v6, s46, v6
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v5, s46, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v8, v8
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v7, s46, v7
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v6, v6
	ds_load_u8 v5, v5
	ds_load_u8 v7, v7
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v5, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v5, off, off offset:192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s46, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v6, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v59, v5, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:168
	scratch_load_b32 v5, off, off offset:164
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v6, s46, v6
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s46, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s46, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v6, v6
	ds_load_u8 v0, v0
	ds_load_u8 v5, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v5, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v5, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s46, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v6, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v58, v5, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:276
	scratch_load_b32 v5, off, off offset:272
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v6, s46, v6
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s46, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s46, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v6, v6
	ds_load_u8 v0, v0
	ds_load_u8 v5, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v5, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v5, off, off offset:284 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s46, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v6, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v65, v5, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:244 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v6, s46, v6
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v6, v6
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v7, v6, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v7, off, off offset:268 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v7, s46, v7
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v7, v7
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v7, 16, v6
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v6, off, off offset:248
	scratch_load_b32 v5, off, off offset:240
	v_add_nc_u32_e32 v0, s46, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v6, s46, v6
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s46, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v6, v6
	ds_load_u8 v5, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v5, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v5, off, off offset:252 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s46, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v6, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v63, v5, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:228
	scratch_load_b32 v5, off, off offset:224
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v6, s46, v6
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s46, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s46, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v6, v6
	ds_load_u8 v0, v0
	ds_load_u8 v5, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v5, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v5, off, off offset:236 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, s46, v5
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v5, v5
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v62, v5, 16, v0
	v_dual_mov_b32 v12, s11 :: v_dual_mov_b32 v11, s10
	v_dual_mov_b32 v10, s9 :: v_dual_mov_b32 v9, s8
	v_dual_mov_b32 v8, s7 :: v_dual_mov_b32 v7, s6
	v_dual_mov_b32 v6, s5 :: v_dual_mov_b32 v5, s4
	v_wmma_i32_16x16x16_iu8 v[50:57], v[1:4], v[45:48], v[5:12] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[50:57], v[13:16], v[41:44], v[50:57] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[50:57], v[58:61], v[37:40], v[50:57] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[50:57], v[62:65], v[25:28], v[50:57] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v0, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v218, v50
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v50, s46, v211
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v68, v53
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v53, s46, v212
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	scratch_store_b32 off, v0, off offset:336 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v57
	ds_load_u8 v50, v50
	v_cvt_f32_i32_e32 v217, v51
	ds_load_u8 v53, v53
	v_cvt_f32_i32_e32 v69, v52
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_store_b32 off, v0, off offset:340 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s46, v193
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_cvt_f32_i32_e32 v66, v54
	v_cvt_f32_i32_e32 v67, v55
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v50, s46, v17
	scratch_load_b32 v17, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v51, s46, v17
	scratch_load_b32 v17, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v51, s46, v245
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v73, v50, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v52, s46, v17
	scratch_load_b32 v17, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v52, v52
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s46, v17
	scratch_load_b32 v17, off, off offset:4 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v0, s46, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v52, s46, v198
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v52, v52
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v53, s46, v244
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v72, v52, 16, v51
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v52, s46, v74
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v53, v53
	ds_load_u8 v52, v52
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s46, v17
	scratch_load_b32 v17, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v51, s46, v17
	scratch_load_b32 v17, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v71, v50, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v0, s46, v231
	v_add_nc_u32_e32 v50, s46, v49
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s46, v17
	scratch_load_b32 v17, off, off          ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v51, s46, v17
	scratch_load_b32 v17, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v50, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:40 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v50, s46, v214
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s46, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v50, s46, v17
	scratch_load_b32 v17, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v51, s46, v17
	scratch_load_b32 v17, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v51, s46, v197
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v77, v50, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v50, s46, v17
	scratch_load_b32 v17, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v52, s46, v246
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v52, v52
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s46, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	ds_load_u8 v0, v0
	v_lshl_or_b32 v76, v52, 16, v51
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v50, s46, v125
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v51, s46, v17
	scratch_load_b32 v17, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v75, v50, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v0, s46, v195
	v_add_nc_u32_e32 v50, s46, v194
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s46, v17
	scratch_load_b32 v17, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v51, s46, v17
	scratch_load_b32 v17, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v74, v50, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v50, s46, v17
	scratch_load_b32 v17, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s46, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s46, v17
	scratch_load_b32 v17, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v51, s46, v17
	scratch_load_b32 v17, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v182, v50, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v51, s46, v17
	scratch_load_b32 v17, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v52, s46, v17
	scratch_load_b32 v17, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v52, v52
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v52, s46, v17
	scratch_load_b32 v17, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v52, v52
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v53, s46, v17
	scratch_load_b32 v17, off, off offset:76 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v0, s46, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v53, v53
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s46, v17
	scratch_load_b32 v17, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v53, s46, v204
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v181, v52, 16, v51
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v52, s46, v213
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v53, v53
	ds_load_u8 v52, v52
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s46, v17
	scratch_load_b32 v17, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v51, s46, v17
	scratch_load_b32 v17, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v180, v50, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v50, s46, v17
	scratch_load_b32 v17, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s46, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v50, s46, v17
	scratch_load_b32 v17, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v51, s46, v17
	scratch_load_b32 v17, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v51, s46, v189
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v179, v50, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v0, s46, v206
	v_add_nc_u32_e32 v50, s46, v207
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	ds_load_u8 v0, v0
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v50, s46, v201
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v51, s46, v210
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_lshl_or_b32 v186, v50, 16, v0
	ds_load_u8 v51, v51
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v0, s46, v208
	v_add_nc_u32_e32 v50, s46, v209
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v52, s46, v203
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v52, v52
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v50, s46, v202
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v185, v52, 16, v51
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v51, s46, v199
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	v_lshl_or_b32 v184, v50, 16, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	scratch_load_b32 v0, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v50, s46, v17
	scratch_load_b32 v17, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s46, v0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v0, v0
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v51, s46, v17
	v_mov_b32_e32 v17, v183
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v51, v51
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v0, v50, v0, 0xc0c0004
	.loc	1 352 22                        ; generate_amdgcn.py:352:22
	v_add_nc_u32_e32 v50, s46, v205
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	ds_load_u8 v50, v50
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v183, v50, 16, v0
	v_mov_b32_e32 v0, v194
	scratch_load_b128 v[194:197], off, off offset:864 ; 16-byte Folded Reload
	v_wmma_i32_16x16x16_iu8 v[50:57], v[70:73], v[33:36], v[5:12] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[50:57], v[74:77], v[29:32], v[50:57] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[50:57], v[179:182], v[21:24], v[50:57] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[50:57], v[183:186], v[194:197], v[50:57] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v192, v50
	v_cvt_f32_i32_e32 v187, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v190, v52
	v_cvt_f32_i32_e32 v191, v53
	v_cvt_f32_i32_e32 v227, v54
	v_cvt_f32_i32_e32 v229, v55
	v_cvt_f32_i32_e32 v239, v56
	v_cvt_f32_i32_e32 v221, v57
	v_wmma_i32_16x16x16_iu8 v[50:57], v[70:73], v[45:48], v[5:12] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[5:12], v[1:4], v[33:36], v[5:12] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[50:57], v[74:77], v[41:44], v[50:57] neg_lo:[1,1,0]
	v_mov_b32_e32 v74, v230
	v_wmma_i32_16x16x16_iu8 v[5:12], v[13:16], v[29:32], v[5:12] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[50:57], v[179:182], v[37:40], v[50:57] neg_lo:[1,1,0]
	v_mov_b32_e32 v181, v221
	v_wmma_i32_16x16x16_iu8 v[5:12], v[58:61], v[21:24], v[5:12] neg_lo:[1,1,0]
	v_dual_mov_b32 v61, v241 :: v_dual_mov_b32 v180, v218
	v_mov_b32_e32 v179, v217
	v_mov_b32_e32 v217, v220
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu8 v[5:12], v[62:65], v[194:197], v[5:12] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[50:57], v[183:186], v[25:28], v[50:57] neg_lo:[1,1,0]
	v_mov_b32_e32 v197, v236
	v_mov_b32_e32 v196, v192
	v_mov_b32_e32 v195, v228
	v_mov_b32_e32 v194, v0
	v_dual_mov_b32 v186, v20 :: v_dual_mov_b32 v185, v19
	v_dual_mov_b32 v184, v18 :: v_dual_mov_b32 v183, v17
	v_cvt_f32_i32_e32 v13, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v4, v7
	v_cvt_f32_i32_e32 v5, v8
	v_cvt_f32_i32_e32 v2, v9
	v_cvt_f32_i32_e32 v3, v10
	v_cvt_f32_i32_e32 v1, v11
	v_cvt_f32_i32_e32 v0, v12
	v_cvt_f32_i32_e32 v192, v52
	v_cvt_f32_i32_e32 v228, v53
	v_cvt_f32_i32_e32 v9, v54
	v_cvt_f32_i32_e32 v8, v55
	v_cvt_f32_i32_e32 v7, v56
	v_cvt_f32_i32_e32 v182, v57
	v_cvt_f32_i32_e32 v230, v50
	v_cvt_f32_i32_e32 v236, v51
.LBB0_14:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_clause 0x10                           ; 68-byte Folded Spill
	scratch_store_b32 off, v9, off offset:780
	scratch_store_b32 off, v8, off offset:776
	scratch_store_b32 off, v229, off offset:772
	scratch_store_b32 off, v227, off offset:768
	scratch_store_b32 off, v7, off offset:764
	scratch_store_b32 off, v6, off offset:720
	scratch_store_b32 off, v13, off offset:716
	scratch_store_b32 off, v69, off offset:676
	scratch_store_b32 off, v68, off offset:672
	scratch_store_b32 off, v5, off offset:656
	scratch_store_b32 off, v4, off offset:652
	scratch_store_b32 off, v3, off offset:616
	scratch_store_b32 off, v2, off offset:612
	scratch_store_b32 off, v67, off offset:584
	scratch_store_b32 off, v66, off offset:580
	scratch_store_b32 off, v1, off offset:568
	scratch_store_b32 off, v0, off offset:564
	v_dual_mov_b32 v227, v125 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v241, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v229, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v4, 0
	.loc	1 359 28 is_stmt 1              ; generate_amdgcn.py:359:28
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	scratch_load_b32 v0, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v6, s45, v212
	v_add_nc_u32_e32 v212, s45, v74
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v20, off, off offset:4
	scratch_load_b32 v2, off, off offset:52
	scratch_load_b32 v18, off, off offset:20
	scratch_load_b32 v19, off, off offset:12
	v_mov_b32_e32 v229, v190
	v_dual_mov_b32 v221, v192 :: v_dual_mov_b32 v74, v226
	scratch_load_b32 v1, off, off offset:128 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v3, s45, v193
	v_add_nc_u32_e32 v4, s45, v211
	v_add_nc_u32_e32 v70, s45, v216
	v_dual_mov_b32 v216, v196 :: v_dual_add_nc_u32 v5, s45, v198
	v_add_nc_u32_e32 v198, s45, v244
	v_add_nc_u32_e32 v7, s45, v245
	v_add_nc_u32_e32 v68, s45, v231
	v_add_nc_u32_e32 v49, s45, v49
	v_add_nc_u32_e32 v190, s45, v213
	v_add_nc_u32_e32 v206, s45, v206
	v_add_nc_u32_e32 v207, s45, v207
	v_add_nc_u32_e32 v201, s45, v201
	v_add_nc_u32_e32 v210, s45, v210
	v_add_nc_u32_e32 v188, s45, v188
	v_add_nc_u32_e32 v189, s45, v189
	v_add_nc_u32_e32 v199, s45, v199
	v_add_nc_u32_e32 v252, s45, v252
	v_add_nc_u32_e32 v203, s45, v203
	v_add_nc_u32_e32 v204, s45, v204
	v_add_nc_u32_e32 v202, s45, v202
	v_add_nc_u32_e32 v208, s45, v208
	v_add_nc_u32_e32 v209, s45, v209
	v_add_nc_u32_e32 v205, s45, v205
	v_add_nc_u32_e32 v248, s45, v248
	v_add_nc_u32_e32 v249, s45, v249
	v_add_nc_u32_e32 v124, s45, v124
	v_add_nc_u32_e32 v126, s45, v126
	v_add_nc_u32_e32 v238, s45, v238
	v_add_nc_u32_e32 v240, s45, v240
	v_add_nc_u32_e32 v242, s45, v242
	v_add_nc_u32_e32 v255, s45, v255
	v_add_nc_u32_e32 v234, s45, v234
	v_add_nc_u32_e32 v232, s45, v232
	v_add_nc_u32_e32 v235, s45, v235
	v_add_nc_u32_e32 v215, s45, v215
	v_add_nc_u32_e32 v251, s45, v251
	v_add_nc_u32_e32 v254, s45, v254
	scratch_load_b32 v8, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v0, s45, v0
	scratch_store_b32 off, v0, off offset:284 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:280 ; 4-byte Folded Reload
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v50, s45, v20
	scratch_load_b32 v20, off, off          ; 4-byte Folded Reload
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v51, s45, v18
	scratch_load_b32 v18, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v193, s45, v19
	scratch_load_b32 v19, off, off offset:8 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v2, s45, v2
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v8, s45, v8
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v0, s45, v0
	scratch_store_b32 off, v0, off offset:280 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:276 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v52, s45, v18
	v_mov_b32_e32 v18, v194
	v_add_nc_u32_e32 v194, s45, v20
	scratch_load_b32 v20, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v211, s45, v19
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v19, v195 :: v_dual_add_nc_u32 v0, s45, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v195, s45, v20
	scratch_store_b32 off, v0, off offset:276 ; 4-byte Folded Spill
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:272
	scratch_load_b32 v20, off, off offset:44
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s45, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v196, s45, v20
	scratch_load_b32 v20, off, off offset:40 ; 4-byte Folded Reload
	scratch_store_b32 off, v0, off offset:272 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:268 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v69, s45, v20
	v_dual_mov_b32 v20, v197 :: v_dual_add_nc_u32 v197, s45, v246
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s45, v0
	scratch_store_b32 off, v0, off offset:268 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s45, v0
	scratch_store_b32 off, v0, off offset:264 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v241, s45, v0
	scratch_load_b32 v0, off, off offset:256 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s45, v0
	scratch_store_b32 off, v0, off offset:256 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:252 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s45, v0
	scratch_store_b32 off, v0, off offset:252 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:248 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s45, v0
	scratch_store_b32 off, v0, off offset:248 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:244 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s45, v0
	scratch_store_b32 off, v0, off offset:244 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:240 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s45, v0
	scratch_store_b32 off, v0, off offset:240 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:236 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s45, v0
	scratch_store_b32 off, v0, off offset:236 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s45, v0
	scratch_store_b32 off, v0, off offset:232 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:228 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s45, v0
	scratch_store_b32 off, v0, off offset:228 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:224 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s45, v0
	scratch_store_b32 off, v0, off offset:224 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:220 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s45, v0
	scratch_load_b32 v0, off, off offset:216 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v72, s45, v0
	scratch_load_b32 v0, off, off offset:212 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v65, s45, v0
	scratch_load_b32 v0, off, off offset:208 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v63, s45, v0
	scratch_load_b32 v0, off, off offset:204 ; 4-byte Folded Reload
	scratch_store_b32 off, v61, off offset:204 ; 4-byte Folded Spill
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v64, s45, v0
	scratch_load_b32 v0, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v61, s45, v0
	scratch_load_b32 v0, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v62, s45, v0
	scratch_load_b32 v0, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	ds_load_u8 v65, v65
	ds_load_u8 v63, v63
	ds_load_u8 v71, v71
	ds_load_u8 v61, v61
	ds_load_u8 v62, v62
	ds_load_u8 v70, v70
	ds_load_u8 v64, v64
	ds_load_u8 v72, v72
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v63, v63, v65, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v62, v64, v70, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v72, v71, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v64, v65, 16, v63
	v_lshl_or_b32 v63, v62, 16, v61
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v219, s45, v0
	scratch_load_b32 v0, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v220, s45, v0
	scratch_load_b32 v0, off, off offset:184 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v75, s45, v0
	scratch_load_b32 v0, off, off offset:180 ; 4-byte Folded Reload
	scratch_store_b32 off, v181, off offset:180 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v181, s45, v223
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v76, s45, v0
	scratch_load_b32 v0, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v218, s45, v0
	scratch_load_b32 v0, off, off offset:172 ; 4-byte Folded Reload
	scratch_store_b32 off, v184, off offset:172 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v184, s45, v222
	v_add_nc_u32_e32 v222, s45, v227
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v125, s45, v0
	scratch_load_b32 v0, off, off offset:168 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v182, off offset:168
	scratch_store_b32 off, v180, off offset:176
	v_add_nc_u32_e32 v180, s45, v224
	v_add_nc_u32_e32 v182, s45, v237
	v_add_nc_u32_e32 v237, s45, v214
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v77, s45, v0
	scratch_load_b32 v0, off, off offset:164 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v73, s45, v0
	scratch_load_b32 v0, off, off offset:160 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v239, off offset:160
	scratch_store_b32 off, v179, off offset:184
	v_dual_mov_b32 v239, v236 :: v_dual_mov_b32 v236, v187
	v_add_nc_u32_e32 v187, s45, v250
	v_add_nc_u32_e32 v250, s45, v225
	v_add_nc_u32_e32 v233, s45, v233
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, s45, v0
	scratch_load_b32 v0, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v179, s45, v0
	scratch_load_b32 v0, off, off offset:152 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v185, off offset:156
	scratch_store_b32 off, v186, off offset:152
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v185, s45, v0
	scratch_load_b32 v0, off, off offset:148 ; 4-byte Folded Reload
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v217, off offset:164
	scratch_store_b32 off, v183, off offset:148
	v_mov_b32_e32 v217, v191
	v_add_nc_u32_e32 v191, s45, v1
	scratch_load_b32 v1, off, off offset:124 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v183, s45, v253
	v_add_nc_u32_e32 v253, s45, v200
	v_add_nc_u32_e32 v200, s45, v20
	scratch_load_b32 v20, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v186, s45, v0
	scratch_load_b32 v0, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v192, s45, v1
	scratch_load_b32 v1, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v223, s45, v20
	scratch_load_b32 v20, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v9, s45, v1
	scratch_load_b32 v1, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v224, s45, v20
	scratch_load_b32 v20, off, off offset:28 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v0, s45, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v10, s45, v1
	scratch_load_b32 v1, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v225, s45, v20
	scratch_load_b32 v20, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v11, s45, v1
	scratch_load_b32 v1, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v226, s45, v20
	scratch_load_b32 v20, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v12, s45, v1
	scratch_load_b32 v1, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v244, s45, v20
	scratch_load_b32 v20, off, off offset:144 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v13, s45, v1
	scratch_load_b32 v1, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v14, s45, v1
	scratch_load_b32 v1, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v15, s45, v1
	scratch_load_b32 v1, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v16, s45, v1
	scratch_load_b32 v1, off, off offset:88 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v53, s45, v1
	scratch_load_b32 v1, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v54, s45, v1
	scratch_load_b32 v1, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v55, s45, v1
	scratch_load_b32 v1, off, off offset:76 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v56, s45, v1
	scratch_load_b32 v1, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v57, s45, v1
	scratch_load_b32 v1, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v58, s45, v1
	scratch_load_b32 v1, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v59, s45, v1
	scratch_load_b32 v1, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v60, s45, v1
	scratch_load_b32 v1, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s45, v1
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
	ds_load_u8 v193, v193
	ds_load_u8 v50, v50
	ds_load_u8 v68, v68
	ds_load_u8 v49, v49
	ds_load_u8 v211, v211
	ds_load_u8 v194, v194
	ds_load_u8 v51, v51
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v4, v6, v5, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	v_perm_b32 v2, v8, v7, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v5, v193, v52, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v193, s45, v19
	v_dual_mov_b32 v19, v230 :: v_dual_add_nc_u32 v230, s45, v18
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v52, v1, 16, v3
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v1, v49, v68, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v6, v51, v50, 0xc0c0004
	v_lshl_or_b32 v51, v4, 16, v2
	v_perm_b32 v2, v194, v211, 0xc0c0004
	v_mov_b32_e32 v18, v228
	ds_load_u8 v228, v54
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v243, s45, v243
	v_add_nc_u32_e32 v247, s45, v247
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	v_lshl_or_b32 v50, v6, 16, v5
	v_lshl_or_b32 v49, v2, 16, v1
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	ds_load_u8 v68, v69
	ds_load_u8 v69, v237
	ds_load_u8 v194, v195
	ds_load_u8 v195, v200
	ds_load_u8 v200, v212
	ds_load_u8 v197, v197
	ds_load_u8 v198, v198
	ds_load_u8 v196, v196
	ds_load_u8 v211, v224
	ds_load_u8 v212, v225
	ds_load_u8 v222, v222
	ds_load_u8 v193, v193
	ds_load_u8 v224, v230
	ds_load_u8 v225, v226
	ds_load_u8 v226, v244
	ds_load_u8 v223, v223
	ds_load_u8 v230, v11
	ds_load_u8 v237, v12
	ds_load_u8 v244, v9
	ds_load_u8 v245, v15
	ds_load_u8 v246, v16
	ds_load_u8 v66, v13
	ds_load_u8 v67, v14
	ds_load_u8 v231, v10
	ds_load_u8 v213, v55
	ds_load_u8 v214, v56
	ds_load_u8 v227, v53
	ds_load_u8 v59, v59
	ds_load_u8 v60, v60
	ds_load_u8 v57, v57
	ds_load_u8 v58, v58
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v53, v69, v68, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v54, v196, v194, 0xc0c0004
	v_perm_b32 v55, v200, v195, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[49:52], v[45:48], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v68, v198, v197, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v69, v212, v211, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v193, v224, v193, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v195, v226, v225, 0xc0c0004
	v_mov_b32_e32 v226, v74
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v194, v223, v222, 0xc0c0004
	v_lshl_or_b32 v56, v54, 16, v53
	v_lshl_or_b32 v55, v68, 16, v55
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v68, v237, v230, 0xc0c0004
	v_mov_b32_e32 v230, v19
	v_lshl_or_b32 v53, v195, 16, v193
	v_lshl_or_b32 v54, v194, 16, v69
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v193, v246, v245, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v69, v231, v244, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v67, v214, v213, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[53:56], v[41:44], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v194, v228, v227, 0xc0c0004
	v_mov_b32_e32 v228, v18
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v195, v60, v59, 0xc0c0004
	v_lshl_or_b32 v60, v69, 16, v68
	v_lshl_or_b32 v59, v66, 16, v193
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	v_lshl_or_b32 v58, v194, 16, v67
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v57, v57, 16, v195
	ds_load_u8 v66, v206
	ds_load_u8 v67, v207
	ds_load_u8 v68, v201
	ds_load_u8 v69, v210
	ds_load_u8 v193, v190
	ds_load_u8 v194, v203
	ds_load_u8 v195, v204
	ds_load_u8 v189, v189
	ds_load_u8 v196, v208
	ds_load_u8 v197, v209
	ds_load_u8 v198, v202
	ds_load_u8 v191, v191
	ds_load_u8 v192, v192
	ds_load_u8 v200, v205
	ds_load_u8 v0, v0
	ds_load_u8 v199, v199
	ds_load_u8 v185, v185
	ds_load_u8 v186, v186
	ds_load_u8 v179, v179
	ds_load_u8 v187, v187
	ds_load_u8 v188, v188
	ds_load_u8 v182, v182
	ds_load_u8 v183, v183
	ds_load_u8 v201, v252
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	.loc	1 358 31                        ; generate_amdgcn.py:358:31
	v_add_nc_u32_e32 v190, s45, v20
	.loc	1 359 28                        ; generate_amdgcn.py:359:28
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v67, v189, v68, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[9:16], v[57:60], v[37:40], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v68, v180
	ds_load_u8 v180, v181
	ds_load_u8 v181, v253
	ds_load_u8 v184, v184
	ds_load_u8 v189, v190
	ds_load_u8 v124, v124
	ds_load_u8 v126, v126
	ds_load_u8 v202, v250
	v_lshl_or_b32 v190, v67, 16, v66
	v_perm_b32 v66, v193, v69, 0xc0c0004
	v_perm_b32 v67, v195, v194, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v69, v197, v196, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v193, v199, v198, 0xc0c0004
	v_perm_b32 v191, v192, v191, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v185, v186, v185, 0xc0c0004
	v_perm_b32 v0, v0, v200, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v186, v188, v187, 0xc0c0004
	ds_load_u8 v187, v243
	ds_load_u8 v188, v247
	ds_load_u8 v192, v17
	ds_load_u8 v194, v248
	ds_load_u8 v195, v249
	ds_load_u8 v196, v240
	ds_load_u8 v197, v242
	ds_load_u8 v198, v238
	scratch_load_b32 v17, off, off offset:276 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v182, v183, v182, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v179, v201, v179, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v68, v180, v68, 0xc0c0004
	v_lshl_or_b32 v203, v182, 16, v186
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v204, v179, 16, v185
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v124, v126, v124, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v180, v202, v181, 0xc0c0004
	v_perm_b32 v181, v189, v184, 0xc0c0004
	ds_load_u8 v183, v255
	ds_load_u8 v184, v234
	ds_load_u8 v189, v232
	ds_load_u8 v199, v235
	ds_load_u8 v205, v215
	ds_load_u8 v206, v233
	ds_load_u8 v207, v254
	ds_load_u8 v208, v251
	v_lshl_or_b32 v202, v180, 16, v68
	v_lshl_or_b32 v201, v124, 16, v181
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v68, v188, v187, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v126, v195, v194, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v187, v197, v196, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v124, v198, v192, 0xc0c0004
	ds_load_u8 v75, v75
	ds_load_u8 v76, v76
	ds_load_u8 v195, v219
	ds_load_u8 v77, v77
	ds_load_u8 v73, v73
	ds_load_u8 v196, v218
	ds_load_u8 v125, v125
	ds_load_u8 v197, v220
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v188, v184, v183, 0xc0c0004
	v_wmma_i32_16x16x16_iu8 v[179:186], v[201:204], v[45:48], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v48, v124, 16, v68
	v_lshl_or_b32 v47, v187, 16, v126
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v192, v205, v199, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v194, v207, v206, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v189, v208, v189, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v70, v76, v75, 0xc0c0004
	v_lshl_or_b32 v45, v194, 16, v192
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v73, v73, v77, 0xc0c0004
	v_lshl_or_b32 v46, v189, 16, v188
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v125, v125, v196, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v197, v195, 0xc0c0004
	v_lshl_or_b32 v189, v67, 16, v66
	v_lshl_or_b32 v188, v193, 16, v69
	v_mov_b32_e32 v196, v216
	v_lshl_or_b32 v61, v125, 16, v73
	v_wmma_i32_16x16x16_iu8 v[179:186], v[45:48], v[41:44], v[179:186] neg_lo:[1,1,0]
	v_lshl_or_b32 v62, v75, 16, v70
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[179:186], v[61:64], v[37:40], v[179:186] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	ds_load_u8 v68, v17
	scratch_load_b32 v17, off, off offset:272 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v71, v17
	scratch_load_b32 v17, off, off offset:284 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v72, v17
	ds_load_u8 v124, v241
	scratch_load_b32 v17, off, off offset:256 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v41, v71, v68, 0xc0c0004
	s_waitcnt vmcnt(0)
	ds_load_u8 v126, v17
	scratch_load_b32 v17, off, off offset:268 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v192, v17
	scratch_load_b32 v17, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v194, v17
	scratch_load_b32 v17, off, off offset:280 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v194, v192, 0xc0c0004
	v_mov_b32_e32 v192, v221
	s_waitcnt vmcnt(0)
	ds_load_u8 v187, v17
	scratch_load_b32 v17, off, off offset:244 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v187, v72, 0xc0c0004
	v_lshl_or_b32 v187, v0, 16, v191
	v_perm_b32 v0, v126, v124, 0xc0c0004
	v_mov_b32_e32 v191, v217
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v73, v42, 16, v41
	v_wmma_i32_16x16x16_iu8 v[37:44], v[49:52], v[33:36], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[1:8], v[201:204], v[33:36], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v72, v65, 16, v0
	v_wmma_i32_16x16x16_iu8 v[9:16], v[187:190], v[25:28], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[37:44], v[53:56], v[29:32], v[37:44] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[1:8], v[45:48], v[29:32], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v219, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v220, v13
	v_cvt_f32_i32_e32 v241, v14
	v_wmma_i32_16x16x16_iu8 v[1:8], v[61:64], v[21:24], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[37:44], v[57:60], v[21:24], v[37:44] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v58, v15
	v_cvt_f32_i32_e32 v59, v16
	scratch_load_b32 v61, off, off offset:204 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_u8 v76, v17
	scratch_load_b32 v17, off, off offset:240 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v77, v17
	scratch_load_b32 v17, off, off offset:252 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v77, v76, 0xc0c0004
	s_waitcnt vmcnt(0)
	ds_load_u8 v195, v17
	scratch_load_b32 v17, off, off offset:228 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v197, v17
	scratch_load_b32 v17, off, off offset:224 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v198, v17
	scratch_load_b32 v17, off, off offset:236 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v198, v197, 0xc0c0004
	s_waitcnt vmcnt(0)
	ds_load_u8 v199, v17
	scratch_load_b32 v17, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v200, v17
	scratch_load_b32 v17, off, off offset:248 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v35, v200, v199, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v70, v35, 16, v34
	s_waitcnt vmcnt(0)
	ds_load_u8 v205, v17
	scratch_load_b128 v[17:20], off, off offset:864 ; 16-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v205, v195, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v71, v33, 16, v66
	v_wmma_i32_16x16x16_iu8 v[179:186], v[70:73], v[25:28], v[179:186] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v54, v179
	v_cvt_f32_i32_e32 v55, v180
	scratch_load_b32 v180, off, off offset:176 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v50, v181
	scratch_load_b32 v181, off, off offset:180 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v51, v182
	scratch_load_b32 v182, off, off offset:168 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v9, v185
	s_waitcnt vmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[37:44], v[187:190], v[17:20], v[37:44] neg_lo:[1,1,0]
	v_dual_mov_b32 v187, v236 :: v_dual_mov_b32 v236, v239
	v_wmma_i32_16x16x16_iu8 v[1:8], v[70:73], v[17:20], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v70, v10
	v_cvt_f32_i32_e32 v71, v11
	v_cvt_f32_i32_e32 v72, v12
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v179, off, off offset:184
	scratch_load_b32 v239, off, off offset:160
	v_cvt_f32_i32_e32 v11, v183
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v183, off, off offset:148
	scratch_load_b32 v217, off, off offset:164
	v_cvt_f32_i32_e32 v12, v184
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v184, off, off offset:172
	scratch_load_b32 v185, off, off offset:156
	v_cvt_f32_i32_e32 v10, v186
	scratch_load_b32 v186, off, off offset:152 ; 4-byte Folded Reload
	v_mov_b32_e32 v190, v229
	v_cvt_f32_i32_e32 v229, v37
	v_cvt_f32_i32_e32 v16, v38
	v_cvt_f32_i32_e32 v73, v39
	v_cvt_f32_i32_e32 v125, v40
	v_cvt_f32_i32_e32 v221, v41
	v_cvt_f32_i32_e32 v15, v42
	v_cvt_f32_i32_e32 v60, v43
	v_cvt_f32_i32_e32 v218, v44
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
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v0, off, off offset:836
	scratch_load_b32 v5, off, off offset:816
	scratch_load_b32 v7, off, off offset:808
	scratch_load_b32 v8, off, off offset:760
	scratch_load_b32 v18, off, off offset:756
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v1.l, 0
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s0, s35, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s30, s14
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s0, s0, 25
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s31, s15
	v_mov_b16_e32 v19.l, v1.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v28.l, v1.l
	v_mov_b16_e32 v30.l, v1.l
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s0, s35, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s10, s0, 7
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s10, s44
	s_cselect_b32 s0, -1, 0
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_and_b32 s25, s25, 0xffff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 s0, s3, s0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v1.h, v0.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	scratch_load_b32 v0, off, off offset:860 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v0.h, v0.l
	v_mov_b16_e32 v0.l, v1.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v3, v1, v0
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v3, v3, v5, v177
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	scratch_load_b32 v5, off, off offset:856 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v5.h, v5.l
	v_mov_b16_e32 v5.l, v1.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v6, v1, v5
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v6, v6, v7, v178
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v7, off, off offset:832 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v19.h, v7.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v7, v1, v19
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v7, v7, v8, v176
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v8, off, off offset:828 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v176, v7, s2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v8.h, v8.l
	v_mov_b16_e32 v8.l, v1.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v17, v1, v8
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v21, v17, v18, v175
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v177, v3, s2
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	scratch_load_b32 v3, off, off offset:812 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v178, v6, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v6, off, off offset:752 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v21, v175, v21, s2
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v3.h, v3.l
	v_mov_b16_e32 v3.l, v1.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v3, v0
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v7, v0, v6, v162
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v3, v5
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v5, off, off offset:804
	scratch_load_b32 v6, off, off offset:800
	scratch_load_b32 v23, off, off offset:740
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v68, v162, v7, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v31, v0, v5, v174
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v5, off, off offset:744 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v0, v3, v8
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v174, v31, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v8, v0, v5, v172
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v0, v3, v19
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:820
	scratch_load_b32 v5, off, off offset:748
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v75, v172, v8, s2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v19.h, v19.l
	v_mov_b16_e32 v19.l, v1.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v22, v1, v19
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v26, v22, v23, v168
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v22, off, off offset:824 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v168, v26, s2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v22.h, v22.l
	v_mov_b16_e32 v22.l, v1.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v23, v1, v22
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v29, v23, v217, v169
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v23, off, off offset:792 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v24, v0, v5, v173
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	scratch_load_b32 v0, off, off offset:844 ; 4-byte Folded Reload
	v_mov_b16_e32 v5.l, v1.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v173, v24, s2
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v5.h, v0.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v1, v5
	v_mul_f32_e32 v5, v3, v5
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v25, v0, v6, v170
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	scratch_load_b32 v0, off, off offset:852 ; 4-byte Folded Reload
	v_mov_b16_e32 v6.l, v1.l
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v27, v5, v23, v166
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v170, v25, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v27, v166, v27, s2
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v6.h, v0.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v0, v1, v6
	v_mul_f32_e32 v5, v3, v6
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v6, off, off offset:796 ; 4-byte Folded Reload
	v_fma_f32 v0, v0, v61, v171
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v76, v171, v0, s2
	v_cndmask_b32_e64 v0, v169, v29, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v169.h, v1.l
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v33, v5, v6, v167
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v6, off, off offset:732 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v3, v19
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v29, v167, v33, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v167.h, v1.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fma_f32 v34, v5, v6, v164
	scratch_load_b32 v6, off, off offset:736 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v5, v3, v22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v164, v34, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v35, v5, v6, v165
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:840
	scratch_load_b32 v6, off, off offset:788
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v165, v35, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v165.h, v1.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v28.h, v5.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v5, v1, v28
	v_mul_f32_e32 v28, v3, v28
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v22, v5, v6, v127
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:848
	scratch_load_b32 v6, off, off offset:784
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v30.h, v5.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v5, v1, v30
	v_mul_f32_e32 v30, v3, v30
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v36, v5, v6, v163
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v5, v161, s10, 1
	v_add_lshl_u32 v6, v160, s10, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s10, s10, s34
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v160.h, v1.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v19, v159, s10, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	s_clause 0x1
	buffer_load_u16 v37, v5, s[12:15], 0 offen
	buffer_load_u16 v38, v6, s[12:15], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v6, v156, s10, 1
	v_cndmask_b32_e64 v5, 0x80000000, v19, s0
	v_add_lshl_u32 v19, v157, s10, 1
	v_add_lshl_u32 v23, v158, s10, 1
	.loc	1 370 39                        ; generate_amdgcn.py:370:39
	s_add_i32 s11, s10, s26
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v32, s11, v154, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	s_clause 0x3
	buffer_load_u16 v40, v5, s[28:31], 0 offen
	buffer_load_u16 v42, v6, s[28:31], 0 offen
	buffer_load_u16 v43, v19, s[28:31], 0 offen
	buffer_load_u16 v46, v23, s[28:31], 0 offen
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v5, s11, v155, 1
	v_add_lshl_u32 v6, s11, v151, 1
	v_add_lshl_u32 v19, s11, v152, 1
	v_add_lshl_u32 v23, s11, v153, 1
	v_cndmask_b32_e64 v32, 0x80000000, v32, s0
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	v_cndmask_b32_e64 v6, 0x80000000, v6, s0
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	v_cndmask_b32_e64 v23, 0x80000000, v23, s0
	s_clause 0x4
	buffer_load_u16 v48, v5, s[28:31], 0 offen
	buffer_load_u16 v49, v6, s[28:31], 0 offen
	buffer_load_u16 v61, v19, s[28:31], 0 offen
	buffer_load_u16 v62, v23, s[28:31], 0 offen
	buffer_load_u16 v63, v32, s[28:31], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	scratch_load_b32 v5, off, off offset:348 ; 4-byte Folded Reload
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v31, v144, s10, 1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v44, s11, v148, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v32, v145, s10, 1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v45, s11, v149, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v39, v146, s10, 1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v47, s11, v150, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v41, v147, s10, 1
	v_cndmask_b32_e64 v31, 0x80000000, v31, s0
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e64 v65, 0x80000000, v44, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v32, 0x80000000, v32, s0
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e64 v66, 0x80000000, v45, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v39, 0x80000000, v39, s0
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e64 v67, 0x80000000, v47, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v41, 0x80000000, v41, s0
	s_clause 0x6
	buffer_load_u16 v45, v31, s[28:31], 0 offen
	buffer_load_u16 v44, v32, s[28:31], 0 offen
	buffer_load_u16 v32, v39, s[28:31], 0 offen
	buffer_load_u16 v31, v41, s[28:31], 0 offen
	buffer_load_u16 v47, v65, s[28:31], 0 offen
	buffer_load_u16 v39, v66, s[28:31], 0 offen
	buffer_load_u16 v41, v67, s[28:31], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v35, v163, v36, s2
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s12, s33, s27
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v19.h, v1.l
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_add_i32 s12, s12, s26
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v161.h, v1.l
	v_mov_b16_e64 v159.h, v1.l
	v_mov_b16_e64 v163.h, v1.l
	s_mov_b32 s26, 0x7ffffffe
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
	v_mul_f32_e32 v65, v8, v38
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v43, 16, v49
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v49, 16, v62
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v62, v8, v36
	v_mul_f32_e32 v36, v7, v36
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v40, 16, v46
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v42, 16, v48
	v_lshlrev_b32_e32 v48, 16, v61
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v61, v8, v37 :: v_dual_lshlrev_b32 v46, 16, v63
	v_mul_f32_e32 v37, v7, v37
	v_mul_f32_e32 v63, v8, v40
	v_mul_f32_e32 v40, v7, v40
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v66, v8, v43
	v_mul_f32_e32 v67, v8, v42
	v_dual_mul_f32 v42, v7, v42 :: v_dual_mul_f32 v77, v8, v48
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v38, v7, v38 :: v_dual_mul_f32 v69, v8, v49
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v43, v7, v43 :: v_dual_mul_f32 v124, v8, v46
	v_mul_f32_e32 v48, v7, v48
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v61, v61, v187, v20
	v_fma_f32 v36, v36, v230, v75
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v67, v67, v229, v18
	v_fma_f32 v16, v66, v16, v17
	v_fma_f32 v42, v42, v219, v68
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v62, v62, v196, v21
	v_fma_f32 v63, v63, v191, v0
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v43, v43, v70, v64
	v_fma_f32 v70, v77, v73, v25
	v_fma_f32 v73, v69, v125, v76
	v_fma_f32 v71, v48, v71, v27
	v_fma_f32 v15, v124, v15, v35
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v69, v20, v61, s3
	v_cndmask_b32_e64 v61, v75, v36, s3
	v_cndmask_b32_e64 v74, v17, v16, s3
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v49, v7, v49
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v75, v18, v67, s3
	v_cndmask_b32_e64 v68, v68, v42, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v126, v65, v190, v26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v21, v62, s3
	v_cndmask_b32_e64 v62, v27, v71, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v16, 0xbfb8aa3b, v74
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v72, v49, v72, v29
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v0, v63, s3
	v_cndmask_b32_e64 v0, v64, v43, s3
	v_cndmask_b32_e64 v43, v35, v15, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v15, 0xbfb8aa3b, v75
	v_mul_f32_e32 v17, 0xbfb8aa3b, v68
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v26, v126, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v18, 0xbfb8aa3b, v0
	v_mul_f32_e32 v26, 0xbfb8aa3b, v62
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v15
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v17
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v63, v29, v72, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v18
	v_cndmask_b32_e64 v15, 0, 0x42800000, s1
	v_cndmask_b32_e64 v17, 0, 0x42800000, s5
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v26
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v37, v37, v236, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v67, v76, v73, s3
	v_cndmask_b32_e64 v64, v25, v70, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v27, 0xbfb8aa3b, v63
	v_cndmask_b32_e64 v18, 0, 0x42800000, s4
	v_cndmask_b32_e64 v26, 0, 0x42800000, s9
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v75
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v68
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v40, v40, v228, v33
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v65, v24, v37, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_mul_f32 v24, 0xbfb8aa3b, v64 :: v_dual_mul_f32 v25, 0xbfb8aa3b, v67
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v74
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v27
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v0
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v62
	v_exp_f32_e32 v15, v15
	v_exp_f32_e32 v17, v17
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v21, v33, v40, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v25
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v24
	v_cndmask_b32_e64 v27, 0, 0x42800000, s8
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, s5
	v_exp_f32_e32 v16, v16
	v_cndmask_b32_e64 v25, 0, 0x42800000, s6
	v_cndmask_b32_e64 v24, 0, 0x42800000, s7
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v15, v15, v33
	v_ldexp_f32 v17, v17, v35
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v63
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v38, v38, v192, v34
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_dual_fmac_f32 v25, 0xbfb8aa3b, v67 :: v_dual_fmac_f32 v24, 0xbfb8aa3b, v64
	v_exp_f32_e32 v18, v18
	v_ldexp_f32 v16, v16, v29
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v70, 1.0, v15
	v_add_f32_e32 v72, 1.0, v17
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v27, v27
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v34, v38, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s4
	v_exp_f32_e32 v25, v25
	v_exp_f32_e32 v24, v24
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s8
	.loc	1 385 34 is_stmt 0              ; generate_amdgcn.py:385:34
	v_add_f32_e32 v71, 1.0, v16
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v17, null, v70, v70, v75
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s6
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, s7
	v_exp_f32_e32 v26, v26
	v_ldexp_f32 v18, v18, v34
	v_ldexp_f32 v27, v27, v38
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v38, v17
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, s9
	v_ldexp_f32 v25, v25, v36
	v_ldexp_f32 v24, v24, v37
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v73, 1.0, v18
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v15, null, v71, v71, v74
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v26, v26, v40
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v76, 1.0, v24 :: v_dual_add_f32 v77, 1.0, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v24, null, v73, v73, v0
	v_rcp_f32_e32 v37, v15
	v_fma_f32 v150, -v17, v38, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v125, 1.0, v27 :: v_dual_add_f32 v124, 1.0, v26
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v26, null, v72, v72, v68
	v_div_scale_f32 v29, null, v77, v77, v67
	v_rcp_f32_e32 v144, v24
	v_fmac_f32_e32 v38, v150, v38
	v_div_scale_f32 v36, null, v125, v125, v63
	v_div_scale_f32 v34, null, v76, v76, v64
	v_div_scale_f32 v126, null, v124, v124, v62
	v_rcp_f32_e32 v145, v26
	v_rcp_f32_e32 v146, v29
	v_rcp_f32_e32 v148, v36
	v_fma_f32 v42, -v15, v37, 1.0
	v_div_scale_f32 v16, vcc_lo, v74, v71, v74
	v_rcp_f32_e32 v147, v34
	v_rcp_f32_e32 v149, v126
	v_fma_f32 v151, -v24, v144, 1.0
	v_fmac_f32_e32 v37, v42, v37
	v_div_scale_f32 v18, s9, v75, v70, v75
	v_fma_f32 v152, -v26, v145, 1.0
	v_fma_f32 v153, -v29, v146, 1.0
	v_fma_f32 v42, -v36, v148, 1.0
	v_dual_fmac_f32 v144, v151, v144 :: v_dual_mul_f32 v151, v16, v37
	v_div_scale_f32 v25, s8, v0, v73, v0
	v_div_scale_f32 v27, s7, v68, v72, v68
	v_fma_f32 v154, -v34, v147, 1.0
	v_fma_f32 v150, -v126, v149, 1.0
	v_dual_fmac_f32 v145, v152, v145 :: v_dual_mul_f32 v152, v18, v38
	v_fmac_f32_e32 v146, v153, v146
	v_fmac_f32_e32 v148, v42, v148
	v_fma_f32 v42, -v15, v151, v16
	v_div_scale_f32 v35, s4, v64, v76, v64
	v_fmac_f32_e32 v147, v154, v147
	v_fma_f32 v153, -v17, v152, v18
	v_dual_fmac_f32 v149, v150, v149 :: v_dual_mul_f32 v150, v25, v144
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v151, v42, v37 :: v_dual_mul_f32 v156, v35, v147
	v_div_scale_f32 v33, s6, v67, v77, v67
	v_fmac_f32_e32 v152, v153, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v15, -v15, v151, v16
	v_div_scale_f32 v40, s1, v63, v125, v63
	v_mul_f32_e32 v153, v27, v145
	v_div_scale_f32 v154, s5, v62, v124, v62
	v_div_fmas_f32 v151, v15, v37, v151
	v_fma_f32 v15, -v24, v150, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v155, v33, v146 :: v_dual_mul_f32 v158, v154, v149
	v_fma_f32 v16, -v17, v152, v18
	v_fma_f32 v17, -v26, v153, v27
	v_fmac_f32_e32 v150, v15, v144
	v_fma_f32 v15, -v34, v156, v35
	v_mul_f32_e32 v157, v40, v148
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v153, v17, v145
	v_div_fmas_f32 v152, v16, v38, v152
	v_fma_f32 v16, -v29, v155, v33
	v_fmac_f32_e32 v156, v15, v147
	v_fma_f32 v17, -v36, v157, v40
	.loc	1 366 22 is_stmt 1              ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v18, v129, s10, 1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	s_waitcnt vmcnt(7)
	v_and_b32_e32 v23, 56, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v155, v16, v146
	v_fma_f32 v16, -v126, v158, v154
	v_fmac_f32_e32 v157, v17, v148
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v17, v128, s10, 1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v162, -v24, v150, v25
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v24, v130, s10, 1
	v_add_lshl_u32 v25, v131, s10, 1
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v164, -v26, v153, v27
	v_fma_f32 v166, -v29, v155, v33
	v_fma_f32 v168, -v34, v156, v35
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v26, v132, s10, 1
	v_add_lshl_u32 v27, v133, s10, 1
	v_add_lshl_u32 v29, v134, s10, 1
	v_add_lshl_u32 v33, v135, s10, 1
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_add_lshl_u32 v34, s11, v136, 1
	v_add_lshl_u32 v35, s11, v137, 1
	v_add_lshl_u32 v129, s11, v142, 1
	v_add_lshl_u32 v37, s11, v138, 1
	v_add_lshl_u32 v38, s11, v139, 1
	v_add_lshl_u32 v42, s11, v140, 1
	v_add_lshl_u32 v128, s11, v141, 1
	v_add_lshl_u32 v130, s11, v143, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	v_cndmask_b32_e64 v18, 0x80000000, v18, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v158, v16, v149
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_or_b32_e32 v16, s12, v23
	v_add3_u32 v15, s12, v23, 64
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v23, 0x80000000, v24, s0
	v_cndmask_b32_e64 v24, 0x80000000, v25, s0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v131, -v36, v157, v40
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_cndmask_b32_e64 v25, 0x80000000, v26, s0
	v_cndmask_b32_e64 v27, 0x80000000, v27, s0
	v_cndmask_b32_e64 v29, 0x80000000, v29, s0
	v_cndmask_b32_e64 v36, 0x80000000, v33, s0
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_cndmask_b32_e64 v40, 0x80000000, v34, s0
	v_cndmask_b32_e64 v35, 0x80000000, v35, s0
	v_cndmask_b32_e64 v129, 0x80000000, v129, s0
	v_cndmask_b32_e64 v132, 0x80000000, v37, s0
	v_cndmask_b32_e64 v133, 0x80000000, v38, s0
	v_cndmask_b32_e64 v134, 0x80000000, v42, s0
	v_cndmask_b32_e64 v128, 0x80000000, v128, s0
	v_cndmask_b32_e64 v130, 0x80000000, v130, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0xf
	buffer_load_u16 v38, v17, s[28:31], 0 offen
	buffer_load_u16 v37, v18, s[28:31], 0 offen
	buffer_load_u16 v34, v23, s[28:31], 0 offen
	buffer_load_u16 v33, v24, s[28:31], 0 offen
	buffer_load_u16 v26, v25, s[28:31], 0 offen
	buffer_load_u16 v25, v27, s[28:31], 0 offen
	buffer_load_u16 v18, v29, s[28:31], 0 offen
	buffer_load_u16 v17, v36, s[28:31], 0 offen
	buffer_load_u16 v40, v40, s[28:31], 0 offen
	buffer_load_u16 v42, v35, s[28:31], 0 offen
	buffer_load_u16 v35, v132, s[28:31], 0 offen
	buffer_load_u16 v36, v133, s[28:31], 0 offen
	buffer_load_u16 v27, v134, s[28:31], 0 offen
	buffer_load_u16 v29, v128, s[28:31], 0 offen
	buffer_load_u16 v23, v129, s[28:31], 0 offen
	buffer_load_u16 v24, v130, s[28:31], 0 offen
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v129, v162, v144, v150
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v71, v151, v71, v74
	v_div_fmas_f32 v74, v164, v145, v153
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v70, v152, v70, v75
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v128, 0xbfb8aa3b, v43
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v75, v166, v146, v155
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v126, -v126, v158, v154
	v_div_fixup_f32 v0, v129, v73, v0
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v69, v69, v71 :: v_dual_mul_f32 v66, v66, v70
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v71, v168, v147, v156
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v65, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v70, v131, v148, v157
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v68, v74, v72, v68
	v_div_fmas_f32 v65, v126, v149, v158
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v160.l, v69.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v67, v75, v77, v67
	v_div_fixup_f32 v64, v71, v76, v64
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v161.l, v66.h
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v62, v65, v124, v62
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v61, v61, v68
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v63, v70, v125, v63
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_and_b32_e32 v65, 1, v160
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v49, v49, v67 :: v_dual_mul_f32 v48, v48, v64
	v_mul_f32_e32 v20, v20, v62
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v19.l, v0.h
	v_and_b32_e32 v64, 1, v161
	v_mov_b16_e64 v159.l, v61.h
	v_cmp_o_f32_e32 vcc_lo, v69, v69
	v_mov_b16_e64 v165.l, v20.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v21, v21, v63
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v66, v66
	v_mov_b16_e64 v167.l, v49.h
	v_and_b32_e32 v19, 1, v19
	v_add3_u32 v62, v69, v65, 0x7fff
	v_and_b32_e32 v63, 1, v159
	v_add3_u32 v64, v66, v64, 0x7fff
	v_and_b32_e32 v66, 1, v165
	v_mov_b16_e64 v163.l, v21.h
	v_cmp_o_f32_e64 s1, v0, v0
	v_cmp_o_f32_e64 s4, v61, v61
	v_and_b32_e32 v65, 1, v167
	v_add3_u32 v0, v0, v19, 0x7fff
	v_cndmask_b16 v19.h, 0x7fff, v62.h, vcc_lo
	v_and_b32_e32 v62, 1, v163
	v_add3_u32 v61, v61, v63, 0x7fff
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v47, 16, v47
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s5, v21, v21
	v_cmp_o_f32_e64 s6, v20, v20
	v_add3_u32 v21, v21, v62, 0x7fff
	v_add3_u32 v62, v20, v66, 0x7fff
	v_cndmask_b16 v20.l, 0x7fff, v61.h, s4
	v_add3_u32 v61, v49, v65, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v127, v22, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v63, v8, v47 :: v_dual_mul_f32 v46, v7, v46
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v65, off, off offset:704
	scratch_load_b32 v68, off, off offset:604
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v22.h, 0x7fff, v61.h, vcc_lo
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v61, v63, v221, v49
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v63, off, off offset:728 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e64 v169.l, v48.h
	v_cndmask_b16 v20.h, 0x7fff, v0.h, s1
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v128
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v49, v61, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v61, off, off offset:708 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v21.l, 0x7fff, v62.h, s6
	v_cndmask_b16 v19.l, 0x7fff, v64.h, s0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v62, 0, 0x42800000, s1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v67, 1, v169
	v_cmp_o_f32_e64 s0, v48, v48
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v64, 0xbfb8aa3b, v49
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s5
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v43
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v0, v48, v67, 0x7fff
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v48.l, v1.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v64
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v32, 16, v32
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v62, v62
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v22.l, 0x7fff, v0.h, s0
	.loc	1 390 18 is_stmt 0              ; generate_amdgcn.py:390:18
	scratch_load_b32 v5, off, off offset:400 ; 4-byte Folded Reload
	.loc	1 366 22 is_stmt 1              ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v44, 16, v44
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v41, 16, v41
	v_lshlrev_b32_e32 v39, 16, v39
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v31, 16, v31
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
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v27, 16, v27
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v23, 16, v23
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(4)
	v_fma_f32 v28, v28, v65, v122
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v48.h, v63.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v122, v28, s2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v63.l, v1.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v66, v1, v48
	v_mul_f32_e32 v48, v3, v48
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v66, v66, v68, v120
	scratch_load_b32 v68, off, off offset:608 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v30, v30, v61, v123
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v61, off, off offset:724 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v66, v120, v66, s2
	v_cndmask_b32_e64 v30, v123, v30, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v46, v46, v241, v30
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v30, v46, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v65, 0xbfb8aa3b, v30
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v63.h, v61.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v64, v1, v63
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v61, v62, v61
	v_cndmask_b32_e64 v62, 0, 0x42800000, vcc_lo
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v47, v7, v47
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v65, 0, 0x42800000, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v64, v64, v68, v121
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v61, 1.0, v61
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v49
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	v_fma_f32 v46, v47, v220, v28
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v30
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_div_scale_f32 v47, null, v61, v61, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v28, v46, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v46, v62
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v62, v47
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s1
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v64, v121, v64, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v63, v3, v63
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v46, v46, v68
	v_mul_f32_e32 v67, 0xbfb8aa3b, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v68, -v47, v62, 1.0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v65, v65, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v62, v68, v62 :: v_dual_add_f32 v65, 1.0, v65
	v_div_scale_f32 v68, null, v46, v46, v49
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v70, vcc_lo, v43, v61, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v71, v68
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v28
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v72, null, v65, v65, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v67, v67
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v75, v72
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v68, v71, 1.0
	v_fmac_f32_e32 v71, v74, v71
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v67, v67, v69
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v69, v70, v62
	v_fma_f32 v121, -v72, v75, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v67, 1.0, v67
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v73, -v47, v69, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v75, v121, v75
	v_div_scale_f32 v121, s4, v30, v65, v30
	v_div_scale_f32 v76, null, v67, v67, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v69, v73, v62
	v_div_scale_f32 v73, s1, v49, v46, v49
	v_rcp_f32_e32 v74, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v47, v69, v70
	v_div_fmas_f32 v47, v47, v62, v69
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v69, -v76, v74, 1.0
	v_div_fixup_f32 v43, v47, v61, v43
	.loc	1 370 31 is_stmt 1              ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v61.l, v1.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v74, v69, v74
	v_div_scale_f32 v69, s5, v28, v67, v28
	v_dual_mul_f32 v122, v69, v74 :: v_dual_lshlrev_b32 v45, 16, v45
	v_mul_f32_e32 v70, v73, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v120, v8, v45
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v62, -v68, v70, v73
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v77, v8, v44
	v_mul_f32_e32 v44, v7, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v45, v7, v45 :: v_dual_fmac_f32 v70, v62, v71
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v62, off, off offset:592 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v68, -v68, v70, v73
	v_div_fmas_f32 v68, v68, v71, v70
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v70, off, off offset:780
	scratch_load_b32 v71, off, off offset:776
	scratch_load_b32 v123, off, off offset:588
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(3)
	v_fma_f32 v62, v63, v62, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v62, v119, v62, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v119, -v76, v122, v69
	v_dual_mul_f32 v63, v121, v75 :: v_dual_fmac_f32 v122, v119, v74
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v48, v48, v123, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v73, -v72, v63, v121
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v44, v44, v71, v62
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v69, -v76, v122, v69
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v118, v48, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v63, v73, v75
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v44, v62, v44, s3
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	scratch_load_b32 v62, off, off offset:712 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v73, v8, v32
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v45, v45, v70, v48
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v70, -v72, v63, v121
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v76, off, off offset:552 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v48, v45, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v63, v70, v75, v63
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v70, off, off offset:772 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s5
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v48, off, off offset:768 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v69, v69, v74, v122
	v_div_fixup_f32 v30, v63, v65, v30
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v63, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v28, v69, v67, v28
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v44, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v44, v45, v28
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v45, v68, v46, v49
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v46.l, v0.h
	v_mov_b16_e32 v46.h, v1.l
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v49.l, v1.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v46, 1, v46
	v_add3_u32 v46, v0, v46, 0x7fff
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v70, v77, v70, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v64, v70, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v30, v43
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v30, off, off offset:688 ; 4-byte Folded Reload
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v49.h, v62.l
	scratch_load_b32 v62, off, off offset:700 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(3)
	v_fma_f32 v48, v120, v48, v66
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v46.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v28, v66, v48, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v48.h, v1.l
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v45, v28, v45
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v48.l, v44.h
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v28, v1, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s0, v45, v45
	v_and_b32_e32 v47, 1, v48
	v_mov_b16_e32 v48.l, v45.h
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v43, v44, v47, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v30, v28, v30, v117
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v28.h, 0x7fff, v46.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v44, v44
	v_and_b32_e32 v44, 1, v48
	v_mov_b16_e32 v46.h, v1.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v30, v117, v30, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v47, v8, v41
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v28.l, 0x7fff, v43.h, vcc_lo
	v_add3_u32 v43, v45, v44, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v44, off, off offset:684 ; 4-byte Folded Reload
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v61.h, v62.l
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v47, v47, v218, v30
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v41, v7, v41
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v62, off, off offset:660 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v48, v1, v61
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v47, v30, v47, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v30, 1, v46
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v45.l, v1.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v46, 0xbfb8aa3b, v47
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v30, v0, v30, 0x7fff
	v_cndmask_b16 v30.l, 0x7fff, v43.h, s0
	v_mov_b16_e32 v43.h, v1.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v46
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v46, v8, v39
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v30.h, 0x7fff, v30.h, vcc_lo
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v44, v48, v44, v116
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v48, v3, v49
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v49, off, off offset:696 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v116, v44, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v44, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v46, v46, v60, v0
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v46, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v46, off, off offset:668 ; 4-byte Folded Reload
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v45.h, v49.l
	v_mov_b16_e32 v49.l, v1.l
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v46, v48, v46, v115
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v48, off, off offset:692 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v115, v46, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v41, v41, v59, v46
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v46, v41, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v49.h, v48.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v47
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v48, v3, v61 :: v_dual_mul_f32 v61, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v59, v1, v49
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v44, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v48, v48, v62, v114
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v61
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v61, v1, v45
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v59, v59, v63, v113
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v45, v3, v45
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v48, v114, v48, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v49, v3, v49
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v61, v61, v186, v112
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v44, v44, v60
	v_cndmask_b32_e64 v60, 0, 0x42800000, vcc_lo
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v39, v7, v39
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v45, v45, v76, v110
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v61, v112, v61, s2
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v44, 1.0, v44
	.loc	1 385 40 is_stmt 0              ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v0
	.loc	1 375 17 is_stmt 1              ; generate_amdgcn.py:375:17
	v_fma_f32 v39, v39, v58, v48
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v110, v45, s2
	v_cndmask_b32_e64 v59, v113, v59, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v46, null, v44, v44, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
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
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v62, 1.0, v62
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v68, -v46, v64, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v71, null, v62, v62, v39
	v_fmac_f32_e32 v64, v68, v60
	v_div_scale_f32 v68, s1, v0, v48, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v69, v71
	v_fma_f32 v46, -v46, v64, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v65, v68, v66
	v_div_fmas_f32 v46, v46, v60, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v60, -v63, v65, v68
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v64, -v71, v69, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v44, v46, v44, v47
	v_fmac_f32_e32 v65, v60, v66
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	scratch_load_b32 v60, off, off offset:556 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v69, v64, v69
	v_div_scale_f32 v64, s5, v39, v62, v39
	v_fma_f32 v63, -v63, v65, v68
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v46.h, v1.l
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v47.l, v1.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v75, v64, v69
	v_div_fmas_f32 v63, v63, v66, v65
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v65, off, off offset:764 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v66, v8, v37
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v76, -v71, v75, v64
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v37, v7, v37
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v0, v63, v48, v0
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v48.l, v1.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v72, v8, v31
	v_mul_f32_e32 v31, v7, v31
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v67, null, v58, v58, v41
	v_dual_fmac_f32 v75, v76, v69 :: v_dual_mul_f32 v32, v7, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v70, v67
	v_fma_f32 v64, -v71, v75, v64
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v74, -v67, v70, 1.0
	v_fmac_f32_e32 v70, v74, v70
	v_div_scale_f32 v74, s4, v41, v58, v41
	s_mov_b32 vcc_lo, s4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v49, v49, v60, v111
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v60, v74, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v111, v49, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v68, -v67, v60, v74
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v32, v32, v65, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v60, v68, v70
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v31, v31, v182, v49
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v32, v45, v32, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v65, -v67, v60, v74
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v31, v49, v31, s3
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	scratch_load_b32 v49, off, off offset:680 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v45, v73, v239, v61
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v67, v8, v38
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v60, v65, v70, v60
	s_mov_b32 vcc_lo, s5
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v38, v7, v38
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v64, v64, v69, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v41, v60, v58, v41
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v31, v31, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v43.l, v31.h
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v43, 1, v43
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v39, v64, v62, v39
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v43, v31, v43, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v31, off, off offset:640 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v32, v32, v39
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v61, v45, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v45.h, v1.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v45.l, v32.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v0, v39, v0 :: v_dual_and_b32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v46.l, v0.h
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v48.h, v49.l
	scratch_load_b32 v49, off, off offset:664 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v39, v1, v48
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v65, v72, v181, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v59, v65, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v41, v41, v44
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v44, v32, v45, 0x7fff
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v45, v8, v42
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v43.l, v41.h
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v39, v39, v31, v109
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v31.h, 0x7fff, v43.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	v_and_b32_e32 v32, 1, v46
	v_mov_b16_e32 v43.h, v1.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v109, v39, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v31.l, 0x7fff, v44.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v44, v0, v32, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v32, off, off offset:632 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v43, 1, v43
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v45, v45, v57, v39
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v57, off, off offset:528 ; 4-byte Folded Reload
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v0.l, v1.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v43, v41, v43, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v39, v45, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v45, 0xbfb8aa3b, v39
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v45, 0, 0x42800000, s1
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v45, v45
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v47.h, v49.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v46, v1, v47
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v32, v46, v32, v108
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v46, v8, v40
	v_mul_f32_e32 v40, v7, v40
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v108, v32, s2
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
	scratch_load_b32 v48, off, off offset:648
	scratch_load_b32 v56, off, off offset:620
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v41, v41, v43, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v43, off, off offset:624 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v49, 0xbfb8aa3b, v41
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v49
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v0.h, v48.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v42, v7, v42
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v48.l, v1.l
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v43, v46, v43, v107
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v46, off, off offset:644 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v107, v43, s2
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
	v_fma_f32 v55, v55, v57, v104
	scratch_load_b32 v57, off, off offset:532 ; 4-byte Folded Reload
	v_fma_f32 v0, v0, v185, v102
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v55, v104, v55, s2
	v_cndmask_b32_e64 v0, v102, v0, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v38, v38, v180, v0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v38, s3
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
	v_fma_f32 v46, v46, v56, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v45, v45, v47
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v48, v3, v48
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v46, v106, v46, s2
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
	v_fma_f32 v49, v49, v57, v105
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v46, v40, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v46, v47
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v47, v43
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v49, v105, v49, s2
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
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v59, v47, v60
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	scratch_load_b32 v47, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v58, -v65, v63, 1.0
	v_div_fixup_f32 v39, v43, v45, v39
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v45.l, v1.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v57, -v57, v59, v62
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v6, s27, v5
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v63, v58, v63
	v_div_scale_f32 v58, s5, v40, v56, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v57, v57, v60, v59
	s_mov_b32 vcc_lo, s4
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	scratch_load_b32 v5, off, off offset:344 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v69, v58, v63
	v_fma_f32 v70, -v65, v69, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v70, v63
	v_fma_f32 v58, -v65, v69, v58
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v47, v48, v47, v103
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v48, v68, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v47, v103, v47, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v62, -v61, v48, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v37, v37, v179, v47
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v48, v62, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v47, v37, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v59, -v61, v48, v68
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	scratch_load_b32 v47, off, off offset:636 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v48, v59, v64, v48
	s_mov_b32 vcc_lo, s5
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v59, off, off offset:720 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v58, v58, v63, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v38, v58, v56, v40
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v40, off, off offset:716 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v0, v0, v38
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v44.l, v0.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_b32_e32 v43, 1, v44
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v42, v48, v54, v42
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v37, v37, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 390 9 is_stmt 1               ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v37, v37
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
	v_add3_u32 v41, v37, v41, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v37, off, off offset:576 ; 4-byte Folded Reload
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v46.h, v47.l
	scratch_load_b32 v47, off, off offset:628 ; 4-byte Folded Reload
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v59, v66, v59, v49
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v38, v1, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v49, v59, s3
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v59, 16, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v44.l, v40.h
	v_cmp_o_f32_e64 s0, v40, v40
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
	v_fma_f32 v37, v38, v37, v101
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v38, v0, v43, 0x7fff
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v43, v8, v42 :: v_dual_and_b32 v0, 1, v44
	v_mul_f32_e32 v42, v7, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v101, v37, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v36.l, 0x7fff, v38.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v38, v40, v0, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v0, off, off offset:572 ; 4-byte Folded Reload
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v45.h, v47.l
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v43, v43, v53, v37
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v53.l, v1.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v39, v39
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
	v_fma_f32 v0, v44, v0, v100
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v44, 16, v35
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v35.h, 0x7fff, v41.h, vcc_lo
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v41, v3, v46
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v35.l, 0x7fff, v38.h, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v100, v0, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v43, v8, v44
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v40, v43, v52, v0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v43, off, off offset:600 ; 4-byte Folded Reload
	v_mov_b16_e32 v52.l, v1.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v53.h, v43.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v43, v39
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v0, v40, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:560
	scratch_load_b32 v40, off, off offset:596
	scratch_load_b32 v46, off, off offset:316
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v47, v1, v53
	v_mul_f32_e32 v53, v3, v53
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v44, v7, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v53, v53, v183, v94
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v53, v94, v53, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(2)
	v_fma_f32 v0, v41, v0, v99
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v52.h, v40.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v40, v3, v45
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s1
	v_mul_f32_e32 v45, 0xbfb8aa3b, v39
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v99, v0, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v40, v40, v46, v98
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v41, v43, v41
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v42, v42, v51, v0
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v46, v1, v52
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v45, v98, v40, s2
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
	scratch_load_b32 v45, off, off offset:492 ; 4-byte Folded Reload
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
	v_fma_f32 v45, v47, v45, v96
	scratch_load_b32 v47, off, off offset:496 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v46, v46, v47, v97
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v43, v97, v46, s2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v0, v0, v47
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v46, v44
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v44, v96, v45, s2
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
	v_fma_f32 v51, v52, v184, v95
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
	scratch_load_b32 v54, off, off offset:676 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v63, v57, v49
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v62, -v58, v52, v55
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v51, v95, v51, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v39, v50, v45, v39
	v_fma_f32 v64, -v61, v63, v57
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	scratch_load_b32 v45, off, off offset:548 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_fmac_f32 v52, v62, v60 :: v_dual_fmac_f32 v63, v64, v49
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v56, -v61, v63, v57
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v57, off, off offset:320 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_fma_f32 v0, v0, v54, v53
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v54, -v58, v52, v55
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v55, off, off offset:672 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v53, v0, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v52, v54, v60, v52
	s_mov_b32 vcc_lo, s1
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v54, off, off offset:656 ; 4-byte Folded Reload
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
	scratch_load_b32 v42, off, off offset:652 ; 4-byte Folded Reload
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
	scratch_load_b32 v38, off, off offset:520 ; 4-byte Folded Reload
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v44.h, v45.l
	scratch_load_b32 v45, off, off offset:544 ; 4-byte Folded Reload
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
	v_fma_f32 v38, v39, v38, v93
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_lshlrev_b32_e32 v39, 16, v29
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v29.h, 0x7fff, v40.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v40.h, v1.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v38, v93, v38, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v41, v8, v39
	v_mul_f32_e32 v39, v7, v39
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v29.l, 0x7fff, v37.h, vcc_lo
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v37, off, off offset:512 ; 4-byte Folded Reload
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
	scratch_load_b32 v40, off, off offset:540 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v34, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v38
	v_exp_f32_e32 v34, v34
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v37, v41, v37, v92
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v92, v37, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v37, v8, v27
	v_mul_f32_e32 v27, v7, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_4)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v34, v34, v41
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v13, v37, v13, v33
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v37, v3, v44
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v44, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v13, v33, v13, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v33, off, off offset:508 ; 4-byte Folded Reload
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v0.h, v40.l
	v_mov_b16_e32 v40.l, v1.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v42, 0xbfb8aa3b, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v42
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v13
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v33, v37, v33, v91
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v37, off, off offset:536 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v91, v33, s2
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
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 368 24 is_stmt 1              ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v42, v1, v0 :: v_dual_fmac_f32 v51, v55, v51
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v42, v42, v44, v88
	scratch_load_b32 v44, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v55, s1, v12, v33, v12
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v42, v88, v42, s2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v40.h, v37.l
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v37, v3, v43
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v43, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v39, v1, v40
	v_mul_f32_e32 v40, v3, v40
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v39, v39, v44, v89
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v39, v89, v39, s2
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	v_fma_f32 v37, v37, v43, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v37, v90, v37, s2
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
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v0, v3, v0
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v50, v45, v50
	v_div_scale_f32 v45, s4, v11, v43, v11
	v_fma_f32 v44, -v44, v46, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v0, v0, v57, v86
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v38.l, v1.l
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v56, v45, v50
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v44, v44, v47, v46
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v46, off, off offset:580
	scratch_load_b32 v47, off, off offset:584
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v86, v0, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v13, v44, v37, v13
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	scratch_load_b32 v37, off, off offset:524 ; 4-byte Folded Reload
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v57, -v52, v56, v45
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v37.h, v1.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v56, v57, v50
	v_fma_f32 v45, -v52, v56, v45
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v40, v40, v41, v87
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v41, v55, v51 :: v_dual_mul_f32 v54, v8, v26
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v26, v7, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v40, v87, v40, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v49, -v48, v41, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v41, v49, v51
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v26, v26, v46, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v25, v25, v47, v40
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v46, -v48, v41, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v0, v0, v26, s3
	v_cndmask_b32_e64 v25, v40, v25, s3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v41, v46, v51, v41
	s_mov_b32 vcc_lo, s4
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v51, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v40, v45, v50, v56
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v50, off, off offset:568 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v12, v41, v33, v12
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:616
	scratch_load_b32 v41, off, off offset:612
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v11, v40, v43, v11
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v40, off, off offset:476 ; 4-byte Folded Reload
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_dual_mul_f32 v12, v25, v12 :: v_dual_mul_f32 v45, v8, v18
	v_mul_f32_e32 v0, v0, v11
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v11.h, v1.l
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v33, v53, v33, v39
	s_waitcnt vmcnt(1)
	v_fma_f32 v41, v54, v41, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v39, v33, s3
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v33.l, v1.l
	v_mov_b16_e32 v33.h, v37.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v42, v41, s3
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v37.l, v0.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v25, v25, v27
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v34, v1, v33
	v_mul_f32_e32 v33, v3, v33
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v11.l, v12.h
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v13, v26, v13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v26, 1, v37
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	scratch_load_b32 v37, off, off offset:516 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v11, 1, v11
	v_cmp_o_f32_e64 s0, v25, v25
	v_add3_u32 v26, v0, v26, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v11, v12, v11, 0x7fff
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v12, off, off offset:488 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v11.h, 0x7fff, v11.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v0.l, v13.h
	v_mov_b16_e32 v0.h, v1.l
	v_cndmask_b16 v11.l, 0x7fff, v26.h, vcc_lo
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v26, off, off offset:484 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v0, 1, v0
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v12, v34, v12, v85
	.loc	1 370 31                        ; generate_amdgcn.py:370:31
	v_mov_b16_e32 v34.l, v1.l
	v_mov_b16_e32 v34.h, v37.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v12, v85, v12, s2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v37, v1, v34
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v26, v37, v26, v84
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v37, v8, v23
	v_mul_f32_e32 v23, v7, v23
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v0, v13, v0, 0x7fff
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v84, v26, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v2, v37, v2, v26
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	scratch_load_b32 v37, off, off offset:504 ; 4-byte Folded Reload
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v26, v2, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	scratch_load_b32 v26, off, off offset:480 ; 4-byte Folded Reload
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v39, 0xbfb8aa3b, v2
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v27, v8, v24
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v8, v8, v17
	v_mul_f32_e32 v17, v7, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v4, v27, v4, v12
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v27.l, v25.h
	v_mov_b16_e32 v27.h, v1.l
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v12, v4, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v12, 1, v27
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v27, 0xbfb8aa3b, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v12, v25, v12, 0x7fff
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v25.l, v1.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v4
	v_exp_f32_e32 v27, v27
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v38.h, v37.l
	scratch_load_b32 v37, off, off offset:500 ; 4-byte Folded Reload
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	s_waitcnt vmcnt(1)
	v_fma_f32 v26, v33, v26, v83
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v33, v1, v38
	v_mul_f32_e32 v38, v3, v38
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v26, v83, v26, s2
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v25.h, v37.l
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v39, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v5, s27, v5
	s_mov_b32 s27, 0x31027000
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v27, v27, v37
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_mul_f32_e32 v34, v3, v34
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v3, v3, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v34, v34, v40, v82
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v40, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 372 33                        ; generate_amdgcn.py:372:33
	v_dual_mul_f32 v24, v7, v24 :: v_dual_fmac_f32 v37, 0xbfb8aa3b, v2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v10, v24, v10, v26
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v24, v82, v34, s2
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v34, v1, v25
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v25, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cndmask_b16 v1.h, 0x7fff, v12.h, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v26, v10, s3
	.loc	1 375 17                        ; generate_amdgcn.py:375:17
	v_fma_f32 v9, v23, v9, v24
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v23, null, v27, v27, v4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v12.h, v1.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v24, v9, s3
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_exp_f32_e32 v24, v37
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v37, v23
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(2)
	v_fma_f32 v33, v33, v39, v81
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_mul_f32_e32 v39, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v33, v81, v33, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v34, v34, v40, v80
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v34, v80, v34, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v24, v24, v40
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v26, 0xbfb8aa3b, v10
	.loc	1 385 22 is_stmt 0              ; generate_amdgcn.py:385:22
	v_fma_f32 v40, -v23, v37, 1.0
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_dual_add_f32 v24, 1.0, v24 :: v_dual_fmac_f32 v39, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v26
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v37, v40, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v40, null, v24, v24, v2
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_cndmask_b32_e64 v26, 0, 0x42800000, s1
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s1
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_rcp_f32_e32 v43, v40
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v26, v26
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v47, -v40, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v43, v47, v43
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v26, v26, v41
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v42, vcc_lo, v4, v27, v4
	s_delay_alu instid0(TRANS32_DEP_3) | instid1(VALU_DEP_2)
	.loc	1 385 40                        ; generate_amdgcn.py:385:40
	v_ldexp_f32 v39, v39, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_dual_mul_f32 v41, v42, v37 :: v_dual_add_f32 v26, 1.0, v26
	.loc	1 385 34                        ; generate_amdgcn.py:385:34
	v_add_f32_e32 v39, 1.0, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v46, -v23, v41, v42
	v_div_scale_f32 v44, null, v26, v26, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v49, null, v39, v39, v9
	v_fmac_f32_e32 v41, v46, v37
	v_div_scale_f32 v46, s1, v2, v24, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v47, v49
	v_rcp_f32_e32 v48, v44
	v_fma_f32 v23, -v23, v41, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v42, v46, v43
	v_div_fmas_f32 v23, v23, v37, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v37, -v40, v42, v46
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v41, -v49, v47, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v4, v23, v27, v4
	v_dual_fmac_f32 v42, v37, v43 :: v_dual_mul_f32 v7, v7, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v41, v47
	.loc	1 373 13 is_stmt 1              ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v25, v38, v25, v79
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_scale_f32 v41, s5, v9, v39, v9
	v_fma_f32 v40, -v40, v42, v46
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v25, v79, v25, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_mul_f32_e32 v38, v41, v47
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v3, v3, v51, v78
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fmas_f32 v18, v40, v43, v42
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v40, off, off offset:336
	scratch_load_b32 v42, off, off offset:340
	v_fma_f32 v45, v45, v50, v34
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fma_f32 v50, -v44, v48, 1.0
	v_fma_f32 v51, -v49, v38, v41
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v78, v3, s2
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v2, v18, v24, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v51, v47
	v_fma_f32 v41, -v49, v38, v41
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(1)
	v_fma_f32 v7, v7, v40, v3
	s_waitcnt vmcnt(0)
	v_fma_f32 v17, v17, v42, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v7, s3
	v_cndmask_b32_e64 v17, v25, v17, s3
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_fmac_f32_e32 v48, v50, v48
	v_div_scale_f32 v50, s4, v10, v26, v10
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v37, v50, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v44, v37, v50
	v_fmac_f32_e32 v37, v46, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v44, v37, v50
	v_div_fmas_f32 v37, v40, v48, v37
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	scratch_load_b32 v40, off, off offset:564 ; 4-byte Folded Reload
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	s_mov_b32 vcc_lo, s5
	v_div_fmas_f32 v38, v41, v47, v38
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v10, v37, v26, v10
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b32_e32 v13, 0x7632
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 385 22                        ; generate_amdgcn.py:385:22
	v_div_fixup_f32 v7, v38, v39, v9
	.loc	1 385 15 is_stmt 0              ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v9, v17, v10
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v34, v45, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v3, v3, v7
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v7.h, v1.l
	v_mov_b16_e32 v7.l, v9.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v2, v10, v2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v10.h, v1.l
	v_mov_b16_e32 v12.l, v3.h
	v_cndmask_b16 v1.l, 0x7fff, v0.h, vcc_lo
	v_and_b32_e32 v7, 1, v7
	v_mov_b16_e32 v10.l, v2.h
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_cmp_o_f32_e64 s0, v3, v3
	v_cmp_o_f32_e64 s2, v2, v2
	v_add3_u32 v7, v9, v7, 0x7fff
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v8, v8, v40, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v33, v8, s3
	.loc	1 385 15                        ; generate_amdgcn.py:385:15
	v_mul_f32_e32 v4, v8, v4
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_and_b32_e32 v8, 1, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v12.l, v4.h
	v_add3_u32 v0, v3, v8, 0x7fff
	v_and_b32_e32 v8, 1, v10
	v_cmp_o_f32_e64 s1, v4, v4
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v3, v2, v8, 0x7fff
	v_and_b32_e32 v8, 16, v226
	v_cndmask_b16 v2.h, 0x7fff, v7.h, vcc_lo
	v_cndmask_b16 v2.l, 0x7fff, v0.h, s0
	s_mov_b32 s0, 0x76543210
	v_cndmask_b16 v0.l, 0x7fff, v3.h, s2
	v_cmp_eq_u32_e32 vcc_lo, 0, v8
	v_and_b32_e32 v10, 1, v12
	v_dual_mov_b32 v12, 0x5410 :: v_dual_cndmask_b32 v17, v30, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v9, v4, v10, 0x7fff
	v_cndmask_b32_e32 v10, v36, v11, vcc_lo
	v_cndmask_b32_e32 v8, v21, v31, vcc_lo
	v_cndmask_b32_e32 v12, 0x1054, v12, vcc_lo
	v_cndmask_b32_e32 v18, v19, v30, vcc_lo
	v_cndmask_b32_e32 v19, v32, v22, vcc_lo
	v_cndmask_b32_e32 v3, v28, v20, vcc_lo
	v_cndmask_b32_e32 v4, v20, v28, vcc_lo
	v_dual_cndmask_b32 v20, v22, v32 :: v_dual_cndmask_b32 v7, v31, v21
	v_cndmask_b32_e32 v21, v1, v35, vcc_lo
	v_cndmask_b32_e32 v1, v35, v1, vcc_lo
	v_cndmask_b16 v0.h, 0x7fff, v9.h, s1
	v_cndmask_b32_e32 v9, v11, v36, vcc_lo
	v_dual_cndmask_b32 v11, v2, v29 :: v_dual_cndmask_b32 v2, v29, v2
	v_cndmask_b32_e32 v13, 0x3276, v13, vcc_lo
	v_lshl_or_b32 v12, v12, 8, v12
	v_permlanex16_b32 v4, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v13, v13, 8, v13
	v_cndmask_b32_e32 v22, v0, v14, vcc_lo
	v_and_b32_e32 v12, 0x540054, v12
	v_cndmask_b32_e32 v0, v14, v0, vcc_lo
	v_permlanex16_b32 v14, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v13, 0x760076, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v12, v12, 4, v12
	v_permlanex16_b32 v26, v0, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v13, v13, 4, v13
	v_and_b32_e32 v23, 0x5040504, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v24, 0x7060706, v13
	v_perm_b32 v0, v4, v3, v23
	v_perm_b32 v2, v8, v7, v23
	v_perm_b32 v13, v20, v19, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_perm_b32 v1, v4, v3, v24
	v_perm_b32 v3, v8, v7, v24
	v_add_lshl_u32 v4, v16, v6, 1
	v_perm_b32 v7, v10, v9, v23
	v_perm_b32 v8, v10, v9, v24
	v_perm_b32 v9, v14, v11, v23
	v_perm_b32 v10, v14, v11, v24
	v_add_lshl_u32 v6, v15, v6, 1
	v_perm_b32 v11, v18, v17, v23
	v_perm_b32 v12, v18, v17, v24
	v_perm_b32 v14, v20, v19, v24
	v_add_lshl_u32 v16, v16, v5, 1
	v_perm_b32 v17, v25, v21, v23
	v_perm_b32 v18, v25, v21, v24
	v_perm_b32 v19, v26, v22, v23
	v_perm_b32 v20, v26, v22, v24
	v_add_lshl_u32 v5, v15, v5, 1
	s_clause 0x3
	buffer_store_b128 v[0:3], v4, s[24:27], 0 offen
	buffer_store_b128 v[7:10], v6, s[24:27], 0 offen
	buffer_store_b128 v[11:14], v16, s[24:27], 0 offen
	buffer_store_b128 v[17:20], v5, s[24:27], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 884
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
		.amdhsa_next_free_sgpr 55
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
	.size	amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 55
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 884
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 46652
; TotalNumSgprs: 57
; NumVgprs: 256
; ScratchSize: 884
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 57
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 884
    .sgpr_count:     57
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nn_sc128_swiglu_bm64_bn128_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 362
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
