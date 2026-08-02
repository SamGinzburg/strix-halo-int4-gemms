	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s27, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s6, s2
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v241, 3, v0
	v_lshrrev_b32_e32 v2, 2, v0
	v_and_b32_e32 v239, 15, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v242, 4, v0
	v_lshlrev_b32_e32 v96, 5, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v17, 4, v241
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v3, 0xc0, v2
	v_lshlrev_b32_e32 v97, 6, v239
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:347:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s7, s34, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_lshr_b32 s9, s9, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:347:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:346:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 348 24 is_stmt 1              ; generate_amdgcn.py:348:24
	s_lshl_b32 s12, s4, 2
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mad_u64_u32 v[13:14], null, s27, v2, v[17:18]
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_abs_i32 s4, s12
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_mad_u64_u32 v[14:15], null, s27, v3, v[17:18]
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_lshl_add_u32 v95, s27, 7, v13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
	v_rcp_iflag_f32_e32 v1, s5
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_lshl_add_u32 v21, s27, 6, v13
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
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
	s_sub_i32 s13, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 350 19                        ; generate_amdgcn.py:350:19
	s_lshl_b32 s15, s13, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s13, s13, s12
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s14, s7, s15
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s13
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s14, s14, 4
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s13, s2
	s_abs_i32 s16, s14
	s_load_b256 s[4:11], s[0:1], 0x0
	s_cvt_f32_u32 s17, s16
	s_sub_i32 s18, 0, s16
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[6:7]
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_cvt_u32_f32 s17, s17
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	s_mov_b64 s[24:25], s[10:11]
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_mul_i32 s18, s18, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s12, s17, s18
	s_add_i32 s17, s17, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s12, s13, s17
	s_xor_b32 s17, s2, s14
	s_mul_i32 s18, s12, s16
	s_ashr_i32 s17, s17, 31
	s_sub_i32 s13, s13, s18
	s_add_i32 s18, s12, 1
	s_sub_i32 s19, s13, s16
	s_cmp_ge_u32 s13, s16
	s_cselect_b32 s12, s18, s12
	s_cselect_b32 s13, s19, s13
	s_add_i32 s18, s12, 1
	s_cmp_ge_u32 s13, s16
	s_cselect_b32 s12, s18, s12
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s16, s27, 63
.Ltmp13:
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s26, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s3, s12, s17
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_ashr_i32 s12, s16, 31
.Ltmp15:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s33, s3, s17
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s3, s12, 26
.Ltmp17:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s12, s33, s14
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v1, s26, v17
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s12
	.loc	1 356 14                        ; generate_amdgcn.py:356:14
	s_lshl_b32 s13, s33, 8
	.loc	1 352 13                        ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s15
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s14, s16, s3
.Ltmp19:
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s27, v1
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s34, s2, 6
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	s_mul_i32 s47, s13, s27
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s16, 63
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mad_u64_u32 v[15:16], null, s34, s27, v[13:14]
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s3, -1, 0
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	s_add_i32 s12, s47, s26
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 406 30 is_stmt 0              ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v1, s12, v13
	v_add_nc_u32_e32 v3, s12, v95
	v_add_nc_u32_e32 v4, s12, v14
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s3
	s_cmpk_gt_i32 s16, 0x7f
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v2, s12, v21
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s44, s26, 64
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v5, s26, v15
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_add_nc_u32 v6, 64, v1
	.loc	1 406 30 is_stmt 0              ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v11, 64, v4
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 398 17 is_stmt 1              ; generate_amdgcn.py:398:17
	v_or_b32_e32 v12, s44, v17
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	s_add_i32 s12, s12, 64
	.loc	1 406 22 is_stmt 0              ; generate_amdgcn.py:406:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v19, s12, v95
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s27, v12
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v16, s44, v15
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v18, s12, v21
	.loc	1 406 22 is_stmt 0              ; generate_amdgcn.py:406:22
	s_clause 0x3
	buffer_load_b128 v[23:26], v1, s[28:31], 0 offen
	buffer_load_b128 v[27:30], v2, s[28:31], 0 offen
	buffer_load_b128 v[31:34], v3, s[28:31], 0 offen
	buffer_load_b128 v[35:38], v4, s[28:31], 0 offen
	s_mov_b32 s12, 0
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, vcc_lo, s2
	s_cmpk_gt_i32 s16, 0xbf
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_dual_cndmask_b32 v1, 0x80000000, v16 :: v_dual_cndmask_b32 v2, 0x80000000, v6
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_dual_cndmask_b32 v3, 0x80000000, v18 :: v_dual_cndmask_b32 v4, 0x80000000, v19
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[7:10], v5, s[4:7], 0 offen
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_cndmask_b32_e32 v5, 0x80000000, v11, vcc_lo
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[39:42], v1, s[4:7], 0 offen
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_clause 0x3
	buffer_load_b128 v[43:46], v2, s[28:31], 0 offen
	buffer_load_b128 v[47:50], v3, s[28:31], 0 offen
	buffer_load_b128 v[51:54], v4, s[28:31], 0 offen
	buffer_load_b128 v[55:58], v5, s[28:31], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v3, 1, v0
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v4, 16, v239
	v_or_b32_e32 v5, 32, v239
	v_or_b32_e32 v6, 48, v239
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v1, 48, v3
	v_xor_b32_e32 v98, v242, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v98
	s_waitcnt vmcnt(5)
	ds_store_b128 v1, v[7:10] offset:32768
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_store_b128 v1, v[23:26]
	ds_store_b128 v1, v[27:30] offset:4096
	ds_store_b128 v1, v[31:34] offset:8192
	ds_store_b128 v1, v[35:38] offset:12288
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v1, v[39:42] offset:36864
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v1, v[43:46] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v1, v[47:50] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v1, v[51:54] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v1, v[55:58] offset:28672
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_lshlrev_b32_e32 v1, 5, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v2, 6, v239
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_and_b32_e32 v54, 0x1c00, v1
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr54
.LBB0_3:                                ; %Flow94
	s_load_b128 s[20:23], s[0:1], 0x20
	v_or_b32_e32 v7, s34, v239
	v_or_b32_e32 v4, s34, v4
	v_or_b32_e32 v5, s34, v5
	v_or_b32_e32 v6, s34, v6
	v_and_b32_e32 v8, 0xf0, v0
	s_ashr_i32 s1, s14, 6
	v_or_b32_e32 v58, s13, v0
	v_mul_lo_u32 v59, v7, s1
	v_mul_lo_u32 v94, v4, s1
	v_mul_lo_u32 v55, v5, s1
	v_mul_lo_u32 v56, v6, s1
	v_lshlrev_b32_e32 v20, 2, v8
	v_and_b32_e32 v16, 28, v3
	v_lshlrev_b32_e32 v93, 1, v8
	s_and_not1_b32 vcc_lo, exec_lo, s10
	scratch_store_b32 off, v8, off offset:16 ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v92, v20 :: v_dual_lshlrev_b32 v1, 3, v0
	v_dual_mov_b32 v23, 0 :: v_dual_and_b32 v54, 0x1c00, v96
	s_mov_b32 s13, s12
	s_delay_alu instid0(VALU_DEP_2)
	v_and_or_b32 v99, v1, 48, v97
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v1, 32, v96
	v_or_b32_e32 v100, v99, v54
	v_xor_b32_e32 v101, 16, v99
	v_xor_b32_e32 v102, 32, v99
	v_xor_b32_e32 v103, 48, v99
	v_add3_u32 v9, 0, v20, v1
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v4, s15
	v_xor_b32_e32 v104, 16, v100
	v_xor_b32_e32 v105, 32, v100
	v_xor_b32_e32 v106, 48, v100
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_dual_mov_b32 v6, s17 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v8, s19 :: v_dual_mov_b32 v7, s18
	v_add_nc_u32_e32 v108, 0, v93
	v_dual_mov_b32 v24, 0 :: v_dual_add_nc_u32 v107, v9, v16
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v84, 0
	v_mov_b32_e32 v89, 0
	v_mov_b32_e32 v91, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 363 5 is_stmt 1               ; generate_amdgcn.py:363:5
	s_max_i32 s11, s1, 3
	s_add_i32 s10, s44, 64
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_and_b32 s41, s25, 0xffff
	s_mov_b32 s40, s24
	s_mov_b32 s48, 1
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s45, 0, 0x9000
	s_add_i32 s46, 0, 0x4000
	s_add_i32 s11, s11, -3
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 364 14                        ; generate_amdgcn.py:364:14
	s_lshl_b32 s15, s13, 6
	s_mov_b32 s14, s0
	s_mov_b32 s0, s26
	s_mov_b32 s26, s44
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s44, s10, s15
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v20, s12, v100
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	v_or_b32_e32 v9, s44, v17
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v10, s44, v15
	.loc	1 404 22 is_stmt 0              ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v18, s14, v99
	.loc	1 406 22 is_stmt 1              ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v22, s12, v104
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v19, s14, v101
	.loc	1 399 23                        ; generate_amdgcn.py:399:23
	v_cmp_gt_i32_e32 vcc_lo, s27, v9
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_cndmask_b32_e32 v9, 0x80000000, v10, vcc_lo
	buffer_load_b128 v[9:12], v9, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[174:177], v20 offset:8192
	ds_load_b128 v[178:181], v22 offset:8192
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[126:129], v18
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[166:169], v20
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[130:133], v19
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[170:173], v22
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[142:145], v18 offset:1024
	ds_load_b128 v[146:149], v19 offset:1024
	ds_load_b128 v[158:161], v18 offset:2048
	ds_load_b128 v[162:165], v19 offset:2048
	ds_load_b128 v[182:185], v18 offset:3072
	ds_load_b128 v[186:189], v19 offset:3072
	v_add_nc_u32_e32 v18, s14, v102
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v19, s12, v105
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[110:117], v[166:169], v[126:129], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[118:125], v[174:177], v[126:129], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[134:141], v[174:177], v[142:145], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[110:117], v[170:173], v[130:133], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[118:125], v[178:181], v[130:133], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[126:133], v[166:169], v[142:145], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[134:141], v[178:181], v[146:149], v[134:141] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[150:157], v[174:177], v[158:161], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[126:133], v[170:173], v[146:149], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[142:149], v[166:169], v[158:161], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[150:157], v[178:181], v[162:165], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[142:149], v[170:173], v[162:165], v[142:149] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[158:165], v[166:169], v[182:185], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu8 v[158:165], v[170:173], v[186:189], v[158:165] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[166:173], v[174:177], v[182:185], v[1:8] neg_lo:[1,1,0]
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[182:185], v19 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[166:173], v[178:181], v[186:189], v[166:173] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[174:177], v18
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[178:181], v19
	v_add_nc_u32_e32 v19, s12, v106
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s12, s0, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s12, s12, 26
	s_add_i32 s0, s0, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s12, s0, 6
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s15, s12, s35
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[118:125], v[182:185], v[174:177], v[118:125] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[110:117], v[178:181], v[174:177], v[110:117] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[174:177], v18 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[126:133], v[178:181], v[174:177], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[134:141], v[182:185], v[174:177], v[134:141] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[174:177], v18 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[142:149], v[178:181], v[174:177], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[150:157], v[182:185], v[174:177], v[150:157] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[174:177], v18 offset:3072
	v_add_nc_u32_e32 v18, s14, v103
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	s_add_i32 s14, s44, s47
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s12, s1
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v20, s14, v95
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s0, -1, 0
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v22, s14, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 406 22 is_stmt 0              ; generate_amdgcn.py:406:22
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[158:165], v[178:181], v[174:177], v[158:165] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[166:173], v[182:185], v[174:177], v[166:173] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[174:177], v18
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[178:181], v19
	ds_load_b128 v[182:185], v19 offset:8192
	.loc	1 406 30 is_stmt 0              ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v19, s14, v21
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[110:117], v[178:181], v[174:177], v[110:117] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[118:125], v[182:185], v[174:177], v[118:125] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[174:177], v18 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[126:133], v[178:181], v[174:177], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[134:141], v[182:185], v[174:177], v[134:141] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[174:177], v18 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v141, v141
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[142:149], v[178:181], v[174:177], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[150:157], v[182:185], v[174:177], v[150:157] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[174:177], v18 offset:3072
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v18, v58, s15, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s15, s48, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v142, v142
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s15, 2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v143, v143
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e64 v18, 0x80000000, v18, s0
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s48, s15, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v146, v146
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v18, v18, s[40:43], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v154, v154
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[166:173], v[182:185], v[174:177], v[166:173] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[158:165], v[178:181], v[174:177], v[158:165] neg_lo:[1,1,0]
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v174, v94, s12, 1
	v_add_lshl_u32 v175, v55, s12, 1
	v_add_lshl_u32 v176, v56, s12, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v109, v173
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v173, v59, s12, 1
	v_cndmask_b32_e64 v174, 0x80000000, v174, s0
	v_cndmask_b32_e64 v175, 0x80000000, v175, s0
	v_cndmask_b32_e64 v176, 0x80000000, v176, s0
	s_mov_b32 s12, s46
	v_cndmask_b32_e64 v173, 0x80000000, v173, s0
	s_clause 0x3
	buffer_load_u16 v205, v173, s[36:39], 0 offen
	buffer_load_u16 v206, v174, s[36:39], 0 offen
	buffer_load_u16 v207, v175, s[36:39], 0 offen
	buffer_load_u16 v208, v176, s[36:39], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s0, s48, 12
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v158, v158
	v_cvt_f32_i32_e32 v159, v159
	v_cvt_f32_i32_e32 v160, v160
	v_cvt_f32_i32_e32 v161, v161
	v_cvt_f32_i32_e32 v162, v162
	v_cvt_f32_i32_e32 v163, v163
	v_cvt_f32_i32_e32 v164, v164
	v_cvt_f32_i32_e32 v165, v165
	v_cvt_f32_i32_e32 v166, v166
	v_cvt_f32_i32_e32 v167, v167
	v_cvt_f32_i32_e32 v168, v168
	v_cvt_f32_i32_e32 v169, v169
	v_cvt_f32_i32_e32 v170, v170
	v_cvt_f32_i32_e32 v171, v171
	v_cvt_f32_i32_e32 v172, v172
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s15, s13, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v107, v18 offset:40960
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v18, s14, v13
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s14, s0, 0
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_lshl_b32 s0, s48, 14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s46, s0, 0
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	s_clause 0x3
	buffer_load_b128 v[173:176], v18, s[28:31], 0 offen
	buffer_load_b128 v[177:180], v19, s[28:31], 0 offen
	buffer_load_b128 v[181:184], v20, s[28:31], 0 offen
	buffer_load_b128 v[185:188], v22, s[28:31], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[189:192], v108 offset:40960
	ds_load_b128 v[193:196], v108 offset:40976
	ds_load_b128 v[197:200], v108 offset:41472
	ds_load_b128 v[201:204], v108 offset:41488
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v18, s14, v98
	s_mov_b32 s0, s45
	s_add_i32 s45, s14, 0x8000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s13, s11
	s_mov_b32 s13, s15
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b128 v18, v[9:12] offset:32768
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v18, 16, v208
	v_lshlrev_b32_e32 v10, 16, v205
	v_lshlrev_b32_e32 v12, 16, v207
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v9, s46, v98
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v11, 16, v206
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v9, v[173:176]
	s_waitcnt vmcnt(2)
	ds_store_b128 v9, v[177:180] offset:4096
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(6)
	v_mul_f32_e32 v22, v191, v10
	v_mul_f32_e32 v180, v191, v12
	v_mul_f32_e32 v176, v191, v11
	v_mul_f32_e32 v191, v191, v18
	s_waitcnt lgkmcnt(5)
	v_mul_f32_e32 v209, v196, v10
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v220, v199, v10 :: v_dual_mul_f32 v237, v202, v12
	v_mul_f32_e32 v19, v189, v10
	v_mul_f32_e32 v20, v190, v10
	v_dual_mul_f32 v173, v192, v10 :: v_dual_mul_f32 v174, v189, v11
	v_mul_f32_e32 v175, v190, v11
	v_dual_mul_f32 v177, v192, v11 :: v_dual_mul_f32 v178, v189, v12
	v_mul_f32_e32 v179, v190, v12
	v_dual_mul_f32 v205, v192, v12 :: v_dual_mul_f32 v206, v193, v10
	v_mul_f32_e32 v227, v198, v12
	v_mul_f32_e32 v207, v194, v10
	v_dual_mul_f32 v208, v195, v10 :: v_dual_mul_f32 v229, v200, v12
	v_mul_f32_e32 v211, v194, v11
	v_dual_mul_f32 v213, v196, v11 :: v_dual_mul_f32 v214, v193, v12
	v_mul_f32_e32 v221, v200, v10
	v_mul_f32_e32 v215, v194, v12
	v_dual_mul_f32 v217, v196, v12 :: v_dual_mul_f32 v218, v197, v10
	v_mul_f32_e32 v219, v198, v10
	v_mul_f32_e32 v189, v189, v18
	v_dual_mul_f32 v190, v190, v18 :: v_dual_mul_f32 v225, v200, v11
	v_dual_mul_f32 v192, v192, v18 :: v_dual_mul_f32 v223, v198, v11
	v_mul_f32_e32 v210, v193, v11
	v_dual_mul_f32 v212, v195, v11 :: v_dual_mul_f32 v193, v193, v18
	v_mul_f32_e32 v216, v195, v12
	v_dual_mul_f32 v194, v194, v18 :: v_dual_mul_f32 v233, v201, v11
	v_mul_f32_e32 v195, v195, v18
	v_dual_mul_f32 v196, v196, v18 :: v_dual_mul_f32 v235, v203, v11
	v_mul_f32_e32 v222, v197, v11
	v_dual_mul_f32 v224, v199, v11 :: v_dual_mul_f32 v231, v202, v10
	v_mul_f32_e32 v226, v197, v12
	v_dual_mul_f32 v228, v199, v12 :: v_dual_mul_f32 v197, v197, v18
	v_dual_mul_f32 v198, v198, v18 :: v_dual_fmac_f32 v29, v208, v116
	v_mul_f32_e32 v199, v199, v18
	v_dual_mul_f32 v200, v200, v18 :: v_dual_fmac_f32 v25, v22, v112
	v_dual_mul_f32 v230, v201, v10 :: v_dual_fmac_f32 v33, v220, v120
	v_dual_mul_f32 v232, v203, v10 :: v_dual_fmac_f32 v41, v176, v128
	v_dual_mul_f32 v10, v204, v10 :: v_dual_fmac_f32 v53, v235, v140
	v_dual_mul_f32 v234, v202, v11 :: v_dual_fmac_f32 v23, v19, v110
	v_dual_mul_f32 v11, v204, v11 :: v_dual_mul_f32 v236, v201, v12
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v27, v206, v114 :: v_dual_mul_f32 v238, v203, v12
	v_dual_fmac_f32 v31, v218, v118 :: v_dual_mul_f32 v12, v204, v12
	v_fmac_f32_e32 v35, v230, v122
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v201, v201, v18
	v_dual_mul_f32 v202, v202, v18 :: v_dual_fmac_f32 v37, v232, v124
	v_mul_f32_e32 v203, v203, v18
	v_dual_mul_f32 v18, v204, v18 :: v_dual_fmac_f32 v57, v11, v141
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v24, v20, v111 :: v_dual_fmac_f32 v39, v174, v126
	v_dual_fmac_f32 v26, v173, v113 :: v_dual_fmac_f32 v43, v210, v130
	v_dual_fmac_f32 v28, v207, v115 :: v_dual_fmac_f32 v45, v212, v132
	v_dual_fmac_f32 v30, v209, v117 :: v_dual_fmac_f32 v47, v222, v134
	v_dual_fmac_f32 v32, v219, v119 :: v_dual_fmac_f32 v49, v224, v136
	v_dual_fmac_f32 v34, v221, v121 :: v_dual_fmac_f32 v61, v179, v143
	v_dual_fmac_f32 v36, v231, v123 :: v_dual_fmac_f32 v51, v233, v138
	v_dual_fmac_f32 v38, v10, v125 :: v_dual_fmac_f32 v65, v215, v147
	v_dual_fmac_f32 v40, v175, v127 :: v_dual_fmac_f32 v63, v205, v145
	v_dual_fmac_f32 v42, v177, v129 :: v_dual_fmac_f32 v69, v227, v151
	v_dual_fmac_f32 v44, v211, v131 :: v_dual_fmac_f32 v67, v217, v149
	v_dual_fmac_f32 v46, v213, v133 :: v_dual_fmac_f32 v77, v190, v159
	v_dual_fmac_f32 v48, v223, v135 :: v_dual_fmac_f32 v71, v229, v153
	v_dual_fmac_f32 v50, v225, v137 :: v_dual_fmac_f32 v81, v194, v163
	v_dual_fmac_f32 v52, v234, v139 :: v_dual_fmac_f32 v75, v12, v157
	v_dual_fmac_f32 v60, v178, v142 :: v_dual_fmac_f32 v73, v237, v155
	v_dual_fmac_f32 v62, v180, v144 :: v_dual_fmac_f32 v85, v197, v166
	v_dual_fmac_f32 v64, v214, v146 :: v_dual_fmac_f32 v79, v192, v161
	v_dual_fmac_f32 v66, v216, v148 :: v_dual_fmac_f32 v89, v201, v170
	v_dual_fmac_f32 v68, v226, v150 :: v_dual_fmac_f32 v83, v196, v165
	v_fmac_f32_e32 v70, v228, v152
	v_dual_fmac_f32 v72, v236, v154 :: v_dual_fmac_f32 v87, v199, v168
	v_fmac_f32_e32 v74, v238, v156
	v_dual_fmac_f32 v76, v189, v158 :: v_dual_fmac_f32 v91, v203, v172
	v_fmac_f32_e32 v78, v191, v160
	v_fmac_f32_e32 v80, v193, v162
	v_fmac_f32_e32 v82, v195, v164
	v_fmac_f32_e32 v86, v198, v167
	v_fmac_f32_e32 v88, v200, v169
	v_fmac_f32_e32 v90, v202, v171
	v_fmac_f32_e32 v84, v18, v109
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v9, v[181:184] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v9, v[185:188] offset:12288
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_dual_mov_b32 v2, v97 :: v_dual_mov_b32 v1, v96
	v_mov_b32_e32 v20, v92
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v24, 0
	v_mov_b32_e32 v25, 0
	v_mov_b32_e32 v23, 0
	s_add_i32 s0, 0, 0x8000
	s_add_i32 s45, 0, 0x9000
	s_add_i32 s46, 0, 0x4000
