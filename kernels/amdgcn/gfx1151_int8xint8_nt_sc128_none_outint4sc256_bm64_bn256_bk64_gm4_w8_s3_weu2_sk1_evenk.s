	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 338 0                         ; generate_amdgcn.py:338:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s13, s[0:1], 0x38
.Ltmp0:
	.loc	1 349 16 prologue_end           ; generate_amdgcn.py:349:16
	s_abs_i32 s6, s2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 349 16                        ; generate_amdgcn.py:349:16
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
	.loc	1 350 19                        ; generate_amdgcn.py:350:19
	s_lshl_b32 s17, s14, 2
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_mul_i32 s14, s14, s12
	.loc	1 351 31                        ; generate_amdgcn.py:351:31
	s_sub_i32 s4, s7, s17
	.loc	1 352 29                        ; generate_amdgcn.py:352:29
	s_sub_i32 s2, s2, s14
	.loc	1 351 20                        ; generate_amdgcn.py:351:20
	s_min_i32 s16, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_abs_i32 s15, s16
	s_abs_i32 s12, s2
	s_cvt_f32_u32 s18, s15
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s18
	v_readfirstlane_b32 s18, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[6:7]
	s_sub_i32 s7, 0, s15
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_mov_b64 s[24:25], s[10:11]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s18
	s_mul_i32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s7, s6, s7
	s_add_i32 s6, s6, s7
	s_mov_b32 s7, 0x31027000
	s_mul_hi_u32 s18, s12, s6
	s_xor_b32 s6, s2, s16
	s_mul_i32 s19, s18, s15
	s_ashr_i32 s14, s6, 31
	s_sub_i32 s12, s12, s19
	s_add_i32 s19, s18, 1
	s_sub_i32 s20, s12, s15
	s_cmp_ge_u32 s12, s15
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s18, s19, s18
	s_cselect_b32 s12, s20, s12
	s_add_i32 s19, s18, 1
	s_cmp_ge_u32 s12, s15
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_mov_b32 s30, s6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_cselect_b32 s12, s19, s18
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:417:30 ]
	s_add_i32 s18, s13, 0x7f
.Ltmp13:
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_xor_b32 s15, s12, s14
	.loc	1 398 22                        ; generate_amdgcn.py:398:22
	s_lshl_b32 s26, s3, 6
	.loc	1 353 13                        ; generate_amdgcn.py:353:13
	s_sub_i32 s33, s15, s14
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_mov_b32 s31, s7
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_mul_i32 s12, s33, s16
.Ltmp14:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:363:28 ]
	s_add_i32 s16, s13, 63
.Ltmp15:
	.loc	1 352 28                        ; generate_amdgcn.py:352:28
	s_sub_i32 s2, s2, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 352 13 is_stmt 0              ; generate_amdgcn.py:352:13
	s_add_i32 s2, s2, s17
	.loc	1 356 14 is_stmt 1              ; generate_amdgcn.py:356:14
	s_lshl_b32 s17, s33, 8
	.loc	1 355 14                        ; generate_amdgcn.py:355:14
	s_lshl_b32 s34, s2, 6
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:417:30 ]
	s_ashr_i32 s2, s18, 31
	s_lshr_b32 s2, s2, 25
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s18, s18, s2
.Ltmp17:
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	s_mul_i32 s2, s17, s13
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_gt_i32 s16, 63
	s_cselect_b32 s3, -1, 0
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	s_add_i32 s12, s2, s26
	v_mov_b32_e32 v238, v0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_and_b32 s29, s29, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s16, 0x7f
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v245, 3, v238
	v_lshrrev_b32_e32 v2, 2, v238
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s2, -1, 0
	.loc	1 398 17                        ; generate_amdgcn.py:398:17
	s_add_i32 s36, s26, 64
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_lshlrev_b32_e32 v244, 4, v245
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 356 32                        ; generate_amdgcn.py:356:32
	v_or_b32_e32 v3, 0xc0, v2
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mad_u64_u32 v[4:5], null, s13, v2, v[244:245]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_mul_lo_u32 v1, s13, v3
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_mad_u64_u32 v[5:6], null, s34, s13, v[4:5]
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_lshl_add_u32 v7, s13, 6, v4
	v_lshl_add_u32 v8, s13, 7, v4
	v_add_nc_u32_e32 v4, s12, v4
	v_add3_u32 v1, v1, v244, s12
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v9, s12, v7
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v6, s26, v5
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v10, s12, v8
	s_add_i32 s12, s12, 64
	.loc	1 404 30                        ; generate_amdgcn.py:404:30
	v_add_nc_u32_e32 v5, s36, v5
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_cndmask_b32_e64 v13, 0x80000000, v4, s3
	.loc	1 406 30 is_stmt 0              ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v4, 64, v4
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v7, s12, v7
	v_add_nc_u32_e32 v8, s12, v8
	.loc	1 406 22 is_stmt 0              ; generate_amdgcn.py:406:22
	v_cndmask_b32_e64 v19, 0x80000000, v1, s3
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v1, 64, v1
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_cndmask_b32_e64 v18, 0x80000000, v10, s3
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_cndmask_b32_e64 v17, 0x80000000, v9, s3
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[9:12], v6, s[4:7], 0 offen
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_cndmask_b32_e64 v6, 0x80000000, v7, s2
	v_cndmask_b32_e64 v7, 0x80000000, v8, s2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_clause 0x3
	buffer_load_b128 v[13:16], v13, s[28:31], 0 offen
	buffer_load_b128 v[23:26], v17, s[28:31], 0 offen
	buffer_load_b128 v[27:30], v18, s[28:31], 0 offen
	buffer_load_b128 v[31:34], v19, s[28:31], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[35:38], v5, s[4:7], 0 offen
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_clause 0x3
	buffer_load_b128 v[39:42], v4, s[28:31], 0 offen
	buffer_load_b128 v[43:46], v6, s[28:31], 0 offen
	buffer_load_b128 v[47:50], v7, s[28:31], 0 offen
	buffer_load_b128 v[51:54], v1, s[28:31], 0 offen
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v5, 1, v238
	v_lshlrev_b32_e32 v0, 4, v238
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_and_b32_e32 v242, 15, v238
	v_lshlrev_b32_e32 v20, 5, v238
	s_mov_b32 s12, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_and_b32_e32 v1, 48, v5
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmpk_gt_i32 s16, 0xbf
	.loc	1 355 32                        ; generate_amdgcn.py:355:32
	v_or_b32_e32 v6, 16, v242
	v_or_b32_e32 v7, 32, v242
	v_or_b32_e32 v8, 48, v242
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v93, v0, v1
	v_lshlrev_b32_e32 v92, 6, v242
	scratch_store_b32 off, v0, off offset:8 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v93
	s_waitcnt vmcnt(9)
	ds_store_b128 v1, v[9:12] offset:32768
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_waitcnt vmcnt(8)
	ds_store_b128 v1, v[13:16]
	s_waitcnt vmcnt(7)
	ds_store_b128 v1, v[23:26] offset:4096
	s_waitcnt vmcnt(6)
	ds_store_b128 v1, v[27:30] offset:8192
	s_waitcnt vmcnt(5)
	ds_store_b128 v1, v[31:34] offset:12288
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b128 v1, v[35:38] offset:36864
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_waitcnt vmcnt(3)
	ds_store_b128 v1, v[39:42] offset:16384
	s_waitcnt vmcnt(2)
	ds_store_b128 v1, v[43:46] offset:20480
	s_waitcnt vmcnt(1)
	ds_store_b128 v1, v[47:50] offset:24576
	s_waitcnt vmcnt(0)
	ds_store_b128 v1, v[51:54] offset:28672
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_lshlrev_b32_e32 v1, 5, v238
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_lshlrev_b32_e32 v4, 6, v242
	s_mov_b32 s10, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_and_b32_e32 v16, 0x1c00, v1
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s10, -1
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr16
.LBB0_3:                                ; %Flow96
	s_load_b128 s[20:23], s[0:1], 0x20
	v_or_b32_e32 v9, s34, v242
	v_or_b32_e32 v6, s34, v6
	v_or_b32_e32 v7, s34, v7
	v_or_b32_e32 v8, s34, v8
	v_and_b32_e32 v0, 0xf0, v238
	s_ashr_i32 s0, s18, 7
	v_or_b32_e32 v42, s17, v238
	v_mul_lo_u32 v43, v9, s0
	v_mul_lo_u32 v36, v6, s0
	v_mul_lo_u32 v37, v7, s0
	v_mul_lo_u32 v38, v8, s0
	v_lshlrev_b32_e32 v14, 2, v0
	v_and_b32_e32 v13, 28, v5
	v_lshlrev_b32_e32 v15, 1, v0
	s_and_not1_b32 vcc_lo, exec_lo, s10
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
.Ltmp18:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:363:28 ]
	s_lshr_b32 s1, s16, 6
