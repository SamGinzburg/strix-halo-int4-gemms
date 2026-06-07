	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[20:21], s[0:1], 0x30
	s_load_b32 s13, s[0:1], 0x38
.Ltmp0:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 prologue_end            ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s21, 0x7f
.Ltmp1:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s20, 63
.Ltmp2:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s8, s7, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s8, s8, 26
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s7, s8
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp10:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s9, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s6, s9
	s_abs_i32 s9, s2
	s_add_i32 s6, s6, s8
	s_xor_b32 s8, s2, s4
	s_mul_hi_u32 s6, s9, s6
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s10, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s9, s9, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s9, s5
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s5, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s8
	s_sub_i32 s5, s5, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s6, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s7, s7, s6
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s5, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s7, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s4, s5
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s9
	s_mul_hi_u32 s2, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s2
	s_xor_b32 s2, s5, s7
	s_mul_hi_u32 s9, s4, s9
	s_ashr_i32 s2, s2, 31
	s_mul_i32 s10, s9, s8
	s_sub_i32 s4, s4, s10
	s_add_i32 s10, s9, 1
	s_sub_i32 s11, s4, s8
	s_cmp_ge_u32 s4, s8
	s_cselect_b32 s9, s10, s9
	s_cselect_b32 s4, s11, s4
	s_add_i32 s10, s9, 1
	s_cmp_ge_u32 s4, s8
	s_cselect_b32 s4, s10, s9
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s14, s13, 0x7f
.Ltmp12:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s12, s4, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s12, s2
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s7, s4, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s5, s7
	.loc	1 296 13 is_stmt 0              ; generate_amdgcn.py:296:13
	s_add_i32 s5, s5, s6
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s14, 0x7f
	s_mov_b32 s6, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_lshl_b32 s24, s21, 5
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 23 is_stmt 0                ; generate_amdgcn.py:0:23
	s_mov_b32 s6, -1
                                        ; implicit-def: $sgpr24
.LBB0_3:                                ; %Flow491
	s_load_b64 s[22:23], s[0:1], 0x20
	v_dual_mov_b32 v20, 0 :: v_dual_and_b32 v11, 0x80, v0
	v_dual_mov_b32 v19, 0 :: v_dual_and_b32 v6, 0x60, v0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v17, 0
	s_lshl_b32 s26, s5, 6
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_lshl_b32 s25, s4, 7
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[4:11], s[0:1], 0x0
.Ltmp13:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s0, s14, 31
.Ltmp14:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s13, 31
.Ltmp15:
	.loc	1 312 26 is_stmt 1              ; generate_amdgcn.py:312:26
	s_lshl_b32 s27, s3, 6
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s0, s0, 25
.Ltmp17:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s3, s1, 31
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s14, s14, s0
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_lshr_b32 s0, s3, 27
.Ltmp20:
	.loc	1 299 32 is_stmt 1              ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v2, 3, v11
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s1, s0
	s_mov_b32 s0, 0
	s_ashr_i32 s29, s1, 5
.Ltmp22:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_lshl_b32 s1, s12, 7
	s_mov_b32 s3, s0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v5, 1, v6
	v_bfe_u32 v4, v0, 4, 1
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_lshrrev_b32_e32 v3, 3, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v6, off offset:156
	scratch_store_b32 off, v0, off offset:148
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v6, 7, v0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_mov_b32 s12, s4
	s_mov_b32 s13, s5
	s_mov_b32 s16, s6
	s_mov_b32 s17, s7
	s_mov_b32 s4, s0
	s_mov_b32 s5, s0
	s_mov_b32 s6, s0
	s_mov_b32 s7, s0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v1, 15, v0
	v_lshlrev_b32_e32 v8, 3, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshlrev_b32_e32 v7, 4, v6
	v_mov_b32_e32 v43, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v18, 0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v2, v2, v1
	v_or_b32_e32 v1, v5, v1
	v_or3_b32 v5, v4, v5, s25
	v_dual_mov_b32 v23, 0 :: v_dual_add_nc_u32 v0, 0, v8
	v_mov_b32_e32 v44, 0
	v_or_b32_e32 v9, s26, v2
	v_add_nc_u32_e32 v58, 0, v1
	v_add_nc_u32_e32 v56, 0, v2
	v_or_b32_e32 v2, 8, v5
	scratch_store_b32 off, v0, off offset:36 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v9, s29
	v_or_b32_e32 v10, 32, v9
	v_or_b32_e32 v9, 0x4a, v5
	scratch_store_b32 off, v2, off offset:64 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 10, v5
	v_dual_mov_b32 v39, 0 :: v_dual_add_nc_u32 v0, v0, v8
	v_or_b32_e32 v4, 0x48, v5
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:44
	scratch_store_b32 off, v9, off offset:100
	v_mul_lo_u32 v1, v10, s29
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:68
	scratch_store_b32 off, v0, off offset:112
	v_or_b32_e32 v2, 12, v5
	v_or_b32_e32 v9, 0x4c, v5
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v9, off offset:104
	scratch_store_b32 off, v5, off offset:40
	scratch_store_b32 off, v1, off offset:48
	v_or_b32_e32 v1, 2, v5
	scratch_store_b32 off, v2, off offset:72 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 14, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	scratch_store_b32 off, v4, off offset:96 ; 4-byte Folded Spill
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v40, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:52
	scratch_store_b32 off, v11, off offset:152
	v_or_b32_e32 v1, 4, v5
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v32, 0
	scratch_store_b32 off, v1, off offset:56 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 6, v5
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v24, 0
	scratch_store_b32 off, v1, off offset:60 ; 4-byte Folded Spill
	v_or_b32_e32 v1, s27, v3
	v_or_b32_e32 v3, 64, v5
	scratch_store_b32 off, v2, off offset:76 ; 4-byte Folded Spill
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v22, 0
	v_or_b32_e32 v2, 32, v1
	scratch_store_b32 off, v3, off offset:80 ; 4-byte Folded Spill
	v_or_b32_e32 v3, 0x42, v5
	v_mul_lo_u32 v4, s21, v1
	v_mul_lo_u32 v1, s20, v1
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v48, 0
	scratch_store_b32 off, v3, off offset:84 ; 4-byte Folded Spill
	v_or_b32_e32 v3, 0x44, v5
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v46, 0
	v_add3_u32 v4, v4, s1, v7
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v42, 0
	scratch_store_b32 off, v3, off offset:88 ; 4-byte Folded Spill
	v_or_b32_e32 v3, 0x46, v5
	v_or_b32_e32 v5, 0x4e, v5
	v_mov_b32_e32 v35, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v38, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:92
	scratch_store_b32 off, v5, off offset:108
	v_mul_lo_u32 v3, s21, v2
	v_mul_lo_u32 v2, s20, v2
	v_mov_b32_e32 v34, 0
	v_mov_b32_e32 v30, 0
	v_mov_b32_e32 v26, 0
	v_mov_b32_e32 v20, 0
.Ltmp23:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s28, s14, 7
	s_mov_b32 s15, 0x31027000