.LBB0_8:                                ; %Flow95
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[17:18], off offset:4
	scratch_store_b32 off, v0, off
	v_dual_mov_b32 v95, 0 :: v_dual_and_b32 v0, 6, v0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v235, 0 :: v_dual_mov_b32 v238, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_lshl_or_b32 v229, v0, 3, v2
	scratch_store_b32 off, v0, off offset:12 ; 4-byte Folded Spill
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v243, 0
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_or_b32_e32 v230, v229, v54
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v100, 16, v229
	v_xor_b32_e32 v101, 32, v229
	v_xor_b32_e32 v0, 48, v229
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v245, 0
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_xor_b32_e32 v21, 16, v230
	v_xor_b32_e32 v22, 32, v230
	v_xor_b32_e32 v54, 48, v230
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v247, 0
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v249, 0
	v_dual_mov_b32 v248, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v250, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v251, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v253, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v217, 0
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v143, 0
	v_mov_b32_e32 v146, 0
	v_mov_b32_e32 v128, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v2, s12, v22
	v_add_nc_u32_e32 v3, s12, v21
	v_add_nc_u32_e32 v4, s12, v54
	v_add_nc_u32_e32 v5, s12, v230
	s_mov_b32 s12, 0
	ds_load_b128 v[166:169], v5 offset:8192
	ds_load_b128 v[170:173], v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v14, s0, v229
	v_add_nc_u32_e32 v15, s0, v101
	v_add_nc_u32_e32 v19, s0, v100
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[10:13], v2 offset:8192
	ds_load_b128 v[96:99], v2
	ds_load_b128 v[158:161], v3 offset:8192
	ds_load_b128 v[162:165], v3
	ds_load_b128 v[182:185], v4 offset:8192
	ds_load_b128 v[186:189], v4
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v2, s12 :: v_dual_mov_b32 v7, s17
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[134:137], v14 offset:1024
	ds_load_b128 v[118:121], v14
	ds_load_b128 v[174:177], v15 offset:1024
	ds_load_b128 v[126:129], v15
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_mov_b32_e32 v8, s18
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[178:181], v19 offset:1024
	ds_load_b128 v[130:133], v19
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v9, s19 :: v_dual_add_nc_u32 v18, s0, v0
	v_dual_mov_b32 v3, s13 :: v_dual_mov_b32 v4, s14
	v_dual_mov_b32 v5, s15 :: v_dual_mov_b32 v6, s16
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[190:193], v18 offset:1024
	ds_load_b128 v[138:141], v18
	ds_load_b128 v[194:197], v14 offset:3072
	ds_load_b128 v[150:153], v14 offset:2048
	ds_load_b128 v[198:201], v19 offset:3072
	ds_load_b128 v[202:205], v19 offset:2048
	ds_load_b128 v[208:211], v15 offset:3072
	ds_load_b128 v[212:215], v15 offset:2048
	ds_load_b128 v[216:219], v18 offset:3072
	ds_load_b128 v[220:223], v18 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(14)
	v_wmma_i32_16x16x16_iu8 v[110:117], v[170:173], v[118:121], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[166:169], v[118:121], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[118:125], v[170:173], v[134:137], v[2:9] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[110:117], v[162:165], v[130:133], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[158:161], v[130:133], v[102:109] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[118:125], v[162:165], v[178:181], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[110:117], v[96:99], v[126:129], v[110:117] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[102:109], v[10:13], v[126:129], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[126:133], v[166:169], v[134:137], v[2:9] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[142:149], v[166:169], v[150:153], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[110:117], v[186:189], v[138:141], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[182:185], v[138:141], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[134:141], v[170:173], v[150:153], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[150:157], v[170:173], v[194:197], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[2:9], v[166:169], v[194:197], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[126:133], v[158:161], v[178:181], v[126:133] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[134:141], v[162:165], v[202:205], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[142:149], v[158:161], v[202:205], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[150:157], v[162:165], v[198:201], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[2:9], v[158:161], v[198:201], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[118:125], v[96:99], v[174:177], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[126:133], v[10:13], v[174:177], v[126:133] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[134:141], v[96:99], v[212:215], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[142:149], v[10:13], v[212:215], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[150:157], v[96:99], v[208:211], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[2:9], v[10:13], v[208:211], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[118:125], v[186:189], v[190:193], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[126:133], v[182:185], v[190:193], v[126:133] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[134:141], v[186:189], v[220:223], v[134:141] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[142:149], v[182:185], v[220:223], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[150:157], v[186:189], v[216:219], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[2:9], v[182:185], v[216:219], v[2:9] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v235, v111
	v_cvt_f32_i32_e32 v160, v112
	v_cvt_f32_i32_e32 v237, v113
	v_cvt_f32_i32_e32 v238, v114
	v_cvt_f32_i32_e32 v216, v115
	v_cvt_f32_i32_e32 v172, v116
	v_cvt_f32_i32_e32 v92, v117
	v_cvt_f32_i32_e32 v243, v102
	v_cvt_f32_i32_e32 v244, v103
	v_cvt_f32_i32_e32 v245, v104
	v_cvt_f32_i32_e32 v246, v105
	v_cvt_f32_i32_e32 v247, v106
	v_cvt_f32_i32_e32 v248, v107
	v_cvt_f32_i32_e32 v249, v108
	v_cvt_f32_i32_e32 v250, v109
	v_cvt_f32_i32_e32 v159, v118
	v_cvt_f32_i32_e32 v115, v119
	v_cvt_f32_i32_e32 v234, v120
	v_cvt_f32_i32_e32 v232, v121
	v_cvt_f32_i32_e32 v121, v122
	v_cvt_f32_i32_e32 v122, v123
	v_cvt_f32_i32_e32 v123, v124
	v_cvt_f32_i32_e32 v124, v125
	v_cvt_f32_i32_e32 v125, v126
	v_cvt_f32_i32_e32 v126, v127
	v_cvt_f32_i32_e32 v170, v128
	v_cvt_f32_i32_e32 v251, v129
	v_cvt_f32_i32_e32 v252, v130
	v_cvt_f32_i32_e32 v253, v131
	v_cvt_f32_i32_e32 v254, v132
	v_cvt_f32_i32_e32 v255, v133
	v_cvt_f32_i32_e32 v120, v134
	v_cvt_f32_i32_e32 v228, v135
	v_cvt_f32_i32_e32 v217, v136
	v_cvt_f32_i32_e32 v130, v137
	v_cvt_f32_i32_e32 v171, v138
	v_cvt_f32_i32_e32 v132, v139
	v_cvt_f32_i32_e32 v133, v140
	v_cvt_f32_i32_e32 v134, v141
	v_cvt_f32_i32_e32 v135, v142
	v_cvt_f32_i32_e32 v136, v143
	v_cvt_f32_i32_e32 v137, v144
	v_cvt_f32_i32_e32 v169, v145
	v_cvt_f32_i32_e32 v139, v146
	v_cvt_f32_i32_e32 v140, v147
	v_cvt_f32_i32_e32 v141, v148
	v_cvt_f32_i32_e32 v142, v149
	v_cvt_f32_i32_e32 v158, v150
	v_cvt_f32_i32_e32 v111, v151
	v_cvt_f32_i32_e32 v207, v152
	v_cvt_f32_i32_e32 v113, v153
	v_cvt_f32_i32_e32 v114, v154
	v_cvt_f32_i32_e32 v112, v155
	v_cvt_f32_i32_e32 v17, v156
	v_cvt_f32_i32_e32 v145, v157
	v_cvt_f32_i32_e32 v168, v2
	v_cvt_f32_i32_e32 v138, v3
	v_cvt_f32_i32_e32 v144, v4
	v_cvt_f32_i32_e32 v129, v5
	v_cvt_f32_i32_e32 v146, v6
	v_cvt_f32_i32_e32 v128, v7
	v_cvt_f32_i32_e32 v131, v8
	v_cvt_f32_i32_e32 v143, v9
	v_cvt_f32_i32_e32 v233, v110