.Ltmp19:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_lshl_b32 s10, s15, 8
	s_lshl_b32 s11, s14, 8
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_lshlrev_b32_e32 v1, 3, v238
	v_or_b32_e32 v3, s10, v3
	v_dual_mov_b32 v247, v238 :: v_dual_and_b32 v16, 0x1c00, v20
	v_dual_mov_b32 v23, 0 :: v_dual_and_b32 v4, 32, v20
	s_delay_alu instid0(VALU_DEP_4)
	v_and_or_b32 v94, v1, 48, v92
	v_or_b32_e32 v1, s10, v2
	v_subrev_nc_u32_e32 v3, s11, v3
	v_add_nc_u32_e32 v2, s34, v2
	v_add3_u32 v9, 0, v14, v4
	v_or_b32_e32 v95, v94, v16
	v_subrev_nc_u32_e32 v1, s11, v1
	v_mul_lo_u32 v3, s13, v3
	v_mul_lo_u32 v2, s13, v2
	v_xor_b32_e32 v96, 16, v94
	v_xor_b32_e32 v97, 32, v94
	v_or_b32_e32 v5, 0x80, v1
	v_or_b32_e32 v6, 64, v1
	v_mul_lo_u32 v1, s13, v1
	v_xor_b32_e32 v98, 48, v94
	v_add3_u32 v102, v3, v244, 0x80
	v_mul_lo_u32 v5, s13, v5
	v_mul_lo_u32 v6, s13, v6
	s_mov_b32 s13, s12
	v_add3_u32 v106, v2, v244, 0x80
	v_xor_b32_e32 v99, 16, v95
	v_add3_u32 v105, v1, v244, 0x80
	v_xor_b32_e32 v100, 32, v95
	v_xor_b32_e32 v101, 48, v95
	v_add3_u32 v103, v5, v244, 0x80
	v_add3_u32 v104, v6, v244, 0x80
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v24, 0 :: v_dual_add_nc_u32 v107, v9, v13
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v108, 0, v15
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v84, 0
	v_mov_b32_e32 v91, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_and_b32 s37, s9, 0xffff
	s_mov_b32 s36, s8
	s_and_b32 s41, s25, 0xffff
	s_mov_b32 s40, s24
	s_mov_b32 s11, 1
	s_add_i32 s10, s1, -2
	s_add_i32 s27, 0, 0x8000
	s_add_i32 s1, 0, 0x9000
	s_add_i32 s44, 0, 0x4000
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_mov_b32 s13, s26
	.loc	1 406 22 is_stmt 1              ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v19, s12, v95
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v9, s13, v106
	v_add_nc_u32_e32 v17, s27, v94
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v21, s12, v99
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v18, s27, v96
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v22, s13, v105
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	buffer_load_b128 v[9:12], v9, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[174:177], v19 offset:8192
	ds_load_b128 v[178:181], v21 offset:8192
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[126:129], v17
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[166:169], v19
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[130:133], v18
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[170:173], v21
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[142:145], v17 offset:1024
	ds_load_b128 v[146:149], v18 offset:1024
	ds_load_b128 v[158:161], v17 offset:2048
	ds_load_b128 v[162:165], v18 offset:2048
	ds_load_b128 v[182:185], v17 offset:3072
	ds_load_b128 v[186:189], v18 offset:3072
	v_add_nc_u32_e32 v17, s27, v97
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v18, s12, v100
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
	ds_load_b128 v[182:185], v18 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[166:173], v[178:181], v[186:189], v[166:173] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[174:177], v17
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[178:181], v18
	v_add_nc_u32_e32 v18, s12, v101
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s12, s26, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s12, s12, 25
	s_add_i32 s12, s26, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s12, s12, 7
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s14, s12, s35
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s12, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v19, v37, s12, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v21, v38, s12, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s11, s11, 1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lt_i32 s11, 2
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[118:125], v[182:185], v[174:177], v[118:125] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[110:117], v[178:181], v[174:177], v[110:117] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[174:177], v17 offset:1024
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cselect_b32 s11, s11, 0
	s_add_i32 s10, s10, -1
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_lshl_b32 s15, s11, 14
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_add_i32 s26, s26, 64
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[126:133], v[178:181], v[174:177], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[134:141], v[182:185], v[174:177], v[134:141] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[174:177], v17 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[142:149], v[178:181], v[174:177], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[150:157], v[182:185], v[174:177], v[150:157] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[174:177], v17 offset:3072
	v_add_nc_u32_e32 v17, s27, v98
	s_mov_b32 s27, s1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[158:165], v[178:181], v[174:177], v[158:165] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[166:173], v[182:185], v[174:177], v[166:173] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[174:177], v17
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[178:181], v18
	ds_load_b128 v[182:185], v18 offset:8192
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v18, v36, s12, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[110:117], v[178:181], v[174:177], v[110:117] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[118:125], v[182:185], v[174:177], v[118:125] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[174:177], v17 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[126:133], v[178:181], v[174:177], v[126:133] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[134:141], v[182:185], v[174:177], v[134:141] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[174:177], v17 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
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
	ds_load_b128 v[174:177], v17 offset:3072
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v17, v42, s14, 1
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v144, v144
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v17, v17, s[40:43], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v156, v156
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[166:173], v[182:185], v[174:177], v[166:173] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[158:165], v[178:181], v[174:177], v[158:165] neg_lo:[1,1,0]
	.loc	1 406 30                        ; generate_amdgcn.py:406:30
	v_add_nc_u32_e32 v177, s13, v104
	v_add_nc_u32_e32 v181, s13, v103
	.loc	1 406 22 is_stmt 0              ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v185, s13, v102
	.loc	1 409 19 is_stmt 1              ; generate_amdgcn.py:409:19
	v_cvt_f32_i32_e32 v109, v173
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_clause 0x3
	buffer_load_b128 v[173:176], v22, s[28:31], 0 offen
	buffer_load_b128 v[177:180], v177, s[28:31], 0 offen
	buffer_load_b128 v[181:184], v181, s[28:31], 0 offen
	buffer_load_b128 v[185:188], v185, s[28:31], 0 offen
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
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
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v107, v17 offset:40960
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v17, v43, s12, 1
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_lshl_b32 s12, s11, 12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	s_add_i32 s14, s12, 0
	s_mov_b32 s12, s44
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x3
	buffer_load_u16 v17, v17, s[36:39], 0 offen
	buffer_load_u16 v18, v18, s[36:39], 0 offen
	buffer_load_u16 v19, v19, s[36:39], 0 offen
	buffer_load_u16 v21, v21, s[36:39], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[189:192], v108 offset:40960
	ds_load_b128 v[193:196], v108 offset:40976
	ds_load_b128 v[197:200], v108 offset:41472
	ds_load_b128 v[201:204], v108 offset:41488
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v22, s14, v93
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	s_add_i32 s44, s15, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_add_i32 s1, s14, 0x8000
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cmp_lg_u32 s10, 0
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_store_b128 v22, v[9:12] offset:32768
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v10, 16, v17
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v12, 16, v19
	v_lshlrev_b32_e32 v11, 16, v18
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_dual_mul_f32 v212, v196, v10 :: v_dual_lshlrev_b32 v17, 16, v21
	v_mul_f32_e32 v18, v189, v10
	v_dual_mul_f32 v218, v194, v12 :: v_dual_add_nc_u32 v9, s44, v93
	v_dual_mul_f32 v216, v196, v11 :: v_dual_mul_f32 v19, v190, v10
	v_mul_f32_e32 v21, v191, v10
	v_mul_f32_e32 v22, v192, v10
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_store_b128 v9, v[173:176]
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v173, v189, v11
	v_mul_f32_e32 v174, v190, v11
	v_mul_f32_e32 v175, v191, v11
	v_dual_mul_f32 v176, v192, v11 :: v_dual_mul_f32 v205, v189, v12
	v_mul_f32_e32 v206, v190, v12
	v_dual_mul_f32 v208, v192, v12 :: v_dual_mul_f32 v209, v193, v10
	v_mul_f32_e32 v210, v194, v10
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v211, v195, v10 :: v_dual_mul_f32 v226, v198, v11
	v_dual_mul_f32 v213, v193, v11 :: v_dual_mul_f32 v230, v198, v12
	v_mul_f32_e32 v214, v194, v11
	v_dual_mul_f32 v215, v195, v11 :: v_dual_mul_f32 v232, v200, v12
	v_dual_mul_f32 v217, v193, v12 :: v_dual_mul_f32 v228, v200, v11
	v_mul_f32_e32 v220, v196, v12
	v_dual_mul_f32 v207, v191, v12 :: v_dual_mul_f32 v194, v194, v17
	v_dual_mul_f32 v189, v189, v17 :: v_dual_mul_f32 v222, v198, v10
	v_mul_f32_e32 v190, v190, v17
	v_dual_mul_f32 v191, v191, v17 :: v_dual_mul_f32 v224, v200, v10
	v_dual_mul_f32 v192, v192, v17 :: v_dual_mul_f32 v219, v195, v12
	v_mul_f32_e32 v198, v198, v17
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v193, v193, v17 :: v_dual_mul_f32 v234, v202, v10
	v_mul_f32_e32 v195, v195, v17
	v_dual_mul_f32 v196, v196, v17 :: v_dual_mul_f32 v221, v197, v10
	v_dual_mul_f32 v200, v200, v17 :: v_dual_mul_f32 v223, v199, v10
	v_mul_f32_e32 v236, v201, v11
	v_dual_mul_f32 v225, v197, v11 :: v_dual_mul_f32 v240, v202, v12
	v_mul_f32_e32 v227, v199, v11
	v_dual_mul_f32 v229, v197, v12 :: v_dual_mul_f32 v238, v203, v11
	v_mul_f32_e32 v231, v199, v12
	v_dual_mul_f32 v197, v197, v17 :: v_dual_fmac_f32 v24, v19, v111
	v_dual_mul_f32 v199, v199, v17 :: v_dual_fmac_f32 v28, v210, v115
	v_dual_mul_f32 v233, v201, v10 :: v_dual_fmac_f32 v26, v22, v113
	v_dual_mul_f32 v235, v203, v10 :: v_dual_fmac_f32 v30, v212, v117
	v_dual_mul_f32 v10, v204, v10 :: v_dual_mul_f32 v237, v202, v11
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v34, v224, v121
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v11, v204, v11 :: v_dual_fmac_f32 v40, v235, v124
	v_dual_mul_f32 v239, v201, v12 :: v_dual_fmac_f32 v32, v222, v119
	v_dual_mul_f32 v241, v203, v12 :: v_dual_fmac_f32 v44, v173, v126
	v_dual_mul_f32 v12, v204, v12 :: v_dual_mul_f32 v201, v201, v17
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fmac_f32_e32 v46, v175, v128
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v202, v202, v17
	v_dual_mul_f32 v203, v203, v17 :: v_dual_fmac_f32 v48, v213, v130
	v_dual_mul_f32 v17, v204, v17 :: v_dual_fmac_f32 v50, v215, v132
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_dual_fmac_f32 v23, v18, v110 :: v_dual_fmac_f32 v54, v227, v136
	v_dual_fmac_f32 v25, v21, v112 :: v_dual_fmac_f32 v56, v236, v138
	v_dual_fmac_f32 v27, v209, v114 :: v_dual_fmac_f32 v58, v238, v140
	v_dual_fmac_f32 v29, v211, v116 :: v_dual_fmac_f32 v52, v225, v134
	v_dual_fmac_f32 v31, v221, v118 :: v_dual_fmac_f32 v62, v207, v144
	v_dual_fmac_f32 v33, v223, v120 :: v_dual_fmac_f32 v60, v205, v142
	v_dual_fmac_f32 v35, v233, v122 :: v_dual_fmac_f32 v66, v219, v148
	v_dual_fmac_f32 v39, v234, v123 :: v_dual_fmac_f32 v64, v217, v146
	v_dual_fmac_f32 v41, v10, v125 :: v_dual_fmac_f32 v68, v229, v150
	v_dual_fmac_f32 v45, v174, v127 :: v_dual_fmac_f32 v70, v231, v152
	v_dual_fmac_f32 v47, v176, v129 :: v_dual_fmac_f32 v72, v239, v154
	v_dual_fmac_f32 v49, v214, v131 :: v_dual_fmac_f32 v74, v241, v156
	v_dual_fmac_f32 v51, v216, v133 :: v_dual_fmac_f32 v76, v189, v158
	v_dual_fmac_f32 v53, v226, v135 :: v_dual_fmac_f32 v78, v191, v160
	v_dual_fmac_f32 v55, v228, v137 :: v_dual_fmac_f32 v80, v193, v162
	v_dual_fmac_f32 v57, v237, v139 :: v_dual_fmac_f32 v82, v195, v164
	v_dual_fmac_f32 v59, v11, v141 :: v_dual_fmac_f32 v86, v198, v167
	v_dual_fmac_f32 v61, v206, v143 :: v_dual_fmac_f32 v88, v200, v169
	v_dual_fmac_f32 v63, v208, v145 :: v_dual_fmac_f32 v90, v202, v171
	v_dual_fmac_f32 v65, v218, v147 :: v_dual_fmac_f32 v84, v17, v109
	v_fmac_f32_e32 v67, v220, v149
	v_fmac_f32_e32 v69, v230, v151
	v_fmac_f32_e32 v71, v232, v153
	v_fmac_f32_e32 v73, v240, v155
	v_fmac_f32_e32 v75, v12, v157
	v_fmac_f32_e32 v77, v190, v159
	v_fmac_f32_e32 v79, v192, v161
	v_fmac_f32_e32 v81, v194, v163
	v_fmac_f32_e32 v83, v196, v165
	v_fmac_f32_e32 v85, v197, v166
	v_fmac_f32_e32 v87, v199, v168
	v_fmac_f32_e32 v89, v201, v170
	v_fmac_f32_e32 v91, v203, v172
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_store_b128 v9, v[177:180] offset:4096
	ds_store_b128 v9, v[181:184] offset:8192
	ds_store_b128 v9, v[185:188] offset:12288
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	v_mov_b32_e32 v4, v92
	v_dual_mov_b32 v1, v20 :: v_dual_mov_b32 v238, v247
	s_add_i32 s36, s13, 0x80
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
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v24, 0
	v_mov_b32_e32 v25, 0
	v_mov_b32_e32 v23, 0
	s_add_i32 s27, 0, 0x8000
	s_add_i32 s1, 0, 0x9000
	s_add_i32 s44, 0, 0x4000
.LBB0_8:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v0, 0 :: v_dual_and_b32 v207, 6, v238
	v_dual_mov_b32 v243, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v236, 0
	.loc	1 404 22 is_stmt 1              ; generate_amdgcn.py:404:22
	v_lshl_or_b32 v229, v207, 3, v4
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v240, 0
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_or_b32_e32 v230, v229, v16
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_xor_b32_e32 v97, 16, v229
	v_xor_b32_e32 v98, 32, v229
	v_xor_b32_e32 v22, 48, v229
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v248, 0
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_xor_b32_e32 v19, 16, v230
	v_xor_b32_e32 v20, 32, v230
	v_xor_b32_e32 v21, 48, v230
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v250, 0
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v246, 0
	v_dual_mov_b32 v241, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v247, 0 :: v_dual_mov_b32 v232, 0
	v_dual_mov_b32 v249, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v252, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v254, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v251, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v253, 0 :: v_dual_mov_b32 v228, 0
	v_dual_mov_b32 v255, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v0, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v126, 0
	v_mov_b32_e32 v117, 0
	v_mov_b32_e32 v17, 0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	v_add_nc_u32_e32 v2, s12, v20
	v_add_nc_u32_e32 v3, s12, v19
	v_add_nc_u32_e32 v4, s12, v21
	v_add_nc_u32_e32 v5, s12, v230
	s_mov_b32 s12, 0
	ds_load_b128 v[168:171], v5 offset:8192
	ds_load_b128 v[172:175], v5
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v10, s27, v229
	v_add_nc_u32_e32 v11, s27, v98
	v_add_nc_u32_e32 v16, s27, v97
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[93:96], v2 offset:8192
	ds_load_b128 v[156:159], v2
	ds_load_b128 v[160:163], v3 offset:8192
	ds_load_b128 v[164:167], v3
	ds_load_b128 v[184:187], v4 offset:8192
	ds_load_b128 v[188:191], v4
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v2, s12 :: v_dual_mov_b32 v7, s17
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[132:135], v10 offset:1024
	ds_load_b128 v[116:119], v10
	ds_load_b128 v[176:179], v11 offset:1024
	ds_load_b128 v[124:127], v11
	ds_load_b128 v[180:183], v16 offset:1024
	ds_load_b128 v[128:131], v16
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v9, s19 :: v_dual_add_nc_u32 v12, s27, v22
	v_dual_mov_b32 v3, s13 :: v_dual_mov_b32 v4, s14
	v_dual_mov_b32 v5, s15 :: v_dual_mov_b32 v6, s16
	v_mov_b32_e32 v8, s18
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[192:195], v12 offset:1024
	ds_load_b128 v[136:139], v12
	ds_load_b128 v[196:199], v10 offset:3072
	ds_load_b128 v[148:151], v10 offset:2048
	ds_load_b128 v[200:203], v16 offset:3072
	ds_load_b128 v[208:211], v16 offset:2048
	ds_load_b128 v[212:215], v11 offset:3072
	ds_load_b128 v[216:219], v11 offset:2048
	ds_load_b128 v[220:223], v12 offset:3072
	ds_load_b128 v[234:237], v12 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(14)
	v_wmma_i32_16x16x16_iu8 v[108:115], v[172:175], v[116:119], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[100:107], v[168:171], v[116:119], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[116:123], v[172:175], v[132:135], v[2:9] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[108:115], v[164:167], v[128:131], v[108:115] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[100:107], v[160:163], v[128:131], v[100:107] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[116:123], v[164:167], v[180:183], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[108:115], v[156:159], v[124:127], v[108:115] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[100:107], v[93:96], v[124:127], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[124:131], v[168:171], v[132:135], v[2:9] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[140:147], v[168:171], v[148:151], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[108:115], v[188:191], v[136:139], v[108:115] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[100:107], v[184:187], v[136:139], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[132:139], v[172:175], v[148:151], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[148:155], v[172:175], v[196:199], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[2:9], v[168:171], v[196:199], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[124:131], v[160:163], v[180:183], v[124:131] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[132:139], v[164:167], v[208:211], v[132:139] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[140:147], v[160:163], v[208:211], v[140:147] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[148:155], v[164:167], v[200:203], v[148:155] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[2:9], v[160:163], v[200:203], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[116:123], v[156:159], v[176:179], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[124:131], v[93:96], v[176:179], v[124:131] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[132:139], v[156:159], v[216:219], v[132:139] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[140:147], v[93:96], v[216:219], v[140:147] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[148:155], v[156:159], v[212:215], v[148:155] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[2:9], v[93:96], v[212:215], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[116:123], v[188:191], v[192:195], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[124:131], v[184:187], v[192:195], v[124:131] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[132:139], v[188:191], v[234:237], v[132:139] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[140:147], v[184:187], v[234:237], v[140:147] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[148:155], v[188:191], v[220:223], v[148:155] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[2:9], v[184:187], v[220:223], v[2:9] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v0, v109
	v_cvt_f32_i32_e32 v160, v110
	v_cvt_f32_i32_e32 v236, v111
	v_cvt_f32_i32_e32 v217, v112
	v_cvt_f32_i32_e32 v158, v113
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v233, v114
	v_cvt_f32_i32_e32 v185, v115
	v_cvt_f32_i32_e32 v237, v100
	v_cvt_f32_i32_e32 v239, v101
	v_cvt_f32_i32_e32 v240, v102
	v_cvt_f32_i32_e32 v241, v103
	v_cvt_f32_i32_e32 v247, v104
	v_cvt_f32_i32_e32 v248, v105
	v_cvt_f32_i32_e32 v249, v106
	v_cvt_f32_i32_e32 v250, v107
	v_cvt_f32_i32_e32 v246, v116
	v_cvt_f32_i32_e32 v227, v117
	v_cvt_f32_i32_e32 v218, v118
	v_cvt_f32_i32_e32 v232, v119
	v_cvt_f32_i32_e32 v119, v120
	v_cvt_f32_i32_e32 v120, v121
	v_cvt_f32_i32_e32 v121, v122
	v_cvt_f32_i32_e32 v18, v123
	v_cvt_f32_i32_e32 v122, v124
	v_cvt_f32_i32_e32 v123, v125
	v_cvt_f32_i32_e32 v169, v126
	v_cvt_f32_i32_e32 v251, v127
	v_cvt_f32_i32_e32 v252, v128
	v_cvt_f32_i32_e32 v253, v129
	v_cvt_f32_i32_e32 v254, v130
	v_cvt_f32_i32_e32 v255, v131
	v_cvt_f32_i32_e32 v125, v132
	v_cvt_f32_i32_e32 v168, v133
	v_cvt_f32_i32_e32 v127, v134
	v_cvt_f32_i32_e32 v128, v135
	v_cvt_f32_i32_e32 v228, v136
	v_cvt_f32_i32_e32 v130, v137
	v_cvt_f32_i32_e32 v131, v138
	v_cvt_f32_i32_e32 v132, v139
	v_cvt_f32_i32_e32 v133, v140
	v_cvt_f32_i32_e32 v134, v141
	v_cvt_f32_i32_e32 v135, v142
	v_cvt_f32_i32_e32 v186, v143
	v_cvt_f32_i32_e32 v137, v144
	v_cvt_f32_i32_e32 v138, v145
	v_cvt_f32_i32_e32 v139, v146
	v_cvt_f32_i32_e32 v140, v147
	v_cvt_f32_i32_e32 v156, v148
	v_cvt_f32_i32_e32 v107, v149
	v_cvt_f32_i32_e32 v109, v150
	v_cvt_f32_i32_e32 v110, v151
	v_cvt_f32_i32_e32 v111, v152
	v_cvt_f32_i32_e32 v141, v153
	v_cvt_f32_i32_e32 v0, v154
	v_cvt_f32_i32_e32 v112, v155
	v_cvt_f32_i32_e32 v113, v2
	v_cvt_f32_i32_e32 v114, v3
	v_cvt_f32_i32_e32 v115, v4
	v_cvt_f32_i32_e32 v116, v5
	v_cvt_f32_i32_e32 v117, v6
	v_cvt_f32_i32_e32 v17, v7
	v_cvt_f32_i32_e32 v118, v8
	v_cvt_f32_i32_e32 v126, v9
	v_cvt_f32_i32_e32 v231, v108