.Ltmp24:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_add3_u32 v3, v3, s1, v7
	s_lshl_b32 s1, s2, 7
	s_mov_b32 s2, s0
	v_subrev_nc_u32_e32 v4, s1, v4
	s_mov_b32 s14, 0x7ffffffe
	v_subrev_nc_u32_e32 v3, s1, v3
	s_mov_b32 s1, s0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v6, 3, v6
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s24, s21, 5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_lshl_b32 s30, s21, 7
	v_add3_u32 v2, v2, s26, v6
	v_add3_u32 v1, v1, s26, v6
	v_dual_mov_b32 v12, s7 :: v_dual_mov_b32 v11, s6
	v_dual_mov_b32 v10, s5 :: v_dual_mov_b32 v9, s4
	v_dual_mov_b32 v8, s3 :: v_dual_mov_b32 v7, s2
	v_dual_mov_b32 v6, s1 :: v_dual_mov_b32 v5, s0
	s_lshl_b32 s20, s20, 7
	s_mov_b32 s18, s14
	s_mov_b32 s19, s15
	s_mov_b32 s4, s8
	s_mov_b32 s5, s9
	s_mov_b32 s6, s14
	s_mov_b32 s7, s15
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s14
	s_mov_b32 s11, s15
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[5:8], off offset:116
	scratch_store_b128 off, v[9:12], off offset:132
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt vmcnt(3)
	buffer_load_b64 v[49:50], v1, s[12:15], 0 offen
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(1)
	buffer_load_b128 v[9:12], v4, s[16:19], 0 offen
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	buffer_load_b64 v[51:52], v2, s[12:15], 0 offen
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	buffer_load_b128 v[13:16], v3, s[16:19], 0 offen
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_add_nc_u32_e32 v3, s30, v3
	v_add_nc_u32_e32 v4, s30, v4
	v_add_nc_u32_e32 v2, s20, v2
	v_add_nc_u32_e32 v1, s20, v1
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v5, off, off offset:60
	scratch_load_b32 v6, off, off offset:64
	scratch_load_b32 v7, off, off offset:68
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v3, off
	scratch_store_b32 off, v4, off offset:4
	scratch_store_b32 off, v2, off offset:8
	scratch_store_b32 off, v1, off offset:12
	s_clause 0xe                            ; 60-byte Folded Reload
	scratch_load_b32 v1, off, off offset:44
	scratch_load_b32 v2, off, off offset:48
	scratch_load_b32 v3, off, off offset:52
	scratch_load_b32 v4, off, off offset:56
	scratch_load_b32 v0, off, off offset:40
	scratch_load_b32 v8, off, off offset:72
	scratch_load_b32 v54, off, off offset:76
	scratch_load_b32 v55, off, off offset:80
	scratch_load_b32 v57, off, off offset:84
	scratch_load_b32 v59, off, off offset:88
	scratch_load_b32 v60, off, off offset:92
	scratch_load_b32 v63, off, off offset:96
	scratch_load_b32 v64, off, off offset:100
	scratch_load_b32 v65, off, off offset:104
	scratch_load_b32 v66, off, off offset:108
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s1, s27, 5
	s_add_i32 s0, s27, 32
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s1, s29
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s0, s0, 5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s0, s29
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(14)
	v_add_lshl_u32 v81, v1, s1, 1
	s_waitcnt vmcnt(13)
	v_add_lshl_u32 v82, v2, s1, 1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s1, s1, s21
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v99, v1, s0, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_waitcnt vmcnt(10)
	v_add_lshl_u32 v83, v0, s1, 1
	v_add_lshl_u32 v84, v3, s1, 1
	v_add_lshl_u32 v85, v4, s1, 1
	v_add_lshl_u32 v86, v5, s1, 1
	v_add_lshl_u32 v87, v6, s1, 1
	v_add_lshl_u32 v88, v7, s1, 1
	s_waitcnt vmcnt(9)
	v_add_lshl_u32 v89, v8, s1, 1
	s_waitcnt vmcnt(8)
	v_add_lshl_u32 v90, v54, s1, 1
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v91, v55, s1, 1
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v92, v57, s1, 1
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v93, v59, s1, 1
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v94, v60, s1, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v95, v63, s1, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v96, v64, s1, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v97, v65, s1, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v98, v66, s1, 1
	.loc	1 334 40 is_stmt 0              ; generate_amdgcn.py:334:40
	s_mul_i32 s1, s0, s21
	.loc	1 332 22 is_stmt 1              ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v100, v2, s0, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v101, v0, s1, 1
	v_add_lshl_u32 v102, v3, s1, 1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:36
	scratch_load_b32 v3, off, off offset:112
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v1, 0x80000000, v81 :: v_dual_cndmask_b32 v2, 0x80000000, v82
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v103, v4, s1, 1
	v_add_lshl_u32 v104, v5, s1, 1
	v_add_lshl_u32 v105, v6, s1, 1
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cselect_b32 s0, -1, 0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_dual_cndmask_b32 v83, 0x80000000, v83 :: v_dual_cndmask_b32 v84, 0x80000000, v84
	v_dual_cndmask_b32 v85, 0x80000000, v85 :: v_dual_cndmask_b32 v86, 0x80000000, v86
	v_dual_cndmask_b32 v87, 0x80000000, v87 :: v_dual_cndmask_b32 v88, 0x80000000, v88
	v_dual_cndmask_b32 v89, 0x80000000, v89 :: v_dual_cndmask_b32 v90, 0x80000000, v90
	v_dual_cndmask_b32 v91, 0x80000000, v91 :: v_dual_cndmask_b32 v92, 0x80000000, v92
	v_dual_cndmask_b32 v93, 0x80000000, v93 :: v_dual_cndmask_b32 v94, 0x80000000, v94
	v_dual_cndmask_b32 v95, 0x80000000, v95 :: v_dual_cndmask_b32 v96, 0x80000000, v96
	v_dual_cndmask_b32 v97, 0x80000000, v97 :: v_dual_cndmask_b32 v98, 0x80000000, v98
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e64 v99, 0x80000000, v99, s0
	v_cndmask_b32_e64 v100, 0x80000000, v100, s0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e64 v101, 0x80000000, v101, s0
	v_cndmask_b32_e64 v102, 0x80000000, v102, s0
	v_cndmask_b32_e64 v103, 0x80000000, v103, s0
	v_cndmask_b32_e64 v104, 0x80000000, v104, s0
	v_cndmask_b32_e64 v105, 0x80000000, v105, s0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s28, s28, -1
	s_addk_i32 s27, 0x80
	s_cmp_lg_u32 s28, 0
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt vmcnt(1)
	ds_store_b64 v0, v[49:50] offset:8192
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v3, v[9:12]
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v0, v[51:52] offset:10240
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	ds_store_b128 v3, v[13:16] offset:4096
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v9, v56 offset:8256
	ds_load_u8 v10, v56 offset:8192
	ds_load_u8 v11, v56 offset:8384
	ds_load_u8 v12, v56 offset:8320
	ds_load_u8 v13, v56 offset:8416
	ds_load_u8 v14, v56 offset:8352
	ds_load_u8 v15, v56 offset:8288
	ds_load_u8 v16, v56 offset:8224
	ds_load_u8 v49, v58 offset:1664
	ds_load_u8 v50, v58 offset:1536
	ds_load_u8 v51, v58 offset:1920
	ds_load_u8 v52, v58 offset:1792
	ds_load_u8 v106, v58 offset:1984
	ds_load_u8 v107, v58 offset:1856
	ds_load_u8 v108, v58 offset:1728
	ds_load_u8 v109, v58 offset:1600
	ds_load_u8 v110, v58 offset:1152
	ds_load_u8 v111, v58 offset:1024
	ds_load_u8 v112, v58 offset:1408
	ds_load_u8 v113, v58 offset:1280
	ds_load_u8 v114, v58 offset:1472
	ds_load_u8 v115, v58 offset:1344
	ds_load_u8 v116, v58 offset:1216
	ds_load_u8 v117, v58 offset:1088
	ds_load_u8 v118, v58 offset:640
	ds_load_u8 v119, v58 offset:512
	ds_load_u8 v120, v58 offset:896
	ds_load_u8 v121, v58 offset:768
	ds_load_u8 v122, v58 offset:960
	ds_load_u8 v123, v58 offset:832
	ds_load_u8 v124, v58 offset:704
	ds_load_u8 v125, v58 offset:576
	ds_load_u8 v126, v58 offset:128
	ds_load_u8 v127, v58
	ds_load_u8 v128, v58 offset:384
	ds_load_u8 v129, v58 offset:256
	ds_load_u8 v130, v58 offset:448
	ds_load_u8 v131, v58 offset:320
	ds_load_u8 v132, v58 offset:192
	ds_load_u8 v133, v58 offset:64
	ds_load_u8 v134, v58 offset:3712
	ds_load_u8 v135, v58 offset:3584
	ds_load_u8 v136, v58 offset:3968
	ds_load_u8 v137, v58 offset:3840
	ds_load_u8 v138, v58 offset:4032
	ds_load_u8 v139, v58 offset:3904
	ds_load_u8 v140, v58 offset:3776
	ds_load_u8 v141, v58 offset:3648
	ds_load_u8 v142, v58 offset:3200
	ds_load_u8 v143, v58 offset:3072
	ds_load_u8 v144, v58 offset:3456
	ds_load_u8 v145, v58 offset:3328
	ds_load_u8 v146, v58 offset:3520
	ds_load_u8 v147, v58 offset:3392
	ds_load_u8 v148, v58 offset:3264
	ds_load_u8 v149, v58 offset:3136
	ds_load_u8 v150, v58 offset:2688
	ds_load_u8 v151, v58 offset:2560
	ds_load_u8 v152, v58 offset:2944
	ds_load_u8 v153, v58 offset:2816
	ds_load_u8 v154, v58 offset:3008
	ds_load_u8 v155, v58 offset:2880
	ds_load_u8 v156, v58 offset:2752
	ds_load_u8 v157, v58 offset:2624
	ds_load_u8 v158, v58 offset:2176
	ds_load_u8 v159, v58 offset:2048
	ds_load_u8 v160, v58 offset:2432
	ds_load_u8 v161, v58 offset:2304
	ds_load_u8 v162, v58 offset:2496
	ds_load_u8 v163, v58 offset:2368
	ds_load_u8 v164, v58 offset:2240
	ds_load_u8 v165, v58 offset:2112
	ds_load_u8 v166, v56 offset:9024
	ds_load_u8 v167, v56 offset:8960
	ds_load_u8 v168, v56 offset:9152
	ds_load_u8 v169, v56 offset:9088
	ds_load_u8 v170, v56 offset:9184
	ds_load_u8 v171, v56 offset:9120
	ds_load_u8 v172, v56 offset:9056
	ds_load_u8 v173, v56 offset:8992
	ds_load_u8 v174, v56 offset:8768
	ds_load_u8 v175, v56 offset:8704
	ds_load_u8 v176, v56 offset:8896
	ds_load_u8 v177, v56 offset:8832
	ds_load_u8 v178, v56 offset:8928
	ds_load_u8 v179, v56 offset:8864
	ds_load_u8 v180, v56 offset:8800
	ds_load_u8 v181, v56 offset:8736
	ds_load_u8 v182, v56 offset:8512
	ds_load_u8 v183, v56 offset:8448
	ds_load_u8 v184, v56 offset:8640
	ds_load_u8 v185, v56 offset:8576
	ds_load_u8 v186, v56 offset:8672
	ds_load_u8 v187, v56 offset:8608
	ds_load_u8 v188, v56 offset:8544
	ds_load_u8 v189, v56 offset:8480
	ds_load_u8 v190, v56 offset:10048
	ds_load_u8 v191, v56 offset:9984
	ds_load_u8 v192, v56 offset:10176
	ds_load_u8 v193, v56 offset:10112
	ds_load_u8 v194, v56 offset:10208
	ds_load_u8 v195, v56 offset:10144
	ds_load_u8 v196, v56 offset:10080
	ds_load_u8 v197, v56 offset:10016
	ds_load_u8 v198, v56 offset:9792
	ds_load_u8 v199, v56 offset:9728
	ds_load_u8 v200, v56 offset:9920
	ds_load_u8 v201, v56 offset:9856
	ds_load_u8 v202, v56 offset:9952
	ds_load_u8 v203, v56 offset:9888
	ds_load_u8 v204, v56 offset:9824
	ds_load_u8 v205, v56 offset:9760
	ds_load_u8 v206, v56 offset:9536
	ds_load_u8 v207, v56 offset:9472
	ds_load_u8 v208, v56 offset:9664
	ds_load_u8 v209, v56 offset:9600
	ds_load_u8 v210, v56 offset:9696
	ds_load_u8 v211, v56 offset:9632
	ds_load_u8 v212, v56 offset:9568
	ds_load_u8 v213, v56 offset:9504
	ds_load_u8 v214, v56 offset:9280
	ds_load_u8 v215, v56 offset:9216
	ds_load_u8 v216, v56 offset:9408
	ds_load_u8 v217, v56 offset:9344
	ds_load_u8 v218, v56 offset:9440
	ds_load_u8 v219, v56 offset:9376
	ds_load_u8 v220, v56 offset:9312
	ds_load_u8 v221, v56 offset:9248
	ds_load_u8 v222, v56 offset:11072
	ds_load_u8 v223, v56 offset:11008
	ds_load_u8 v224, v56 offset:11200
	ds_load_u8 v225, v56 offset:11136
	ds_load_u8 v226, v56 offset:10816
	ds_load_u8 v227, v56 offset:10752
	ds_load_u8 v228, v56 offset:10944
	ds_load_u8 v229, v56 offset:10880
	ds_load_u8 v230, v56 offset:10560
	ds_load_u8 v231, v56 offset:10496
	ds_load_u8 v232, v56 offset:10688
	ds_load_u8 v233, v56 offset:10624
	ds_load_u8 v234, v56 offset:10304
	ds_load_u8 v235, v56 offset:10240
	ds_load_u8 v236, v56 offset:10432
	ds_load_u8 v237, v56 offset:10368
	ds_load_u8 v238, v58 offset:5760
	ds_load_u8 v239, v58 offset:5632
	ds_load_u8 v240, v58 offset:6016
	ds_load_u8 v241, v58 offset:5888
	ds_load_u8 v242, v58 offset:5248
	ds_load_u8 v243, v58 offset:5120
	ds_load_u8 v244, v58 offset:5504
	ds_load_u8 v245, v58 offset:5376
	ds_load_u8 v246, v58 offset:4736
	ds_load_u8 v247, v58 offset:4608
	ds_load_u8 v248, v58 offset:4992
	ds_load_u8 v249, v58 offset:4864
	ds_load_u8 v250, v58 offset:4224
	ds_load_u8 v251, v58 offset:4096
	ds_load_u8 v252, v58 offset:4480
	ds_load_u8 v253, v58 offset:4352
	ds_load_u8 v254, v56 offset:12096
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v0, v167, v166, 0xc0c0004
	v_perm_b32 v255, v50, v49, 0xc0c0004
	ds_load_u8 v49, v56 offset:11520
	ds_load_u8 v50, v56 offset:11712
	v_perm_b32 v166, v52, v51, 0xc0c0004
	scratch_store_b32 off, v0, off offset:16 ; 4-byte Folded Spill
	v_perm_b32 v0, v169, v168, 0xc0c0004
	ds_load_u8 v169, v56 offset:12224
	ds_load_u8 v167, v56 offset:12032
	v_perm_b32 v168, v12, v11, 0xc0c0004
	ds_load_u8 v12, v56 offset:11584
	ds_load_u8 v51, v56 offset:11648
	scratch_store_b32 off, v0, off offset:20 ; 4-byte Folded Spill
	v_perm_b32 v0, v175, v174, 0xc0c0004
	ds_load_u8 v175, v56 offset:12160
	v_perm_b32 v174, v10, v9, 0xc0c0004
	ds_load_u8 v10, v56 offset:11904
	v_perm_b32 v110, v111, v110, 0xc0c0004
	scratch_store_b32 off, v0, off offset:24 ; 4-byte Folded Spill
	v_perm_b32 v0, v177, v176, 0xc0c0004
	ds_load_u8 v177, v56 offset:11840
	v_perm_b32 v176, v185, v184, 0xc0c0004
	ds_load_u8 v185, v56 offset:11968
	v_perm_b32 v111, v113, v112, 0xc0c0004
	scratch_store_b32 off, v0, off offset:28 ; 4-byte Folded Spill
	v_perm_b32 v0, v183, v182, 0xc0c0004
	ds_load_u8 v183, v56 offset:11776
	ds_load_u8 v52, v56 offset:11328
	ds_load_u8 v113, v56 offset:11264
	v_perm_b32 v112, v119, v118, 0xc0c0004
	v_perm_b32 v118, v121, v120, 0xc0c0004
	ds_load_u8 v119, v56 offset:11456
	ds_load_u8 v121, v56 offset:11392
	v_perm_b32 v120, v127, v126, 0xc0c0004
	v_perm_b32 v126, v129, v128, 0xc0c0004
	ds_load_u8 v127, v58 offset:7808
	v_perm_b32 v128, v191, v190, 0xc0c0004
	ds_load_u8 v129, v58 offset:7680
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v190, v193, v192, 0xc0c0004
	ds_load_u8 v191, v58 offset:8064
	ds_load_u8 v193, v58 offset:7936
	v_perm_b32 v192, v199, v198, 0xc0c0004
	v_perm_b32 v198, v201, v200, 0xc0c0004
	ds_load_u8 v199, v58 offset:7296
	v_perm_b32 v200, v207, v206, 0xc0c0004
	ds_load_u8 v201, v58 offset:7168
	v_perm_b32 v206, v209, v208, 0xc0c0004
	ds_load_u8 v207, v58 offset:7552
	ds_load_u8 v209, v58 offset:7424
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v208, v215, v214, 0xc0c0004
	ds_load_u8 v215, v58 offset:6784
	v_perm_b32 v134, v135, v134, 0xc0c0004
	ds_load_u8 v135, v58 offset:6656
	v_perm_b32 v136, v137, v136, 0xc0c0004
	ds_load_u8 v137, v58 offset:7040
	v_perm_b32 v142, v143, v142, 0xc0c0004
	ds_load_u8 v143, v58 offset:6912
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v58 offset:6144
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v58 offset:6080
	v_perm_b32 v160, v161, v160, 0xc0c0004
	ds_load_u8 v161, v58 offset:5952
	v_perm_b32 v108, v109, v108, 0xc0c0004
	ds_load_u8 v109, v58 offset:5824
	v_perm_b32 v106, v107, v106, 0xc0c0004
	ds_load_u8 v107, v58 offset:5696
	v_perm_b32 v116, v117, v116, 0xc0c0004
	ds_load_u8 v117, v58 offset:5568
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v58 offset:5440
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v214, v217, v216, 0xc0c0004
	v_perm_b32 v145, v145, v144, 0xc0c0004
	ds_load_u8 v144, v58 offset:6272
	v_perm_b32 v152, v153, v152, 0xc0c0004
	ds_load_u8 v153, v58 offset:6528
	v_perm_b32 v124, v125, v124, 0xc0c0004
	ds_load_u8 v125, v58 offset:5312
	v_perm_b32 v122, v123, v122, 0xc0c0004
	ds_load_u8 v123, v58 offset:5184
	v_perm_b32 v132, v133, v132, 0xc0c0004
	ds_load_u8 v133, v58 offset:5056
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v58 offset:4928
	v_perm_b32 v216, v141, v140, 0xc0c0004
	ds_load_u8 v140, v58 offset:4800
	ds_load_u8 v141, v58 offset:4416
	v_perm_b32 v217, v139, v138, 0xc0c0004
	ds_load_u8 v138, v58 offset:4672
	ds_load_u8 v139, v58 offset:4544
	v_perm_b32 v149, v149, v148, 0xc0c0004
	v_perm_b32 v156, v157, v156, 0xc0c0004
	v_perm_b32 v154, v155, v154, 0xc0c0004
	ds_load_u8 v148, v58 offset:4160
	v_perm_b32 v155, v165, v164, 0xc0c0004
	ds_load_u8 v157, v58 offset:8128
	v_perm_b32 v162, v163, v162, 0xc0c0004
	ds_load_u8 v163, v58 offset:8000
	ds_load_u8 v165, v58 offset:7872
	v_perm_b32 v164, v173, v172, 0xc0c0004
	v_perm_b32 v170, v171, v170, 0xc0c0004
	ds_load_u8 v171, v58 offset:7744
	v_perm_b32 v172, v181, v180, 0xc0c0004
	ds_load_u8 v173, v58 offset:7616
	v_perm_b32 v82, v179, v178, 0xc0c0004
	ds_load_u8 v179, v58 offset:7488
	ds_load_u8 v181, v58 offset:7360
	v_perm_b32 v11, v187, v186, 0xc0c0004
	ds_load_u8 v187, v58 offset:7232
	v_perm_b32 v9, v197, v196, 0xc0c0004
	v_perm_b32 v196, v205, v204, 0xc0c0004
	v_perm_b32 v204, v213, v212, 0xc0c0004
	v_perm_b32 v212, v221, v220, 0xc0c0004
	v_perm_b32 v220, v223, v222, 0xc0c0004
	v_perm_b32 v222, v225, v224, 0xc0c0004
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v224, v227, v226, 0xc0c0004
	v_perm_b32 v226, v229, v228, 0xc0c0004
	v_perm_b32 v228, v231, v230, 0xc0c0004
	v_perm_b32 v230, v233, v232, 0xc0c0004
	v_perm_b32 v232, v235, v234, 0xc0c0004
	ds_load_u8 v233, v56 offset:12256
	ds_load_u8 v235, v56 offset:12192
	v_perm_b32 v234, v237, v236, 0xc0c0004
	v_perm_b32 v236, v239, v238, 0xc0c0004
	ds_load_u8 v237, v56 offset:12128
	ds_load_u8 v239, v56 offset:12064
	v_perm_b32 v238, v241, v240, 0xc0c0004
	v_perm_b32 v240, v243, v242, 0xc0c0004
	ds_load_u8 v241, v56 offset:12000
	ds_load_u8 v243, v56 offset:11936
	v_perm_b32 v242, v245, v244, 0xc0c0004
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v244, v247, v246, 0xc0c0004
	ds_load_u8 v245, v56 offset:11872
	ds_load_u8 v247, v56 offset:11808
	v_perm_b32 v246, v249, v248, 0xc0c0004
	v_perm_b32 v248, v251, v250, 0xc0c0004
	ds_load_u8 v249, v56 offset:11744
	ds_load_u8 v251, v56 offset:11680
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v250, v253, v252, 0xc0c0004
	ds_load_u8 v252, v56 offset:11616
	s_waitcnt lgkmcnt(57)
	v_perm_b32 v169, v175, v169, 0xc0c0004
	ds_load_u8 v175, v56 offset:11552
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v177, v183, v177, 0xc0c0004
	ds_load_u8 v183, v56 offset:11488
	v_perm_b32 v10, v10, v185, 0xc0c0004
	ds_load_u8 v185, v56 offset:11424
	v_perm_b32 v12, v49, v12, 0xc0c0004
	ds_load_u8 v49, v56 offset:11360
	v_perm_b32 v253, v51, v50, 0xc0c0004
	ds_load_u8 v50, v56 offset:11296
	s_waitcnt lgkmcnt(56)
	v_perm_b32 v113, v113, v52, 0xc0c0004
	ds_load_u8 v51, v58 offset:7104
	ds_load_u8 v52, v58 offset:6976
	s_waitcnt lgkmcnt(56)
	v_perm_b32 v119, v121, v119, 0xc0c0004
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v127, v129, v127, 0xc0c0004
	ds_load_u8 v121, v58 offset:6848
	ds_load_u8 v129, v58 offset:6720
	s_waitcnt lgkmcnt(54)
	v_perm_b32 v191, v193, v191, 0xc0c0004
	s_waitcnt lgkmcnt(52)
	v_perm_b32 v193, v201, v199, 0xc0c0004
	ds_load_u8 v199, v58 offset:6592
	s_waitcnt lgkmcnt(51)
	v_perm_b32 v201, v209, v207, 0xc0c0004
	ds_load_u8 v207, v58 offset:6464
	ds_load_u8 v209, v58 offset:6336
	s_waitcnt lgkmcnt(51)
	v_perm_b32 v135, v135, v215, 0xc0c0004
	s_waitcnt lgkmcnt(49)
	v_perm_b32 v215, v143, v137, 0xc0c0004
	ds_load_u8 v143, v58 offset:6400
	ds_load_u8 v137, v58 offset:6208
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v115, v115, v117, 0xc0c0004
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v117, v57, s1, 1
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	scratch_store_b32 off, v0, off offset:32 ; 4-byte Folded Spill
	v_perm_b32 v146, v147, v146, 0xc0c0004
	ds_load_u8 v147, v58 offset:4288
	v_perm_b32 v167, v167, v254, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v254, v151, v144, 0xc0c0004
	v_perm_b32 v61, v107, v109, 0xc0c0004
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v107, v8, s1, 1
	v_add_lshl_u32 v109, v54, s1, 1
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(41)
	v_perm_b32 v125, v123, v125, 0xc0c0004
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v123, v55, s1, 1
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v0, v138, v140, 0xc0c0004
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v138, v59, s1, 1
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v133, v131, v133, 0xc0c0004
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v131, v60, s1, 1
	v_add_lshl_u32 v140, v63, s1, 1
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(35)
	v_perm_b32 v63, v141, v139, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v53, v143, v153, 0xc0c0004
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v143, v7, s1, 1
	v_add_lshl_u32 v139, v64, s1, 1
	v_add_lshl_u32 v141, v65, s1, 1
	v_add_lshl_u32 v144, v66, s1, 1
	v_cndmask_b32_e64 v117, 0x80000000, v117, s0
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v81, v189, v188, 0xc0c0004
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e64 v143, 0x80000000, v143, s0
	v_cndmask_b32_e64 v107, 0x80000000, v107, s0
	v_cndmask_b32_e64 v109, 0x80000000, v109, s0
	v_cndmask_b32_e64 v123, 0x80000000, v123, s0
	v_cndmask_b32_e64 v138, 0x80000000, v138, s0
	v_cndmask_b32_e64 v131, 0x80000000, v131, s0
	v_cndmask_b32_e64 v140, 0x80000000, v140, s0
	v_cndmask_b32_e64 v139, 0x80000000, v139, s0
	v_cndmask_b32_e64 v141, 0x80000000, v141, s0
	v_cndmask_b32_e64 v144, 0x80000000, v144, s0
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x1
	buffer_load_u16 v64, v1, s[4:7], 0 offen
	buffer_load_u16 v65, v2, s[4:7], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_clause 0xf
	buffer_load_u16 v66, v83, s[8:11], 0 offen
	buffer_load_u16 v67, v84, s[8:11], 0 offen
	buffer_load_u16 v68, v85, s[8:11], 0 offen
	buffer_load_u16 v69, v86, s[8:11], 0 offen
	buffer_load_u16 v70, v87, s[8:11], 0 offen
	buffer_load_u16 v71, v88, s[8:11], 0 offen
	buffer_load_u16 v72, v89, s[8:11], 0 offen
	buffer_load_u16 v73, v90, s[8:11], 0 offen
	buffer_load_u16 v74, v91, s[8:11], 0 offen
	buffer_load_u16 v75, v92, s[8:11], 0 offen
	buffer_load_u16 v59, v93, s[8:11], 0 offen
	buffer_load_u16 v60, v94, s[8:11], 0 offen
	buffer_load_u16 v55, v95, s[8:11], 0 offen
	buffer_load_u16 v80, v96, s[8:11], 0 offen
	buffer_load_u16 v57, v97, s[8:11], 0 offen
	buffer_load_u16 v76, v98, s[8:11], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x1
	buffer_load_u16 v77, v99, s[4:7], 0 offen
	buffer_load_u16 v78, v100, s[4:7], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_clause 0xf
	buffer_load_u16 v79, v101, s[8:11], 0 offen
	buffer_load_u16 v1, v102, s[8:11], 0 offen
	buffer_load_u16 v2, v103, s[8:11], 0 offen
	buffer_load_u16 v3, v104, s[8:11], 0 offen
	buffer_load_u16 v4, v105, s[8:11], 0 offen
	buffer_load_u16 v5, v143, s[8:11], 0 offen
	buffer_load_u16 v6, v107, s[8:11], 0 offen
	buffer_load_u16 v7, v109, s[8:11], 0 offen
	buffer_load_u16 v8, v123, s[8:11], 0 offen
	buffer_load_u16 v54, v117, s[8:11], 0 offen
	buffer_load_u16 v178, v138, s[8:11], 0 offen
	buffer_load_u16 v180, v131, s[8:11], 0 offen
	buffer_load_u16 v182, v140, s[8:11], 0 offen
	buffer_load_u16 v184, v139, s[8:11], 0 offen
	buffer_load_u16 v186, v141, s[8:11], 0 offen
	buffer_load_u16 v188, v144, s[8:11], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v117, v50, v49, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:16
	scratch_load_b32 v50, off, off offset:20
	v_perm_b32 v86, v52, v51, 0xc0c0004
	v_perm_b32 v15, v16, v15, 0xc0c0004
	ds_load_u8 v16, v56 offset:11232
	ds_load_u8 v189, v56 offset:11104
	ds_load_u8 v197, v56 offset:10976
	ds_load_u8 v205, v56 offset:10848
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v56 offset:11168
	v_perm_b32 v194, v195, v194, 0xc0c0004
	ds_load_u8 v195, v56 offset:11040
	v_perm_b32 v202, v203, v202, 0xc0c0004
	v_perm_b32 v161, v161, v159, 0xc0c0004
	v_lshl_or_b32 v140, v190, 16, v128
	v_lshl_or_b32 v139, v198, 16, v192
	v_lshl_or_b32 v143, v145, 16, v142
	v_lshl_or_b32 v142, v152, 16, v150
	v_lshl_or_b32 v141, v160, 16, v158
	v_lshl_or_b32 v152, v194, 16, v9
	v_lshl_or_b32 v151, v202, 16, v196
	v_lshl_or_b32 v160, v191, 16, v127
	v_lshl_or_b32 v159, v201, 16, v193
	ds_load_u8 v203, v56 offset:10912
	v_perm_b32 v210, v211, v210, 0xc0c0004
	ds_load_u8 v211, v56 offset:10784
	ds_load_u8 v213, v56 offset:10720
	ds_load_u8 v221, v56 offset:10592
	ds_load_u8 v223, v56 offset:10528
	ds_load_u8 v225, v56 offset:10464
	ds_load_u8 v227, v56 offset:10400
	ds_load_u8 v229, v56 offset:10336
	ds_load_u8 v231, v56 offset:10272
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v89, v195, v189, 0xc0c0004
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[189:192], off, off offset:116
	scratch_load_b128 v[193:196], off, off offset:132
	v_perm_b32 v218, v219, v218, 0xc0c0004
	ds_load_u8 v219, v56 offset:10656
	v_perm_b32 v62, v148, v147, 0xc0c0004
	v_perm_b32 v165, v171, v165, 0xc0c0004
	v_perm_b32 v171, v163, v157, 0xc0c0004
	v_perm_b32 v83, v187, v181, 0xc0c0004
	v_perm_b32 v84, v179, v173, 0xc0c0004
	v_perm_b32 v85, v129, v121, 0xc0c0004
	v_perm_b32 v87, v137, v209, 0xc0c0004
	v_perm_b32 v88, v207, v199, 0xc0c0004
	v_perm_b32 v14, v14, v16, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v16, v211, v205, 0xc0c0004
	v_perm_b32 v90, v203, v197, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v91, v223, v221, 0xc0c0004
	v_perm_b32 v95, v239, v237, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v94, v227, v225, 0xc0c0004
	v_perm_b32 v96, v235, v233, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v93, v231, v229, 0xc0c0004
	v_lshl_or_b32 v100, v166, 16, v255
	v_lshl_or_b32 v99, v111, 16, v110
	v_lshl_or_b32 v98, v118, 16, v112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v92, v219, v213, 0xc0c0004
	v_lshl_or_b32 v97, v126, 16, v120
	v_lshl_or_b32 v108, v106, 16, v108
	v_lshl_or_b32 v107, v114, 16, v116
	v_lshl_or_b32 v106, v122, 16, v124
	v_lshl_or_b32 v105, v130, 16, v132
	v_lshl_or_b32 v112, v170, 16, v164
	v_lshl_or_b32 v111, v82, 16, v172
	v_lshl_or_b32 v110, v11, 16, v81
	v_lshl_or_b32 v109, v13, 16, v15
	v_perm_b32 v101, v247, v245, 0xc0c0004
	v_perm_b32 v102, v243, v241, 0xc0c0004
	v_perm_b32 v103, v175, v252, 0xc0c0004
	v_perm_b32 v104, v251, v249, 0xc0c0004
	v_perm_b32 v173, v185, v183, 0xc0c0004
	v_lshl_or_b32 v138, v206, 16, v200
	v_lshl_or_b32 v137, v214, 16, v208
	v_lshl_or_b32 v144, v136, 16, v134
	v_lshl_or_b32 v148, v217, 16, v216
	v_lshl_or_b32 v147, v146, 16, v149
	v_lshl_or_b32 v146, v154, 16, v156
	v_lshl_or_b32 v145, v162, 16, v155
	v_lshl_or_b32 v150, v210, 16, v204
	v_lshl_or_b32 v149, v218, 16, v212
	v_lshl_or_b32 v124, v222, 16, v220
	v_lshl_or_b32 v123, v226, 16, v224
	v_lshl_or_b32 v122, v230, 16, v228
	v_lshl_or_b32 v121, v234, 16, v232
	v_lshl_or_b32 v132, v238, 16, v236
	v_lshl_or_b32 v131, v242, 16, v240
	v_lshl_or_b32 v130, v246, 16, v244
	v_lshl_or_b32 v129, v250, 16, v248
	v_lshl_or_b32 v156, v169, 16, v167
	v_lshl_or_b32 v155, v10, 16, v177
	v_lshl_or_b32 v154, v253, 16, v12
	v_lshl_or_b32 v164, v161, 16, v61
	v_lshl_or_b32 v163, v115, 16, v125
	v_lshl_or_b32 v162, v133, 16, v0
	v_lshl_or_b32 v161, v63, 16, v62
	v_lshl_or_b32 v167, v84, 16, v83
	v_lshl_or_b32 v166, v86, 16, v85
	v_lshl_or_b32 v172, v14, 16, v89
	v_lshl_or_b32 v170, v92, 16, v91
	v_lshl_or_b32 v169, v94, 16, v93
	v_lshl_or_b32 v153, v119, 16, v113
	v_lshl_or_b32 v158, v215, 16, v135
	v_lshl_or_b32 v157, v53, 16, v254
	v_lshl_or_b32 v175, v102, 16, v101
	v_lshl_or_b32 v173, v173, 16, v117
	s_waitcnt vmcnt(2)
	v_lshl_or_b32 v52, v50, 16, v49
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:24
	scratch_load_b32 v50, off, off offset:28
	s_waitcnt vmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[113:120], v[161:164], v[121:124], v[189:196] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_lshl_or_b32 v51, v50, 16, v49
	scratch_load_b32 v49, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_lshl_or_b32 v50, v176, 16, v49
	v_lshl_or_b32 v49, v168, 16, v174
	v_lshl_or_b32 v168, v171, 16, v165
	v_lshl_or_b32 v165, v88, 16, v87
	v_lshl_or_b32 v171, v90, 16, v16
	v_lshl_or_b32 v176, v96, 16, v95
	v_wmma_i32_16x16x16_iu8 v[9:16], v[97:100], v[49:52], v[189:196] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[105:108], v[49:52], v[189:196] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[97:100], v[109:112], v[189:196] neg_lo:[1,1,0]
	v_lshl_or_b32 v174, v104, 16, v103
	v_wmma_i32_16x16x16_iu8 v[97:104], v[105:108], v[109:112], v[189:196] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[105:112], v[129:132], v[121:124], v[189:196] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[121:128], v[129:132], v[169:172], v[189:196] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[9:16], v[141:144], v[137:140], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[81:88], v[145:148], v[137:140], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[89:96], v[141:144], v[149:152], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[129:136], v[161:164], v[169:172], v[189:196] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[97:104], v[145:148], v[149:152], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[105:112], v[157:160], v[153:156], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[113:120], v[165:168], v[153:156], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[121:128], v[157:160], v[173:176], v[121:128] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v0, v9
	v_cvt_f32_i32_e32 v9, v10
	v_cvt_f32_i32_e32 v10, v11
	v_cvt_f32_i32_e32 v11, v12
	v_cvt_f32_i32_e32 v12, v13
	v_cvt_f32_i32_e32 v13, v14
	v_cvt_f32_i32_e32 v14, v15
	v_cvt_f32_i32_e32 v15, v16
	v_cvt_f32_i32_e32 v16, v81
	v_cvt_f32_i32_e32 v49, v82
	v_cvt_f32_i32_e32 v50, v83
	v_cvt_f32_i32_e32 v51, v84
	v_cvt_f32_i32_e32 v52, v85
	v_cvt_f32_i32_e32 v53, v86
	v_cvt_f32_i32_e32 v61, v87
	v_cvt_f32_i32_e32 v62, v88
	v_cvt_f32_i32_e32 v81, v90
	v_cvt_f32_i32_e32 v82, v91
	v_cvt_f32_i32_e32 v83, v92
	v_cvt_f32_i32_e32 v84, v93
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_lshlrev_b32_e32 v65, 16, v65
	v_lshlrev_b32_e32 v64, 16, v64
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_wmma_i32_16x16x16_iu8 v[129:136], v[165:168], v[173:176], v[129:136] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v63, v89
	v_cvt_f32_i32_e32 v85, v94
	v_cvt_f32_i32_e32 v86, v95
	v_cvt_f32_i32_e32 v87, v96
	v_cvt_f32_i32_e32 v88, v97
	v_cvt_f32_i32_e32 v89, v98
	v_cvt_f32_i32_e32 v90, v99
	v_cvt_f32_i32_e32 v91, v100
	v_cvt_f32_i32_e32 v92, v101
	v_cvt_f32_i32_e32 v93, v102
	v_cvt_f32_i32_e32 v94, v103
	v_cvt_f32_i32_e32 v95, v104
	v_cvt_f32_i32_e32 v96, v105
	v_cvt_f32_i32_e32 v97, v106
	v_cvt_f32_i32_e32 v98, v107
	v_cvt_f32_i32_e32 v99, v108
	v_cvt_f32_i32_e32 v100, v109
	v_cvt_f32_i32_e32 v101, v110
	v_cvt_f32_i32_e32 v102, v111
	v_cvt_f32_i32_e32 v103, v112
	v_cvt_f32_i32_e32 v104, v113
	v_cvt_f32_i32_e32 v105, v114
	v_cvt_f32_i32_e32 v106, v115
	v_cvt_f32_i32_e32 v107, v116
	v_cvt_f32_i32_e32 v108, v117
	v_cvt_f32_i32_e32 v109, v118
	v_cvt_f32_i32_e32 v110, v119
	v_cvt_f32_i32_e32 v111, v120
	v_cvt_f32_i32_e32 v112, v121
	v_cvt_f32_i32_e32 v113, v122
	v_cvt_f32_i32_e32 v114, v123
	v_cvt_f32_i32_e32 v115, v124
	v_cvt_f32_i32_e32 v116, v125
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v11, v11, v64 :: v_dual_lshlrev_b32 v66, 16, v66
	v_dual_mul_f32 v14, v14, v64 :: v_dual_lshlrev_b32 v67, 16, v67
	v_dual_mul_f32 v16, v16, v64 :: v_dual_lshlrev_b32 v69, 16, v69
	v_dual_mul_f32 v13, v13, v64 :: v_dual_lshlrev_b32 v70, 16, v70
	v_dual_mul_f32 v50, v50, v64 :: v_dual_lshlrev_b32 v71, 16, v71
	v_dual_mul_f32 v52, v52, v64 :: v_dual_lshlrev_b32 v73, 16, v73
	v_dual_mul_f32 v15, v15, v64 :: v_dual_lshlrev_b32 v74, 16, v74
	v_dual_mul_f32 v62, v62, v64 :: v_dual_lshlrev_b32 v75, 16, v75
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v59, 16, v59
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v49, v49, v64 :: v_dual_lshlrev_b32 v78, 16, v78
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_lshlrev_b32_e32 v77, 16, v77
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v51, v51, v64 :: v_dual_lshlrev_b32 v2, 16, v2
	v_dual_mul_f32 v53, v53, v64 :: v_dual_lshlrev_b32 v6, 16, v6
	v_dual_mul_f32 v61, v61, v64 :: v_dual_lshlrev_b32 v54, 16, v54
	v_mul_f32_e32 v0, v0, v64
	v_mul_f32_e32 v9, v9, v64
	v_mul_f32_e32 v10, v10, v64
	v_mul_f32_e32 v12, v12, v64
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v68, 16, v68
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v64, v81, v65 :: v_dual_lshlrev_b32 v55, 16, v55
	v_mul_f32_e32 v81, v82, v65
	v_mul_f32_e32 v82, v83, v65
	v_mul_f32_e32 v83, v84, v65
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v117, v126
	v_cvt_f32_i32_e32 v118, v127
	v_cvt_f32_i32_e32 v119, v128
	v_cvt_f32_i32_e32 v120, v129
	v_cvt_f32_i32_e32 v121, v130
	v_cvt_f32_i32_e32 v122, v131
	v_cvt_f32_i32_e32 v123, v132
	v_cvt_f32_i32_e32 v124, v133
	v_cvt_f32_i32_e32 v125, v134
	v_cvt_f32_i32_e32 v126, v135
	v_cvt_f32_i32_e32 v127, v136
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v72, 16, v72
	v_lshlrev_b32_e32 v60, 16, v60
	v_lshlrev_b32_e32 v80, 16, v80
	v_lshlrev_b32_e32 v57, 16, v57
	v_lshlrev_b32_e32 v76, 16, v76
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v84, v85, v65 :: v_dual_lshlrev_b32 v79, 16, v79
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v1, 16, v1
	v_lshlrev_b32_e32 v3, 16, v3
	v_lshlrev_b32_e32 v4, 16, v4
	v_lshlrev_b32_e32 v7, 16, v7
	v_lshlrev_b32_e32 v8, 16, v8
	v_lshlrev_b32_e32 v128, 16, v178
	v_lshlrev_b32_e32 v129, 16, v180
	v_lshlrev_b32_e32 v130, 16, v182
	v_lshlrev_b32_e32 v131, 16, v184
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v63, v63, v65 :: v_dual_lshlrev_b32 v132, 16, v186
	v_mul_f32_e32 v85, v86, v65
	v_mul_f32_e32 v86, v87, v65
	v_mul_f32_e32 v87, v88, v65
	v_mul_f32_e32 v88, v89, v65
	v_mul_f32_e32 v89, v90, v65
	v_mul_f32_e32 v90, v91, v65
	v_mul_f32_e32 v91, v92, v65
	v_mul_f32_e32 v92, v93, v65
	v_mul_f32_e32 v93, v94, v65
	v_mul_f32_e32 v65, v95, v65
	v_mul_f32_e32 v95, v97, v77
	v_mul_f32_e32 v97, v99, v77
	v_mul_f32_e32 v99, v101, v77
	v_mul_f32_e32 v101, v103, v77
	v_mul_f32_e32 v103, v105, v77
	v_mul_f32_e32 v105, v107, v77
	v_mul_f32_e32 v107, v109, v77
	v_dual_mul_f32 v109, v112, v78 :: v_dual_fmac_f32 v40, v81, v68
	v_dual_mul_f32 v112, v115, v78 :: v_dual_lshlrev_b32 v133, 16, v188
	v_mul_f32_e32 v94, v96, v77
	v_mul_f32_e32 v96, v98, v77
	v_mul_f32_e32 v98, v100, v77
	v_mul_f32_e32 v100, v102, v77
	v_dual_mul_f32 v102, v104, v77 :: v_dual_mul_f32 v115, v118, v78
	v_mul_f32_e32 v104, v106, v77
	v_mul_f32_e32 v106, v108, v77
	v_dual_mul_f32 v108, v110, v77 :: v_dual_fmac_f32 v17, v0, v66
	v_dual_mul_f32 v77, v111, v77 :: v_dual_fmac_f32 v44, v64, v67
	v_mul_f32_e32 v110, v113, v78
	v_mul_f32_e32 v111, v114, v78
	v_mul_f32_e32 v113, v116, v78
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v43, v9, v67 :: v_dual_fmac_f32 v18, v63, v66
	v_dual_fmac_f32 v39, v10, v68 :: v_dual_fmac_f32 v32, v83, v70
	v_dual_fmac_f32 v35, v11, v69 :: v_dual_fmac_f32 v24, v85, v72
	v_dual_fmac_f32 v31, v12, v70 :: v_dual_fmac_f32 v36, v82, v69
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v116, v119, v78 :: v_dual_lshlrev_b32 v5, 16, v5
	v_mul_f32_e32 v114, v117, v78
	v_mul_f32_e32 v117, v120, v78
	v_mul_f32_e32 v120, v123, v78
	v_dual_mul_f32 v123, v126, v78 :: v_dual_fmac_f32 v28, v84, v71
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v25, v61, v57 :: v_dual_fmac_f32 v40, v111, v2
	v_dual_fmac_f32 v17, v94, v79 :: v_dual_fmac_f32 v32, v113, v4
	v_dual_fmac_f32 v43, v95, v1 :: v_dual_fmac_f32 v36, v112, v3
	v_dual_fmac_f32 v39, v96, v2 :: v_dual_fmac_f32 v44, v110, v1
	v_dual_fmac_f32 v35, v97, v3 :: v_dual_fmac_f32 v28, v114, v5
	v_dual_fmac_f32 v31, v98, v4 :: v_dual_fmac_f32 v24, v115, v6
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v1, off, off offset:12
	scratch_load_b32 v2, off, off offset:8
	scratch_load_b32 v3, off, off
	scratch_load_b32 v4, off, off offset:4
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_mul_f32_e32 v118, v121, v78
	v_mul_f32_e32 v119, v122, v78
	v_mul_f32_e32 v121, v124, v78
	v_mul_f32_e32 v122, v125, v78
	v_dual_mul_f32 v78, v127, v78 :: v_dual_fmac_f32 v27, v13, v71
	.loc	1 336 17                        ; generate_amdgcn.py:336:17
	v_fmac_f32_e32 v22, v86, v73
	v_dual_fmac_f32 v23, v14, v72 :: v_dual_fmac_f32 v48, v87, v74
	v_dual_fmac_f32 v21, v15, v73 :: v_dual_fmac_f32 v46, v88, v75
	v_dual_fmac_f32 v47, v16, v74 :: v_dual_fmac_f32 v42, v89, v59
	v_dual_fmac_f32 v45, v49, v75 :: v_dual_fmac_f32 v38, v90, v60
	v_dual_fmac_f32 v41, v50, v59 :: v_dual_fmac_f32 v30, v92, v80
	v_dual_fmac_f32 v37, v51, v60 :: v_dual_fmac_f32 v26, v93, v57
	v_dual_fmac_f32 v33, v52, v55 :: v_dual_fmac_f32 v20, v65, v76
	v_dual_fmac_f32 v29, v53, v80 :: v_dual_fmac_f32 v34, v91, v55
	v_dual_fmac_f32 v19, v62, v76 :: v_dual_fmac_f32 v18, v109, v79
	v_dual_fmac_f32 v27, v99, v5 :: v_dual_fmac_f32 v22, v116, v7
	v_dual_fmac_f32 v23, v100, v6 :: v_dual_fmac_f32 v48, v117, v8
	v_dual_fmac_f32 v21, v101, v7 :: v_dual_fmac_f32 v46, v118, v54
	v_dual_fmac_f32 v47, v102, v8 :: v_dual_fmac_f32 v38, v120, v129
	v_dual_fmac_f32 v45, v103, v54 :: v_dual_fmac_f32 v30, v122, v131
	v_dual_fmac_f32 v41, v104, v128 :: v_dual_fmac_f32 v34, v121, v130
	v_dual_fmac_f32 v37, v105, v129 :: v_dual_fmac_f32 v42, v119, v128
	v_dual_fmac_f32 v33, v106, v130 :: v_dual_fmac_f32 v26, v123, v132
	v_dual_fmac_f32 v29, v107, v131 :: v_dual_fmac_f32 v20, v78, v133
	v_fmac_f32_e32 v25, v108, v132
	v_fmac_f32_e32 v19, v77, v133
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:148
	scratch_load_b32 v11, off, off offset:152
	scratch_load_b32 v6, off, off offset:156