.LBB0_10:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s26, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s0, s0, 26
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s0, s26, s0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s26, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s0, 6
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s27, s11
	.loc	1 422 40 is_stmt 0              ; generate_amdgcn.py:422:40
	s_mul_i32 s4, s0, s35
	.loc	1 419 34 is_stmt 1              ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s0, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v2, v59, s0, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v3, v58, s4, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s4, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s4
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v4, v94, s0, 1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	v_add_lshl_u32 v5, v55, s0, 1
	v_add_lshl_u32 v6, v56, s0, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_and_b32 s9, s9, 0xffff
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v3, v3, s[24:27], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_cndmask_b32 v6, 0x80000000, v6
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_and_b32_e32 v1, 32, v1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x3
	buffer_load_u16 v119, v2, s[8:11], 0 offen
	buffer_load_u16 v117, v4, s[8:11], 0 offen
	buffer_load_u16 v110, v5, s[8:11], 0 offen
	buffer_load_u16 v116, v6, s[8:11], 0 offen
	v_dual_mov_b32 v162, 0 :: v_dual_add_nc_u32 v93, 0, v93
	scratch_store_b32 off, v0, off offset:20 ; 4-byte Folded Spill
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_add3_u32 v1, 0, v20, v1
	v_mov_b32_e32 v201, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v166, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v165, 0 :: v_dual_add_nc_u32 v118, v1, v16
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v215, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v219, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v223, 0
	v_mov_b32_e32 v225, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s12, 0
	s_waitcnt vmcnt(4)
	v_dual_mov_b32 v212, 0 :: v_dual_lshlrev_b32 v1, 16, v3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v118, v1 offset:40960
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v93 offset:40960
	ds_load_b128 v[5:8], v93 offset:40976
	ds_load_b128 v[9:12], v93 offset:41472
	ds_load_b128 v[13:16], v93 offset:41488
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v19, s46, v21
	v_add_nc_u32_e32 v20, s46, v230
	v_dual_mov_b32 v150, v246 :: v_dual_add_nc_u32 v99, s45, v229
	v_dual_mov_b32 v148, v132 :: v_dual_add_nc_u32 v165, s46, v54
	v_dual_mov_b32 v185, v243 :: v_dual_add_nc_u32 v166, s46, v22
	v_dual_mov_b32 v132, v121 :: v_dual_mov_b32 v121, v244
	v_mov_b32_e32 v149, v133
	v_mov_b32_e32 v133, v245
	ds_load_b128 v[243:246], v19 offset:8192
	v_dual_mov_b32 v151, v124 :: v_dual_mov_b32 v152, v125
	v_dual_mov_b32 v124, v247 :: v_dual_mov_b32 v125, v248
	v_dual_mov_b32 v153, v126 :: v_dual_mov_b32 v156, v141
	v_dual_mov_b32 v126, v249 :: v_dual_mov_b32 v127, v250
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v184, s45, v101
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[247:250], v19
	v_dual_mov_b32 v155, v139 :: v_dual_mov_b32 v218, v172
	v_dual_mov_b32 v139, v251 :: v_dual_mov_b32 v154, v169
	v_dual_mov_b32 v167, v140 :: v_dual_mov_b32 v186, v111
	v_mov_b32_e32 v140, v252
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v141, v253 :: v_dual_mov_b32 v226, s19
	v_dual_mov_b32 v157, v254 :: v_dual_mov_b32 v224, s17
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[251:254], v20
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[187:190], v99
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[19:22], v20 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v222, s15 :: v_dual_add_nc_u32 v111, s45, v100
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v131, off offset:48
	scratch_store_b32 off, v238, off offset:36
	v_mov_b32_e32 v147, v235
	s_clause 0x5                            ; 24-byte Folded Spill
	scratch_store_b32 off, v171, off offset:64
	scratch_store_b32 off, v234, off offset:68
	scratch_store_b32 off, v237, off offset:60
	scratch_store_b32 off, v92, off offset:56
	scratch_store_b32 off, v232, off offset:40
	scratch_store_b32 off, v170, off offset:72
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[235:238], v99 offset:2048
	ds_load_b128 v[103:106], v111
	v_dual_mov_b32 v131, v168 :: v_dual_mov_b32 v220, s13
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v225, s18 :: v_dual_mov_b32 v0, v59
	v_mov_b32_e32 v223, s16
	v_mov_b32_e32 v221, s14
	v_dual_mov_b32 v219, s12 :: v_dual_mov_b32 v92, v113
	v_dual_mov_b32 v59, v58 :: v_dual_mov_b32 v54, v17
	v_mov_b32_e32 v58, v94
	v_mov_b32_e32 v94, v56
	v_mov_b32_e32 v56, v55
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[168:175], v[251:254], v[187:190], v[219:226] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[176:183], v[19:22], v[187:190], v[219:226] neg_lo:[1,1,0]
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[161:164], v165 offset:8192
	ds_load_b128 v[203:206], v166
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[208:211], v99 offset:1024
	ds_load_b128 v[95:98], v99 offset:3072
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[168:175], v[247:250], v[103:106], v[168:175] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[176:183], v[243:246], v[103:106], v[176:183] neg_lo:[1,1,0]
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[103:106], v165
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	scratch_load_b32 v165, off, off offset:20 ; 4-byte Folded Reload
	ds_load_b128 v[99:102], v111 offset:3072
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v55.l, v110.l
	ds_load_b128 v[107:110], v111 offset:2048
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v228, off offset:52
	scratch_store_b32 off, v233, off offset:44
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[227:234], v[19:22], v[235:238], v[219:226] neg_lo:[1,1,0]
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v239, off offset:32
	scratch_store_b32 off, v241, off offset:28
	scratch_store_b32 off, v242, off offset:24
	v_dual_mov_b32 v18, v112 :: v_dual_mov_b32 v17, v114
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[111:114], v111 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[187:194], v[251:254], v[208:211], v[219:226] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[195:202], v[19:22], v[208:211], v[219:226] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[208:215], v[251:254], v[235:238], v[219:226] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[235:242], v[251:254], v[95:98], v[219:226] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[219:226], v[19:22], v[95:98], v[219:226] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[19:22], v184
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[95:98], v166 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[208:215], v[247:250], v[107:110], v[208:215] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[227:234], v[243:246], v[107:110], v[227:234] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[235:242], v[247:250], v[99:102], v[235:242] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[219:226], v[243:246], v[99:102], v[219:226] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[187:194], v[247:250], v[111:114], v[187:194] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[195:202], v[243:246], v[111:114], v[195:202] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[111:114], v184 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[168:175], v[203:206], v[19:22], v[168:175] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[176:183], v[95:98], v[19:22], v[176:183] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v165, s45, v165
	ds_load_b128 v[107:110], v165
	ds_load_b128 v[247:250], v165 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[168:175], v[103:106], v[107:110], v[168:175] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[176:183], v[161:164], v[107:110], v[176:183] neg_lo:[1,1,0]
	v_mov_b16_e32 v110.l, v55.l
	v_dual_mov_b32 v55, v56 :: v_dual_mov_b32 v56, v94
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[99:102], v184 offset:2048
	ds_load_b128 v[243:246], v184 offset:3072
	ds_load_b128 v[251:254], v165 offset:2048
	ds_load_b128 v[19:22], v165 offset:3072
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[187:194], v[203:206], v[111:114], v[187:194] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[195:202], v[95:98], v[111:114], v[195:202] neg_lo:[1,1,0]
	v_dual_mov_b32 v112, v18 :: v_dual_mov_b32 v113, v92
	v_cvt_f32_i32_e32 v165, v173
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[187:194], v[103:106], v[247:250], v[187:194] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[195:202], v[161:164], v[247:250], v[195:202] neg_lo:[1,1,0]
	v_mov_b32_e32 v247, v124
	v_cvt_f32_i32_e32 v173, v180
	v_cvt_f32_i32_e32 v166, v174
	v_cvt_f32_i32_e32 v180, v190
	v_cvt_f32_i32_e32 v184, v194
	v_cvt_f32_i32_e32 v190, v199
	v_cvt_f32_i32_e32 v174, v181
	v_cvt_f32_i32_e32 v181, v191
	v_cvt_f32_i32_e32 v191, v200
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu8 v[208:215], v[203:206], v[99:102], v[208:215] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[227:234], v[95:98], v[99:102], v[227:234] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[235:242], v[203:206], v[243:246], v[235:242] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[219:226], v[95:98], v[243:246], v[219:226] neg_lo:[1,1,0]
	v_dual_mov_b32 v243, v185 :: v_dual_mov_b32 v124, v151
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[208:215], v[103:106], v[251:254], v[208:215] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[227:234], v[161:164], v[251:254], v[227:234] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[235:242], v[103:106], v[19:22], v[235:242] neg_lo:[1,1,0]
	v_mov_b32_e32 v254, v157
	v_wmma_i32_16x16x16_iu8 v[219:226], v[161:164], v[19:22], v[219:226] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v162, v170
	v_cvt_f32_i32_e32 v163, v171
	v_cvt_f32_i32_e32 v157, v177
	v_cvt_f32_i32_e32 v177, v187
	v_cvt_f32_i32_e32 v187, v196
	v_cvt_f32_i32_e32 v194, v208
	v_cvt_f32_i32_e32 v196, v210
	v_cvt_f32_i32_e32 v199, v213
	v_cvt_f32_i32_e32 v208, v232
	v_cvt_f32_i32_e32 v210, v234
	v_cvt_f32_i32_e32 v213, v237
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v237, off, off offset:60
	scratch_load_b32 v234, off, off offset:68
	scratch_load_b32 v171, off, off offset:64
	scratch_load_b32 v170, off, off offset:72
	scratch_load_b32 v232, off, off offset:40
	scratch_load_b32 v92, off, off offset:56
	v_mov_b32_e32 v251, v139
	v_mov_b32_e32 v139, v155
	v_cvt_f32_i32_e32 v95, v168
	v_cvt_f32_i32_e32 v161, v169
	v_cvt_f32_i32_e32 v164, v172
	v_cvt_f32_i32_e32 v155, v175
	v_cvt_f32_i32_e32 v175, v182
	v_cvt_f32_i32_e32 v182, v192
	v_cvt_f32_i32_e32 v185, v195
	v_cvt_f32_i32_e32 v192, v201
	v_cvt_f32_i32_e32 v195, v209
	v_cvt_f32_i32_e32 v200, v214
	v_cvt_f32_i32_e32 v201, v215
	v_cvt_f32_i32_e32 v203, v228
	v_cvt_f32_i32_e32 v209, v233
	v_dual_mov_b32 v168, v131 :: v_dual_mov_b32 v169, v154
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v131, off, off offset:48
	scratch_load_b32 v233, off, off offset:44
	scratch_load_b32 v228, off, off offset:52
	v_mov_b32_e32 v172, v218
	v_cvt_f32_i32_e32 v214, v238
	scratch_load_b32 v238, off, off offset:36 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v215, v239
	scratch_load_b32 v239, off, off offset:32 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v154, v241
	scratch_load_b32 v241, off, off offset:28 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v218, v242
	scratch_load_b32 v242, off, off offset:24 ; 4-byte Folded Reload
	v_mov_b32_e32 v94, v58
	v_dual_mov_b32 v58, v59 :: v_dual_mov_b32 v59, v0
	v_dual_mov_b32 v114, v17 :: v_dual_mov_b32 v17, v54
	v_dual_mov_b32 v111, v186 :: v_dual_mov_b32 v244, v121
	v_dual_mov_b32 v246, v150 :: v_dual_mov_b32 v245, v133
	v_mov_b32_e32 v133, v149
	v_dual_mov_b32 v121, v132 :: v_dual_mov_b32 v250, v127
	v_dual_mov_b32 v132, v148 :: v_dual_mov_b32 v249, v126
	v_mov_b32_e32 v126, v153
	v_dual_mov_b32 v248, v125 :: v_dual_mov_b32 v125, v152
	v_dual_mov_b32 v253, v141 :: v_dual_mov_b32 v252, v140
	v_dual_mov_b32 v141, v156 :: v_dual_mov_b32 v140, v167
	v_cvt_f32_i32_e32 v156, v176
	v_cvt_f32_i32_e32 v167, v178
	v_cvt_f32_i32_e32 v186, v179
	v_cvt_f32_i32_e32 v176, v183
	v_cvt_f32_i32_e32 v178, v188
	v_cvt_f32_i32_e32 v179, v189
	v_cvt_f32_i32_e32 v183, v193
	v_cvt_f32_i32_e32 v188, v197
	v_cvt_f32_i32_e32 v189, v198
	v_cvt_f32_i32_e32 v193, v202
	v_cvt_f32_i32_e32 v197, v211
	v_cvt_f32_i32_e32 v198, v212
	v_cvt_f32_i32_e32 v202, v227
	v_cvt_f32_i32_e32 v204, v229
	v_cvt_f32_i32_e32 v205, v230
	v_cvt_f32_i32_e32 v206, v231
	v_cvt_f32_i32_e32 v211, v235
	v_mov_b32_e32 v235, v147
	v_cvt_f32_i32_e32 v212, v236
	v_cvt_f32_i32_e32 v153, v240
	v_cvt_f32_i32_e32 v219, v219
	v_cvt_f32_i32_e32 v220, v220
	v_cvt_f32_i32_e32 v221, v221
	v_cvt_f32_i32_e32 v222, v222
	v_cvt_f32_i32_e32 v223, v223
	v_cvt_f32_i32_e32 v224, v224
	v_cvt_f32_i32_e32 v225, v225
	v_cvt_f32_i32_e32 v226, v226
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s0, s44, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s26, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s0, s0, 26
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s27, s11
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s0, s44, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s0, s0, 6
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s0, s1
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s1, s0, s35
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v19, v59, s0, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v20, v58, s1, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s1, -1, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v21, v94, s0, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s1
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v22, v55, s0, 1
	v_dual_cndmask_b32 v19, 0x80000000, v19 :: v_dual_cndmask_b32 v20, 0x80000000, v20
	v_add_lshl_u32 v54, v56, s0, 1
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v21, 0x80000000, v21 :: v_dual_cndmask_b32 v22, 0x80000000, v22
	s_mov_b32 s0, 0x76543210
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v20, v20, s[24:27], 0 offen
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v54, 0x80000000, v54, vcc_lo
	s_clause 0x3
	buffer_load_u16 v19, v19, s[8:11], 0 offen
	buffer_load_u16 v21, v21, s[8:11], 0 offen
	buffer_load_u16 v22, v22, s[8:11], 0 offen
	buffer_load_u16 v55, v54, s[8:11], 0 offen
.Ltmp20:
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v54.l, 0
.Ltmp21:
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v54.h, v116.l
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp22:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_and_b32 s9, s21, 0xffff
	s_mov_b32 s8, s20