.LBB0_10:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s26, 31
	s_mov_b32 s11, 0x31027000
	s_lshr_b32 s4, s4, 25
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s4, s26, s4
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s26, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s4, s4, 7
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s27, s11
	.loc	1 422 40 is_stmt 0              ; generate_amdgcn.py:422:40
	s_mul_i32 s5, s4, s35
	.loc	1 419 34 is_stmt 1              ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s4, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v2, v43, s4, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v3, v42, s5, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s5, -1, 0
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v4, v36, s4, 1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	v_add_lshl_u32 v5, v37, s4, 1
	v_add_lshl_u32 v6, v38, s4, 1
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
	buffer_load_u16 v159, v2, s[8:11], 0 offen
	buffer_load_u16 v136, v4, s[8:11], 0 offen
	buffer_load_u16 v108, v5, s[8:11], 0 offen
	buffer_load_u16 v93, v6, s[8:11], 0 offen
	v_dual_mov_b32 v162, 0 :: v_dual_add_nc_u32 v157, 0, v15
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v164, 0
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_add3_u32 v1, 0, v14, v1
	v_mov_b32_e32 v201, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v170, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v155, 0 :: v_dual_add_nc_u32 v154, v1, v13
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v151, 0
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
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v215, 0
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
	ds_store_b32 v154, v1 offset:40960
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v157 offset:40960
	ds_load_b128 v[5:8], v157 offset:40976
	ds_load_b128 v[9:12], v157 offset:41472
	ds_load_b128 v[13:16], v157 offset:41488
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	v_dual_mov_b32 v149, v133 :: v_dual_add_nc_u32 v166, s44, v20
	v_dual_mov_b32 v124, v246 :: v_dual_add_nc_u32 v19, s44, v19
	v_dual_mov_b32 v143, v18 :: v_dual_add_nc_u32 v20, s44, v230
	v_dual_mov_b32 v133, v247 :: v_dual_add_nc_u32 v96, s1, v229
	v_dual_mov_b32 v216, v244 :: v_dual_add_nc_u32 v165, s44, v21
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v245, off offset:12
	scratch_store_b32 off, v242, off offset:16
	.loc	1 406 22 is_stmt 1              ; generate_amdgcn.py:406:22
	ds_load_b128 v[243:246], v19 offset:8192
	v_dual_mov_b32 v152, v126 :: v_dual_mov_b32 v151, v123
	v_dual_mov_b32 v142, v134 :: v_dual_mov_b32 v129, v249
	v_dual_mov_b32 v150, v122 :: v_dual_mov_b32 v123, v112
	v_dual_mov_b32 v134, v248 :: v_dual_mov_b32 v153, v137
	v_dual_mov_b32 v122, v0 :: v_dual_mov_b32 v137, v251
	v_dual_mov_b32 v112, v17 :: v_dual_mov_b32 v167, v138
	v_mov_b32_e32 v126, v250
	ds_load_b128 v[247:250], v19
	v_dual_mov_b32 v138, v252 :: v_dual_mov_b32 v145, v154
	v_dual_mov_b32 v154, v139 :: v_dual_mov_b32 v155, v140
	v_dual_mov_b32 v139, v253 :: v_dual_mov_b32 v140, v254
	v_mov_b32_e32 v17, v43
	ds_load_b128 v[251:254], v20
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[187:190], v96
	v_mov_b32_e32 v0, v22
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[19:22], v20 offset:8192
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[208:211], v96 offset:1024
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v18.l, v93.l
	ds_load_b128 v[92:95], v96 offset:3072
	s_clause 0xb                            ; 48-byte Folded Spill
	scratch_store_b32 off, v168, off offset:32
	scratch_store_b32 off, v231, off offset:44
	scratch_store_b32 off, v233, off offset:48
	scratch_store_b32 off, v158, off offset:64
	scratch_store_b32 off, v228, off offset:28
	scratch_store_b32 off, v185, off offset:56
	scratch_store_b32 off, v236, off offset:60
	scratch_store_b32 off, v186, off offset:20
	scratch_store_b32 off, v169, off offset:36
	scratch_store_b32 off, v232, off offset:40
	scratch_store_b32 off, v237, off offset:52
	scratch_store_b32 off, v238, off offset:24
	ds_load_b128 v[235:238], v96 offset:2048
	v_dual_mov_b32 v43, v42 :: v_dual_add_nc_u32 v184, s1, v98
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_mov_b32_e32 v42, v38
	v_dual_mov_b32 v38, v37 :: v_dual_mov_b32 v37, v36
	v_mov_b16_e32 v36.l, v108.l
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v108, s1, v97
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v226, s19 :: v_dual_mov_b32 v219, s12
	v_mov_b32_e32 v221, s14
	v_mov_b32_e32 v225, s18
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[100:103], v108
	ds_load_b128 v[96:99], v108 offset:3072
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_dual_mov_b32 v224, s17 :: v_dual_mov_b32 v207, v109
	v_dual_mov_b32 v223, s16 :: v_dual_mov_b32 v222, s15
	v_dual_mov_b32 v185, v111 :: v_dual_mov_b32 v220, s13
	v_mov_b32_e32 v186, v107
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[104:107], v108 offset:2048
	v_dual_mov_b32 v158, v110 :: v_dual_mov_b32 v147, v131
	ds_load_b128 v[108:111], v108 offset:1024
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[161:164], v165 offset:8192
	ds_load_b128 v[203:206], v166
	v_mov_b32_e32 v144, v128
	v_mov_b32_e32 v128, v227
	v_dual_mov_b32 v146, v130 :: v_dual_mov_b32 v131, v120
	v_mov_b32_e32 v130, v119
	v_mov_b32_e32 v119, v239
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(10)
	v_wmma_i32_16x16x16_iu8 v[168:175], v[251:254], v[187:190], v[219:226] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(9)
	v_wmma_i32_16x16x16_iu8 v[176:183], v[19:22], v[187:190], v[219:226] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[187:194], v[251:254], v[208:211], v[219:226] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[195:202], v[19:22], v[208:211], v[219:226] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[208:215], v[251:254], v[235:238], v[219:226] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[227:234], v[19:22], v[235:238], v[219:226] neg_lo:[1,1,0]
	v_mov_b32_e32 v120, v240
	v_mov_b32_e32 v148, v132
	v_mov_b32_e32 v132, v121
	v_mov_b32_e32 v121, v241
	v_wmma_i32_16x16x16_iu8 v[235:242], v[251:254], v[92:95], v[219:226] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[219:226], v[19:22], v[92:95], v[219:226] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[19:22], v184
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[92:95], v166 offset:8192
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[168:175], v[247:250], v[100:103], v[168:175] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[176:183], v[243:246], v[100:103], v[176:183] neg_lo:[1,1,0]
	.loc	1 406 22                        ; generate_amdgcn.py:406:22
	ds_load_b128 v[100:103], v165
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	v_add_nc_u32_e32 v165, s1, v0
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[187:194], v[247:250], v[108:111], v[187:194] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[195:202], v[243:246], v[108:111], v[195:202] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[108:111], v184 offset:1024
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[227:234], v[243:246], v[104:107], v[227:234] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[235:242], v[247:250], v[96:99], v[235:242] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[219:226], v[243:246], v[96:99], v[219:226] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[96:99], v184 offset:2048
	ds_load_b128 v[243:246], v184 offset:3072
	ds_load_b128 v[251:254], v165 offset:2048
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	v_wmma_i32_16x16x16_iu8 v[208:215], v[247:250], v[104:107], v[208:215] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[104:107], v165
	ds_load_b128 v[247:250], v165 offset:1024
	v_mov_b32_e32 v0, v122
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[168:175], v[203:206], v[19:22], v[168:175] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu8 v[176:183], v[92:95], v[19:22], v[176:183] neg_lo:[1,1,0]
	.loc	1 404 22                        ; generate_amdgcn.py:404:22
	ds_load_b128 v[19:22], v165 offset:3072
	.loc	1 409 19                        ; generate_amdgcn.py:409:19
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[187:194], v[203:206], v[108:111], v[187:194] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[195:202], v[92:95], v[108:111], v[195:202] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu8 v[208:215], v[203:206], v[96:99], v[208:215] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu8 v[235:242], v[203:206], v[243:246], v[235:242] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[227:234], v[92:95], v[96:99], v[227:234] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[219:226], v[92:95], v[243:246], v[219:226] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[168:175], v[100:103], v[104:107], v[168:175] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[176:183], v[161:164], v[104:107], v[176:183] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu8 v[187:194], v[100:103], v[247:250], v[187:194] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[195:202], v[161:164], v[247:250], v[195:202] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[208:215], v[100:103], v[251:254], v[208:215] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[227:234], v[161:164], v[251:254], v[227:234] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v166, v174
	v_cvt_f32_i32_e32 v174, v181
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[235:242], v[100:103], v[19:22], v[235:242] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v181, v191
	v_cvt_f32_i32_e32 v191, v200
	v_cvt_f32_i32_e32 v200, v214
	v_mov_b32_e32 v107, v186
	v_cvt_f32_i32_e32 v214, v238
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v238, off, off offset:24
	scratch_load_b32 v245, off, off offset:12
	v_dual_mov_b32 v111, v185 :: v_dual_mov_b32 v110, v158
	v_wmma_i32_16x16x16_iu8 v[219:226], v[161:164], v[19:22], v[219:226] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v161, v169
	v_cvt_f32_i32_e32 v164, v172
	v_cvt_f32_i32_e32 v165, v173
	v_cvt_f32_i32_e32 v172, v179
	v_cvt_f32_i32_e32 v173, v180
	v_cvt_f32_i32_e32 v179, v189
	v_cvt_f32_i32_e32 v180, v190
	v_cvt_f32_i32_e32 v184, v194
	v_cvt_f32_i32_e32 v189, v198
	v_cvt_f32_i32_e32 v190, v199
	v_cvt_f32_i32_e32 v194, v208
	v_cvt_f32_i32_e32 v198, v212
	v_cvt_f32_i32_e32 v199, v213
	v_cvt_f32_i32_e32 v203, v228
	v_cvt_f32_i32_e32 v208, v232
	v_cvt_f32_i32_e32 v212, v236
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v236, off, off offset:60
	scratch_load_b32 v185, off, off offset:56
	scratch_load_b32 v228, off, off offset:28
	scratch_load_b32 v158, off, off offset:64
	v_cvt_f32_i32_e32 v213, v237
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v237, off, off offset:52
	scratch_load_b32 v232, off, off offset:40
	scratch_load_b32 v169, off, off offset:36
	scratch_load_b32 v186, off, off offset:20
	v_mov_b16_e32 v108.l, v36.l
	v_dual_mov_b32 v36, v37 :: v_dual_mov_b32 v37, v38
	v_dual_mov_b32 v38, v42 :: v_dual_mov_b32 v249, v129
	v_dual_mov_b32 v42, v43 :: v_dual_mov_b32 v247, v133
	v_mov_b32_e32 v43, v17
	v_dual_mov_b32 v17, v112 :: v_dual_mov_b32 v112, v123
	v_mov_b32_e32 v123, v151
	v_cvt_f32_i32_e32 v243, v168
	v_cvt_f32_i32_e32 v151, v195
	v_cvt_f32_i32_e32 v195, v209
	v_cvt_f32_i32_e32 v206, v231
	v_cvt_f32_i32_e32 v209, v233
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v233, off, off offset:48
	scratch_load_b32 v231, off, off offset:44
	scratch_load_b32 v168, off, off offset:32
	v_dual_mov_b32 v250, v126 :: v_dual_mov_b32 v251, v137
	v_mov_b32_e32 v137, v153
	v_cvt_f32_i32_e32 v153, v242
	scratch_load_b32 v242, off, off offset:16 ; 4-byte Folded Reload
	v_mov_b32_e32 v109, v207
	v_mov_b16_e32 v93.l, v18.l
	v_dual_mov_b32 v246, v124 :: v_dual_mov_b32 v133, v149
	v_dual_mov_b32 v244, v216 :: v_dual_mov_b32 v253, v139
	v_mov_b32_e32 v248, v134
	v_mov_b32_e32 v122, v150
	v_mov_b32_e32 v134, v142
	v_mov_b32_e32 v126, v152
	v_mov_b32_e32 v18, v143
	v_mov_b32_e32 v254, v140
	v_dual_mov_b32 v140, v155 :: v_dual_mov_b32 v139, v154
	v_mov_b32_e32 v154, v145
	v_mov_b32_e32 v252, v138
	v_mov_b32_e32 v138, v167
	v_cvt_f32_i32_e32 v162, v170
	v_cvt_f32_i32_e32 v163, v171
	v_cvt_f32_i32_e32 v155, v175
	v_cvt_f32_i32_e32 v167, v176
	v_cvt_f32_i32_e32 v170, v177
	v_cvt_f32_i32_e32 v171, v178
	v_cvt_f32_i32_e32 v175, v182
	v_cvt_f32_i32_e32 v176, v183
	v_cvt_f32_i32_e32 v177, v187
	v_cvt_f32_i32_e32 v178, v188
	v_cvt_f32_i32_e32 v182, v192
	v_cvt_f32_i32_e32 v183, v193
	v_cvt_f32_i32_e32 v187, v196
	v_cvt_f32_i32_e32 v188, v197
	v_cvt_f32_i32_e32 v192, v201
	v_cvt_f32_i32_e32 v193, v202
	v_cvt_f32_i32_e32 v196, v210
	v_cvt_f32_i32_e32 v197, v211
	v_cvt_f32_i32_e32 v201, v215
	v_cvt_f32_i32_e32 v202, v227
	v_cvt_f32_i32_e32 v204, v229
	v_cvt_f32_i32_e32 v205, v230
	v_cvt_f32_i32_e32 v210, v234
	v_mov_b32_e32 v227, v128
	v_mov_b32_e32 v128, v144
	v_cvt_f32_i32_e32 v211, v235
	v_cvt_f32_i32_e32 v215, v239
	v_mov_b32_e32 v239, v119
	v_mov_b32_e32 v119, v130
	v_mov_b32_e32 v130, v146
	v_cvt_f32_i32_e32 v216, v240
	v_mov_b32_e32 v240, v120
	v_mov_b32_e32 v120, v131
	v_mov_b32_e32 v131, v147
	v_cvt_f32_i32_e32 v152, v241
	v_mov_b32_e32 v241, v121
	v_mov_b32_e32 v121, v132
	v_mov_b32_e32 v132, v148
	v_cvt_f32_i32_e32 v219, v219
	v_cvt_f32_i32_e32 v220, v220
	v_cvt_f32_i32_e32 v221, v221
	v_cvt_f32_i32_e32 v222, v222
	v_cvt_f32_i32_e32 v223, v223
	v_cvt_f32_i32_e32 v224, v224
	v_cvt_f32_i32_e32 v225, v225
	v_cvt_f32_i32_e32 v226, v226
	s_waitcnt vmcnt(13)
	v_and_b32_e32 v207, 6, v238