.LBB0_7:                                ; %._crit_edge
	.loc	1 392 9 is_stmt 1               ; generate_amdgcn.py:392:9
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v4, 2, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v1, 7, v11
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_bfe_i32 v3, v0, 0, 1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v2, 0x7f, v0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s26, s21
	.loc	1 392 9 is_stmt 0               ; generate_amdgcn.py:392:9
	v_and_b32_e32 v5, 0x78, v4
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mul_lo_u32 v1, s21, v1
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v4, 14, v0
	v_and_b32_e32 v3, 0x840, v3
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_add_i32 s0, s0, s25
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	s_waitcnt vmcnt(0)
	v_lshl_or_b32 v6, v6, 3, v5
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v5, 11, v4
	s_barrier
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add3_u32 v49, s0, v2, v1
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xor_b32_e32 v1, v6, v3
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_ashrrev_i32_e32 v50, 31, v49
	v_or3_b32 v10, v1, v5, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b64 v[1:2], 2, v[49:50]
	v_add_nc_u32_e32 v3, 0, v10
	v_xad_u32 v5, v10, 8, 0
	v_xad_u32 v6, v10, 16, 0
	v_xad_u32 v7, v10, 24, 0
	v_xad_u32 v8, v10, 32, 0
	v_xad_u32 v9, v10, 40, 0
	ds_store_2addr_stride64_b64 v3, v[17:18], v[47:48] offset1:2
	ds_store_2addr_stride64_b64 v5, v[43:44], v[45:46] offset1:2
	ds_store_2addr_stride64_b64 v6, v[39:40], v[41:42] offset1:2
	ds_store_2addr_stride64_b64 v7, v[35:36], v[37:38] offset1:2
	ds_store_2addr_stride64_b64 v8, v[31:32], v[33:34] offset1:2
	ds_store_2addr_stride64_b64 v9, v[27:28], v[29:30] offset1:2
	v_add_co_u32 v32, vcc_lo, s22, v1
	v_xad_u32 v3, v10, 48, 0
	v_add_co_ci_u32_e64 v33, null, s23, v2, vcc_lo
	v_xad_u32 v5, v10, 56, 0
	ds_store_2addr_stride64_b64 v3, v[23:24], v[25:26] offset1:2
	ds_store_2addr_stride64_b64 v5, v[21:22], v[19:20] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	global_load_b32 v35, v[32:33], off
	v_and_b32_e32 v2, 1, v0
	v_cmp_eq_u32_e32 vcc_lo, 0, v11
	v_lshlrev_b32_e32 v1, 4, v0
	v_lshlrev_b32_e32 v3, 2, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshlrev_b32_e32 v0, 6, v2
	v_cndmask_b32_e64 v2, 0x840, 0, vcc_lo
	v_and_b32_e32 v1, 0x700, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v0, v2, v0
	v_or3_b32 v0, v1, v3, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v0
	v_xad_u32 v2, 0x1008, v0, 0
	v_xad_u32 v3, 0x2010, v0, 0
	ds_load_2addr_b64 v[28:31], v1 offset1:16
	ds_load_2addr_b64 v[24:27], v2 offset1:16
	ds_load_2addr_b64 v[20:23], v3 offset1:16
	v_xad_u32 v1, 0x3018, v0, 0
	v_xad_u32 v2, 0x4020, v0, 0
	v_xad_u32 v3, 0x5028, v0, 0
	v_xad_u32 v4, 0x6030, v0, 0
	v_xad_u32 v0, 0x7038, v0, 0
	ds_load_2addr_b64 v[16:19], v1 offset1:16
	ds_load_2addr_b64 v[12:15], v2 offset1:16
	ds_load_2addr_b64 v[8:11], v3 offset1:16
	ds_load_2addr_b64 v[4:7], v4 offset1:16
	ds_load_2addr_b64 v[0:3], v0 offset1:16