.Ltmp23:
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v56, v16, v54
	v_mul_f32_e32 v58, v15, v54
	v_mul_f32_e32 v59, v14, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v59, v59, v128, v90
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v90, v90, v59, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v96, v13, v54 :: v_dual_lshlrev_b32 v19, 16, v19
	v_mul_f32_e32 v97, v12, v54
	v_mul_f32_e32 v98, v11, v54
	v_mul_f32_e32 v99, v10, v54
	v_mul_f32_e32 v100, v9, v54
	v_mul_f32_e32 v101, v8, v54
	v_mul_f32_e32 v102, v7, v54
	v_mul_f32_e32 v103, v6, v54
	v_mul_f32_e32 v104, v5, v54
	v_mul_f32_e32 v105, v4, v54
	v_mul_f32_e32 v106, v3, v54
	v_mul_f32_e32 v107, v2, v54
	v_mul_f32_e32 v108, v1, v54
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v54.h, v110.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v56, v56, v143, v84
	v_fma_f32 v96, v96, v146, v89
	v_fma_f32 v97, v97, v129, v88
	v_fma_f32 v98, v98, v144, v87
	v_fma_f32 v99, v99, v138, v86
	v_fma_f32 v100, v100, v168, v85
	v_fma_f32 v101, v101, v145, v83
	v_fma_f32 v102, v102, v17, v82
	v_fma_f32 v103, v103, v112, v81
	v_fma_f32 v104, v104, v114, v80
	v_fma_f32 v105, v105, v113, v79
	v_fma_f32 v107, v107, v111, v77
	v_fma_f32 v108, v108, v158, v76
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v109, v16, v54
	v_mul_f32_e32 v110, v15, v54
	v_mul_f32_e32 v112, v13, v54
	v_mul_f32_e32 v151, v2, v54
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v21, 16, v21
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v58, v58, v131, v91
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v111, v14, v54
	v_mul_f32_e32 v113, v12, v54
	v_mul_f32_e32 v114, v11, v54
	v_mul_f32_e32 v143, v10, v54
	v_mul_f32_e32 v144, v9, v54
	v_mul_f32_e32 v145, v8, v54
	v_mul_f32_e32 v146, v7, v54
	v_mul_f32_e32 v147, v6, v54
	v_mul_f32_e32 v148, v5, v54
	v_mul_f32_e32 v149, v4, v54
	v_mul_f32_e32 v150, v3, v54
	v_mul_f32_e32 v152, v1, v54
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v54.h, v117.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v84, v84, v56, s3
	v_cndmask_b32_e64 v91, v91, v58, s3
	v_cndmask_b32_e64 v89, v89, v96, s3
	v_cndmask_b32_e64 v88, v88, v97, s3
	v_cndmask_b32_e64 v87, v87, v98, s3
	v_cndmask_b32_e64 v86, v86, v99, s3
	v_cndmask_b32_e64 v85, v85, v100, s3
	v_cndmask_b32_e64 v83, v83, v101, s3
	v_cndmask_b32_e64 v82, v82, v102, s3
	v_cndmask_b32_e64 v96, v81, v103, s3
	v_cndmask_b32_e64 v97, v80, v104, s3
	v_cndmask_b32_e64 v98, v79, v105, s3
	v_cndmask_b32_e64 v99, v77, v107, s3
	v_cndmask_b32_e64 v100, v76, v108, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v56, v109, v142, v75
	v_fma_f32 v58, v110, v141, v74
	v_fma_f32 v59, v111, v140, v73
	v_fma_f32 v76, v112, v139, v72
	v_fma_f32 v77, v113, v169, v71
	v_fma_f32 v79, v114, v137, v70
	v_fma_f32 v80, v143, v136, v69
	v_fma_f32 v81, v144, v135, v68
	v_fma_f32 v101, v145, v134, v67
	v_fma_f32 v102, v146, v133, v66
	v_fma_f32 v103, v147, v132, v65
	v_fma_f32 v105, v149, v130, v63
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v109, v16, v54
	v_mul_f32_e32 v110, v15, v54
	v_mul_f32_e32 v111, v14, v54
	v_mul_f32_e32 v112, v13, v54
	v_mul_f32_e32 v113, v12, v54
	v_mul_f32_e32 v114, v11, v54
	v_mul_f32_e32 v127, v10, v54
	v_mul_f32_e32 v128, v9, v54
	v_mul_f32_e32 v129, v8, v54
	v_mul_f32_e32 v130, v7, v54
	v_mul_f32_e32 v131, v6, v54
	v_mul_f32_e32 v132, v5, v54
	v_mul_f32_e32 v133, v4, v54
	v_mul_f32_e32 v134, v3, v54
	v_mul_f32_e32 v135, v2, v54
	v_mul_f32_e32 v136, v1, v54
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v54.h, v119.l
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v137, v75, v56, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v56, v109, v255, v57
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v142, v70, v79, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v104, v148, v171, v64
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v1, v1, v54
	v_mul_f32_e32 v12, v12, v54
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v94, v57, v56, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v11, v11, v54
	v_mul_f32_e32 v10, v10, v54
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v57, v1, v233, v23
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_lshlrev_b32_e32 v1, 16, v20
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v9, v9, v54
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v12, v12, v246, v34
	v_fma_f32 v11, v11, v245, v33
	v_fma_f32 v10, v10, v244, v32
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v118, v1 offset:40960
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off           ; 4-byte Folded Reload
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v9, v243, v31
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v34, v34, v12, s3
	v_cndmask_b32_e64 v33, v33, v11, s3
	v_cndmask_b32_e64 v32, v32, v10, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v16, v16, v54
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v31, v31, v9, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[9:12], v93 offset:41472
	v_mul_f32_e32 v15, v15, v54
	v_mul_f32_e32 v14, v14, v54
	v_mul_f32_e32 v13, v13, v54
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v16, v16, v250, v38
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v23, v57, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v15, v15, v249, v37
	v_fma_f32 v14, v14, v248, v36
	v_fma_f32 v13, v13, v247, v35
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v38, v16, s3
	v_cndmask_b32_e64 v138, v74, v58, s3
	v_cndmask_b32_e64 v37, v37, v15, s3
	v_cndmask_b32_e64 v36, v36, v14, s3
	v_cndmask_b32_e64 v35, v35, v13, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[13:16], v93 offset:41488
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v139, v73, v59, s3
	v_cndmask_b32_e64 v102, v66, v102, s3
	v_cndmask_b32_e64 v105, v63, v105, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v58, v110, v254, v53
	v_fma_f32 v59, v111, v253, v52
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v57, v9, v19
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v106, v106, v207, v78
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v79, v9, v21
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v63, v114, v170, v49
	v_fma_f32 v66, v129, v124, v46
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v4, v4, v54
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v78, v78, v106, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v106, v150, v217, v62
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v3, v3, v54
	v_mul_f32_e32 v2, v2, v54
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v141, v71, v77, s3
	v_cndmask_b32_e64 v144, v68, v81, s3
	v_cndmask_b32_e64 v106, v62, v106, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v62, v113, v251, v50
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v101, v67, v101, s3
	v_cndmask_b32_e64 v103, v65, v103, s3
	v_cndmask_b32_e64 v104, v64, v104, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v64, v127, v126, v48
	v_fma_f32 v65, v128, v125, v47
	v_fma_f32 v67, v130, v123, v45
	v_fma_f32 v68, v131, v122, v44
	v_fma_f32 v70, v133, v232, v42
	v_fma_f32 v71, v134, v234, v41
	v_fma_f32 v18, v135, v115, v40
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v8, v8, v54
	v_mul_f32_e32 v7, v7, v54
	v_mul_f32_e32 v6, v6, v54
	v_mul_f32_e32 v5, v5, v54
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v53, v53, v58, s3
	v_cndmask_b32_e64 v52, v52, v59, s3
	v_cndmask_b32_e64 v56, v50, v62, s3
	v_cndmask_b32_e64 v58, v49, v63, s3
	v_cndmask_b32_e64 v59, v46, v66, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v46, v4, v237, v26
	v_fma_f32 v49, v3, v160, v25
	v_fma_f32 v50, v2, v235, v24
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[1:4], v93 offset:40960
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v48, v64, s3
	v_cndmask_b32_e64 v47, v47, v65, s3
	v_cndmask_b32_e64 v64, v45, v67, s3
	v_cndmask_b32_e64 v44, v44, v68, s3
	v_cndmask_b32_e64 v65, v42, v70, s3
	v_cndmask_b32_e64 v68, v41, v71, s3
	v_cndmask_b32_e64 v18, v40, v18, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v40, v8, v92, v30
	v_fma_f32 v41, v7, v172, v29
	v_fma_f32 v42, v6, v216, v28
	v_fma_f32 v45, v5, v238, v27
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[5:8], v93 offset:40976
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v107, v151, v228, v61
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v81, v11, v21
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v108, v152, v120, v60
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v140, v72, v76, s3
	v_cndmask_b32_e64 v143, v69, v80, s3
	v_cndmask_b32_e64 v61, v61, v107, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v69, v132, v121, v43
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v107, v60, v108, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v72, v136, v159, v39
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v30, v30, v40, s3
	v_cndmask_b32_e64 v29, v29, v41, s3
	v_cndmask_b32_e64 v24, v24, v50, s3
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v22, 16, v22
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v38, 16, v55
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v40, v1, v19
	v_mul_f32_e32 v41, v2, v19
	v_mul_f32_e32 v109, v15, v21
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v60, v112, v252, v51
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v43, v69, s3
	v_cndmask_b32_e64 v39, v39, v72, s3
	v_cndmask_b32_e64 v28, v28, v42, s3
	v_cndmask_b32_e64 v27, v27, v45, s3
	v_cndmask_b32_e64 v51, v51, v60, s3
	v_cndmask_b32_e64 v26, v26, v46, s3
	v_cndmask_b32_e64 v25, v25, v49, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v42, v3, v19
	v_mul_f32_e32 v45, v4, v19
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v46, v5, v19
	v_mul_f32_e32 v49, v6, v19
	v_mul_f32_e32 v50, v7, v19
	v_mul_f32_e32 v55, v8, v19
	v_mul_f32_e32 v60, v10, v19
	v_mul_f32_e32 v62, v11, v19
	v_mul_f32_e32 v63, v12, v19
	v_mul_f32_e32 v66, v13, v19
	v_mul_f32_e32 v67, v14, v19
	v_mul_f32_e32 v69, v15, v19
	v_dual_mul_f32 v19, v16, v19 :: v_dual_mul_f32 v70, v1, v21
	v_mul_f32_e32 v71, v2, v21
	v_mul_f32_e32 v72, v3, v21
	v_mul_f32_e32 v73, v4, v21
	v_mul_f32_e32 v74, v5, v21
	v_mul_f32_e32 v75, v6, v21
	v_mul_f32_e32 v76, v7, v21
	v_mul_f32_e32 v77, v8, v21
	v_mul_f32_e32 v80, v10, v21
	v_mul_f32_e32 v92, v12, v21
	v_mul_f32_e32 v93, v13, v21
	v_mul_f32_e32 v108, v14, v21
	v_dual_mul_f32 v21, v16, v21 :: v_dual_mul_f32 v110, v1, v22
	v_mul_f32_e32 v111, v2, v22
	v_mul_f32_e32 v112, v3, v22
	v_mul_f32_e32 v113, v4, v22
	v_mul_f32_e32 v114, v5, v22
	v_mul_f32_e32 v115, v6, v22
	v_mul_f32_e32 v116, v7, v22
	v_mul_f32_e32 v117, v8, v22
	v_mul_f32_e32 v118, v9, v22
	v_mul_f32_e32 v119, v10, v22
	v_mul_f32_e32 v120, v11, v22
	v_mul_f32_e32 v121, v12, v22
	v_mul_f32_e32 v122, v13, v22
	v_mul_f32_e32 v123, v14, v22
	v_mul_f32_e32 v124, v15, v22
	v_mul_f32_e32 v22, v16, v22
	v_mul_f32_e32 v1, v1, v38
	v_mul_f32_e32 v2, v2, v38
	v_mul_f32_e32 v3, v3, v38
	v_mul_f32_e32 v4, v4, v38
	v_mul_f32_e32 v5, v5, v38
	v_mul_f32_e32 v6, v6, v38
	v_mul_f32_e32 v7, v7, v38
	v_mul_f32_e32 v8, v8, v38
	v_mul_f32_e32 v9, v9, v38
	v_mul_f32_e32 v10, v10, v38
	v_mul_f32_e32 v11, v11, v38
	v_mul_f32_e32 v12, v12, v38
	v_mul_f32_e32 v13, v13, v38
	v_mul_f32_e32 v14, v14, v38
	v_mul_f32_e32 v15, v15, v38
	v_mul_f32_e32 v16, v16, v38
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v38, v40, v95, v23
	v_fma_f32 v40, v41, v161, v24
	v_fma_f32 v41, v42, v162, v25
	v_fma_f32 v42, v45, v163, v26
	v_fma_f32 v45, v46, v164, v27
	v_fma_f32 v46, v49, v165, v28
	v_fma_f32 v49, v50, v166, v29
	v_fma_f32 v50, v55, v155, v30
	v_fma_f32 v55, v57, v156, v31
	v_fma_f32 v57, v60, v157, v32
	v_fma_f32 v60, v62, v167, v33
	v_fma_f32 v62, v63, v186, v34
	v_fma_f32 v63, v66, v173, v35
	v_fma_f32 v66, v67, v174, v36
	v_fma_f32 v67, v69, v175, v37
	v_fma_f32 v69, v70, v177, v39
	v_fma_f32 v71, v71, v178, v18
	v_fma_f32 v128, v80, v187, v48
	v_fma_f32 v129, v81, v188, v58
	v_fma_f32 v1, v1, v211, v100
	v_fma_f32 v2, v2, v212, v99
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v81, v23, v38, s2
	v_cndmask_b32_e64 v80, v24, v40, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v19, v19, v176, v20
	v_fma_f32 v72, v72, v179, v68
	v_fma_f32 v73, v73, v180, v65
	v_fma_f32 v125, v76, v183, v64
	v_fma_f32 v126, v77, v184, v59
	v_fma_f32 v127, v79, v185, v47
	v_fma_f32 v93, v93, v190, v51
	v_fma_f32 v108, v108, v191, v52
	v_fma_f32 v110, v110, v194, v107
	v_fma_f32 v111, v111, v195, v61
	v_fma_f32 v3, v3, v213, v78
	v_fma_f32 v4, v4, v214, v98
	v_fma_f32 v5, v5, v215, v97
	v_fma_f32 v6, v6, v153, v96
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v42, v26, v42, s2
	v_cndmask_b32_e64 v45, v27, v45, s2
	v_cndmask_b32_e64 v46, v28, v46, s2
	v_cndmask_b32_e64 v50, v30, v50, s2
	v_cndmask_b32_e64 v79, v32, v57, s2
	v_cndmask_b32_e64 v57, v33, v60, s2
	v_cndmask_b32_e64 v60, v34, v62, s2
	v_cndmask_b32_e64 v62, v35, v63, s2
	v_cndmask_b32_e64 v63, v36, v66, s2
	v_cndmask_b32_e64 v66, v37, v67, s2
	v_cndmask_b32_e64 v70, v39, v69, s2
	v_cndmask_b32_e64 v71, v18, v71, s2
	v_cndmask_b32_e64 v30, v100, v1, s2
	v_cndmask_b32_e64 v28, v99, v2, s2
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e64 v1, |v80|, |v80|
	v_max_f32_e64 v2, |v81|, |v81|
.Ltmp25:
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v74, v74, v181, v43
	v_fma_f32 v95, v75, v182, v44
	v_fma_f32 v92, v92, v189, v56
	v_fma_f32 v109, v109, v192, v53
	v_fma_f32 v113, v113, v197, v105
	v_fma_f32 v114, v114, v198, v104
	v_fma_f32 v115, v115, v199, v103
	v_fma_f32 v119, v119, v203, v143
	v_fma_f32 v120, v120, v204, v142
	v_fma_f32 v121, v121, v205, v141
	v_fma_f32 v122, v122, v206, v140
	v_fma_f32 v123, v123, v208, v139
	v_fma_f32 v124, v124, v209, v138
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v41, v25, v41, s2
	v_cndmask_b32_e64 v49, v29, v49, s2
	v_cndmask_b32_e64 v67, v20, v19, s2
	v_cndmask_b32_e64 v75, v68, v72, s2
	v_cndmask_b32_e64 v76, v65, v73, s2
	v_cndmask_b32_e64 v72, v64, v125, s2
	v_cndmask_b32_e64 v73, v59, v126, s2
	v_cndmask_b32_e64 v64, v58, v129, s2
	v_cndmask_b32_e64 v58, v51, v93, s2
	v_cndmask_b32_e64 v59, v52, v108, s2
	v_cndmask_b32_e64 v51, v107, v110, s2
	v_cndmask_b32_e64 v52, v61, v111, s2
	v_cndmask_b32_e64 v29, v78, v3, s2
	v_cndmask_b32_e64 v27, v98, v4, s2
	v_cndmask_b32_e64 v26, v97, v5, s2
	v_cndmask_b32_e64 v25, v96, v6, s2
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v1, v2, v1
	v_max3_f32 v2, |v42|, |v45|, |v46|
	v_max3_f32 v3, |v79|, |v57|, |v60|
	v_max3_f32 v4, |v62|, |v63|, |v66|
	v_max_f32_e64 v5, |v71|, |v71|
	v_max_f32_e64 v6, |v70|, |v70|