.LBB0_12:
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_ashr_i32 s1, s36, 31
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s26, s10
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_lshr_b32 s1, s1, 25
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	s_mov_b32 s27, s11
	.loc	1 418 29                        ; generate_amdgcn.py:418:29
	s_add_i32 s1, s36, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s1, s1, 7
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cmp_lt_i32 s1, s0
	.loc	1 422 40                        ; generate_amdgcn.py:422:40
	s_mul_i32 s0, s1, s35
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v19, v43, s1, 1
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	v_add_lshl_u32 v20, v42, s0, 1
	.loc	1 419 34                        ; generate_amdgcn.py:419:34
	s_cselect_b32 s0, -1, 0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v21, v36, s1, 1
	v_add_lshl_u32 v22, v37, s1, 1
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	s_and_b32 vcc_lo, s2, s0
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_add_lshl_u32 v36, v38, s1, 1
	v_dual_cndmask_b32 v19, 0x80000000, v19 :: v_dual_cndmask_b32 v20, 0x80000000, v20
.Ltmp20:
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v42.l, 0
.Ltmp21:
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v42.h, v93.l
	v_dual_cndmask_b32 v21, 0x80000000, v21 :: v_dual_cndmask_b32 v22, 0x80000000, v22
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	.loc	1 422 22                        ; generate_amdgcn.py:422:22
	buffer_load_u16 v20, v20, s[24:27], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v37, v16, v42
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_clause 0x3
	buffer_load_u16 v19, v19, s[8:11], 0 offen
	buffer_load_u16 v21, v21, s[8:11], 0 offen
	buffer_load_u16 v22, v22, s[8:11], 0 offen
	buffer_load_u16 v36, v36, s[8:11], 0 offen
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v94, v12, v42
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mul_f32_e32 v38, v15, v42
	v_mul_f32_e32 v43, v14, v42
	v_mul_f32_e32 v96, v10, v42
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v37, v37, v126, v84
	s_mov_b32 s0, 0x76543210
	v_fma_f32 v38, v38, v118, v91
.Ltmp22:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:446:9 ]
	s_and_b32 s9, s21, 0xffff
	s_mov_b32 s8, s20
.Ltmp23:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v84, v84, v37, s3
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v91, v91, v38, s3
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v99, v7, v42
	v_mul_f32_e32 v93, v13, v42
	v_mul_f32_e32 v95, v11, v42
	v_mul_f32_e32 v97, v9, v42
	v_mul_f32_e32 v98, v8, v42
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v99, v99, v0, v82
	scratch_load_b32 v0, off, off           ; 4-byte Folded Reload
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v100, v6, v42
	v_mul_f32_e32 v101, v5, v42
	v_mul_f32_e32 v102, v4, v42
	v_mul_f32_e32 v103, v3, v42
	v_mul_f32_e32 v104, v2, v42
	v_mul_f32_e32 v105, v1, v42
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e32 v42.h, v108.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v93, v93, v117, v89
	v_fma_f32 v94, v94, v116, v88
	v_fma_f32 v95, v95, v115, v87
	v_fma_f32 v97, v97, v113, v85
	v_fma_f32 v98, v98, v112, v83
	v_fma_f32 v100, v100, v141, v81
	v_fma_f32 v101, v101, v111, v80
	v_fma_f32 v102, v102, v110, v79
	v_fma_f32 v103, v103, v109, v78
	v_fma_f32 v104, v104, v107, v77
	v_fma_f32 v105, v105, v156, v76
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v106, v16, v42
	v_mul_f32_e32 v108, v14, v42
	v_mul_f32_e32 v109, v13, v42
	v_mul_f32_e32 v110, v12, v42
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v142, v9, v42 :: v_dual_lshlrev_b32 v21, 16, v21
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v96, v96, v114, v86
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v107, v15, v42
	v_mul_f32_e32 v111, v11, v42
	v_mul_f32_e32 v141, v10, v42
	v_mul_f32_e32 v143, v8, v42
	v_mul_f32_e32 v144, v7, v42
	v_mul_f32_e32 v145, v6, v42
	v_mul_f32_e32 v146, v5, v42
	v_mul_f32_e32 v147, v4, v42
	v_mul_f32_e32 v148, v3, v42
	v_mul_f32_e32 v149, v2, v42
	v_mul_f32_e32 v150, v1, v42
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e64 v42.h, v136.l
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v36, 16, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v43, v43, v17, v90
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v89, v89, v93, s3
	v_cndmask_b32_e64 v88, v88, v94, s3
	v_cndmask_b32_e64 v87, v87, v95, s3
	v_cndmask_b32_e64 v86, v86, v96, s3
	v_cndmask_b32_e64 v90, v90, v43, s3
	v_cndmask_b32_e64 v85, v85, v97, s3
	v_cndmask_b32_e64 v83, v83, v98, s3
	v_cndmask_b32_e64 v82, v82, v99, s3
	v_cndmask_b32_e64 v93, v81, v100, s3
	v_cndmask_b32_e64 v94, v80, v101, s3
	v_cndmask_b32_e64 v95, v79, v102, s3
	v_cndmask_b32_e64 v78, v78, v103, s3
	v_cndmask_b32_e64 v96, v77, v104, s3
	v_cndmask_b32_e64 v97, v76, v105, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v37, v106, v140, v75
	v_fma_f32 v38, v107, v139, v74
	v_fma_f32 v43, v108, v138, v73
	v_fma_f32 v76, v109, v137, v72
	v_fma_f32 v77, v110, v186, v71
	v_fma_f32 v79, v111, v135, v70
	v_fma_f32 v80, v141, v134, v69
	v_fma_f32 v81, v142, v133, v68
	v_fma_f32 v98, v143, v132, v67
	v_fma_f32 v99, v144, v131, v66
	v_fma_f32 v100, v145, v130, v65
	v_fma_f32 v101, v146, v228, v64
	v_fma_f32 v102, v147, v128, v63
	v_fma_f32 v103, v148, v127, v62
	v_fma_f32 v105, v150, v125, v60
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v106, v16, v42
	v_mul_f32_e32 v107, v15, v42
	v_mul_f32_e32 v108, v14, v42
	v_mul_f32_e32 v109, v13, v42
	v_mul_f32_e32 v110, v12, v42
	v_mul_f32_e32 v111, v11, v42
	v_mul_f32_e32 v125, v10, v42
	v_mul_f32_e32 v126, v9, v42
	v_mul_f32_e32 v127, v8, v42
	v_mul_f32_e32 v128, v7, v42
	v_mul_f32_e32 v129, v6, v42
	v_mul_f32_e32 v130, v5, v42
	v_mul_f32_e32 v131, v4, v42
	v_mul_f32_e32 v132, v3, v42
	v_mul_f32_e32 v133, v2, v42
	v_mul_f32_e32 v134, v1, v42
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_mov_b16_e64 v42.h, v159.l
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v104, v149, v168, v61
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v137, v73, v43, s3
	v_cndmask_b32_e64 v43, v64, v101, s3
	v_cndmask_b32_e64 v101, v63, v102, s3
	v_cndmask_b32_e64 v102, v62, v103, s3
	v_cndmask_b32_e64 v103, v60, v105, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v60, v106, v255, v59
	v_fma_f32 v63, v108, v253, v57
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v12, v12, v42
	v_mul_f32_e32 v11, v11, v42
	v_mul_f32_e32 v10, v10, v42
	v_mul_f32_e32 v9, v9, v42
	v_mul_f32_e32 v1, v1, v42
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v61, v61, v104, s3
	v_cndmask_b32_e64 v104, v59, v60, s3
	v_cndmask_b32_e64 v59, v57, v63, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v12, v12, v241, v34
	v_fma_f32 v11, v11, v240, v33
	v_fma_f32 v10, v10, v239, v32
	v_fma_f32 v9, v9, v237, v31
	v_fma_f32 v57, v1, v231, v23
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_dual_mul_f32 v16, v16, v42 :: v_dual_lshlrev_b32 v1, 16, v20
	v_mul_f32_e32 v15, v15, v42
	v_mul_f32_e32 v13, v13, v42
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v34, v34, v12, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_store_b32 v154, v1 offset:40960
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v33, v33, v11, s3
	v_cndmask_b32_e64 v32, v32, v10, s3
	v_cndmask_b32_e64 v31, v31, v9, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[9:12], v157 offset:41472
	v_mul_f32_e32 v14, v14, v42
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v16, v16, v250, v41
	v_fma_f32 v15, v15, v249, v40
	v_fma_f32 v13, v13, v247, v35
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v100, v65, v100, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v14, v14, v248, v39
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v20, v41, v16, s3
	v_cndmask_b32_e64 v40, v40, v15, s3
	v_cndmask_b32_e64 v35, v35, v13, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v62, v107, v254, v58
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v39, v39, v14, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[13:16], v157 offset:41488
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v64, v109, v252, v56
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v2, v2, v42
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v105, v58, v62, s3
	.loc	1 420 22                        ; generate_amdgcn.py:420:22
	v_lshlrev_b32_e32 v22, 16, v22
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v135, v75, v37, s3
	v_cndmask_b32_e64 v136, v74, v38, s3
	v_cndmask_b32_e64 v139, v71, v77, s3
	v_cndmask_b32_e64 v140, v70, v79, s3
	v_cndmask_b32_e64 v37, v69, v80, s3
	v_cndmask_b32_e64 v38, v68, v81, s3
	v_cndmask_b32_e64 v99, v66, v99, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v66, v111, v169, v54
	v_fma_f32 v70, v128, v121, v50
	v_fma_f32 v74, v132, v218, v46
	v_fma_f32 v17, v133, v227, v45
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v8, v8, v42
	v_mul_f32_e32 v7, v7, v42
	v_mul_f32_e32 v6, v6, v42
	v_mul_f32_e32 v5, v5, v42
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v109, v14, v21
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v65, v110, v251, v55
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v4, v4, v42
	v_dual_mul_f32 v3, v3, v42 :: v_dual_mul_f32 v60, v10, v19
	v_mul_f32_e32 v63, v12, v19
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v58, v55, v65, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v81, v10, v21
	v_mul_f32_e32 v107, v12, v21
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v68, v126, v122, v52
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v122, v12, v22
	v_mul_f32_e32 v12, v12, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v71, v129, v120, v49
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v120, v10, v22
	v_mul_f32_e32 v10, v10, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v69, v127, v18, v51
	v_fma_f32 v18, v134, v246, v44
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v56, v56, v64, s3
	v_cndmask_b32_e64 v64, v54, v66, s3
	v_cndmask_b32_e64 v52, v52, v68, s3
	v_cndmask_b32_e64 v51, v51, v69, s3
	v_cndmask_b32_e64 v65, v50, v70, s3
	v_cndmask_b32_e64 v68, v49, v71, s3
	v_cndmask_b32_e64 v69, v46, v74, s3
	v_cndmask_b32_e64 v17, v45, v17, s3
	v_cndmask_b32_e64 v18, v44, v18, s3
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v44, v8, v185, v30
	v_fma_f32 v45, v7, v233, v29
	v_fma_f32 v46, v6, v158, v28
	v_fma_f32 v49, v5, v217, v27
	v_fma_f32 v50, v4, v236, v26
	v_fma_f32 v54, v3, v160, v25
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v98, v67, v98, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v124, v14, v22
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v138, v72, v76, s3
	v_cndmask_b32_e64 v30, v30, v44, s3
	v_cndmask_b32_e64 v29, v29, v45, s3
	v_cndmask_b32_e64 v23, v23, v57, s3
	v_cndmask_b32_e64 v28, v28, v46, s3
	v_cndmask_b32_e64 v27, v27, v49, s3
	v_cndmask_b32_e64 v26, v26, v50, s3
	v_cndmask_b32_e64 v25, v25, v54, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v57, v9, v19
	v_mul_f32_e32 v62, v11, v19
	v_mul_f32_e32 v66, v13, v19
	v_mul_f32_e32 v70, v15, v19
	v_mul_f32_e32 v80, v9, v21
	v_mul_f32_e32 v106, v11, v21
	v_mul_f32_e32 v108, v13, v21
	v_mul_f32_e32 v110, v15, v21
	v_mul_f32_e32 v121, v11, v22
	v_mul_f32_e32 v11, v11, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v128, v80, v151, v52
	v_fma_f32 v106, v106, v188, v64
	v_fma_f32 v107, v107, v189, v58
	v_fma_f32 v108, v108, v190, v56
	v_fma_f32 v109, v109, v191, v59
	v_fma_f32 v110, v110, v192, v105
	v_fma_f32 v120, v120, v203, v37
	v_fma_f32 v121, v121, v204, v140
	v_fma_f32 v122, v122, v205, v139
	v_fma_f32 v124, v124, v208, v137
	v_fma_f32 v10, v10, v220, v86
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v64, v64, v106, s2
	v_cndmask_b32_e64 v59, v59, v109, s2
	v_cndmask_b32_e64 v37, v37, v120, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v11, v11, v221, v87
	v_fma_f32 v12, v12, v222, v88
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[5:8], v157 offset:40976
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v79, v8, v21
	v_dual_mul_f32 v118, v8, v22 :: v_dual_mul_f32 v49, v5, v19
	v_mul_f32_e32 v50, v6, v19
	v_dual_mul_f32 v54, v7, v19 :: v_dual_mul_f32 v75, v5, v21
	v_mul_f32_e32 v76, v6, v21
	v_mul_f32_e32 v77, v7, v21
	v_mul_f32_e32 v115, v5, v22
	v_mul_f32_e32 v116, v6, v22
	v_mul_f32_e32 v117, v7, v22
	v_mul_f32_e32 v5, v5, v36
	v_mul_f32_e32 v6, v6, v36
	v_mul_f32_e32 v7, v7, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v92, v76, v182, v68
	v_fma_f32 v127, v79, v184, v51
	v_fma_f32 v5, v5, v215, v94
	v_fma_f32 v6, v6, v216, v93
	v_fma_f32 v126, v77, v183, v65
	v_fma_f32 v115, v115, v198, v43
	v_fma_f32 v116, v116, v199, v100
	v_fma_f32 v117, v117, v200, v99
	v_fma_f32 v118, v118, v201, v98
	v_fma_f32 v7, v7, v152, v82
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v43, v43, v115, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	s_waitcnt vmcnt(0)
	v_fma_f32 v55, v2, v0, v24
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	scratch_load_b32 v0, off, off offset:8  ; 4-byte Folded Reload
.Ltmp25:
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	ds_load_b128 v[1:4], v157 offset:40960
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v24, v24, v55, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v55, v8, v19
	v_mul_f32_e32 v8, v8, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v67, v125, v123, v53
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v123, v13, v22
	v_mul_f32_e32 v125, v15, v22
	v_mul_f32_e32 v13, v13, v36
	v_mul_f32_e32 v15, v15, v36
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v53, v53, v67, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v67, v14, v19
	v_mul_f32_e32 v14, v14, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v73, v131, v232, v47
	v_fma_f32 v123, v123, v206, v138
	v_fma_f32 v129, v81, v187, v53
	v_fma_f32 v125, v125, v209, v136
	v_fma_f32 v13, v13, v223, v89
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v47, v47, v73, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v41, v1, v19
	v_mul_f32_e32 v44, v2, v19
	v_mul_f32_e32 v45, v3, v19
	v_mul_f32_e32 v73, v3, v21
	v_mul_f32_e32 v113, v3, v22
	v_mul_f32_e32 v3, v3, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v72, v130, v119, v48
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v46, v4, v19
	v_mul_f32_e32 v19, v16, v19
	v_mul_f32_e32 v71, v1, v21
	v_mul_f32_e32 v74, v4, v21
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v48, v48, v72, s3
	.loc	1 424 24                        ; generate_amdgcn.py:424:24
	v_mul_f32_e32 v72, v2, v21
	v_mul_f32_e32 v21, v16, v21
	v_mul_f32_e32 v111, v1, v22
	v_mul_f32_e32 v112, v2, v22
	v_mul_f32_e32 v114, v4, v22
	v_mul_f32_e32 v119, v9, v22
	v_dual_mul_f32 v22, v16, v22 :: v_dual_mul_f32 v1, v1, v36
	v_mul_f32_e32 v2, v2, v36
	v_mul_f32_e32 v4, v4, v36
	v_mul_f32_e32 v9, v9, v36
	v_mul_f32_e32 v16, v16, v36
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v36, v41, v243, v23
	v_fma_f32 v41, v44, v161, v24
	v_fma_f32 v44, v45, v162, v25
	v_fma_f32 v45, v46, v163, v26
	v_fma_f32 v46, v49, v164, v27
	v_fma_f32 v49, v50, v165, v28
	v_fma_f32 v50, v54, v166, v29
	v_fma_f32 v54, v55, v155, v30
	v_fma_f32 v55, v57, v167, v31
	v_fma_f32 v57, v60, v170, v32
	v_fma_f32 v60, v62, v171, v33
	v_fma_f32 v62, v63, v172, v34
	v_fma_f32 v63, v66, v173, v35
	v_fma_f32 v66, v67, v174, v39
	v_fma_f32 v67, v70, v175, v40
	v_fma_f32 v70, v71, v177, v18
	v_fma_f32 v71, v72, v178, v17
	v_fma_f32 v1, v1, v211, v97
	v_fma_f32 v2, v2, v212, v96
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v81, v23, v36, s2
	v_cndmask_b32_e64 v80, v24, v41, s2
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v19, v19, v176, v20
	v_fma_f32 v72, v73, v179, v69
	v_fma_f32 v73, v74, v180, v47
	v_fma_f32 v74, v75, v181, v48
	v_fma_f32 v111, v111, v194, v103
	v_fma_f32 v112, v112, v195, v61
	v_fma_f32 v3, v3, v213, v78
	v_fma_f32 v4, v4, v214, v95
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v79, v26, v45, s2
	v_cndmask_b32_e64 v45, v27, v46, s2
	v_cndmask_b32_e64 v46, v28, v49, s2
	v_cndmask_b32_e64 v49, v29, v50, s2
	v_cndmask_b32_e64 v50, v30, v54, s2
	v_cndmask_b32_e64 v54, v31, v55, s2
	v_cndmask_b32_e64 v55, v32, v57, s2
	v_cndmask_b32_e64 v57, v33, v60, s2
	v_cndmask_b32_e64 v60, v34, v62, s2
	v_cndmask_b32_e64 v62, v35, v63, s2
	v_cndmask_b32_e64 v63, v39, v66, s2
	v_cndmask_b32_e64 v66, v40, v67, s2
	v_cndmask_b32_e64 v70, v18, v70, s2
	v_cndmask_b32_e64 v71, v17, v71, s2
	v_cndmask_b32_e64 v30, v97, v1, s2
	v_cndmask_b32_e64 v28, v96, v2, s2
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e64 v1, |v80|, |v80|
	v_max_f32_e64 v2, |v81|, |v81|