.LBB0_8:                                ; %atomicrmw.start182
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(7)
	v_add_f32_e32 v34, v35, v28
	global_atomic_cmpswap_b32 v34, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v34, v35
	v_mov_b32_e32 v35, v34
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_8
; %bb.9:                                ; %atomicrmw.end181
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v32, s21, 1, v49
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v32, vcc_lo, s22, v32
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_10:                               ; %atomicrmw.start176
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(6)
	v_add_f32_e32 v34, v35, v24
	global_atomic_cmpswap_b32 v28, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v28, v35
	v_mov_b32_e32 v35, v28
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_10
; %bb.11:                               ; %atomicrmw.end175
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v32, s21, 2, v49
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v32, vcc_lo, s22, v32
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_12:                               ; %atomicrmw.start170
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(5)
	v_add_f32_e32 v34, v35, v20
	global_atomic_cmpswap_b32 v24, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v24, v35
	v_mov_b32_e32 v35, v24
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_12
; %bb.13:                               ; %atomicrmw.end169
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[32:33], null, s21, 6, v[49:50]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	v_add_co_u32 v32, vcc_lo, s22, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_14:                               ; %atomicrmw.start164
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(4)
	v_add_f32_e32 v34, v35, v16
	global_atomic_cmpswap_b32 v20, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v20, v35
	v_mov_b32_e32 v35, v20
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_14
; %bb.15:                               ; %atomicrmw.end163
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v32, s21, 3, v49
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v32, vcc_lo, s22, v32
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_16:                               ; %atomicrmw.start158
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v34, v35, v12
	global_atomic_cmpswap_b32 v16, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v16, v35
	v_mov_b32_e32 v35, v16
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_16
; %bb.17:                               ; %atomicrmw.end157
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[32:33], null, s21, 10, v[49:50]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	v_add_co_u32 v32, vcc_lo, s22, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_18:                               ; %atomicrmw.start152
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v34, v35, v8
	global_atomic_cmpswap_b32 v12, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v12, v35
	v_mov_b32_e32 v35, v12
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_18
; %bb.19:                               ; %atomicrmw.end151
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[32:33], null, s21, 12, v[49:50]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	v_add_co_u32 v32, vcc_lo, s22, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_20:                               ; %atomicrmw.start146
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v34, v35, v4
	global_atomic_cmpswap_b32 v8, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v8, v35
	v_mov_b32_e32 v35, v8
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_20
; %bb.21:                               ; %atomicrmw.end145
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[32:33], null, s21, 14, v[49:50]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	v_add_co_u32 v32, vcc_lo, s22, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_22:                               ; %atomicrmw.start140
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v34, v35, v0
	global_atomic_cmpswap_b32 v4, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v35
	v_mov_b32_e32 v35, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_22