.Ltmp27:
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v21, v21, v193, v94
	v_fma_f32 v112, v112, v196, v106
	v_fma_f32 v116, v116, v200, v102
	v_fma_f32 v117, v117, v201, v101
	v_fma_f32 v118, v118, v202, v144
	v_fma_f32 v22, v22, v210, v137
	v_fma_f32 v10, v10, v220, v86
	v_fma_f32 v13, v13, v223, v89
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v55, v31, v55, s2
	v_cndmask_b32_e64 v77, v43, v74, s2
	v_cndmask_b32_e64 v74, v44, v95, s2
	v_cndmask_b32_e64 v69, v48, v128, s2
	v_cndmask_b32_e64 v65, v56, v92, s2
	v_cndmask_b32_e64 v56, v53, v109, s2
	v_cndmask_b32_e64 v48, v105, v113, s2
	v_cndmask_b32_e64 v43, v104, v114, s2
	v_cndmask_b32_e64 v44, v103, v115, s2
	v_cndmask_b32_e64 v37, v143, v119, s2
	v_cndmask_b32_e64 v35, v142, v120, s2
	v_cndmask_b32_e64 v36, v141, v121, s2
	v_cndmask_b32_e64 v34, v140, v122, s2
	v_cndmask_b32_e64 v33, v139, v123, s2
	v_cndmask_b32_e64 v31, v138, v124, s2
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v1, v1, |v41|, v2
	v_max3_f32 v2, v3, v4, |v67|
	v_max_f32_e32 v3, v6, v5
	v_max_f32_e64 v4, |v52|, |v52|
	v_max_f32_e64 v5, |v51|, |v51|
.Ltmp29:
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v7, v7, v154, v82
	v_fma_f32 v8, v8, v218, v83
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v68, v47, v127, s2
	v_cndmask_b32_e64 v53, v94, v21, s2
	v_cndmask_b32_e64 v47, v106, v112, s2
	v_cndmask_b32_e64 v39, v102, v116, s2
	v_cndmask_b32_e64 v40, v101, v117, s2
	v_cndmask_b32_e64 v38, v144, v118, s2
	v_cndmask_b32_e64 v32, v137, v22, s2
	v_cndmask_b32_e64 v24, v86, v10, s2
	v_cndmask_b32_e64 v10, v89, v13, s2
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v6, |v76|, |v77|, |v74|
	v_max3_f32 v13, |v69|, |v64|, |v65|
	v_max3_f32 v18, |v58|, |v59|, |v56|
	v_max_f32_e32 v4, v5, v4
	v_max3_f32 v5, |v48|, |v43|, |v44|
	v_max3_f32 v19, |v37|, |v35|, |v36|
	v_max3_f32 v20, |v34|, |v33|, |v31|
.Ltmp31:
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v9, v219, v85
	v_fma_f32 v11, v11, v221, v87
	v_fma_f32 v12, v12, v222, v88
	v_fma_f32 v130, v14, v224, v90
	v_fma_f32 v131, v15, v225, v91
	v_fma_f32 v132, v16, v226, v84
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v82, v7, s2
	v_cndmask_b32_e64 v16, v83, v8, s2
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v7, |v49|, |v50|, |v55|
	v_max3_f32 v8, |v72|, |v73|, |v68|
	v_max3_f32 v3, v3, |v75|, v6
	v_max3_f32 v6, v13, v18, |v53|
	v_max3_f32 v18, |v39|, |v40|, |v38|
	v_max3_f32 v4, v4, |v47|, v5
	v_max3_f32 v5, v19, v20, |v32|
.Ltmp33:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v85, v9, s2
	v_cndmask_b32_e64 v14, v87, v11, s2
	v_cndmask_b32_e64 v9, v88, v12, s2
	v_cndmask_b32_e64 v11, v90, v130, s2
	v_cndmask_b32_e64 v12, v91, v131, s2
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e64 v19, |v28|, |v28|
	v_max_f32_e64 v20, |v30|, |v30|
	v_max3_f32 v1, v1, v7, v2
	v_max3_f32 v2, v3, v8, v6
	v_max3_f32 v3, v4, v18, v5
.Ltmp35:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v84, v132, s2
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v4, v20, v19
	v_max3_f32 v5, |v27|, |v26|, |v25|
	v_max3_f32 v7, |v24|, |v14|, |v9|
	v_max3_f32 v8, |v10|, |v11|, |v12|
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v18, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v3, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v6, |v15|, |v16|, |v23|
	v_max3_f32 v4, v4, |v29|, v5
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v5, v1, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v7, v7, v8, |v13|
	v_max_f32_e32 v8, v18, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v20, v19, v19 :: v_dual_max_f32 v5, v5, v5
	v_max3_f32 v21, v4, v6, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v19, v2, v8
	v_max_f32_e32 v20, v3, v20
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v2, 4, v0
	v_lshl_add_u32 v3, v241, 9, 0
	v_lshlrev_b32_e32 v4, 5, v241
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v18, v1, v5
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v1, v21, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v7, 0x60, v0
	v_and_b32_e32 v5, 0x80, v0
	v_and_b32_e32 v8, 8, v0
	v_lshl_add_u32 v3, v2, 2, v3
	v_and_or_b32 v22, 0x680, v242, v4
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v1, v1, v1
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshlrev_b32_e32 v6, 1, v5
	v_xor_b32_e32 v61, v4, v7
	v_lshl_add_u32 v3, v8, 4, v3
	v_lshrrev_b32_e32 v78, 3, v5
	v_xor_b32_e32 v22, v22, v7
	v_lshl_add_u32 v82, v2, 6, 0
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v21, v21, v1
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v1, v3, v6, v61
	v_lshlrev_b32_e32 v8, 3, v8
	v_add_nc_u32_e32 v5, 0, v5
	v_add3_u32 v3, v82, v78, v22
	ds_store_b128 v1, v[18:21]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[18:21], v3
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v1, v18
	v_dual_mov_b32 v3, v19 :: v_dual_mov_b32 v22, v20
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v18, v18, v18 :: v_dual_max_f32 v19, v19, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v1, v1 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v22, v22 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v61, v21, v21
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v21, v21 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v1, v1, v1
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v1, v18, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v3, v19, v3 :: v_dual_max_f32 v18, v20, v20
	v_dual_max_f32 v19, v22, v22 :: v_dual_max_f32 v20, v21, v21
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v21, v1 :: v_dual_mov_b32 v22, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v18, v18, v19 :: v_dual_max_f32 v19, v61, v20
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v21, v21 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v22, v22 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v20, v18 :: v_dual_mov_b32 v61, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v21, v21, v21 :: v_dual_max_f32 v22, v22, v22
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v61, v61 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v1, v1, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v3, v3, v22 :: v_dual_max_f32 v20, v20, v20
	v_max_f32_e32 v21, v61, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v22, v1 :: v_dual_mov_b32 v61, v3
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v20, v18, v20 :: v_dual_max_f32 v21, v19, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v22, v22 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v61, v61 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v78, v20
	v_mov_b32_e32 v82, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v18, v22, v22 :: v_dual_max_f32 v19, v61, v61
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshrrev_b32_e32 v22, 1, v7
	v_mov_b32_dpp v78, v78 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v82, v82 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v18, v1, v18 :: v_dual_max_f32 v19, v3, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v1, v78, v78
	v_max_f32_e32 v3, v82, v82
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	scratch_load_b64 v[82:83], off, off offset:4 ; 8-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v20, v20, v1 :: v_dual_lshlrev_b32 v1, 5, v2
	v_max_f32_e32 v21, v21, v3
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v3, v5, v22, v8
.Ltmp68:
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v83.h, v54.l
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	ds_store_b128 v3, v[18:21]
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v101, off, off offset:16 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v2, 0, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_add3_u32 v1, v2, v1, v8
	ds_load_b128 v[17:20], v1