.Ltmp27:
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v114, v114, v197, v101
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v41, v25, v44, s2
	v_cndmask_b32_e64 v67, v20, v19, s2
	v_cndmask_b32_e64 v76, v47, v73, s2
	v_cndmask_b32_e64 v77, v48, v74, s2
	v_cndmask_b32_e64 v74, v68, v92, s2
	v_cndmask_b32_e64 v73, v51, v127, s2
	v_cndmask_b32_e64 v68, v52, v128, s2
	v_cndmask_b32_e64 v51, v103, v111, s2
	v_cndmask_b32_e64 v52, v61, v112, s2
	v_cndmask_b32_e64 v29, v78, v3, s2
	v_cndmask_b32_e64 v27, v95, v4, s2
	v_cndmask_b32_e64 v26, v94, v5, s2
	v_cndmask_b32_e64 v25, v93, v6, s2
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v1, v2, v1
	v_max3_f32 v2, |v79|, |v45|, |v46|
	v_max3_f32 v3, |v55|, |v57|, |v60|
	v_max3_f32 v4, |v62|, |v63|, |v66|
	v_max_f32_e64 v5, |v71|, |v71|
	v_max_f32_e64 v6, |v70|, |v70|
.Ltmp29:
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v21, v21, v193, v104
	v_fma_f32 v113, v113, v196, v102
	v_fma_f32 v119, v119, v202, v38
	v_fma_f32 v22, v22, v210, v135
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v75, v69, v72, s2
	v_cndmask_b32_e64 v72, v65, v126, s2
	v_cndmask_b32_e64 v69, v53, v129, s2
	v_cndmask_b32_e64 v65, v58, v107, s2
	v_cndmask_b32_e64 v58, v56, v108, s2
	v_cndmask_b32_e64 v56, v105, v110, s2
	v_cndmask_b32_e64 v48, v101, v114, s2
	v_cndmask_b32_e64 v44, v100, v116, s2
	v_cndmask_b32_e64 v35, v140, v121, s2
	v_cndmask_b32_e64 v36, v139, v122, s2
	v_cndmask_b32_e64 v34, v138, v123, s2
	v_cndmask_b32_e64 v33, v137, v124, s2
	v_cndmask_b32_e64 v31, v136, v125, s2
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v1, v1, |v41|, v2
	v_max3_f32 v2, v3, v4, |v67|
	v_max_f32_e32 v3, v6, v5
	v_max_f32_e64 v4, |v52|, |v52|
	v_max_f32_e64 v5, |v51|, |v51|
.Ltmp31:
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v8, v8, v153, v83
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v53, v104, v21, s2
	v_cndmask_b32_e64 v47, v102, v113, s2
	v_cndmask_b32_e64 v39, v99, v117, s2
	v_cndmask_b32_e64 v40, v98, v118, s2
	v_cndmask_b32_e64 v38, v38, v119, s2
	v_cndmask_b32_e64 v32, v135, v22, s2
	v_cndmask_b32_e64 v24, v86, v10, s2
	v_cndmask_b32_e64 v10, v89, v13, s2
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v6, |v76|, |v77|, |v74|
	v_max3_f32 v13, |v69|, |v64|, |v65|
	v_max3_f32 v17, |v58|, |v59|, |v56|
	v_max_f32_e32 v4, v5, v4
	v_max3_f32 v5, |v48|, |v43|, |v44|
	v_max3_f32 v18, |v37|, |v35|, |v36|
	v_max3_f32 v19, |v34|, |v33|, |v31|
.Ltmp33:
	.loc	1 429 13                        ; generate_amdgcn.py:429:13
	v_fma_f32 v9, v9, v219, v85
	v_fma_f32 v130, v14, v224, v90
	v_fma_f32 v131, v15, v225, v91
	v_fma_f32 v132, v16, v226, v84
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v15, v82, v7, s2
	v_cndmask_b32_e64 v16, v83, v8, s2
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v7, |v49|, |v50|, |v54|
	v_max3_f32 v8, |v72|, |v73|, |v68|
	v_max3_f32 v3, v3, |v75|, v6
	v_max3_f32 v6, v13, v17, |v53|
	v_max3_f32 v17, |v39|, |v40|, |v38|
	v_max3_f32 v4, v4, |v47|, v5
	v_max3_f32 v5, v18, v19, |v32|
.Ltmp35:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v23, v85, v9, s2
	v_cndmask_b32_e64 v14, v87, v11, s2
	v_cndmask_b32_e64 v9, v88, v12, s2
	v_cndmask_b32_e64 v11, v90, v130, s2
	v_cndmask_b32_e64 v12, v91, v131, s2
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e64 v18, |v28|, |v28|
	v_max_f32_e64 v19, |v30|, |v30|
	v_max3_f32 v1, v1, v7, v2
	v_max3_f32 v2, v3, v8, v6
	v_max3_f32 v3, v4, v17, v5
.Ltmp37:
	.loc	1 363 5                         ; generate_amdgcn.py:363:5
	v_cndmask_b32_e64 v13, v84, v132, s2
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v4, v19, v18
	v_max3_f32 v5, |v27|, |v26|, |v25|
	v_max3_f32 v7, |v24|, |v14|, |v9|
	v_max3_f32 v8, |v10|, |v11|, |v12|
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v17, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v3, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v6, |v15|, |v16|, |v23|
	v_max3_f32 v4, v4, |v29|, v5
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v5, v1, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max3_f32 v7, v7, v8, |v13|
	v_dual_max_f32 v8, v17, v17 :: v_dual_max_f32 v19, v18, v18