; %bb.23:                               ; %atomicrmw.end139
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v32, s21, 4, v49
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v32, vcc_lo, s22, v32
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_24:                               ; %atomicrmw.start134
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v34, v35, v30
	global_atomic_cmpswap_b32 v0, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v35
	v_mov_b32_e32 v35, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_24
; %bb.25:                               ; %atomicrmw.end133
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[32:33], null, s21, 18, v[49:50]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	v_add_co_u32 v32, vcc_lo, s22, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_26:                               ; %atomicrmw.start128
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v34, v35, v26
	global_atomic_cmpswap_b32 v0, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v35
	v_mov_b32_e32 v35, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_26
; %bb.27:                               ; %atomicrmw.end127
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[32:33], null, s21, 20, v[49:50]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	v_add_co_u32 v32, vcc_lo, s22, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_28:                               ; %atomicrmw.start122
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v34, v35, v22
	global_atomic_cmpswap_b32 v0, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v35
	v_mov_b32_e32 v35, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_28
; %bb.29:                               ; %atomicrmw.end121
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[32:33], null, s21, 22, v[49:50]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	v_add_co_u32 v32, vcc_lo, s22, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_30:                               ; %atomicrmw.start116
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v34, v35, v18
	global_atomic_cmpswap_b32 v0, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v35
	v_mov_b32_e32 v35, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_30