.Ltmp70:
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	v_dual_max_f32 v1, v17, v17 :: v_dual_max_f32 v8, v19, v19
	v_max_f32_e32 v18, v18, v18
	v_dual_max_f32 v20, v20, v20 :: v_dual_max_f32 v1, 0x2b8cbccc, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v17, 0x2b8cbccc, v8 :: v_dual_max_f32 v18, 0x2b8cbccc, v18
	v_max_f32_e32 v20, 0x2b8cbccc, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v2, null, 0x40e00000, 0x40e00000, v1
	v_div_scale_f32 v19, null, 0x40e00000, 0x40e00000, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v61, null, 0x40e00000, 0x40e00000, v20
	v_rcp_f32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v22, v19
	v_div_scale_f32 v84, s0, v18, 0x40e00000, v18
	v_rcp_f32_e32 v78, v61
	v_div_scale_f32 v85, s1, v20, 0x40e00000, v20
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v5, -v2, v3, 1.0
	v_fmac_f32_e32 v3, v5, v3
	v_div_scale_f32 v5, vcc_lo, v1, 0x40e00000, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v8, v5, v3
	v_fma_f32 v21, -v2, v8, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v8, v21, v3
	v_div_scale_f32 v21, null, 0x40e00000, 0x40e00000, v18
	v_fma_f32 v2, -v2, v8, v5
	v_fma_f32 v5, -v19, v22, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v2, v2, v3, v8
	v_fmac_f32_e32 v22, v5, v22
	v_rcp_f32_e32 v5, v21
	v_div_scale_f32 v3, vcc_lo, v17, 0x40e00000, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v1, v2, 0x40e00000, v1
	v_mul_f32_e32 v2, v3, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v83.l, v1.h
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v8, -v21, v5, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v82, -v19, v2, v3
	v_fmac_f32_e32 v5, v8, v5
	v_fma_f32 v8, -v61, v78, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v2, v82, v22
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v82, 1, v83
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v83, v84, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v78, v8, v78
	v_fma_f32 v8, -v19, v2, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v3, v1, v82, 0x7fff
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v1, -v21, v83, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v19, v85, v78
	v_div_fmas_f32 v2, v8, v22, v2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v82, 0xffff0000, v3
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v83, v1, v5
	v_fma_f32 v1, -v61, v19, v85
	v_div_fixup_f32 v2, v2, 0x40e00000, v17
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v87, null, v82, v82, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v17, -v21, v83, v84
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v21, null, v82, v82, v81
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v19, v1, v78
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v88, s0, v80, v82, v80
	v_rcp_f32_e32 v22, v21
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v1, v17, v5, v83
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v17, -v61, v19, v85
	s_mov_b32 vcc_lo, s1
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v5.l, v2.h
	v_mov_b16_e32 v5.h, v54.l
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v18, v1, 0x40e00000, v18
	v_div_fmas_f32 v1, v17, v78, v19
	.loc	1 78 29 is_stmt 1               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v19, null, v82, v82, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v17, -v21, v22, 1.0
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v5, 1, v5
	v_mov_b16_e32 v61.l, v18.h
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v83, v19
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v61.h, v54.l
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v22, v17, v22
	v_div_scale_f32 v84, vcc_lo, v81, v82, v81
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v20, v1, 0x40e00000, v20
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v1, v2, v5, 0x7fff
	v_mov_b16_e32 v2.h, v54.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 78 29 is_stmt 1               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_dual_mul_f32 v54, v84, v22 :: v_dual_and_b32 v5, 1, v61
	v_div_scale_f32 v85, null, v82, v82, v41
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v2.l, v20.h
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v17, -v19, v83, 1.0
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v5, v18, v5, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v18, -v21, v54, v84
	v_rcp_f32_e32 v86, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v83, v17, v83 :: v_dual_and_b32 v2, 1, v2
	v_div_scale_f32 v90, s1, v41, v82, v41
	v_fmac_f32_e32 v54, v18, v22
	v_rcp_f32_e32 v18, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v2, v20, v2, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v89, v88, v83
	v_div_scale_f32 v91, null, v82, v82, v45
	v_fma_f32 v20, -v85, v86, 1.0
	v_fma_f32 v21, -v21, v54, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v19, v89, v88
	v_div_scale_f32 v92, s2, v42, v82, v42
	v_fmac_f32_e32 v86, v20, v86
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v20, -v87, v18, 1.0
	v_div_fmas_f32 v21, v21, v22, v54
	v_fmac_f32_e32 v89, v84, v83
	v_rcp_f32_e32 v84, v91
	v_mul_f32_e32 v54, v90, v86
	v_fmac_f32_e32 v18, v20, v18
	v_div_scale_f32 v93, null, v82, v82, v46
	v_div_fixup_f32 v20, v21, v82, v81
	v_fma_f32 v19, -v19, v89, v88
	v_fma_f32 v21, -v85, v54, v90
	v_mul_f32_e32 v81, v92, v18
	v_rcp_f32_e32 v88, v93
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v22, -v91, v84, 1.0
	v_div_fmas_f32 v19, v19, v83, v89
	v_fmac_f32_e32 v54, v21, v86
	v_fma_f32 v21, -v87, v81, v92
	v_div_scale_f32 v83, s0, v45, v82, v45
	v_fmac_f32_e32 v84, v22, v84
	v_div_fixup_f32 v22, v19, v82, v80
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v93, v88, 1.0
	v_fma_f32 v19, -v85, v54, v90
	v_fmac_f32_e32 v81, v21, v18
	v_div_scale_f32 v85, null, v82, v82, v49
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v21, v83, v84
	v_fmac_f32_e32 v88, v89, v88
	v_div_scale_f32 v80, s3, v46, v82, v46
	v_div_fmas_f32 v19, v19, v86, v54
	v_fma_f32 v54, -v87, v81, v92
	v_rcp_f32_e32 v87, v85
	v_div_scale_f32 v90, null, v82, v82, v50
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v86, -v91, v21, v83
	v_mul_f32_e32 v89, v80, v88
	v_div_fmas_f32 v18, v54, v18, v81
	v_rcp_f32_e32 v54, v90
	v_div_fixup_f32 v41, v19, v82, v41
	v_fmac_f32_e32 v21, v86, v84
	v_fma_f32 v81, -v93, v89, v80
	v_fma_f32 v86, -v85, v87, 1.0
	v_div_fixup_f32 v42, v18, v82, v42
	v_div_scale_f32 v19, s1, v49, v82, v49
	v_fma_f32 v18, -v91, v21, v83
	v_fmac_f32_e32 v89, v81, v88
	v_fmac_f32_e32 v87, v86, v87
	v_fma_f32 v81, -v90, v54, 1.0
	v_div_scale_f32 v83, null, v82, v82, v55
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v86, null, v82, v82, v79
	v_div_fmas_f32 v18, v18, v84, v21
	v_fma_f32 v21, -v93, v89, v80
	v_mul_f32_e32 v80, v19, v87
	v_fmac_f32_e32 v54, v81, v54
	v_rcp_f32_e32 v81, v83
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v84, s0, v50, v82, v50
	v_div_fmas_f32 v21, v21, v88, v89
	v_fma_f32 v88, -v85, v80, v19
	v_rcp_f32_e32 v92, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v89, v84, v54
	v_div_fixup_f32 v45, v18, v82, v45
	v_div_fixup_f32 v46, v21, v82, v46
	v_fma_f32 v91, -v83, v81, 1.0
	v_fmac_f32_e32 v80, v88, v87
	v_div_scale_f32 v88, null, v82, v82, v57
	v_fma_f32 v18, -v90, v89, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v91, v81
	v_div_scale_f32 v21, s2, v55, v82, v55
	v_fma_f32 v19, -v85, v80, v19
	v_rcp_f32_e32 v85, v88
	v_fma_f32 v91, -v86, v92, 1.0
	v_dual_fmac_f32 v89, v18, v54 :: v_dual_mul_f32 v18, v21, v81
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v93, null, v82, v82, v60
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v92, v91, v92
	v_div_scale_f32 v91, s3, v79, v82, v79
	v_div_fmas_f32 v19, v19, v87, v80
	v_fma_f32 v80, -v90, v89, v84
	v_fma_f32 v84, -v83, v18, v21
	v_fma_f32 v90, -v88, v85, 1.0
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v87, v91, v92
	v_div_fmas_f32 v54, v80, v54, v89
	v_fmac_f32_e32 v18, v84, v81
	v_rcp_f32_e32 v80, v93
	v_fmac_f32_e32 v85, v90, v85
	v_div_scale_f32 v89, s0, v57, v82, v57
	v_fma_f32 v84, -v86, v87, v91
	v_div_fixup_f32 v49, v19, v82, v49
	v_fma_f32 v19, -v83, v18, v21
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v21, v89, v85
	v_div_scale_f32 v83, null, v82, v82, v62
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v50, v54, v82, v50
	v_fmac_f32_e32 v87, v84, v92
	v_fma_f32 v54, -v93, v80, 1.0
	v_div_fmas_f32 v18, v19, v81, v18
	v_fma_f32 v81, -v88, v21, v89
	v_rcp_f32_e32 v84, v83
	v_div_scale_f32 v90, null, v82, v82, v63
	v_fma_f32 v19, -v86, v87, v91
	v_fmac_f32_e32 v80, v54, v80
	v_div_scale_f32 v86, s1, v60, v82, v60
	v_fmac_f32_e32 v21, v81, v85
	v_rcp_f32_e32 v81, v90
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v83, v84, 1.0
	v_div_fmas_f32 v19, v19, v92, v87
	v_mul_f32_e32 v87, v86, v80
	.loc	1 78 35 is_stmt 0               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v17, 0xffff0000, v2
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v54, v18, v82, v55
	v_fma_f32 v18, -v88, v21, v89
	v_div_fixup_f32 v55, v19, v82, v79
	v_fma_f32 v19, -v93, v87, v86
	v_fmac_f32_e32 v84, v91, v84
	v_div_scale_f32 v79, s2, v62, v82, v62
	v_fma_f32 v88, -v90, v81, 1.0
	v_div_scale_f32 v89, null, v82, v82, v66
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v87, v19, v80
	v_div_fmas_f32 v18, v18, v85, v21
	v_mul_f32_e32 v19, v79, v84
	v_fmac_f32_e32 v81, v88, v81
	v_rcp_f32_e32 v21, v89
	v_div_scale_f32 v85, s0, v63, v82, v63
	v_div_scale_f32 v88, null, v82, v82, v67
	v_div_fixup_f32 v57, v18, v82, v57
	v_fma_f32 v18, -v93, v87, v86
	v_fma_f32 v86, -v83, v19, v79
	v_mul_f32_e32 v91, v85, v81
	v_rcp_f32_e32 v92, v88
	s_mov_b32 vcc_lo, s1
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v78, 0xffff0000, v5
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v93, -v89, v21, 1.0
	v_div_fmas_f32 v18, v18, v80, v87
	v_fmac_f32_e32 v19, v86, v84
	v_fma_f32 v80, -v90, v91, v85
	v_div_scale_f32 v86, s1, v66, v82, v66
	v_fmac_f32_e32 v21, v93, v21
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v87, -v88, v92, 1.0
	v_div_fixup_f32 v60, v18, v82, v60
	v_fma_f32 v18, -v83, v19, v79
	v_fmac_f32_e32 v91, v80, v81
	v_div_scale_f32 v83, null, v78, v78, v70
	s_mov_b32 vcc_lo, s2
	v_dual_mul_f32 v79, v86, v21 :: v_dual_fmac_f32 v92, v87, v92
	v_div_scale_f32 v80, s3, v67, v82, v67
	v_div_fmas_f32 v18, v18, v84, v19
	v_fma_f32 v19, -v90, v91, v85
	v_rcp_f32_e32 v85, v83
	v_div_scale_f32 v90, null, v78, v78, v71
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v84, -v89, v79, v86
	v_mul_f32_e32 v87, v80, v92
	v_div_fmas_f32 v19, v19, v81, v91
	v_rcp_f32_e32 v81, v90
	v_div_fixup_f32 v62, v18, v82, v62
	v_fmac_f32_e32 v79, v84, v21
	v_fma_f32 v84, -v88, v87, v80
	v_fma_f32 v91, -v83, v85, 1.0
	v_div_fixup_f32 v63, v19, v82, v63
	v_div_scale_f32 v19, s0, v70, v78, v70
	v_fma_f32 v18, -v89, v79, v86
	v_fmac_f32_e32 v87, v84, v92
	v_fmac_f32_e32 v85, v91, v85
	v_fma_f32 v84, -v90, v81, 1.0
	v_div_scale_f32 v86, null, v78, v78, v75
	s_mov_b32 vcc_lo, s1
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v61, 0xffff0000, v1
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v18, v18, v21, v79
	v_fma_f32 v21, -v88, v87, v80
	v_mul_f32_e32 v79, v19, v85
	v_fmac_f32_e32 v81, v84, v81
	v_rcp_f32_e32 v80, v86
	v_div_scale_f32 v84, s1, v71, v78, v71
	v_div_scale_f32 v88, null, v78, v78, v76
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v89, v84, v81
	v_div_fmas_f32 v21, v21, v92, v87
	v_fma_f32 v87, -v83, v79, v19
	v_rcp_f32_e32 v92, v88
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v86, v80, 1.0
	v_div_fixup_f32 v66, v18, v82, v66
	v_div_fixup_f32 v67, v21, v82, v67
	v_fmac_f32_e32 v79, v87, v85
	v_fma_f32 v18, -v90, v89, v84
	v_div_scale_f32 v82, null, v78, v78, v77
	v_fmac_f32_e32 v80, v91, v80
	v_div_scale_f32 v21, s2, v75, v78, v75
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v87, -v88, v92, 1.0
	v_fma_f32 v19, -v83, v79, v19
	v_fmac_f32_e32 v89, v18, v81
	v_rcp_f32_e32 v83, v82
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v18, v21, v80
	v_fmac_f32_e32 v92, v87, v92
	v_div_scale_f32 v87, s3, v76, v78, v76
	v_div_fmas_f32 v19, v19, v85, v79
	v_fma_f32 v79, -v90, v89, v84
	v_div_scale_f32 v91, null, v78, v78, v74
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v84, -v86, v18, v21
	v_mul_f32_e32 v85, v87, v92
	v_fma_f32 v90, -v82, v83, 1.0
	v_div_fmas_f32 v79, v79, v81, v89
	v_rcp_f32_e32 v81, v91
	v_fmac_f32_e32 v18, v84, v80
	v_fma_f32 v84, -v88, v85, v87
	v_fmac_f32_e32 v83, v90, v83
	v_div_scale_f32 v89, s0, v77, v78, v77
	v_div_fixup_f32 v70, v19, v78, v70
	v_div_fixup_f32 v71, v79, v78, v71
	v_fma_f32 v19, -v86, v18, v21
	v_fmac_f32_e32 v85, v84, v92
	v_mul_f32_e32 v21, v89, v83
	v_fma_f32 v79, -v91, v81, 1.0
	v_div_scale_f32 v84, null, v78, v78, v72
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v86, s1, v74, v78, v74
	v_div_fmas_f32 v18, v19, v80, v18
	v_fma_f32 v19, -v88, v85, v87
	v_fma_f32 v80, -v82, v21, v89
	v_fmac_f32_e32 v81, v79, v81
	v_rcp_f32_e32 v79, v84
	v_div_scale_f32 v87, null, v78, v78, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v21, v80, v83
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v75, v18, v78, v75
	v_rcp_f32_e32 v80, v87
	v_div_fmas_f32 v19, v19, v92, v85
	v_mul_f32_e32 v85, v86, v81
	v_fma_f32 v18, -v82, v21, v89
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v84, v79, 1.0
	v_div_scale_f32 v89, null, v78, v78, v68
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v76, v19, v78, v76
	v_fma_f32 v19, -v91, v85, v86
	v_fmac_f32_e32 v79, v88, v79
	v_div_scale_f32 v82, s2, v72, v78, v72
	v_fma_f32 v88, -v87, v80, 1.0
	v_div_fmas_f32 v18, v18, v83, v21
	v_rcp_f32_e32 v21, v89
	v_fmac_f32_e32 v85, v19, v81
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v19, v82, v79 :: v_dual_fmac_f32 v80, v88, v80
	v_div_scale_f32 v83, s0, v73, v78, v73
	v_div_scale_f32 v88, null, v78, v78, v69
	v_div_fixup_f32 v77, v18, v78, v77
	v_fma_f32 v18, -v91, v85, v86
	v_fma_f32 v86, -v84, v19, v82
	v_mul_f32_e32 v90, v83, v80
	v_rcp_f32_e32 v91, v88
	v_fma_f32 v92, -v89, v21, 1.0
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v19, v86, v79
	v_div_fmas_f32 v18, v18, v81, v85
	v_fma_f32 v81, -v87, v90, v83
	v_fmac_f32_e32 v21, v92, v21
	v_div_scale_f32 v85, s1, v68, v78, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v74, v18, v78, v74
	v_fma_f32 v86, -v88, v91, 1.0
	v_fma_f32 v18, -v84, v19, v82
	v_fmac_f32_e32 v90, v81, v80
	v_mul_f32_e32 v81, v85, v21
	v_div_scale_f32 v84, null, v78, v78, v64
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v91, v86, v91
	v_div_scale_f32 v82, s3, v69, v78, v69
	v_div_fmas_f32 v18, v18, v79, v19
	v_fma_f32 v19, -v87, v90, v83
	v_fma_f32 v79, -v89, v81, v85
	v_rcp_f32_e32 v83, v84
	v_div_scale_f32 v87, null, v78, v78, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v86, v82, v91 :: v_dual_fmac_f32 v81, v79, v21
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v79, v87
	v_div_fmas_f32 v19, v19, v80, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v80, -v88, v86, v82
	v_div_fixup_f32 v72, v18, v78, v72
	v_fma_f32 v90, -v84, v83, 1.0
	v_fma_f32 v18, -v89, v81, v85
	v_div_fixup_f32 v73, v19, v78, v73
	v_fmac_f32_e32 v86, v80, v91
	v_div_scale_f32 v19, s0, v64, v78, v64
	v_fmac_f32_e32 v83, v90, v83
	v_fma_f32 v80, -v87, v79, 1.0
	v_div_scale_f32 v85, null, v78, v78, v58
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v92, null, v78, v78, v53
	v_div_fmas_f32 v18, v18, v21, v81
	v_fma_f32 v21, -v88, v86, v82
	v_mul_f32_e32 v81, v19, v83
	v_fmac_f32_e32 v79, v80, v79
	v_rcp_f32_e32 v80, v85
	v_div_scale_f32 v82, s1, v65, v78, v65
	v_div_scale_f32 v88, null, v78, v78, v59
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v89, v82, v79
	v_div_fmas_f32 v21, v21, v91, v86
	v_fma_f32 v86, -v84, v81, v19
	v_rcp_f32_e32 v91, v88
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v85, v80, 1.0
	v_div_fixup_f32 v68, v18, v78, v68
	v_fma_f32 v18, -v87, v89, v82
	v_fmac_f32_e32 v81, v86, v83
	v_div_fixup_f32 v69, v21, v78, v69
	v_fmac_f32_e32 v80, v90, v80
	v_div_scale_f32 v21, s2, v58, v78, v58
	v_div_scale_f32 v86, null, v78, v78, v56
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v90, -v88, v91, 1.0
	v_fma_f32 v19, -v84, v81, v19
	v_fmac_f32_e32 v89, v18, v79
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v18, v21, v80
	v_rcp_f32_e32 v84, v86
	v_fmac_f32_e32 v91, v90, v91
	v_div_scale_f32 v90, s3, v59, v78, v59
	v_div_fmas_f32 v19, v19, v83, v81
	v_fma_f32 v81, -v87, v89, v82
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v82, -v85, v18, v21
	v_mul_f32_e32 v83, v90, v91
	v_div_fixup_f32 v64, v19, v78, v64
	v_div_fmas_f32 v79, v81, v79, v89
	v_rcp_f32_e32 v81, v92
	v_fma_f32 v87, -v86, v84, 1.0
	v_fmac_f32_e32 v18, v82, v80
	v_fma_f32 v82, -v88, v83, v90
	v_div_fixup_f32 v65, v79, v78, v65
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v84, v87, v84
	v_div_scale_f32 v87, s0, v56, v78, v56
	v_fmac_f32_e32 v83, v82, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v92, v81, 1.0
	v_div_scale_f32 v82, null, v61, v61, v51
	v_fma_f32 v19, -v85, v18, v21
	v_mul_f32_e32 v21, v87, v84
	v_fmac_f32_e32 v81, v79, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v79, v82
	v_div_scale_f32 v85, s1, v53, v78, v53
	v_div_fmas_f32 v18, v19, v80, v18
	v_fma_f32 v19, -v88, v83, v90
	v_fma_f32 v80, -v86, v21, v87
	v_div_scale_f32 v88, null, v61, v61, v52
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v58, v18, v78, v58
	v_fmac_f32_e32 v21, v80, v84
	v_rcp_f32_e32 v80, v88
	v_fma_f32 v89, -v82, v79, 1.0
	v_div_fmas_f32 v19, v19, v91, v83
	v_mul_f32_e32 v83, v85, v81
	v_fma_f32 v18, -v86, v21, v87
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v79, v89, v79
	v_div_scale_f32 v89, null, v61, v61, v47
	v_div_fixup_f32 v59, v19, v78, v59
	v_fma_f32 v19, -v92, v83, v85
	v_div_scale_f32 v86, s2, v51, v61, v51
	v_fma_f32 v87, -v88, v80, 1.0
	v_div_fmas_f32 v18, v18, v84, v21
	v_rcp_f32_e32 v21, v89
	v_fmac_f32_e32 v83, v19, v81
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v19, v86, v79 :: v_dual_fmac_f32 v80, v87, v80
	v_div_scale_f32 v84, s0, v52, v61, v52
	v_div_scale_f32 v87, null, v61, v61, v48
	v_div_fixup_f32 v56, v18, v78, v56
	v_fma_f32 v18, -v92, v83, v85
	v_fma_f32 v85, -v82, v19, v86
	v_mul_f32_e32 v90, v84, v80
	v_rcp_f32_e32 v91, v87
	v_fma_f32 v92, -v89, v21, 1.0
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v19, v85, v79
	v_div_fmas_f32 v18, v18, v81, v83
	v_fma_f32 v81, -v88, v90, v84
	v_fmac_f32_e32 v21, v92, v21
	v_div_scale_f32 v83, s1, v47, v61, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v53, v18, v78, v53
	v_fma_f32 v85, -v87, v91, 1.0
	v_fma_f32 v18, -v82, v19, v86
	v_fmac_f32_e32 v90, v81, v80
	v_mul_f32_e32 v78, v83, v21
	v_div_scale_f32 v82, null, v61, v61, v43
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v91, v85, v91
	v_div_scale_f32 v81, s3, v48, v61, v48
	v_div_fmas_f32 v18, v18, v79, v19
	v_fma_f32 v19, -v88, v90, v84
	v_fma_f32 v79, -v89, v78, v83
	v_rcp_f32_e32 v84, v82
	v_div_scale_f32 v86, null, v61, v61, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v85, v81, v91 :: v_dual_fmac_f32 v78, v79, v21
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v79, v86
	v_div_fmas_f32 v19, v19, v80, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v80, -v87, v85, v81
	v_div_fixup_f32 v51, v18, v61, v51
	v_fma_f32 v88, -v82, v84, 1.0
	v_fma_f32 v18, -v89, v78, v83
	v_div_fixup_f32 v52, v19, v61, v52
	v_fmac_f32_e32 v85, v80, v91
	v_div_scale_f32 v19, s0, v43, v61, v43
	v_fmac_f32_e32 v84, v88, v84
	v_fma_f32 v80, -v86, v79, 1.0
	v_div_scale_f32 v83, null, v61, v61, v39
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v64, v64
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v18, v18, v21, v78
	v_fma_f32 v21, -v87, v85, v81
	v_dual_mul_f32 v78, v19, v84 :: v_dual_fmac_f32 v79, v80, v79
	v_rcp_f32_e32 v80, v83
	v_div_scale_f32 v81, s1, v44, v61, v44
	v_div_scale_f32 v87, null, v61, v61, v40
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v88, v81, v79
	v_div_fmas_f32 v21, v21, v91, v85
	v_fma_f32 v85, -v82, v78, v19
	v_rcp_f32_e32 v90, v87
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v83, v80, 1.0
	v_div_fixup_f32 v47, v18, v61, v47
	v_fma_f32 v18, -v86, v88, v81
	v_fmac_f32_e32 v78, v85, v84
	v_div_scale_f32 v85, null, v61, v61, v38
	v_div_fixup_f32 v48, v21, v61, v48
	v_fmac_f32_e32 v80, v89, v80
	v_div_scale_f32 v21, s2, v39, v61, v39
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v87, v90, 1.0
	v_fma_f32 v19, -v82, v78, v19
	v_fmac_f32_e32 v88, v18, v79
	v_rcp_f32_e32 v82, v85
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v18, v21, v80
	v_fmac_f32_e32 v90, v89, v90
	v_div_scale_f32 v89, s3, v40, v61, v40
	v_div_fmas_f32 v19, v19, v84, v78
	v_fma_f32 v78, -v86, v88, v81
	v_div_scale_f32 v91, null, v61, v61, v37
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v81, -v83, v18, v21
	v_mul_f32_e32 v84, v89, v90
	v_fma_f32 v86, -v85, v82, 1.0
	v_div_fmas_f32 v78, v78, v79, v88
	v_rcp_f32_e32 v79, v91
	v_fmac_f32_e32 v18, v81, v80
	v_fma_f32 v81, -v87, v84, v89
	v_fmac_f32_e32 v82, v86, v82
	v_div_scale_f32 v86, s0, v38, v61, v38
	v_div_fixup_f32 v43, v19, v61, v43
	v_div_fixup_f32 v44, v78, v61, v44
	v_fma_f32 v19, -v83, v18, v21
	v_fmac_f32_e32 v84, v81, v90
	v_mul_f32_e32 v21, v86, v82
	v_fma_f32 v78, -v91, v79, 1.0
	v_div_scale_f32 v81, null, v61, v61, v35
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v83, s1, v37, v61, v37
	v_div_fmas_f32 v18, v19, v80, v18
	v_fma_f32 v19, -v87, v84, v89
	v_fma_f32 v80, -v85, v21, v86
	v_fmac_f32_e32 v79, v78, v79
	v_rcp_f32_e32 v78, v81
	v_div_scale_f32 v87, null, v61, v61, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v21, v80, v82
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v39, v18, v61, v39
	v_rcp_f32_e32 v80, v87
	v_div_fmas_f32 v19, v19, v90, v84
	v_mul_f32_e32 v84, v83, v79
	v_fma_f32 v18, -v85, v21, v86
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v81, v78, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v40, v19, v61, v40
	v_fma_f32 v19, -v91, v84, v83
	v_div_scale_f32 v85, s2, v35, v61, v35
	v_fmac_f32_e32 v78, v88, v78
	v_fma_f32 v86, -v87, v80, 1.0
	v_div_scale_f32 v88, null, v61, v61, v34
	v_div_fmas_f32 v18, v18, v82, v21
	v_fmac_f32_e32 v84, v19, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v80, v86, v80
	v_rcp_f32_e32 v21, v88
	v_div_scale_f32 v86, null, v61, v61, v33
	v_mul_f32_e32 v19, v85, v78
	v_div_scale_f32 v82, s0, v36, v61, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v90, v86
	v_div_fixup_f32 v18, v18, v61, v38
	v_fma_f32 v38, -v91, v84, v83
	v_fma_f32 v83, -v81, v19, v85
	v_mul_f32_e32 v89, v82, v80
	v_fma_f32 v91, -v88, v21, 1.0
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v43, v43
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v38, v38, v79, v84
	v_fmac_f32_e32 v19, v83, v78
	v_fma_f32 v79, -v87, v89, v82
	v_fmac_f32_e32 v21, v91, v21
	v_div_scale_f32 v83, s1, v34, v61, v34
	v_fma_f32 v84, -v86, v90, 1.0
	v_div_fixup_f32 v37, v38, v61, v37
	v_fma_f32 v38, -v81, v19, v85
	v_fmac_f32_e32 v89, v79, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v79, v83, v21 :: v_dual_fmac_f32 v90, v84, v90
	v_div_scale_f32 v84, null, v61, v61, v31
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v81, s3, v33, v61, v33
	v_div_fmas_f32 v19, v38, v78, v19
	v_fma_f32 v38, -v87, v89, v82
	v_fma_f32 v78, -v88, v79, v83
	v_rcp_f32_e32 v82, v84
	v_div_scale_f32 v87, null, v61, v61, v32
	v_mul_f32_e32 v85, v81, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v79, v78, v21
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v78, v87
	v_div_fmas_f32 v38, v38, v80, v89
	v_fma_f32 v80, -v86, v85, v81
	v_div_fixup_f32 v19, v19, v61, v35
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v84, v82, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v35, v38, v61, v36
	v_fma_f32 v36, -v88, v79, v83
	v_fmac_f32_e32 v85, v80, v90
	v_fmac_f32_e32 v82, v89, v82
	v_div_scale_f32 v38, s0, v31, v61, v31
	v_fma_f32 v80, -v87, v78, 1.0
	v_div_fmas_f32 v21, v36, v21, v79
	v_fma_f32 v36, -v86, v85, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v79, v38, v82
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v78, v80, v78
	v_div_scale_f32 v80, null, v17, v17, v30
	v_div_fmas_f32 v36, v36, v90, v85
	v_fma_f32 v85, -v84, v79, v38
	v_div_scale_f32 v81, s1, v32, v61, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v83, v80
	v_div_scale_f32 v88, null, v17, v17, v28
	v_fmac_f32_e32 v79, v85, v82
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v86, v81, v78
	v_div_fixup_f32 v21, v21, v61, v34
	v_div_fixup_f32 v33, v36, v61, v33
	v_rcp_f32_e32 v36, v88
	v_fma_f32 v38, -v84, v79, v38
	v_div_scale_f32 v84, null, v17, v17, v29
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v85, -v80, v83, 1.0
	v_fma_f32 v34, -v87, v86, v81
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v90, null, v17, v17, v27
	v_fmac_f32_e32 v83, v85, v83
	v_rcp_f32_e32 v85, v84
	v_fmac_f32_e32 v86, v34, v78
	v_div_fmas_f32 v38, v38, v82, v79
	v_div_scale_f32 v34, s2, v30, v17, v30
	v_fma_f32 v89, -v88, v36, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v79, -v87, v86, v81
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v81, v34, v83
	v_div_scale_f32 v82, s0, v28, v17, v28
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v87, -v84, v85, 1.0
	v_fmac_f32_e32 v36, v89, v36
	v_rcp_f32_e32 v92, v90
	v_div_fmas_f32 v78, v79, v78, v86
	v_fma_f32 v89, -v80, v81, v34
	v_fmac_f32_e32 v85, v87, v85
	v_div_scale_f32 v87, s3, v29, v17, v29
	v_mul_f32_e32 v91, v82, v36
	v_div_fixup_f32 v31, v38, v61, v31
	v_div_fixup_f32 v32, v78, v61, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v86, v87, v85
	v_div_scale_f32 v78, null, v17, v17, v26
	v_fmac_f32_e32 v81, v89, v83
	v_fma_f32 v79, -v88, v91, v82
	v_fma_f32 v38, -v84, v86, v87
	v_fma_f32 v61, -v90, v92, 1.0
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v34, -v80, v81, v34
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v91, v79, v36 :: v_dual_fmac_f32 v86, v38, v85
	v_rcp_f32_e32 v38, v78
	v_fmac_f32_e32 v92, v61, v92
	v_div_scale_f32 v61, s1, v27, v17, v27
	v_div_fmas_f32 v34, v34, v83, v81
	v_fma_f32 v79, -v88, v91, v82
	v_div_scale_f32 v81, null, v17, v17, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v80, v61, v92
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v82, -v78, v38, 1.0
	v_div_fmas_f32 v36, v79, v36, v91
	v_fma_f32 v79, -v84, v86, v87
	v_rcp_f32_e32 v83, v81
	v_fma_f32 v84, -v90, v80, v61
	v_fmac_f32_e32 v38, v82, v38
	v_div_scale_f32 v82, s0, v26, v17, v26
	v_div_fixup_f32 v30, v34, v17, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v84, v92
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v34, v82, v38
	v_div_fmas_f32 v79, v79, v85, v86
	v_div_fixup_f32 v28, v36, v17, v28
	v_fma_f32 v36, -v81, v83, 1.0
	v_fma_f32 v61, -v90, v80, v61
	v_fma_f32 v84, -v78, v34, v82
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v29, v79, v17, v29
	v_div_scale_f32 v79, null, v17, v17, v15
	v_fmac_f32_e32 v83, v36, v83
	v_div_scale_f32 v36, s2, v25, v17, v25
	v_div_fmas_f32 v61, v61, v92, v80
	v_fmac_f32_e32 v34, v84, v38
	v_rcp_f32_e32 v85, v79
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v80, v36, v83
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v27, v61, v17, v27
	v_fma_f32 v61, -v78, v34, v82
	v_div_scale_f32 v84, null, v17, v17, v16
	v_fma_f32 v78, -v81, v80, v36
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v35, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v34, v61, v38, v34
	v_div_scale_f32 v38, null, v17, v17, v23
	v_fma_f32 v82, -v79, v85, 1.0
	v_rcp_f32_e32 v86, v84
	v_fmac_f32_e32 v80, v78, v83
	v_rcp_f32_e32 v78, v38
	v_div_scale_f32 v61, s0, v15, v17, v15
	v_fmac_f32_e32 v85, v82, v85
	v_div_scale_f32 v82, null, v17, v17, v24
	v_div_fixup_f32 v26, v34, v17, v26
	v_fma_f32 v36, -v81, v80, v36
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v84, v86, 1.0
	v_rcp_f32_e32 v88, v82
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v87, -v38, v78, 1.0
	v_mul_f32_e32 v81, v61, v85
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v86, v34, v86
	v_div_scale_f32 v34, s1, v16, v17, v16
	v_fmac_f32_e32 v78, v87, v78
	v_div_scale_f32 v87, null, v17, v17, v14
	v_div_fmas_f32 v36, v36, v83, v80
	v_fma_f32 v80, -v79, v81, v61
	v_mul_f32_e32 v83, v34, v86
	v_div_scale_f32 v89, s2, v23, v17, v23
	v_fma_f32 v90, -v82, v88, 1.0
	v_rcp_f32_e32 v91, v87
	v_fmac_f32_e32 v81, v80, v85
	v_fma_f32 v80, -v84, v83, v34
	v_mul_f32_e32 v92, v89, v78
	v_fmac_f32_e32 v88, v90, v88
	v_div_scale_f32 v90, s3, v24, v17, v24
	v_div_fixup_f32 v25, v36, v17, v25
	v_fma_f32 v36, -v79, v81, v61
	v_fmac_f32_e32 v83, v80, v86
	v_fma_f32 v61, -v38, v92, v89
	v_mul_f32_e32 v79, v90, v88
	v_fma_f32 v80, -v87, v91, 1.0
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v34, -v84, v83, v34
	v_fmac_f32_e32 v92, v61, v78
	v_fma_f32 v61, -v82, v79, v90
	v_fmac_f32_e32 v91, v80, v91
	v_div_scale_f32 v80, s0, v14, v17, v14
	v_div_fmas_f32 v36, v36, v85, v81
	v_div_scale_f32 v81, null, v17, v17, v9
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v38, -v38, v92, v89
	v_fmac_f32_e32 v79, v61, v88
	v_mul_f32_e32 v61, v80, v91
	v_div_fmas_f32 v34, v34, v86, v83
	v_rcp_f32_e32 v83, v81
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v15, v36, v17, v15
	v_div_fmas_f32 v38, v38, v78, v92
	v_fma_f32 v78, -v82, v79, v90
	v_fma_f32 v82, -v87, v61, v80
	v_div_fixup_f32 v16, v34, v17, v16
	v_div_scale_f32 v36, null, v17, v17, v10
	v_div_fixup_f32 v23, v38, v17, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v61, v82, v91
	v_fma_f32 v38, -v81, v83, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v85, null, v17, v17, v13
	v_fma_f32 v34, -v87, v61, v80
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v83, v38, v83
	v_div_scale_f32 v38, null, v17, v17, v11
	v_div_fmas_f32 v78, v78, v88, v79
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v87, v85
	v_div_fmas_f32 v34, v34, v91, v61
	v_rcp_f32_e32 v61, v36
	v_rcp_f32_e32 v80, v38
	v_div_scale_f32 v79, vcc_lo, v9, v17, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v14, v34, v17, v14
	v_div_fixup_f32 v24, v78, v17, v24
	v_div_scale_f32 v78, null, v17, v17, v12
	v_mul_f32_e32 v84, v79, v83
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v25, v25
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v34, -v36, v61, 1.0
	v_fma_f32 v86, -v38, v80, 1.0
	v_rcp_f32_e32 v82, v78
	v_fma_f32 v88, -v81, v84, v79
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v16, v16
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v61, v34, v61
	v_div_scale_f32 v34, s0, v10, v17, v10
	v_fmac_f32_e32 v80, v86, v80
	v_div_scale_f32 v86, s1, v11, v17, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v90, v34, v61
	v_fmac_f32_e32 v84, v88, v83
	v_fma_f32 v89, -v78, v82, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v92, v86, v80
	v_fma_f32 v91, -v85, v87, 1.0
	v_fma_f32 v88, -v36, v90, v34
	v_fma_f32 v79, -v81, v84, v79
	v_fmac_f32_e32 v82, v89, v82
	v_fma_f32 v81, -v38, v92, v86
	v_div_scale_f32 v89, s2, v12, v17, v12
	v_fmac_f32_e32 v90, v88, v61
	v_div_fmas_f32 v79, v79, v83, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v92, v81, v80
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	v_fma_f32 v34, -v36, v90, v34
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v64, v64, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v38, -v38, v92, v86
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v34, v34, v61, v90
	s_mov_b32 vcc_lo, s1
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v35, v35, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v38, v38, v80, v92
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v90, v25
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s3, v13, v17, v13
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v92, v16
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v93, v89, v82
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v80, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_dual_mul_f32 v94, v91, v87 :: v_dual_and_b32 v35, 15, v64
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v64, 15, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v88, -v78, v93, v89
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v36, -v85, v94, v91
	v_div_fixup_f32 v10, v34, v17, v10
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v34, v42
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v93, v88, v82
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v42, v50
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v94, v36, v87
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v50, v60
	v_rndne_f32_e32 v60, v67
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v36, -v78, v93, v89
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v67, v77
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v26, v26
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v61, -v85, v94, v91
	v_div_fmas_f32 v36, v36, v82, v93
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v67, v67, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v12, v36, v17, v12
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v36, v45
	v_rndne_f32_e32 v45, v54
	v_rndne_f32_e32 v54, v62
	v_rndne_f32_e32 v62, v71
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v89, v26
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v9, v79, v17, v9
	v_div_fixup_f32 v11, v38, v17, v11
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v62, v62, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v71, v72
	v_rndne_f32_e32 v72, v73
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v9, v9
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v62, v62
	v_med3_f32 v45, v45, s0, 0x40e00000
	v_med3_f32 v43, v43, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v38, v46
	v_rndne_f32_e32 v46, v55
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v26, 15, v62
	v_and_b32_e32 v62, 15, v90
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v61, v61, v87, v94
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v87, v29
	v_and_b32_e32 v29, 15, v67
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	scratch_load_b32 v67, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v44, v44
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v13, v61, v17, v13
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v17, v20
	v_rndne_f32_e32 v61, v70
	v_rndne_f32_e32 v70, v74
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v32, v32
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v17, v17, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v12, v12
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v70, v70, s0, 0x40e00000
	v_med3_f32 v71, v71, s0, 0x40e00000
	v_med3_f32 v72, v72, s0, 0x40e00000
	v_med3_f32 v69, v69, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v73, v43
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v20, v22
	v_rndne_f32_e32 v22, v41
	v_rndne_f32_e32 v41, v49
	v_rndne_f32_e32 v49, v57
	v_rndne_f32_e32 v55, v63
	v_rndne_f32_e32 v57, v66
	v_rndne_f32_e32 v63, v75
	v_rndne_f32_e32 v66, v76
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v27, v27
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v46, v46, s0, 0x40e00000
	v_med3_f32 v44, v44, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v96, v9
	v_and_b32_e32 v9, 15, v17
	v_and_b32_e32 v17, 15, v45
	v_and_b32_e32 v45, 15, v73
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v73, 16, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v13, v13
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_med3_f32 v38, v38, s0, 0x40e00000
	v_med3_f32 v41, v41, s0, 0x40e00000
	v_med3_f32 v42, v42, s0, 0x40e00000
	v_med3_f32 v57, v57, s0, 0x40e00000
	v_med3_f32 v60, v60, s0, 0x40e00000
	v_med3_f32 v61, v61, s0, 0x40e00000
	v_med3_f32 v63, v63, s0, 0x40e00000
	v_med3_f32 v66, v66, s0, 0x40e00000
	v_med3_f32 v58, v58, s0, 0x40e00000
	v_med3_f32 v59, v59, s0, 0x40e00000
	v_med3_f32 v51, v51, s0, 0x40e00000
	v_med3_f32 v52, v52, s0, 0x40e00000
	v_med3_f32 v47, v47, s0, 0x40e00000
	v_med3_f32 v48, v48, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v74, v44
	v_cvt_i32_f32_e32 v83, v31
	v_cvt_i32_f32_e32 v84, v32
	v_cvt_i32_f32_e32 v85, v30
	v_cvt_i32_f32_e32 v99, v12
	v_and_b32_e32 v12, 15, v34
	v_and_b32_e32 v30, 15, v70
	v_and_b32_e32 v31, 15, v71
	v_and_b32_e32 v32, 15, v72
	v_and_b32_e32 v34, 15, v69
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v69, 4, v239
	v_lshlrev_b32_e32 v71, 6, v73
	v_lshlrev_b32_e32 v72, 6, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v33, v33
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v49, v49, s0, 0x40e00000
	v_med3_f32 v50, v50, s0, 0x40e00000
	v_med3_f32 v54, v54, s0, 0x40e00000
	v_med3_f32 v55, v55, s0, 0x40e00000
	v_med3_f32 v68, v68, s0, 0x40e00000
	v_med3_f32 v65, v65, s0, 0x40e00000
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v40, v40
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v77, v18
	v_cvt_i32_f32_e32 v86, v28
	v_cvt_i32_f32_e32 v88, v27
	v_and_b32_e32 v18, 15, v46
	v_and_b32_e32 v46, 15, v74
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_xor_b32_e32 v7, v69, v7
	v_and_or_b32 v4, 0x1b00, v72, v4
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v56, v56, s0, 0x40e00000
	v_med3_f32 v53, v53, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v78, v37
	v_cvt_i32_f32_e32 v79, v19
	v_cvt_i32_f32_e32 v93, v23
	v_cvt_i32_f32_e32 v94, v24
	v_cvt_i32_f32_e32 v95, v14
	v_med3_f32 v39, v39, s0, 0x40e00000
	v_med3_f32 v40, v40, s0, 0x40e00000
	v_cvt_i32_f32_e32 v91, v15
	v_cvt_i32_f32_e32 v97, v10
	v_cvt_i32_f32_e32 v98, v11
	v_cvt_i32_f32_e32 v100, v13
	v_and_b32_e32 v10, 15, v20
	v_and_b32_e32 v11, 15, v22
	v_and_b32_e32 v13, 15, v36
	v_and_b32_e32 v14, 15, v38
	v_and_b32_e32 v15, 15, v41
	v_and_b32_e32 v16, 15, v42
	v_and_b32_e32 v23, 15, v57
	v_and_b32_e32 v24, 15, v60
	v_and_b32_e32 v25, 15, v61
	v_and_b32_e32 v27, 15, v63
	v_and_b32_e32 v28, 15, v66
	v_and_b32_e32 v37, 15, v58
	v_and_b32_e32 v38, 15, v59
	v_and_b32_e32 v41, 15, v51
	v_and_b32_e32 v42, 15, v52
	v_and_b32_e32 v43, 15, v47
	v_and_b32_e32 v44, 15, v48
	v_and_b32_e32 v57, 15, v85
	v_and_b32_e32 v58, 15, v86
	v_and_b32_e32 v59, 15, v87
	v_and_b32_e32 v60, 15, v88
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt vmcnt(1)
	v_xad_u32 v4, v4, v101, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v81, v21
	v_cvt_i32_f32_e32 v82, v33
	v_and_b32_e32 v19, 15, v49
	v_and_b32_e32 v20, 15, v50
	v_and_b32_e32 v21, 15, v54
	v_and_b32_e32 v22, 15, v55
	v_and_b32_e32 v33, 15, v68
	v_and_b32_e32 v36, 15, v65
	v_and_b32_e32 v49, 15, v77
	v_and_b32_e32 v50, 15, v78
	v_and_b32_e32 v51, 15, v79
	v_and_b32_e32 v52, 15, v80
	v_and_b32_e32 v65, 15, v93
	v_and_b32_e32 v66, 15, v94
	v_and_b32_e32 v68, 15, v96
	v_cvt_i32_f32_e32 v75, v39
	v_cvt_i32_f32_e32 v76, v40
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v39, 15, v56
	v_and_b32_e32 v40, 15, v53
	v_and_b32_e32 v47, 15, v75
	v_and_b32_e32 v48, 15, v76
	v_and_b32_e32 v53, 15, v81
	v_and_b32_e32 v54, 15, v82
	v_and_b32_e32 v55, 15, v83
	v_and_b32_e32 v56, 15, v84
	v_and_b32_e32 v61, 15, v89
	v_and_b32_e32 v63, 15, v91
	v_and_b32_e32 v69, 15, v97
	v_and_b32_e32 v72, 15, v100
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s35, 31
.Ltmp71:
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshrrev_b32_e32 v8, 4, v101
.Ltmp72:
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s33, 7
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 86 14 is_stmt 0               ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v8, s0, v8
	s_mul_i32 s2, s34, s0
	.loc	1 82 15 is_stmt 1               ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v70, 10, v67
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v67, 15, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v74, 0, v70, v71
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v70, 15, v98
	v_and_b32_e32 v71, 15, v99
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v6, v74, v7, v6
	ds_store_b128 v6, v[9:12]
	ds_store_b128 v6, v[17:20] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v4
	ds_load_b128 v[17:20], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[25:28]
	ds_store_b128 v6, v[33:36] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[25:28], v4
	ds_load_b128 v[33:36], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[41:44]
	ds_store_b128 v6, v[49:52] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[41:44], v4
	ds_load_b128 v[49:52], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[57:60]
	ds_store_b128 v6, v[65:68] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[57:60], v4
	ds_load_b128 v[65:68], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[13:16]
	ds_store_b128 v6, v[21:24] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[13:16], v4
	ds_load_b128 v[21:24], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[29:32]
	ds_store_b128 v6, v[37:40] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[29:32], v4
	ds_load_b128 v[37:40], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[45:48]
	ds_store_b128 v6, v[53:56] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[45:48], v4
	ds_load_b128 v[53:56], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[61:64]
	ds_store_b128 v6, v[69:72] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[61:64], v4
	ds_load_b128 v[69:72], v4 offset:1024
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v4, v17, 4, v9
	v_lshl_or_b32 v6, v18, 4, v10
	v_lshl_or_b32 v7, v19, 4, v11
	v_lshl_or_b32 v9, v20, 4, v12
	v_lshl_or_b32 v10, v21, 4, v13
	v_lshl_or_b32 v11, v22, 4, v14
	v_lshl_or_b32 v12, v23, 4, v15
	v_lshl_or_b32 v13, v24, 4, v16
	v_lshl_or_b32 v17, v36, 4, v28
	.loc	1 85 46                         ; generate_amdgcn.py:85:46 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v36, 3, v239
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v14, v33, 4, v25
	v_lshl_or_b32 v15, v34, 4, v26
	v_lshl_or_b32 v16, v35, 4, v27
	v_lshl_or_b32 v18, v37, 4, v29
	v_lshl_or_b32 v19, v38, 4, v30
	v_lshl_or_b32 v20, v39, 4, v31
	v_lshl_or_b32 v21, v40, 4, v32
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v38, s2, s1, v36
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v9.l
	v_and_b16 v2.l, 0xff, v7.l
	v_lshlrev_b16 v3.l, 8, v6.l
	v_and_b16 v4.l, 0xff, v4.l
	v_lshlrev_b16 v4.h, 8, v13.l
	v_and_b16 v5.l, 0xff, v12.l
	v_lshlrev_b16 v6.l, 8, v11.l
	v_and_b16 v6.h, 0xff, v10.l
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s0, 4
	s_lshl_b32 s2, s0, 5
	s_mul_i32 s0, s0, 48
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v22, v49, 4, v41
	v_lshl_or_b32 v23, v50, 4, v42
	v_lshl_or_b32 v26, v53, 4, v45
	v_lshl_or_b32 v27, v54, 4, v46
	v_lshl_or_b32 v28, v55, 4, v47
	v_lshl_or_b32 v29, v56, 4, v48
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_add_nc_u32_e32 v40, v38, v8
	v_add3_u32 v41, v8, s1, v38
	v_add3_u32 v42, v8, s2, v38
	v_add3_u32 v38, v8, s0, v38
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v7.h, v2.l, v1.l
	v_or_b16 v7.l, v4.l, v3.l
	v_or_b16 v8.h, v5.l, v4.h
	v_or_b16 v8.l, v6.h, v6.l
	v_lshlrev_b16 v1.l, 8, v17.l
	v_and_b16 v2.l, 0xff, v16.l
	v_lshlrev_b16 v3.l, 8, v15.l
	v_and_b16 v4.l, 0xff, v14.l
	v_lshlrev_b16 v4.h, 8, v21.l
	v_and_b16 v5.l, 0xff, v20.l
	v_lshlrev_b16 v6.l, 8, v19.l
	v_and_b16 v6.h, 0xff, v18.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v30, v65, 4, v57
	v_lshl_or_b32 v31, v66, 4, v58
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v34, v69, 4, v61
	v_lshl_or_b32 v35, v70, 4, v62
	v_lshl_or_b32 v37, v71, 4, v63
	v_lshl_or_b32 v39, v72, 4, v64
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[7:8], v40, s[8:11], 0 offen
	v_or_b16 v7.h, v2.l, v1.l
	v_or_b16 v7.l, v4.l, v3.l
	v_or_b16 v8.h, v5.l, v4.h
	v_or_b16 v8.l, v6.h, v6.l
	v_lshlrev_b16 v3.l, 8, v23.l
	v_and_b16 v4.l, 0xff, v22.l
	v_lshlrev_b16 v4.h, 8, v29.l
	v_and_b16 v5.l, 0xff, v28.l
	v_lshlrev_b16 v6.l, 8, v27.l
	v_and_b16 v6.h, 0xff, v26.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v24, v51, 4, v43
	v_lshl_or_b32 v25, v52, 4, v44
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[7:8], v41, s[8:11], 0 offen
	v_or_b16 v7.l, v4.l, v3.l
	v_or_b16 v8.h, v5.l, v4.h
	v_or_b16 v8.l, v6.h, v6.l
	v_lshlrev_b16 v3.l, 8, v31.l
	v_and_b16 v4.l, 0xff, v30.l
	v_lshlrev_b16 v4.h, 8, v39.l
	v_and_b16 v5.l, 0xff, v37.l
	v_lshlrev_b16 v6.l, 8, v35.l
	v_and_b16 v6.h, 0xff, v34.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v32, v67, 4, v59
	v_lshl_or_b32 v33, v68, 4, v60
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b16 v1.l, 8, v25.l
	v_and_b16 v2.l, 0xff, v24.l
	v_or_b16 v9.l, v4.l, v3.l
	v_or_b16 v10.h, v5.l, v4.h
	v_or_b16 v10.l, v6.h, v6.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_lshrrev_b32_e32 v4, 4, v0
	v_lshrrev_b32_e32 v6, 2, v73
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	v_or_b16 v7.h, v2.l, v1.l
	v_lshlrev_b16 v1.l, 8, v33.l
	v_and_b16 v2.l, 0xff, v32.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v4, 2, v4
	v_add_nc_u32_e32 v6, 0, v6
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s35, 31
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[7:8], v42, s[8:11], 0 offen
	v_or_b16 v9.h, v2.l, v1.l
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_add_nc_u32_e32 v7, 0, v36
	v_mov_b16_e32 v2.l, v5.h
	v_mov_b16_e32 v1.l, v3.h
	v_add3_u32 v4, v6, v4, v36
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v3, v0, 63, s34
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	buffer_store_b64 v[9:10], v38, s[8:11], 0 offen
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v7, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v4
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v2, v3, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v0, 0xc0, v0
	s_and_b32 s9, s23, 0xffff
	s_mov_b32 s8, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v2, v2, s33, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v2, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[8:11], 0 offen
.Ltmp73:
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_endpgm
.Ltmp74:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 80
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
		.amdhsa_next_free_sgpr 49
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.numbered_sgpr, 49
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.private_seg_size, 80
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 19352
; TotalNumSgprs: 51
; NumVgprs: 256
; ScratchSize: 80
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 51
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
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
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
	.byte	6                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	7                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
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
	.byte	1                               ; Abbrev [1] 0xb:0x86 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x60 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	347                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	346                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	363                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x68:0x27 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	446                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x75:0x19 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	75                              ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x81:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
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
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk
    .private_segment_fixed_size: 80
    .sgpr_count:     51
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc64_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 19
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