.Ltmp43:
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v83.h, v42.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v5, v5, v5
	v_max3_f32 v20, v4, v6, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_max_f32 v18, v2, v8 :: v_dual_max_f32 v19, v3, v19
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_and_b32_e32 v2, 4, v238
	v_lshl_add_u32 v3, v245, 9, 0
	v_lshlrev_b32_e32 v4, 5, v245
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v17, v1, v5
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_permlanex16_b32 v1, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v7, 0x60, v238
	v_and_b32_e32 v5, 0x80, v238
	v_and_b32_e32 v8, 8, v238
	v_lshl_add_u32 v3, v2, 2, v3
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v1, v1, v1
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_xor_b32_e32 v22, v4, v7
	v_lshlrev_b32_e32 v6, 1, v5
	v_lshrrev_b32_e32 v61, 3, v5
	v_lshl_add_u32 v3, v8, 4, v3
	v_lshl_add_u32 v78, v2, 6, 0
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v20, v20, v1
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add_nc_u32_e32 v5, 0, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v1, v3, v6, v22
	ds_store_b128 v1, v[17:20]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	v_and_or_b32 v21, 0x680, v0, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v21, v21, v7
	v_add3_u32 v3, v78, v61, v21
	ds_load_b128 v[17:20], v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v1, v17
	v_mov_b32_e32 v3, v18
	v_mov_b32_e32 v21, v19
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v17, v17, v17 :: v_dual_max_f32 v22, v20, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v1, v1 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v21, v21 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v18, v18, v18 :: v_dual_max_f32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v1, v17, v1
	v_max_f32_e32 v17, v19, v19
	v_max_f32_e32 v19, v20, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v3, v18, v3 :: v_dual_max_f32 v18, v21, v21
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_e32 v20, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v17, v17, v18 :: v_dual_lshlrev_b32 v8, 3, v8
	v_max_f32_e32 v18, v22, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v22, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v20, v20, v20
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v22, v22 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v21, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v1, v1, v20 :: v_dual_max_f32 v20, v22, v22
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_mov_b32_dpp v21, v21 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_dual_max_f32 v20, v18, v20 :: v_dual_max_f32 v21, v21, v21
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_dual_mov_b32 v78, v20 :: v_dual_max_f32 v3, v3, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v21, v1
	v_mov_b32_dpp v78, v78 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v22, v3
	v_mov_b32_dpp v21, v21 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v22, v22 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v19, v17 :: v_dual_max_f32 v18, v22, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v18, v3, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v19, v19, v19
	v_max_f32_e32 v3, v78, v78
	v_max_f32_e32 v19, v17, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v17, v21, v21 :: v_dual_max_f32 v20, v20, v3
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshrrev_b32_e32 v21, 1, v7
	v_mov_b32_e32 v61, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v17, v1, v17
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_add3_u32 v3, v5, v21, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v61, v61 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ] ]
	v_max_f32_e32 v1, v61, v61
	s_delay_alu instid0(VALU_DEP_1)
	v_max_f32_e32 v19, v19, v1
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:446:9 ] ]
	v_lshlrev_b32_e32 v1, 5, v2
	v_add_nc_u32_e32 v2, 0, v244
	ds_store_b128 v3, v[17:20]
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v1, v2, v1, v8
	s_barrier
	scratch_load_b32 v0, off, off offset:4  ; 4-byte Folded Reload
	ds_load_b128 v[17:20], v1
.Ltmp70:
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_dual_max_f32 v1, v17, v17 :: v_dual_max_f32 v8, v19, v19
	v_max_f32_e32 v18, v18, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v20, v20, v20 :: v_dual_max_f32 v1, 0x2b8cbccc, v1
	v_dual_max_f32 v17, 0x2b8cbccc, v8 :: v_dual_max_f32 v18, 0x2b8cbccc, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v20, 0x2b8cbccc, v20
	v_div_scale_f32 v2, null, 0x40e00000, 0x40e00000, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v19, null, 0x40e00000, 0x40e00000, v17
	v_div_scale_f32 v61, null, 0x40e00000, 0x40e00000, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v3, v2
	v_rcp_f32_e32 v22, v19
	v_div_scale_f32 v84, s0, v18, 0x40e00000, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v78, v61
	v_div_scale_f32 v85, s1, v20, 0x40e00000, v20
	v_fma_f32 v5, -v2, v3, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v3, v5, v3
	v_div_scale_f32 v5, vcc_lo, v1, 0x40e00000, v1
	v_mul_f32_e32 v8, v5, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v2, v8, v5
	v_fmac_f32_e32 v8, v21, v3
	v_div_scale_f32 v21, null, 0x40e00000, 0x40e00000, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v2, -v2, v8, v5
	v_fma_f32 v5, -v19, v22, 1.0
	v_div_fmas_f32 v2, v2, v3, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v22, v5, v22
	v_rcp_f32_e32 v5, v21
	v_div_scale_f32 v3, vcc_lo, v17, 0x40e00000, v17
	v_div_fixup_f32 v1, v2, 0x40e00000, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v2, v3, v22
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v83.l, v1.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v8, -v21, v5, 1.0
	v_fma_f32 v82, -v19, v2, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v5, v8, v5
	v_fma_f32 v8, -v61, v78, 1.0
	v_fmac_f32_e32 v2, v82, v22
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v82, 1, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v83, v84, v5
	v_fmac_f32_e32 v78, v8, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v8, -v19, v2, v3
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v3, v1, v82, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v1, -v21, v83, v84
	v_mul_f32_e32 v19, v85, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v2, v8, v22, v2
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v82, 0xffff0000, v3
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v83, v1, v5
	v_fma_f32 v1, -v61, v19, v85
	v_div_fixup_f32 v2, v2, 0x40e00000, v17
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v87, null, v82, v82, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v17, -v21, v83, v84
	v_fmac_f32_e32 v19, v1, v78
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v21, null, v82, v82, v81
	v_div_scale_f32 v88, s0, v80, v82, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v1, v17, v5, v83
	v_fma_f32 v17, -v61, v19, v85
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v85, null, v82, v82, v41
	v_rcp_f32_e32 v22, v21
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	s_mov_b32 vcc_lo, s1
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v5.l, v2.h
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 78 29 is_stmt 1               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v86, v85
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v5.h, v42.l
	.loc	1 76 14 is_stmt 0               ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v18, v1, 0x40e00000, v18
	v_div_fmas_f32 v1, v17, v78, v19
	.loc	1 78 29 is_stmt 1               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_scale_f32 v19, null, v82, v82, v80
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v61.h, v42.l
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v17, -v21, v22, 1.0
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v61.l, v18.h
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_rcp_f32_e32 v83, v19
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v89, -v85, v86, 1.0
	v_div_scale_f32 v84, vcc_lo, v81, v82, v81
	v_fmac_f32_e32 v22, v17, v22
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v20, v1, 0x40e00000, v20
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_dual_fmac_f32 v86, v89, v86 :: v_dual_and_b32 v5, 1, v5
	v_div_scale_f32 v89, s1, v41, v82, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v17, -v19, v83, 1.0
	v_div_scale_f32 v91, null, v82, v82, v45
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v1, v2, v5, 0x7fff
	v_mov_b16_e32 v2.h, v42.l
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_dual_mul_f32 v42, v84, v22 :: v_dual_and_b32 v5, 1, v61
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_mov_b16_e32 v2.l, v20.h
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v83, v17, v83
	v_div_scale_f32 v92, null, v82, v82, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v5, v18, v5, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v18, -v21, v42, v84
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v2, 1, v2
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v78, 0xffff0000, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v42, v18, v22
	v_rcp_f32_e32 v18, v87
	.loc	1 76 13 is_stmt 1               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v2, v20, v2, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_mul_f32_e32 v20, v88, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v21, -v21, v42, v84
	v_fma_f32 v84, -v19, v20, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v21, v21, v22, v42
	v_fma_f32 v90, -v87, v18, 1.0
	v_mul_f32_e32 v42, v89, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v20, v84, v83
	v_rcp_f32_e32 v84, v91
	v_div_fixup_f32 v21, v21, v82, v81
	v_fmac_f32_e32 v18, v90, v18
	v_div_scale_f32 v90, s2, v79, v82, v79
	v_fma_f32 v19, -v19, v20, v88
	v_fma_f32 v22, -v85, v42, v89
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v81, v90, v18
	v_rcp_f32_e32 v88, v92
	v_fma_f32 v93, -v91, v84, 1.0
	v_div_fmas_f32 v19, v19, v83, v20
	v_fmac_f32_e32 v42, v22, v86
	v_fma_f32 v20, -v87, v81, v90
	v_div_scale_f32 v83, s0, v45, v82, v45
	v_fmac_f32_e32 v84, v93, v84
	v_div_fixup_f32 v22, v19, v82, v80
	v_fma_f32 v19, -v85, v42, v89
	v_fmac_f32_e32 v81, v20, v18
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v20, v83, v84
	v_fma_f32 v93, -v92, v88, 1.0
	v_div_fmas_f32 v19, v19, v86, v42
	v_fma_f32 v42, -v87, v81, v90
	v_div_scale_f32 v90, null, v82, v82, v50
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v86, -v91, v20, v83
	v_div_fmas_f32 v18, v42, v18, v81
	v_rcp_f32_e32 v81, v90
	v_div_scale_f32 v85, null, v82, v82, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v20, v86, v84
	v_div_fixup_f32 v42, v18, v82, v79
	v_dual_fmac_f32 v88, v93, v88 :: v_dual_and_b32 v61, 0xffff0000, v1
	v_div_scale_f32 v80, s3, v46, v82, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v18, -v91, v20, v83
	v_fma_f32 v79, -v90, v81, 1.0
	v_div_scale_f32 v83, null, v82, v82, v54
	v_rcp_f32_e32 v87, v85
	v_mul_f32_e32 v89, v80, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v79, v81
	v_rcp_f32_e32 v79, v83
	v_div_fixup_f32 v41, v19, v82, v41
	v_div_scale_f32 v19, s1, v49, v82, v49
	v_fma_f32 v86, -v92, v89, v80
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v93, -v85, v87, 1.0
	v_div_fmas_f32 v18, v18, v84, v20
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v91, -v83, v79, 1.0
	v_div_scale_f32 v84, s0, v50, v82, v50
	v_fmac_f32_e32 v87, v93, v87
	.loc	1 78 35 is_stmt 0               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v17, 0xffff0000, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v79, v91, v79
	v_fmac_f32_e32 v89, v86, v88
	v_div_scale_f32 v86, null, v82, v82, v55
	v_div_fixup_f32 v45, v18, v82, v45
	v_div_scale_f32 v93, null, v82, v82, v60
	v_fma_f32 v20, -v92, v89, v80
	v_mul_f32_e32 v80, v19, v87
	v_rcp_f32_e32 v92, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v20, v20, v88, v89
	v_fma_f32 v88, -v85, v80, v19
	v_mul_f32_e32 v89, v84, v81
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v46, v20, v82, v46
	v_fmac_f32_e32 v80, v88, v87
	v_div_scale_f32 v88, null, v82, v82, v57
	v_fma_f32 v18, -v90, v89, v84
	v_div_scale_f32 v20, s2, v54, v82, v54
	v_fma_f32 v91, -v86, v92, 1.0
	v_fma_f32 v19, -v85, v80, v19
	v_rcp_f32_e32 v85, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v89, v18, v81 :: v_dual_mul_f32 v18, v20, v79
	v_fmac_f32_e32 v92, v91, v92
	v_div_scale_f32 v91, s3, v55, v82, v55
	v_div_fmas_f32 v19, v19, v87, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v80, -v90, v89, v84
	v_fma_f32 v84, -v83, v18, v20
	v_mul_f32_e32 v87, v91, v92
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v90, -v88, v85, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v49, v19, v82, v49
	v_fmac_f32_e32 v18, v84, v79
	v_div_fmas_f32 v80, v80, v81, v89
	v_rcp_f32_e32 v81, v93
	v_fma_f32 v84, -v86, v87, v91
	v_fmac_f32_e32 v85, v90, v85
	v_div_scale_f32 v89, s0, v57, v82, v57
	v_fma_f32 v19, -v83, v18, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v87, v84, v92
	s_mov_b32 vcc_lo, s2
	v_mul_f32_e32 v20, v89, v85
	v_div_fixup_f32 v50, v80, v82, v50
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v80, -v93, v81, 1.0
	v_div_scale_f32 v83, null, v82, v82, v62
	v_div_fmas_f32 v18, v19, v79, v18
	v_fma_f32 v19, -v86, v87, v91
	v_fma_f32 v79, -v88, v20, v89
	v_div_scale_f32 v86, null, v82, v82, v63
	v_fmac_f32_e32 v81, v80, v81
	v_rcp_f32_e32 v80, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v20, v79, v85
	v_rcp_f32_e32 v79, v86
	v_div_scale_f32 v84, s1, v60, v82, v60
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v54, v18, v82, v54
	v_div_fmas_f32 v19, v19, v92, v87
	v_mul_f32_e32 v87, v84, v81
	v_fma_f32 v18, -v88, v20, v89
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v90, -v83, v80, 1.0
	v_div_scale_f32 v88, s2, v62, v82, v62
	v_fma_f32 v89, -v86, v79, 1.0
	v_div_fixup_f32 v55, v19, v82, v55
	v_fma_f32 v19, -v93, v87, v84
	v_fmac_f32_e32 v80, v90, v80
	v_div_scale_f32 v90, null, v82, v82, v66
	v_fmac_f32_e32 v79, v89, v79
	v_div_scale_f32 v89, null, v82, v82, v67
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v87, v19, v81
	v_div_fmas_f32 v18, v18, v85, v20
	v_mul_f32_e32 v19, v88, v80
	v_rcp_f32_e32 v20, v90
	v_div_scale_f32 v85, s0, v63, v82, v63
	v_rcp_f32_e32 v92, v89
	v_div_fixup_f32 v57, v18, v82, v57
	v_fma_f32 v18, -v93, v87, v84
	v_fma_f32 v84, -v83, v19, v88
	v_mul_f32_e32 v91, v85, v79
	s_mov_b32 vcc_lo, s1