; %bb.31:                               ; %atomicrmw.end115
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[32:33], null, s21, 24, v[49:50]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	v_add_co_u32 v32, vcc_lo, s22, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_32:                               ; %atomicrmw.start110
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v34, v35, v14
	global_atomic_cmpswap_b32 v0, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v35
	v_mov_b32_e32 v35, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_32
; %bb.33:                               ; %atomicrmw.end109
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[32:33], null, s21, 26, v[49:50]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	v_add_co_u32 v32, vcc_lo, s22, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_34:                               ; %atomicrmw.start104
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v34, v35, v10
	global_atomic_cmpswap_b32 v0, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v35
	v_mov_b32_e32 v35, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_34
; %bb.35:                               ; %atomicrmw.end103
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[32:33], null, s21, 28, v[49:50]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	v_add_co_u32 v32, vcc_lo, s22, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_36:                               ; %atomicrmw.start98
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v34, v35, v6
	global_atomic_cmpswap_b32 v0, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v35
	v_mov_b32_e32 v35, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_36
; %bb.37:                               ; %atomicrmw.end97
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[32:33], null, s21, 30, v[49:50]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	v_add_co_u32 v32, vcc_lo, s22, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_38:                               ; %atomicrmw.start92
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v34, v35, v2
	global_atomic_cmpswap_b32 v0, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v35
	v_mov_b32_e32 v35, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_38
; %bb.39:                               ; %atomicrmw.end91
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add_nc_u32_e32 v32, s24, v49
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v32, vcc_lo, s22, v32
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_40:                               ; %atomicrmw.start86
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v34, v35, v29
	global_atomic_cmpswap_b32 v0, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v35
	v_mov_b32_e32 v35, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_40
; %bb.41:                               ; %atomicrmw.end85
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[28:29], null, s21, 34, v[49:50]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v29, 31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[28:29], 2, v[28:29]
	v_add_co_u32 v28, vcc_lo, s22, v28
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v29, null, s23, v29, vcc_lo
	global_load_b32 v33, v[28:29], off
.LBB0_42:                               ; %atomicrmw.start80
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v32, v33, v25
	global_atomic_cmpswap_b32 v0, v[28:29], v[32:33], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v33
	v_mov_b32_e32 v33, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_42
; %bb.43:                               ; %atomicrmw.end79
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[24:25], null, s21, 36, v[49:50]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v25, 31, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[24:25], 2, v[24:25]
	v_add_co_u32 v24, vcc_lo, s22, v24
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v25, null, s23, v25, vcc_lo
	global_load_b32 v29, v[24:25], off
.LBB0_44:                               ; %atomicrmw.start74
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v28, v29, v21
	global_atomic_cmpswap_b32 v0, v[24:25], v[28:29], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v29
	v_mov_b32_e32 v29, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_44