.Ltmp71:
	.loc	1 355 32 is_stmt 1              ; generate_amdgcn.py:355:32
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v8, 4, v0
.Ltmp72:
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v93, -v90, v20, 1.0
	v_div_fmas_f32 v18, v18, v81, v87
	v_fmac_f32_e32 v19, v84, v80
	v_fma_f32 v81, -v86, v91, v85
	v_fma_f32 v87, -v89, v92, 1.0
	v_fmac_f32_e32 v20, v93, v20
	v_div_scale_f32 v84, s1, v66, v82, v66
	v_div_fixup_f32 v60, v18, v82, v60
	v_fma_f32 v18, -v83, v19, v88
	v_dual_fmac_f32 v91, v81, v79 :: v_dual_fmac_f32 v92, v87, v92
	v_div_scale_f32 v87, null, v78, v78, v70
	s_mov_b32 vcc_lo, s2
	v_mul_f32_e32 v81, v84, v20
	v_div_scale_f32 v83, s3, v67, v82, v67
	v_div_fmas_f32 v18, v18, v80, v19
	v_fma_f32 v19, -v86, v91, v85
	v_rcp_f32_e32 v85, v87
	v_div_scale_f32 v88, null, v78, v78, v71
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v80, -v90, v81, v84
	v_mul_f32_e32 v86, v83, v92
	v_div_fmas_f32 v19, v19, v79, v91
	v_rcp_f32_e32 v79, v88
	v_div_fixup_f32 v62, v18, v82, v62
	v_fmac_f32_e32 v81, v80, v20
	v_fma_f32 v80, -v89, v86, v83
	v_fma_f32 v91, -v87, v85, 1.0
	v_div_fixup_f32 v63, v19, v82, v63
	v_div_scale_f32 v19, s0, v70, v78, v70
	v_fma_f32 v18, -v90, v81, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v86, v80, v92 :: v_dual_fmac_f32 v85, v91, v85
	v_fma_f32 v80, -v88, v79, 1.0
	v_div_scale_f32 v84, null, v78, v78, v75
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v18, v18, v20, v81
	v_fma_f32 v20, -v89, v86, v83
	v_mul_f32_e32 v81, v19, v85
	v_fmac_f32_e32 v79, v80, v79
	v_rcp_f32_e32 v80, v84
	v_div_scale_f32 v83, s1, v71, v78, v71
	v_div_scale_f32 v89, null, v78, v78, v76
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v90, v83, v79
	v_div_fmas_f32 v20, v20, v92, v86
	v_fma_f32 v86, -v87, v81, v19
	v_rcp_f32_e32 v92, v89
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v84, v80, 1.0
	v_div_fixup_f32 v66, v18, v82, v66
	v_fma_f32 v18, -v88, v90, v83
	v_fmac_f32_e32 v81, v86, v85
	v_div_fixup_f32 v67, v20, v82, v67
	v_fmac_f32_e32 v80, v91, v80
	v_div_scale_f32 v20, s2, v75, v78, v75
	v_div_scale_f32 v82, null, v78, v78, v77
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v86, -v89, v92, 1.0
	v_fma_f32 v19, -v87, v81, v19
	v_fmac_f32_e32 v90, v18, v79
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v18, v20, v80
	v_rcp_f32_e32 v87, v82
	v_fmac_f32_e32 v92, v86, v92
	v_div_scale_f32 v86, s3, v76, v78, v76
	v_div_fmas_f32 v19, v19, v85, v81
	v_fma_f32 v81, -v88, v90, v83
	v_div_scale_f32 v91, null, v78, v78, v74
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v83, -v84, v18, v20
	v_mul_f32_e32 v85, v86, v92
	v_div_fmas_f32 v79, v81, v79, v90
	v_rcp_f32_e32 v81, v91
	v_fma_f32 v88, -v82, v87, 1.0
	v_fmac_f32_e32 v18, v83, v80
	v_fma_f32 v83, -v89, v85, v86
	v_div_fixup_f32 v71, v79, v78, v71
	v_div_fixup_f32 v70, v19, v78, v70
	v_fmac_f32_e32 v87, v88, v87
	v_div_scale_f32 v88, s0, v77, v78, v77
	v_fmac_f32_e32 v85, v83, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v79, -v91, v81, 1.0
	v_div_scale_f32 v83, null, v78, v78, v72
	v_fma_f32 v19, -v84, v18, v20
	v_dual_mul_f32 v20, v88, v87 :: v_dual_fmac_f32 v81, v79, v81
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v79, v83
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v84, s1, v74, v78, v74
	v_div_fmas_f32 v18, v19, v80, v18
	v_fma_f32 v19, -v89, v85, v86
	v_fma_f32 v80, -v82, v20, v88
	v_div_scale_f32 v86, null, v78, v78, v73
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v83, v79, 1.0
	v_fmac_f32_e32 v20, v80, v87
	v_rcp_f32_e32 v80, v86
	v_div_fmas_f32 v19, v19, v92, v85
	v_mul_f32_e32 v85, v84, v81
	v_div_fixup_f32 v75, v18, v78, v75
	v_fma_f32 v18, -v82, v20, v88
	v_fmac_f32_e32 v79, v89, v79
	v_div_scale_f32 v89, null, v78, v78, v68
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v76, v19, v78, v76
	v_fma_f32 v19, -v91, v85, v84
	v_div_scale_f32 v82, s2, v72, v78, v72
	v_fma_f32 v88, -v86, v80, 1.0
	v_div_fmas_f32 v18, v18, v87, v20
	v_rcp_f32_e32 v20, v89
	v_fmac_f32_e32 v85, v19, v81
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v19, v82, v79 :: v_dual_fmac_f32 v80, v88, v80
	v_div_scale_f32 v87, s0, v73, v78, v73
	v_div_scale_f32 v88, null, v78, v78, v69
	v_div_fixup_f32 v77, v18, v78, v77
	v_fma_f32 v18, -v91, v85, v84
	v_fma_f32 v84, -v83, v19, v82
	v_mul_f32_e32 v90, v87, v80
	v_rcp_f32_e32 v91, v88
	v_fma_f32 v92, -v89, v20, 1.0
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v19, v84, v79
	v_div_fmas_f32 v18, v18, v81, v85
	v_fma_f32 v81, -v86, v90, v87
	v_fmac_f32_e32 v20, v92, v20
	v_div_scale_f32 v84, s1, v68, v78, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v74, v18, v78, v74
	v_fma_f32 v85, -v88, v91, 1.0
	v_fma_f32 v18, -v83, v19, v82
	v_fmac_f32_e32 v90, v81, v80
	v_mul_f32_e32 v81, v84, v20
	v_div_scale_f32 v83, null, v78, v78, v64
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v91, v85, v91
	v_div_scale_f32 v82, s3, v69, v78, v69
	v_div_fmas_f32 v18, v18, v79, v19
	v_fma_f32 v19, -v86, v90, v87
	v_fma_f32 v79, -v89, v81, v84
	v_rcp_f32_e32 v85, v83
	v_div_scale_f32 v87, null, v78, v78, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v86, v82, v91 :: v_dual_fmac_f32 v81, v79, v20
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v79, v87
	v_div_fmas_f32 v19, v19, v80, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v80, -v88, v86, v82
	v_div_fixup_f32 v72, v18, v78, v72
	v_fma_f32 v90, -v83, v85, 1.0
	v_fma_f32 v18, -v89, v81, v84
	v_div_fixup_f32 v73, v19, v78, v73
	v_fmac_f32_e32 v86, v80, v91
	v_div_scale_f32 v19, s0, v64, v78, v64
	v_fmac_f32_e32 v85, v90, v85
	v_fma_f32 v80, -v87, v79, 1.0
	v_div_scale_f32 v84, null, v78, v78, v58
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v92, null, v78, v78, v53
	v_div_fmas_f32 v18, v18, v20, v81
	v_fma_f32 v20, -v88, v86, v82
	v_mul_f32_e32 v81, v19, v85
	v_fmac_f32_e32 v79, v80, v79
	v_rcp_f32_e32 v80, v84
	v_div_scale_f32 v82, s1, v65, v78, v65
	v_div_scale_f32 v88, null, v78, v78, v59
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v89, v82, v79
	v_div_fmas_f32 v20, v20, v91, v86
	v_fma_f32 v86, -v83, v81, v19
	v_rcp_f32_e32 v91, v88
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v84, v80, 1.0
	v_div_fixup_f32 v68, v18, v78, v68
	v_fma_f32 v18, -v87, v89, v82
	v_fmac_f32_e32 v81, v86, v85
	v_div_fixup_f32 v69, v20, v78, v69
	v_fmac_f32_e32 v80, v90, v80
	v_div_scale_f32 v20, s2, v58, v78, v58
	v_div_scale_f32 v86, null, v78, v78, v56
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v90, -v88, v91, 1.0
	v_fma_f32 v19, -v83, v81, v19
	v_fmac_f32_e32 v89, v18, v79
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v18, v20, v80
	v_rcp_f32_e32 v83, v86
	v_fmac_f32_e32 v91, v90, v91
	v_div_scale_f32 v90, s3, v59, v78, v59
	v_div_fmas_f32 v19, v19, v85, v81
	v_fma_f32 v81, -v87, v89, v82
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v82, -v84, v18, v20
	v_mul_f32_e32 v85, v90, v91
	v_div_fixup_f32 v64, v19, v78, v64
	v_div_fmas_f32 v79, v81, v79, v89
	v_rcp_f32_e32 v81, v92
	v_fma_f32 v87, -v86, v83, 1.0
	v_fmac_f32_e32 v18, v82, v80
	v_fma_f32 v82, -v88, v85, v90
	v_div_fixup_f32 v65, v79, v78, v65
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v83, v87, v83
	v_div_scale_f32 v87, s0, v56, v78, v56
	v_fmac_f32_e32 v85, v82, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v92, v81, 1.0
	v_div_scale_f32 v82, null, v61, v61, v51
	v_fma_f32 v19, -v84, v18, v20
	v_mul_f32_e32 v20, v87, v83
	v_fmac_f32_e32 v81, v79, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v79, v82
	v_div_scale_f32 v84, s1, v53, v78, v53
	v_div_fmas_f32 v18, v19, v80, v18
	v_fma_f32 v19, -v88, v85, v90
	v_fma_f32 v80, -v86, v20, v87
	v_div_scale_f32 v88, null, v61, v61, v52
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v58, v18, v78, v58
	v_fmac_f32_e32 v20, v80, v83
	v_rcp_f32_e32 v80, v88
	v_fma_f32 v89, -v82, v79, 1.0
	v_div_fmas_f32 v19, v19, v91, v85
	v_mul_f32_e32 v85, v84, v81
	v_fma_f32 v18, -v86, v20, v87
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v79, v89, v79
	v_div_scale_f32 v89, null, v61, v61, v47
	v_div_fixup_f32 v59, v19, v78, v59
	v_fma_f32 v19, -v92, v85, v84
	v_div_scale_f32 v86, s2, v51, v61, v51
	v_fma_f32 v87, -v88, v80, 1.0
	v_div_fmas_f32 v18, v18, v83, v20
	v_rcp_f32_e32 v20, v89
	v_fmac_f32_e32 v85, v19, v81
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v19, v86, v79 :: v_dual_fmac_f32 v80, v87, v80
	v_div_scale_f32 v83, s0, v52, v61, v52
	v_div_scale_f32 v87, null, v61, v61, v48
	v_div_fixup_f32 v56, v18, v78, v56
	v_fma_f32 v18, -v92, v85, v84
	v_fma_f32 v84, -v82, v19, v86
	v_mul_f32_e32 v90, v83, v80
	v_rcp_f32_e32 v91, v87
	v_fma_f32 v92, -v89, v20, 1.0
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v19, v84, v79
	v_div_fmas_f32 v18, v18, v81, v85
	v_fma_f32 v81, -v88, v90, v83
	v_fmac_f32_e32 v20, v92, v20
	v_div_scale_f32 v84, s1, v47, v61, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v53, v18, v78, v53
	v_fma_f32 v85, -v87, v91, 1.0
	v_fma_f32 v18, -v82, v19, v86
	v_fmac_f32_e32 v90, v81, v80
	v_mul_f32_e32 v78, v84, v20
	v_div_scale_f32 v82, null, v61, v61, v43
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v91, v85, v91
	v_div_scale_f32 v81, s3, v48, v61, v48
	v_div_fmas_f32 v18, v18, v79, v19
	v_fma_f32 v19, -v88, v90, v83
	v_fma_f32 v79, -v89, v78, v84
	v_rcp_f32_e32 v83, v82
	v_div_scale_f32 v86, null, v61, v61, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v85, v81, v91 :: v_dual_fmac_f32 v78, v79, v20
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v79, v86
	v_div_fmas_f32 v19, v19, v80, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v80, -v87, v85, v81
	v_div_fixup_f32 v51, v18, v61, v51
	v_fma_f32 v88, -v82, v83, 1.0
	v_fma_f32 v18, -v89, v78, v84
	v_div_fixup_f32 v52, v19, v61, v52
	v_fmac_f32_e32 v85, v80, v91
	v_div_scale_f32 v19, s0, v43, v61, v43
	v_fmac_f32_e32 v83, v88, v83
	v_fma_f32 v80, -v86, v79, 1.0
	v_div_scale_f32 v84, null, v61, v61, v39
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v69, v69
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v18, v18, v20, v78
	v_fma_f32 v20, -v87, v85, v81
	v_mul_f32_e32 v78, v19, v83
	v_fmac_f32_e32 v79, v80, v79
	v_rcp_f32_e32 v80, v84
	v_div_scale_f32 v81, s1, v44, v61, v44
	v_div_scale_f32 v87, null, v61, v61, v40
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v88, v81, v79
	v_div_fmas_f32 v20, v20, v91, v85
	v_fma_f32 v85, -v82, v78, v19
	v_rcp_f32_e32 v90, v87
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v84, v80, 1.0
	v_div_fixup_f32 v47, v18, v61, v47
	v_fma_f32 v18, -v86, v88, v81
	v_fmac_f32_e32 v78, v85, v83
	v_div_scale_f32 v85, null, v61, v61, v38
	v_div_fixup_f32 v48, v20, v61, v48
	v_fmac_f32_e32 v80, v89, v80
	v_div_scale_f32 v20, s2, v39, v61, v39
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v87, v90, 1.0
	v_fma_f32 v19, -v82, v78, v19
	v_fmac_f32_e32 v88, v18, v79
	v_rcp_f32_e32 v82, v85
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v18, v20, v80
	v_fmac_f32_e32 v90, v89, v90
	v_div_scale_f32 v89, s3, v40, v61, v40
	v_div_fmas_f32 v19, v19, v83, v78
	v_fma_f32 v78, -v86, v88, v81
	v_div_scale_f32 v91, null, v61, v61, v37
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v81, -v84, v18, v20
	v_mul_f32_e32 v83, v89, v90
	v_fma_f32 v86, -v85, v82, 1.0
	v_div_fmas_f32 v78, v78, v79, v88
	v_rcp_f32_e32 v79, v91
	v_fmac_f32_e32 v18, v81, v80
	v_fma_f32 v81, -v87, v83, v89
	v_fmac_f32_e32 v82, v86, v82
	v_div_scale_f32 v86, s0, v38, v61, v38
	v_div_fixup_f32 v43, v19, v61, v43
	v_div_fixup_f32 v44, v78, v61, v44
	v_fma_f32 v19, -v84, v18, v20
	v_fmac_f32_e32 v83, v81, v90
	v_mul_f32_e32 v20, v86, v82
	v_fma_f32 v78, -v91, v79, 1.0
	v_div_scale_f32 v81, null, v61, v61, v35
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v84, s1, v37, v61, v37
	v_div_fmas_f32 v18, v19, v80, v18
	v_fma_f32 v19, -v87, v83, v89
	v_fma_f32 v80, -v85, v20, v86
	v_fmac_f32_e32 v79, v78, v79
	v_rcp_f32_e32 v78, v81
	v_div_scale_f32 v87, null, v61, v61, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v20, v80, v82
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v39, v18, v61, v39
	v_rcp_f32_e32 v80, v87
	v_div_fmas_f32 v19, v19, v90, v83
	v_mul_f32_e32 v83, v84, v79
	v_fma_f32 v18, -v85, v20, v86
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v81, v78, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v40, v19, v61, v40
	v_fma_f32 v19, -v91, v83, v84
	v_div_scale_f32 v85, s2, v35, v61, v35
	v_fmac_f32_e32 v78, v88, v78
	v_fma_f32 v86, -v87, v80, 1.0
	v_div_scale_f32 v88, null, v61, v61, v34
	v_div_fmas_f32 v18, v18, v82, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v83, v19, v79 :: v_dual_fmac_f32 v80, v86, v80
	v_rcp_f32_e32 v20, v88
	v_div_scale_f32 v86, null, v61, v61, v33
	v_mul_f32_e32 v19, v85, v78
	v_div_scale_f32 v82, s0, v36, v61, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v90, v86
	v_div_fixup_f32 v18, v18, v61, v38
	v_fma_f32 v38, -v91, v83, v84
	v_fma_f32 v84, -v81, v19, v85
	v_mul_f32_e32 v89, v82, v80
	v_fma_f32 v91, -v88, v20, 1.0
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v65, v65
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v38, v38, v79, v83
	v_fmac_f32_e32 v19, v84, v78
	v_fma_f32 v79, -v87, v89, v82
	v_fmac_f32_e32 v20, v91, v20
	v_div_scale_f32 v83, s1, v34, v61, v34
	v_fma_f32 v84, -v86, v90, 1.0
	v_div_fixup_f32 v37, v38, v61, v37
	v_fma_f32 v38, -v81, v19, v85
	v_fmac_f32_e32 v89, v79, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v79, v83, v20 :: v_dual_fmac_f32 v90, v84, v90
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
	v_fmac_f32_e32 v79, v78, v20
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
	v_div_fmas_f32 v20, v36, v20, v79
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
	v_div_fixup_f32 v20, v20, v61, v34
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
	v_rndne_f32_e32 v59, v59
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
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v91, -v85, v87, 1.0
	v_fma_f32 v34, -v36, v61, 1.0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v86, -v38, v80, 1.0
	v_rcp_f32_e32 v82, v78
	v_fma_f32 v88, -v81, v84, v79
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v14, v14
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
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v32, v32
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
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
	v_med3_f32 v69, v69, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v38, -v38, v92, v86
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v65, v65, s0, 0x40e00000
	v_med3_f32 v59, v59, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v34, v34, v61, v90
	s_mov_b32 vcc_lo, s1
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v69, v69
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v38, v38, v80, v92
	v_mul_f32_e32 v93, v89, v82
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v65, v65
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s3, v13, v17, v13
	v_div_fixup_f32 v11, v38, v17, v11
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v38, v46
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v88, -v78, v93, v89
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v94, v91, v87
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_cvt_i32_f32_e32 v59, v59
	v_med3_f32 v38, v38, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v93, v88, v82
	v_fma_f32 v36, -v85, v94, v91
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v95, v14
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	s_mov_b32 vcc_lo, s2
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v38, v38
	v_med3_f32 v32, v32, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fmac_f32_e32 v94, v36, v87
	v_div_fixup_f32 v9, v79, v17, v9
	v_div_fixup_f32 v10, v34, v17, v10
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v14, 15, v38
	v_and_b32_e32 v38, 15, v59
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_fma_f32 v36, -v78, v93, v89
	v_fma_f32 v61, -v85, v94, v91
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v43, v43
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v84, v32
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v34, v42
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v36, v36, v82, v93
	s_mov_b32 vcc_lo, s3
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v9, v9
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fmas_f32 v61, v61, v87, v94
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v43, v43, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v12, v36, v17, v12
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v36, v45
	v_rndne_f32_e32 v45, v54
	v_rndne_f32_e32 v54, v62
	v_rndne_f32_e32 v62, v71
	v_rndne_f32_e32 v71, v72
	v_rndne_f32_e32 v72, v73
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:446:9 ]
	v_div_fixup_f32 v13, v61, v17, v13
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v17, v21
	v_rndne_f32_e32 v61, v70
	v_rndne_f32_e32 v70, v74
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v72, v72, s0, 0x40e00000
	v_med3_f32 v45, v45, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v46, v55
	v_rndne_f32_e32 v44, v44
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v72, v72
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v12, v12
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_and_b32_e32 v32, 15, v72
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v72, 6, v238
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v70, v70, s0, 0x40e00000
	v_med3_f32 v71, v71, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_cvt_i32_f32_e32 v17, v17
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_or_b32 v4, 0x1b00, v72, v4
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v73, v43
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v21, v22
	v_rndne_f32_e32 v22, v41
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_xad_u32 v4, v4, v0, 0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v0, 0xc0, v238
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v41, v49
	v_rndne_f32_e32 v42, v50
	v_rndne_f32_e32 v49, v57
	v_rndne_f32_e32 v50, v60
	v_rndne_f32_e32 v55, v63
	v_rndne_f32_e32 v57, v66
	v_rndne_f32_e32 v60, v67
	v_rndne_f32_e32 v63, v75
	v_rndne_f32_e32 v66, v76
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v27, v27
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v46, v46, s0, 0x40e00000
	v_med3_f32 v44, v44, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v96, v9
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:446:9 ]
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v9, 15, v17
	v_and_b32_e32 v17, 15, v45
	v_and_b32_e32 v45, 15, v73
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v73, 16, v238
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v67, v77
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v13, v13
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_med3_f32 v41, v41, s0, 0x40e00000
	v_med3_f32 v42, v42, s0, 0x40e00000
	v_med3_f32 v57, v57, s0, 0x40e00000
	v_med3_f32 v60, v60, s0, 0x40e00000
	v_med3_f32 v61, v61, s0, 0x40e00000
	v_med3_f32 v62, v62, s0, 0x40e00000
	v_med3_f32 v63, v63, s0, 0x40e00000
	v_med3_f32 v66, v66, s0, 0x40e00000
	v_med3_f32 v58, v58, s0, 0x40e00000
	v_med3_f32 v51, v51, s0, 0x40e00000
	v_med3_f32 v52, v52, s0, 0x40e00000
	v_med3_f32 v47, v47, s0, 0x40e00000
	v_med3_f32 v48, v48, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v74, v44
	v_cvt_i32_f32_e32 v83, v31
	v_cvt_i32_f32_e32 v85, v30
	v_cvt_i32_f32_e32 v99, v12
	v_and_b32_e32 v12, 15, v34
	v_and_b32_e32 v30, 15, v70
	v_and_b32_e32 v31, 15, v71
	v_and_b32_e32 v34, 15, v69
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v69, 4, v242
	v_lshlrev_b32_e32 v70, 10, v207
	v_lshlrev_b32_e32 v71, 6, v73
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v33, v33
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v49, v49, s0, 0x40e00000
	v_med3_f32 v50, v50, s0, 0x40e00000
	v_med3_f32 v54, v54, s0, 0x40e00000
	v_med3_f32 v55, v55, s0, 0x40e00000
	v_med3_f32 v67, v67, s0, 0x40e00000
	v_med3_f32 v68, v68, s0, 0x40e00000
	v_med3_f32 v64, v64, s0, 0x40e00000
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:446:9 ]
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v40, v40
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v77, v18
	v_cvt_i32_f32_e32 v86, v28
	v_cvt_i32_f32_e32 v87, v29
	v_cvt_i32_f32_e32 v88, v27
	v_and_b32_e32 v18, 15, v46
	v_and_b32_e32 v46, 15, v74
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_xor_b32_e32 v7, v69, v7
	v_add3_u32 v74, 0, v70, v71
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_med3_f32 v56, v56, s0, 0x40e00000
	v_med3_f32 v53, v53, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v78, v37
	v_cvt_i32_f32_e32 v79, v19
	v_cvt_i32_f32_e32 v80, v35
	v_cvt_i32_f32_e32 v93, v23
	v_cvt_i32_f32_e32 v94, v24
	v_med3_f32 v39, v39, s0, 0x40e00000
	v_med3_f32 v40, v40, s0, 0x40e00000
	v_cvt_i32_f32_e32 v89, v26
	v_cvt_i32_f32_e32 v90, v25
	v_cvt_i32_f32_e32 v91, v15
	v_cvt_i32_f32_e32 v92, v16
	v_cvt_i32_f32_e32 v97, v10
	v_cvt_i32_f32_e32 v98, v11
	v_cvt_i32_f32_e32 v100, v13
	v_and_b32_e32 v10, 15, v21
	v_and_b32_e32 v11, 15, v22
	v_and_b32_e32 v13, 15, v36
	v_and_b32_e32 v15, 15, v41
	v_and_b32_e32 v16, 15, v42
	v_and_b32_e32 v23, 15, v57
	v_and_b32_e32 v24, 15, v60
	v_and_b32_e32 v25, 15, v61
	v_and_b32_e32 v26, 15, v62
	v_and_b32_e32 v27, 15, v63
	v_and_b32_e32 v28, 15, v66
	v_and_b32_e32 v37, 15, v58
	v_and_b32_e32 v41, 15, v51
	v_and_b32_e32 v42, 15, v52
	v_and_b32_e32 v43, 15, v47
	v_and_b32_e32 v44, 15, v48
	v_and_b32_e32 v57, 15, v85
	v_and_b32_e32 v58, 15, v86
	v_and_b32_e32 v59, 15, v87
	v_and_b32_e32 v60, 15, v88
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	v_add3_u32 v6, v74, v7, v6
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v81, v20
	v_cvt_i32_f32_e32 v82, v33
	v_and_b32_e32 v19, 15, v49
	v_and_b32_e32 v20, 15, v50
	v_and_b32_e32 v21, 15, v54
	v_and_b32_e32 v22, 15, v55
	v_and_b32_e32 v29, 15, v67
	v_and_b32_e32 v33, 15, v68
	v_and_b32_e32 v35, 15, v64
	v_and_b32_e32 v36, 15, v65
	v_and_b32_e32 v49, 15, v77
	v_and_b32_e32 v50, 15, v78
	v_and_b32_e32 v51, 15, v79
	v_and_b32_e32 v52, 15, v80
	v_and_b32_e32 v65, 15, v93
	v_and_b32_e32 v66, 15, v94
	v_and_b32_e32 v67, 15, v95
	v_and_b32_e32 v68, 15, v96
	v_cvt_i32_f32_e32 v75, v39
	v_cvt_i32_f32_e32 v76, v40
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
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
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v39, 15, v56
	v_and_b32_e32 v40, 15, v53
	v_and_b32_e32 v47, 15, v75
	v_and_b32_e32 v48, 15, v76
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[29:32]
	ds_store_b128 v6, v[37:40] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[29:32], v4
	ds_load_b128 v[37:40], v4 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v53, 15, v81
	v_and_b32_e32 v54, 15, v82
	v_and_b32_e32 v55, 15, v83
	v_and_b32_e32 v56, 15, v84
	v_and_b32_e32 v61, 15, v89
	v_and_b32_e32 v62, 15, v90
	v_and_b32_e32 v63, 15, v91
	v_and_b32_e32 v64, 15, v92
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[45:48]
	ds_store_b128 v6, v[53:56] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[45:48], v4
	ds_load_b128 v[53:56], v4 offset:1024
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:446:9 ]
	v_and_b32_e32 v69, 15, v97
	v_and_b32_e32 v70, 15, v98
	v_and_b32_e32 v71, 15, v99
	v_and_b32_e32 v72, 15, v100
	.loc	1 82 15                         ; generate_amdgcn.py:82:15 @[ generate_amdgcn.py:446:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[61:64]
	ds_store_b128 v6, v[69:72] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[61:64], v4
	ds_load_b128 v[69:72], v4 offset:1024
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_lshr_b32 s0, s35, 31
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v4, v17, 4, v9
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:446:9 ]
	v_lshl_or_b32 v6, v18, 4, v10
	v_lshl_or_b32 v7, v19, 4, v11
	v_lshl_or_b32 v9, v20, 4, v12
	v_lshl_or_b32 v10, v21, 4, v13
	v_lshl_or_b32 v11, v22, 4, v14
	v_lshl_or_b32 v12, v23, 4, v15
	v_lshl_or_b32 v13, v24, 4, v16
	v_lshl_or_b32 v17, v36, 4, v28
	.loc	1 85 46                         ; generate_amdgcn.py:85:46 @[ generate_amdgcn.py:446:9 ]
	v_lshlrev_b32_e32 v36, 3, v242
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:446:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:446:9 ]
	s_lshl_b32 s1, s33, 7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:446:9 ]
	v_mul_lo_u32 v8, s0, v8
	s_mul_i32 s2, s34, s0
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
	v_lshrrev_b32_e32 v4, 4, v238
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
	v_and_or_b32 v3, v238, 63, s34
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
	s_and_b32 s9, s23, 0xffff
	s_mov_b32 s8, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v2, v2, s33, 1
	v_cndmask_b32_e32 v0, 0x80000000, v2, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[8:11], 0 offen
.Ltmp73:
	.loc	1 338 1 is_stmt 1               ; generate_amdgcn.py:338:1
	s_endpgm
.Ltmp74:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 72
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
		.amdhsa_next_free_sgpr 45
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 72
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 19608
; TotalNumSgprs: 47
; NumVgprs: 256
; ScratchSize: 72
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 47
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
	.byte	1                               ; Abbrev [1] 0xb:0x93 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x6d DW_TAG_subprogram
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
	.short	417                             ; DW_AT_call_line
	.byte	30                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	363                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x75:0x27 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	446                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x82:0x19 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	75                              ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x8e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
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
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
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
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
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
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 72
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc128_none_outint4sc256_bm64_bn256_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 18
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