; %bb.45:                               ; %atomicrmw.end73
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[20:21], null, s21, 38, v[49:50]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v21, 31, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[20:21], 2, v[20:21]
	v_add_co_u32 v20, vcc_lo, s22, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v21, null, s23, v21, vcc_lo
	global_load_b32 v25, v[20:21], off
.LBB0_46:                               ; %atomicrmw.start68
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v24, v25, v17
	global_atomic_cmpswap_b32 v0, v[20:21], v[24:25], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v25
	v_mov_b32_e32 v25, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_46
; %bb.47:                               ; %atomicrmw.end67
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[16:17], null, s21, 40, v[49:50]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v17, 31, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[16:17], 2, v[16:17]
	v_add_co_u32 v16, vcc_lo, s22, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, s23, v17, vcc_lo
	global_load_b32 v21, v[16:17], off
.LBB0_48:                               ; %atomicrmw.start62
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v13
	global_atomic_cmpswap_b32 v0, v[16:17], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_48
; %bb.49:                               ; %atomicrmw.end61
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[12:13], null, s21, 42, v[49:50]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v13, 31, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	v_add_co_u32 v12, vcc_lo, s22, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s23, v13, vcc_lo
	global_load_b32 v17, v[12:13], off
.LBB0_50:                               ; %atomicrmw.start56
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v16, v17, v9
	global_atomic_cmpswap_b32 v0, v[12:13], v[16:17], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v17
	v_mov_b32_e32 v17, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_50
; %bb.51:                               ; %atomicrmw.end55
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[8:9], null, s21, 44, v[49:50]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v9, 31, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_add_co_u32 v8, vcc_lo, s22, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s23, v9, vcc_lo
	global_load_b32 v13, v[8:9], off
.LBB0_52:                               ; %atomicrmw.start50
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v12, v13, v5
	global_atomic_cmpswap_b32 v0, v[8:9], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_52
; %bb.53:                               ; %atomicrmw.end49
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[4:5], null, s21, 46, v[49:50]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v5, 31, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	v_add_co_u32 v4, vcc_lo, s22, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, s23, v5, vcc_lo
	global_load_b32 v9, v[4:5], off
.LBB0_54:                               ; %atomicrmw.start44
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v8, v9, v1
	global_atomic_cmpswap_b32 v0, v[4:5], v[8:9], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v9
	v_mov_b32_e32 v9, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_54
; %bb.55:                               ; %atomicrmw.end43
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s21, 48, v[49:50]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s22, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s23, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_56:                               ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v31
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_56
; %bb.57:                               ; %atomicrmw.end37
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s21, 50, v[49:50]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s22, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s23, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_58:                               ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v27
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_58
; %bb.59:                               ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s21, 52, v[49:50]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s22, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s23, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_60:                               ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v23
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_60
; %bb.61:                               ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s21, 54, v[49:50]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s22, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s23, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_62:                               ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v19
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_62
; %bb.63:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s21, 56, v[49:50]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s22, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s23, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_64:                               ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v15
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_64
; %bb.65:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s21, 58, v[49:50]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s22, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s23, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_66:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v11
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_66
; %bb.67:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s21, 60, v[49:50]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s22, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s23, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_68:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v7
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_68
; %bb.69:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s21, 62, v[49:50]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s22, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s23, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_70:                               ; %atomicrmw.start
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v3
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_70
; %bb.71:                               ; %atomicrmw.end
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp25:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 164
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
		.amdhsa_next_free_sgpr 31
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.numbered_sgpr, 31
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.private_seg_size, 164
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12000
; TotalNumSgprs: 33
; NumVgprs: 256
; ScratchSize: 164
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 33
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
	.short	307                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	310                             ; DW_AT_call_line
	.byte	26                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp0-.Lfunc_begin0
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
.Ldebug_ranges2:
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk
    .private_segment_fixed_size: 164
    .sgpr_count:     33
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk2_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 40
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
