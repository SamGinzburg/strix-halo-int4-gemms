	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s18, s[0:1], 0x38
.Ltmp0:
	.loc	1 293 16 prologue_end           ; generate_amdgcn.py:293:16
	s_abs_i32 s7, s2
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_lshlrev_b32_e32 v9, 3, v0
	v_lshlrev_b32_e32 v10, 4, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v4, 2, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v25, 15, v0
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_and_b32_e32 v2, 56, v9
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s27, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s8, s26, 31
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
	s_lshr_b32 s10, s10, 27
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
	s_ashr_i32 s8, s8, 5
.Ltmp11:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s6, s4, 2
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_mul_lo_u32 v7, s18, v3
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s9, 0, s4
	v_rcp_iflag_f32_e32 v1, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s9, s5
	s_mul_hi_u32 s9, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s9
	s_xor_b32 s9, s2, s6
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s5, s4
	s_sub_i32 s7, s7, s10
	s_add_i32 s10, s5, 1
	s_sub_i32 s11, s7, s4
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s5, s10, s5
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s5, 1
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s4, s10, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s9
	s_sub_i32 s7, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s16, s7, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s7, s7, s6
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s4, s8, s16
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 295 20 is_stmt 0              ; generate_amdgcn.py:295:20
	s_min_i32 s17, s4, 4
	.loc	1 296 29 is_stmt 1              ; generate_amdgcn.py:296:29
	s_sub_i32 s2, s2, s7
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s20, s17
	s_abs_i32 s7, s2
	s_cvt_f32_u32 s4, s20
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
	.loc	1 301 14                        ; generate_amdgcn.py:301:14
	v_and_b32_e32 v1, 48, v10
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[14:15]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_mad_u64_u32 v[5:6], null, s18, v4, v[1:2]
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_cvt_u32_f32 s19, s4
	s_mov_b64 s[4:5], s[10:11]
	s_sub_i32 s10, 0, s20
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s19
	s_mul_hi_u32 s6, s19, s10
	s_xor_b32 s10, s2, s17
	s_add_i32 s19, s19, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s7, s19
	s_ashr_i32 s19, s10, 31
	s_mul_i32 s11, s6, s20
	s_add_i32 s10, s6, 1
	s_sub_i32 s7, s7, s11
	s_mov_b32 s11, 0x31027000
	s_sub_i32 s21, s7, s20
	s_cmp_ge_u32 s7, s20
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s21, s7
	s_add_i32 s21, s6, 1
	s_cmp_ge_u32 s7, s20
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s6, s21, s6
	.loc	1 342 22                        ; generate_amdgcn.py:342:22
	s_lshl_b32 s30, s3, 6
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s20, s6, s19
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s3, s18, 0xff
.Ltmp13:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_sub_i32 s22, s20, s19
.Ltmp14:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s21, s18, 63
.Ltmp15:
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s17, s22, s17
	.loc	1 300 14                        ; generate_amdgcn.py:300:14
	s_lshl_b32 s33, s22, 7
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_sub_i32 s2, s2, s17
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s6, s10
	.loc	1 296 13                        ; generate_amdgcn.py:296:13
	s_add_i32 s2, s2, s16
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_mov_b32 s7, s11
	.loc	1 299 14                        ; generate_amdgcn.py:299:14
	s_lshl_b32 s26, s2, 5
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_ashr_i32 s2, s3, 31
.Ltmp17:
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	s_mul_i32 s16, s26, s18
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_lshr_b32 s2, s2, 24
.Ltmp19:
	.loc	1 348 30                        ; generate_amdgcn.py:348:30
	v_add3_u32 v6, v7, v2, s16
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:361:30 ]
	s_add_i32 s22, s3, s2
.Ltmp21:
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_mul_i32 s2, s33, s18
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_gt_i32 s21, 63
	s_cselect_b32 s3, -1, 0
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_add_i32 s2, s2, s30
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	s_lshl_b32 s16, s18, 6
	.loc	1 350 22 is_stmt 0              ; generate_amdgcn.py:350:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 348 30 is_stmt 1              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v7, s30, v6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s21, 0x7f
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v8, s2, v5
	v_add3_u32 v5, s2, s16, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s2, -1, 0
	.loc	1 342 17                        ; generate_amdgcn.py:342:17
	s_add_i32 s17, s30, 64
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	.loc	1 348 30 is_stmt 0              ; generate_amdgcn.py:348:30
	v_add_nc_u32_e32 v6, s17, v6
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v11, 0x80000000, v8, s3
	.loc	1 350 30 is_stmt 0              ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v8, 64, v8
	v_add_nc_u32_e32 v12, 64, v5
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	buffer_load_b64 v[34:35], v7, s[8:11], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_cndmask_b32_e64 v7, 0x80000000, v8, s2
	v_cndmask_b32_e64 v8, 0x80000000, v12, s2
	s_clause 0x1
	buffer_load_b128 v[16:19], v11, s[4:7], 0 offen
	buffer_load_b128 v[20:23], v5, s[4:7], 0 offen
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[36:37], v6, s[8:11], 0 offen
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_clause 0x1
	buffer_load_b128 v[26:29], v7, s[4:7], 0 offen
	buffer_load_b128 v[30:33], v8, s[4:7], 0 offen
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v5, 0xe0, v0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_lshlrev_b32_e32 v8, 1, v0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v6, 4, v0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_and_b32_e32 v7, 48, v0
	s_mov_b32 s16, 0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v11, 1, v5
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_and_b32_e32 v12, 48, v8
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_or_b32_e32 v8, 16, v25
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v44, v9, v7
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s21, 0xbf
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_or_b32 v7, v6, 1, v11
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v45, v10, v12
	v_and_b32_e32 v6, 48, v9
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v24, 0, v44
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_or_b32_e32 v12, 2, v7
	v_or_b32_e32 v13, 4, v7
	v_or_b32_e32 v14, 6, v7
	v_or_b32_e32 v15, 8, v7
	v_or_b32_e32 v9, 10, v7
	v_or_b32_e32 v10, 12, v7
	v_or_b32_e32 v11, 14, v7
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v38, 0, v45
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt vmcnt(5)
	ds_store_b64 v24, v[34:35] offset:16384
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(4)
	ds_store_b128 v38, v[16:19]
	s_waitcnt vmcnt(3)
	ds_store_b128 v38, v[20:23] offset:4096
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v24, v[36:37] offset:18432
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v38, v[26:29] offset:8192
	s_waitcnt vmcnt(0)
	ds_store_b128 v38, v[30:33] offset:12288
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_lshl_or_b32 v36, v25, 6, v6
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_lshl_or_b32 v40, v5, 5, v36
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_xor_b32_e32 v37, 16, v36
	v_xor_b32_e32 v39, 32, v36
	v_xor_b32_e32 v38, 48, v36
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_xor_b32_e32 v42, 16, v40
	v_xor_b32_e32 v41, 32, v40
	v_xor_b32_e32 v43, 48, v40
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr36
                                        ; implicit-def: $vgpr37
                                        ; implicit-def: $vgpr39
                                        ; implicit-def: $vgpr38
                                        ; implicit-def: $vgpr40
                                        ; implicit-def: $vgpr42
                                        ; implicit-def: $vgpr41
                                        ; implicit-def: $vgpr43
.LBB0_3:                                ; %Flow83
	s_load_b64 s[24:25], s[0:1], 0x20
	v_or_b32_e32 v16, s26, v25
	v_or_b32_e32 v8, s26, v8
	s_ashr_i32 s0, s22, 8
	v_or_b32_e32 v33, s33, v7
	v_or_b32_e32 v32, s33, v12
	v_mul_lo_u32 v34, v16, s0
	v_mul_lo_u32 v35, v8, s0
	v_or_b32_e32 v31, s33, v13
	v_or_b32_e32 v29, s33, v14
	v_or_b32_e32 v27, s33, v15
	v_or_b32_e32 v30, s33, v9
	v_or_b32_e32 v28, s33, v10
	v_or_b32_e32 v26, s33, v11
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	v_lshl_or_b32 v4, s20, 7, v4
	s_lshl_b32 s6, s19, 7
	v_lshl_or_b32 v36, v25, 6, v6
.Ltmp22:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s1, s21, 6
	s_mov_b32 s17, s16
.Ltmp23:
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_subrev_nc_u32_e32 v4, s6, v4
	s_mov_b32 s19, s16
	v_lshl_or_b32 v40, v5, 5, v36
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	v_or_b32_e32 v5, 64, v4
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_add_nc_u32_e32 v3, s26, v3
	v_mul_lo_u32 v4, s18, v4
	v_mul_lo_u32 v5, s18, v5
	v_xor_b32_e32 v37, 16, v36
	v_xor_b32_e32 v39, 32, v36
	v_mul_lo_u32 v3, s18, v3
	s_mov_b32 s18, s16
	v_xor_b32_e32 v38, 48, v36
	v_xor_b32_e32 v42, 16, v40
	v_add3_u32 v47, v4, v1, 0x80
	v_add3_u32 v46, v5, v1, 0x80
	v_xor_b32_e32 v41, 32, v40
	v_xor_b32_e32 v43, 48, v40
	v_add3_u32 v48, v3, v2, 0x80
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	v_dual_mov_b32 v8, s23 :: v_dual_mov_b32 v5, s20
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v7, s22
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	s_and_b32 s41, s29, 0xffff
	s_mov_b32 s40, s28
	s_add_i32 s15, s1, -2
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s1, 0, 0x4800
	s_add_i32 s34, 0, 0x2000
	s_mov_b32 s31, 1
	s_mov_b32 s6, s10
	s_mov_b32 s7, s11
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s18, s30, 31
	s_mov_b32 s17, s30
	s_lshr_b32 s18, s18, 24
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v49, s17, v48
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s18, s30, s18
	s_delay_alu instid0(SALU_CYCLE_1)
	s_ashr_i32 s18, s18, 8
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	buffer_load_b64 v[117:118], v49, s[8:11], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v49, v34, s18, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s19, s18, s27
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s18, s0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v50, v35, s18, 1
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v51, v33, s19, 1
	v_add_lshl_u32 v52, v32, s19, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v53, v31, s19, 1
	v_add_lshl_u32 v54, v29, s19, 1
	v_add_lshl_u32 v55, v27, s19, 1
	v_add_lshl_u32 v56, v30, s19, 1
	v_add_lshl_u32 v57, v28, s19, 1
	v_add_lshl_u32 v58, v26, s19, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v49, 0x80000000, v49 :: v_dual_cndmask_b32 v50, 0x80000000, v50
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v51, 0x80000000, v51 :: v_dual_cndmask_b32 v52, 0x80000000, v52
	v_dual_cndmask_b32 v53, 0x80000000, v53 :: v_dual_cndmask_b32 v54, 0x80000000, v54
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v55, 0x80000000, v55 :: v_dual_cndmask_b32 v56, 0x80000000, v56
	v_dual_cndmask_b32 v57, 0x80000000, v57 :: v_dual_cndmask_b32 v58, 0x80000000, v58
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v119, v49, s[36:39], 0 offen
	buffer_load_u16 v120, v50, s[36:39], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_clause 0x7
	buffer_load_u16 v121, v52, s[40:43], 0 offen
	buffer_load_u16 v122, v51, s[40:43], 0 offen
	buffer_load_u16 v123, v54, s[40:43], 0 offen
	buffer_load_u16 v124, v53, s[40:43], 0 offen
	buffer_load_u16 v125, v56, s[40:43], 0 offen
	buffer_load_u16 v126, v55, s[40:43], 0 offen
	buffer_load_u16 v127, v58, s[40:43], 0 offen
	buffer_load_u16 v128, v57, s[40:43], 0 offen
	.loc	1 350 30                        ; generate_amdgcn.py:350:30
	v_add_nc_u32_e32 v49, s17, v47
	.loc	1 350 22 is_stmt 0              ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v50, s17, v46
	s_clause 0x1
	buffer_load_b128 v[65:68], v49, s[4:7], 0 offen
	buffer_load_b128 v[69:72], v50, s[4:7], 0 offen
	s_mov_b32 s18, s14
	s_mov_b32 s14, s1
	.loc	1 348 22 is_stmt 1              ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v49, s18, v36
	v_add_nc_u32_e32 v50, s18, v37
	s_mov_b32 s1, s16
	v_add_nc_u32_e32 v51, s18, v39
	v_add_nc_u32_e32 v52, s18, v38
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v53, s1, v40
	v_add_nc_u32_e32 v54, s1, v42
	v_add_nc_u32_e32 v55, s1, v41
	v_add_nc_u32_e32 v56, s1, v43
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[57:60], v49
	ds_load_b128 v[73:76], v49 offset:1024
	ds_load_b128 v[77:80], v50
	ds_load_b128 v[81:84], v50 offset:1024
	ds_load_b128 v[85:88], v51
	ds_load_b128 v[89:92], v51 offset:1024
	ds_load_b128 v[93:96], v52
	ds_load_b128 v[97:100], v52 offset:1024
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[101:104], v53
	ds_load_b128 v[105:108], v54
	ds_load_b128 v[109:112], v55
	ds_load_b128 v[113:116], v56
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s1, s31, 1
	s_mov_b32 s16, s34
	s_cmp_lt_i32 s1, 2
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cselect_b32 s31, s1, 0
	s_add_i32 s15, s15, -1
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_lshl_b32 s1, s31, 11
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_lshl_b32 s18, s31, 13
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s19, s1, 0
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_add_i32 s34, s18, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s30, s30, 64
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_add_i32 s1, s19, 0x4000
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cmp_lg_u32 s15, 0
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_wmma_i32_16x16x16_iu8 v[49:56], v[101:104], v[57:60], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[101:104], v[73:76], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[105:108], v[77:80], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[105:108], v[81:84], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[109:112], v[85:88], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[109:112], v[89:92], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[113:116], v[93:96], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[57:64], v[113:116], v[97:100], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v63, v63
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v73, 16, v119
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v75, 16, v121
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v77, 16, v123
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v79, 16, v125
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v84, v75, v73 :: v_dual_lshlrev_b32 v81, 16, v127
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v82, 16, v128
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v24, v84, v50
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v76, 16, v122
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v89, v82, v73 :: v_dual_lshlrev_b32 v74, 16, v120
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v78, 16, v124
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v86, v77, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v83, v76, v73 :: v_dual_lshlrev_b32 v80, 16, v126
	v_mul_f32_e32 v88, v79, v73
	v_mul_f32_e32 v85, v78, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v9, v83, v49
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v87, v80, v73
	v_dual_mul_f32 v73, v81, v73 :: v_dual_mul_f32 v76, v74, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v80, v74, v80 :: v_dual_fmac_f32 v21, v85, v51
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v129, s19, v44
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v23, v86, v52 :: v_dual_fmac_f32 v22, v76, v57
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v77, v74, v77
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v19, v88, v54
	v_dual_fmac_f32 v15, v73, v56 :: v_dual_fmac_f32 v14, v80, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v16, v77, v60 :: v_dual_mul_f32 v81, v74, v81
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v78, v74, v78 :: v_dual_fmac_f32 v17, v87, v53
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v10, v81, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, v78, v59
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v75, v74, v75
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fmac_f32_e32 v20, v75, v58
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v79, v74, v79 :: v_dual_add_nc_u32 v130, s34, v45
	v_dual_mul_f32 v74, v74, v82 :: v_dual_fmac_f32 v13, v89, v55
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_store_b64 v129, v[117:118] offset:16384
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	s_waitcnt vmcnt(1)
	ds_store_b128 v130, v[65:68]
	s_waitcnt vmcnt(0)
	ds_store_b128 v130, v[69:72] offset:4096
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_dual_fmac_f32 v12, v79, v62 :: v_dual_fmac_f32 v11, v74, v63
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_addk_i32 s17, 0x80
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v9, 0
	s_add_i32 s14, 0, 0x4000
	s_add_i32 s1, 0, 0x4800
	s_add_i32 s34, 0, 0x2000
.LBB0_8:                                ; %._crit_edge
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v51, 0
	v_mov_b32_e32 v52, 0
	.loc	1 353 19 is_stmt 1              ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s3
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_mov_b32 s4, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 350 22 is_stmt 1              ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v2, s16, v43
	v_add_nc_u32_e32 v6, s16, v41
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v56, s11 :: v_dual_add_nc_u32 v7, s16, v42
	v_mov_b32_e32 v55, s10
	v_mov_b32_e32 v53, s8
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[2:5], v2
	ds_load_b128 v[44:47], v6
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v49, s4 :: v_dual_add_nc_u32 v6, s14, v36
	v_dual_mov_b32 v51, s6 :: v_dual_add_nc_u32 v8, s16, v40
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[65:68], v7
	ds_load_b128 v[69:72], v8
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v8, s14, v37
	ds_load_b128 v[73:76], v6 offset:1024
	ds_load_b128 v[77:80], v6
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v54, s9 :: v_dual_add_nc_u32 v7, s14, v39
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[85:88], v8 offset:1024
	ds_load_b128 v[89:92], v8
	v_add_nc_u32_e32 v6, s14, v38
	ds_load_b128 v[81:84], v7
	ds_load_b128 v[93:96], v7 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_mov_b32_e32 v52, s7
	v_mov_b32_e32 v50, s5
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[97:100], v6
	ds_load_b128 v[101:104], v6 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[69:72], v[77:80], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[69:72], v[73:76], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[65:68], v[89:92], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[49:56], v[65:68], v[85:88], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[44:47], v[81:84], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[44:47], v[93:96], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[57:64], v[2:5], v[97:100], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[49:56], v[2:5], v[101:104], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v5, v58
	v_cvt_f32_i32_e32 v2, v59
	v_cvt_f32_i32_e32 v6, v60
	v_cvt_f32_i32_e32 v3, v61
	v_cvt_f32_i32_e32 v7, v62
	v_cvt_f32_i32_e32 v4, v63
	v_cvt_f32_i32_e32 v8, v64
	v_cvt_f32_i32_e32 v46, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v49, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v45, v53
	v_cvt_f32_i32_e32 v48, v54
	v_cvt_f32_i32_e32 v47, v55
	v_cvt_f32_i32_e32 v51, v56
	v_cvt_f32_i32_e32 v44, v57
.LBB0_10:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s30, 31
	s_mov_b32 s15, 0x31027000
	s_lshr_b32 s4, s4, 24
	s_mov_b32 s14, 0x7ffffffe
	s_add_i32 s4, s30, s4
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s30, s14
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s4, s4, 8
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s31, s15
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s4, s0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v53, v34, s4, 1
	v_add_lshl_u32 v54, v35, s4, 1
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s5, -1, 0
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s4, s4, s27
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s3, s5
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v55, v33, s4, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v53, 0x80000000, v53 :: v_dual_cndmask_b32 v54, 0x80000000, v54
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v56, v32, s4, 1
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_and_b32 s13, s13, 0xffff
	s_clause 0x1
	buffer_load_u16 v74, v53, s[12:15], 0 offen
	buffer_load_u16 v75, v54, s[12:15], 0 offen
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v53, v31, s4, 1
	v_dual_cndmask_b32 v54, 0x80000000, v55 :: v_dual_cndmask_b32 v55, 0x80000000, v56
	v_add_lshl_u32 v56, v29, s4, 1
	v_add_lshl_u32 v57, v27, s4, 1
	v_add_lshl_u32 v58, v30, s4, 1
	v_add_lshl_u32 v59, v28, s4, 1
	v_add_lshl_u32 v60, v26, s4, 1
	v_dual_cndmask_b32 v53, 0x80000000, v53 :: v_dual_cndmask_b32 v56, 0x80000000, v56
	s_and_b32 s29, s29, 0xffff
	v_dual_cndmask_b32 v57, 0x80000000, v57 :: v_dual_cndmask_b32 v58, 0x80000000, v58
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v59, 0x80000000, v59 :: v_dual_cndmask_b32 v60, 0x80000000, v60
	s_clause 0x7
	buffer_load_u16 v76, v54, s[28:31], 0 offen
	buffer_load_u16 v77, v55, s[28:31], 0 offen
	buffer_load_u16 v72, v53, s[28:31], 0 offen
	buffer_load_u16 v73, v56, s[28:31], 0 offen
	buffer_load_u16 v70, v57, s[28:31], 0 offen
	buffer_load_u16 v71, v58, s[28:31], 0 offen
	buffer_load_u16 v68, v59, s[28:31], 0 offen
	buffer_load_u16 v69, v60, s[28:31], 0 offen
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v66, 0
	v_mov_b32_e32 v67, 0
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v1, s34, v42
	v_add_nc_u32_e32 v40, s34, v40
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v36, s1, v36
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	v_add_nc_u32_e32 v42, s34, v43
	v_add_nc_u32_e32 v41, s34, v41
	ds_load_b128 v[63:66], v1
	ds_load_b128 v[78:81], v40
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	v_add_nc_u32_e32 v1, s1, v39
	v_add_nc_u32_e32 v37, s1, v37
	ds_load_b128 v[82:85], v36 offset:1024
	ds_load_b128 v[86:89], v36
	.loc	1 350 22                        ; generate_amdgcn.py:350:22
	ds_load_b128 v[90:93], v42
	ds_load_b128 v[94:97], v41
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[98:101], v1
	ds_load_b128 v[102:105], v37 offset:1024
	ds_load_b128 v[106:109], v37
	v_add_nc_u32_e32 v53, s1, v38
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v43, s11 :: v_dual_mov_b32 v38, s6
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[110:113], v1 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	v_dual_mov_b32 v42, s10 :: v_dual_mov_b32 v41, s9
	v_dual_mov_b32 v40, s8 :: v_dual_mov_b32 v39, s7
	v_dual_mov_b32 v37, s5 :: v_dual_mov_b32 v36, s4
	.loc	1 348 22                        ; generate_amdgcn.py:348:22
	ds_load_b128 v[114:117], v53
	ds_load_b128 v[118:121], v53 offset:1024
	.loc	1 353 19                        ; generate_amdgcn.py:353:19
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu8 v[55:62], v[78:81], v[86:89], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[78:81], v[82:85], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[55:62], v[63:66], v[106:109], v[55:62] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[36:43], v[63:66], v[102:105], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[55:62], v[94:97], v[98:101], v[55:62] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu8 v[36:43], v[94:97], v[110:113], v[36:43] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu8 v[55:62], v[90:93], v[114:117], v[55:62] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu8 v[36:43], v[90:93], v[118:121], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v1, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v53, v57
	v_cvt_f32_i32_e32 v57, v58
	v_cvt_f32_i32_e32 v54, v59
	v_cvt_f32_i32_e32 v58, v60
	v_cvt_f32_i32_e32 v55, v61
	v_cvt_f32_i32_e32 v59, v62
	v_cvt_f32_i32_e32 v61, v36
	v_cvt_f32_i32_e32 v65, v37
	v_cvt_f32_i32_e32 v64, v38
	v_cvt_f32_i32_e32 v67, v39
	v_cvt_f32_i32_e32 v60, v40
	v_cvt_f32_i32_e32 v63, v41
	v_cvt_f32_i32_e32 v62, v42
	v_cvt_f32_i32_e32 v66, v43
.LBB0_12:
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s1, s17, 31
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s30, s14
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_lshr_b32 s1, s1, 24
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_mov_b32 s31, s15
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_add_i32 s1, s17, s1
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v36.l, 0
	.loc	1 362 29                        ; generate_amdgcn.py:362:29
	s_ashr_i32 s1, s1, 8
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v36.h, v75.l
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cmp_lt_i32 s1, s0
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_add_lshl_u32 v34, v34, s1, 1
	v_add_lshl_u32 v35, v35, s1, 1
	.loc	1 366 40                        ; generate_amdgcn.py:366:40
	s_mul_i32 s1, s1, s27
	.loc	1 363 34                        ; generate_amdgcn.py:363:34
	s_cselect_b32 s0, -1, 0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v33, v33, s1, 1
	v_add_lshl_u32 v32, v32, s1, 1
	v_add_lshl_u32 v29, v29, s1, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_and_b32 vcc_lo, s2, s0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_add_lshl_u32 v31, v31, s1, 1
	v_add_lshl_u32 v27, v27, s1, 1
	v_add_lshl_u32 v30, v30, s1, 1
	v_add_lshl_u32 v28, v28, s1, 1
	v_add_lshl_u32 v26, v26, s1, 1
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v32, 0x80000000, v32
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v29, 0x80000000, v29 :: v_dual_cndmask_b32 v28, 0x80000000, v28
	v_dual_cndmask_b32 v31, 0x80000000, v31 :: v_dual_cndmask_b32 v30, 0x80000000, v30
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_dual_cndmask_b32 v34, 0x80000000, v34 :: v_dual_cndmask_b32 v35, 0x80000000, v35
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_dual_cndmask_b32 v27, 0x80000000, v27 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	s_clause 0x7
	buffer_load_u16 v32, v32, s[28:31], 0 offen
	buffer_load_u16 v33, v33, s[28:31], 0 offen
	buffer_load_u16 v29, v29, s[28:31], 0 offen
	buffer_load_u16 v31, v31, s[28:31], 0 offen
	buffer_load_u16 v30, v30, s[28:31], 0 offen
	buffer_load_u16 v27, v27, s[28:31], 0 offen
	buffer_load_u16 v26, v26, s[28:31], 0 offen
	buffer_load_u16 v28, v28, s[28:31], 0 offen
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_clause 0x1
	buffer_load_u16 v34, v34, s[12:15], 0 offen
	buffer_load_u16 v35, v35, s[12:15], 0 offen
	v_mov_b16_e32 v37.h, v74.l
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v38, 1, v0
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(16)
	v_mov_b16_e32 v39.h, v77.l
	v_mov_b16_e32 v40.h, v76.l
	s_waitcnt vmcnt(14)
	v_mov_b16_e32 v41.h, v73.l
	v_mov_b16_e32 v42.h, v72.l
	s_waitcnt vmcnt(12)
	v_mov_b16_e32 v43.h, v71.l
	s_waitcnt vmcnt(11)
	v_mov_b16_e32 v68.h, v70.l
	s_waitcnt vmcnt(10)
	v_mov_b16_e32 v69.h, v69.l
	v_mov_b16_e32 v70.h, v68.l
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_mov_b16_e32 v37.l, v36.l
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_mov_b16_e32 v39.l, v36.l
	v_mov_b16_e32 v40.l, v36.l
	v_mov_b16_e32 v41.l, v36.l
	v_mov_b16_e32 v42.l, v36.l
	v_mov_b16_e32 v43.l, v36.l
	v_mov_b16_e32 v68.l, v36.l
	v_mov_b16_e32 v69.l, v36.l
	v_mov_b16_e32 v70.l, v36.l
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_dual_mov_b32 v72, 0x7632 :: v_dual_mul_f32 v81, v36, v40
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v38, 0x78, v38
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v73.h, v36.l
	v_mov_b16_e32 v74.h, v36.l
	v_mov_b16_e32 v75.h, v36.l
	v_mov_b16_e32 v76.h, v36.l
	v_mov_b16_e32 v77.h, v36.l
	v_mov_b16_e32 v78.h, v36.l
	v_mov_b16_e32 v79.h, v36.l
	v_mov_b16_e32 v80.h, v36.l
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v82, v36, v39 :: v_dual_mul_f32 v39, v39, v37
	v_dual_mul_f32 v83, v36, v42 :: v_dual_mul_f32 v42, v42, v37
	v_mul_f32_e32 v84, v36, v41
	v_mul_f32_e32 v85, v36, v68
	v_dual_mul_f32 v86, v36, v43 :: v_dual_mul_f32 v43, v43, v37
	v_mul_f32_e32 v87, v36, v70
	v_mul_f32_e32 v36, v36, v69
	v_mul_f32_e32 v69, v69, v37
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v5, v39, v5, v24
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v40, v40, v37
	v_mul_f32_e32 v41, v41, v37
	v_mul_f32_e32 v68, v68, v37
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_mul_lo_u32 v25, s27, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v5, v24, v5, s3
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_mul_i32 s0, s26, s27
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v7, v43, v7, v19
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_add_i32 s0, s0, s33
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v6, v41, v6, v23
	v_fma_f32 v3, v68, v3, v17
	v_fma_f32 v2, v42, v2, v21
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	v_add3_u32 v25, s0, v38, v25
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v7, v19, v7, s3
	v_cndmask_b32_e64 v6, v23, v6, s3
	v_cndmask_b32_e64 v3, v17, v3, s3
	v_cndmask_b32_e64 v2, v21, v2, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v38, v82, v50, v20
	v_fma_f32 v41, v86, v48, v12
	v_fma_f32 v46, v81, v46, v22
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_dual_mov_b32 v71, 0x5410 :: v_dual_and_b32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v20, v20, v38, s3
	v_cndmask_b32_e64 v12, v12, v41, s3
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v22, v22, v46, s3
	.loc	1 390 18                        ; generate_amdgcn.py:390:18
	s_lshl_b32 s1, s27, 4
	.loc	1 390 9 is_stmt 0               ; generate_amdgcn.py:390:9
	s_mov_b32 s26, s14
	s_mov_b32 s16, 0x76543210
	s_mov_b32 s27, s15
	s_and_b32 s25, s25, 0xffff
	.loc	1 366 22 is_stmt 1              ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v17, 16, v32
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v19, 16, v33
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v21, 16, v29
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v23, 16, v31
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v24, 16, v30
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v42, v85, v45, v14
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v26, 16, v26
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v8, v69, v8, v15
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v28, 16, v28
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v43, v87, v47, v11
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v14, v42, s3
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v36, v36, v51, v10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v15, v8, s3
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v15, 16, v35
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v37, v70, v37
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v11, v11, v43, s3
	v_cndmask_b32_e64 v10, v10, v36, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v4, v37, v4, v13
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_lshlrev_b32_e32 v37, 1, v25
	v_add_lshl_u32 v25, v25, s1, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v13, v4, s3
	.loc	1 364 22                        ; generate_amdgcn.py:364:22
	v_lshlrev_b32_e32 v13, 16, v34
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v39, v40, v44, v9
	v_fma_f32 v44, v83, v49, v18
	.loc	1 366 22                        ; generate_amdgcn.py:366:22
	v_lshlrev_b32_e32 v27, 16, v27
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v40, v84, v52, v16
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_dual_mul_f32 v35, v28, v13 :: v_dual_mul_f32 v28, v15, v28
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v18, v44, s3
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v30, v17, v13
	v_mul_f32_e32 v33, v27, v13
	v_mul_f32_e32 v34, v24, v13
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v28, v28, v62, v11
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v27, v15, v27
	v_mul_f32_e32 v24, v15, v24
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v9, v39, s3
	v_cndmask_b32_e64 v16, v16, v40, s3
	v_cndmask_b32_e64 v11, v11, v28, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v27, v27, v60, v14
	v_fma_f32 v24, v24, v63, v12
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v32, v21, v13
	v_mul_f32_e32 v21, v15, v21
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v80.l, v11.h
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v31, v23, v13
	v_mul_f32_e32 v23, v15, v23
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v14, v14, v27, s2
	v_cndmask_b32_e64 v12, v12, v24, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v21, v21, v67, v16
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s14, v11, v11
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v23, v23, v64, v18
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v78.l, v14.h
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v17, v15, v17
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v16, v16, v21, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v77.l, v12.h
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v18, v18, v23, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s10, v14, v14
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v17, v17, v65, v20
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_mov_b16_e32 v75.l, v16.h
	v_cmp_o_f32_e64 s9, v12, v12
	v_mov_b16_e32 v76.l, v18.h
	.loc	1 368 24                        ; generate_amdgcn.py:368:24
	v_mul_f32_e32 v29, v19, v13
	v_mul_f32_e32 v19, v15, v19
	v_mul_f32_e32 v13, v26, v13
	v_mul_f32_e32 v15, v15, v26
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v26, v30, v56, v5
	v_fma_f32 v30, v32, v57, v6
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v17, v20, v17, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v13, v13, v59, v8
	v_fma_f32 v32, v34, v58, v7
	v_fma_f32 v19, v19, v61, v22
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v6, v6, v30, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v15, v15, v66, v10
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v8, v8, v13, s2
	v_cndmask_b32_e64 v5, v5, v26, s2
	v_cndmask_b32_e64 v7, v7, v32, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v20, v6, 16, 1
	v_cmp_o_f32_e64 s4, v6, v6
	v_bfe_u32 v24, v8, 16, 1
	v_cmp_o_f32_e64 s12, v8, v8
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v10, v10, v15, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v6, v6, v20, 0x7fff
	v_and_b32_e32 v20, 1, v76
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v1, v29, v1, v9
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_add3_u32 v8, v8, v24, 0x7fff
	v_and_b32_e32 v24, 1, v80
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v29, v31, v53, v2
	v_fma_f32 v31, v33, v54, v3
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v1, v9, v1, s2
	.loc	1 373 13                        ; generate_amdgcn.py:373:13
	v_fma_f32 v33, v35, v55, v4
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v9, v22, v19, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v15, v5, 16, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v3, v3, v31, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_bfe_u32 v13, v1, 16, 1
	v_bfe_u32 v22, v7, 16, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v4, v4, v33, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_bfe_u32 v21, v3, 16, 1
	v_cmp_o_f32_e64 s0, v5, v5
	v_mov_b16_e32 v73.l, v17.h
	v_mov_b16_e32 v74.l, v9.h
	v_cmp_o_f32_e64 s7, v3, v3
	v_cmp_o_f32_e64 s8, v7, v7
	v_add3_u32 v1, v1, v13, 0x7fff
	v_add3_u32 v5, v5, v15, 0x7fff
	v_add3_u32 v3, v3, v21, 0x7fff
	v_add3_u32 v7, v7, v22, 0x7fff
	v_bfe_u32 v23, v4, 16, 1
	v_mov_b16_e32 v79.l, v10.h
	v_and_b32_e32 v13, 1, v73
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v1.h, 0x7fff, v5.h, s0
	v_cndmask_b16 v3.l, 0x7fff, v3.h, s7
	v_cndmask_b16 v3.h, 0x7fff, v7.h, s8
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v15, 1, v74
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_cndmask_b32_e64 v2, v2, v29, s2
	.loc	1 390 9                         ; generate_amdgcn.py:390:9
	v_cmp_o_f32_e64 s1, v17, v17
	v_cmp_o_f32_e64 s2, v9, v9
	v_cmp_o_f32_e64 s11, v4, v4
	v_and_b32_e32 v22, 1, v78
	v_add3_u32 v4, v4, v23, 0x7fff
	v_and_b32_e32 v23, 1, v79
	v_add3_u32 v5, v9, v15, 0x7fff
	v_add3_u32 v9, v17, v13, 0x7fff
	v_bfe_u32 v19, v2, 16, 1
	v_and_b32_e32 v21, 1, v77
	v_cmp_o_f32_e64 s13, v10, v10
	v_add3_u32 v7, v14, v22, 0x7fff
	v_cndmask_b16 v4.l, 0x7fff, v4.h, s11
	v_cndmask_b16 v4.h, 0x7fff, v8.h, s12
	v_add3_u32 v8, v11, v24, 0x7fff
	v_add3_u32 v10, v10, v23, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v9.h, s1
	v_cndmask_b32_e32 v9, 0x1054, v71, vcc_lo
	v_cndmask_b32_e32 v11, 0x3276, v72, vcc_lo
	v_cmp_o_f32_e64 s3, v2, v2
	v_add3_u32 v2, v2, v19, 0x7fff
	v_and_b32_e32 v19, 1, v75
	v_add3_u32 v12, v12, v21, 0x7fff
	v_cndmask_b16 v12.l, 0x7fff, v7.h, s10
	v_cndmask_b16 v7.h, 0x7fff, v10.h, s13
	v_lshl_or_b32 v9, v9, 8, v9
	v_lshl_or_b32 v10, v11, 8, v11
	v_cmp_o_f32_e64 s5, v16, v16
	v_cmp_o_f32_e64 s6, v18, v18
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s3
	v_cndmask_b16 v2.h, 0x7fff, v6.h, s4
	v_add3_u32 v6, v18, v20, 0x7fff
	v_add3_u32 v13, v16, v19, 0x7fff
	v_cndmask_b16 v7.l, 0x7fff, v8.h, s14
	v_and_b32_e32 v8, 0x540054, v9
	v_and_b32_e32 v9, 0x760076, v10
	v_cndmask_b16 v0.l, 0x7fff, v5.h, s2
	v_cndmask_b16 v5.h, 0x7fff, v13.h, s5
	v_cndmask_b16 v5.l, 0x7fff, v6.h, s6
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s9
	v_dual_cndmask_b32 v6, v3, v1 :: v_dual_cndmask_b32 v1, v1, v3
	v_dual_cndmask_b32 v3, v4, v2 :: v_dual_cndmask_b32 v2, v2, v4
	v_lshl_or_b32 v4, v8, 4, v8
	v_lshl_or_b32 v8, v9, 4, v9
	v_cndmask_b32_e32 v10, v12, v0, vcc_lo
	v_dual_cndmask_b32 v0, v0, v12 :: v_dual_cndmask_b32 v9, v7, v5
	v_cndmask_b32_e32 v5, v5, v7, vcc_lo
	v_permlanex16_b32 v1, v1, s16, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v7, 0x5040504, v4
	v_and_b32_e32 v8, 0x7060706, v8
	v_permlanex16_b32 v4, v2, s16, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v0, s16, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v5, s16, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v1, v6, v7
	v_perm_b32 v1, v1, v6, v8
	v_perm_b32 v2, v4, v3, v7
	v_perm_b32 v3, v4, v3, v8
	v_perm_b32 v4, v11, v10, v7
	v_perm_b32 v5, v11, v10, v8
	v_perm_b32 v6, v12, v9, v7
	v_perm_b32 v7, v12, v9, v8
	s_clause 0x1
	buffer_store_b128 v[0:3], v37, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v25, s[24:27], 0 offen
	.loc	1 283 1                         ; generate_amdgcn.py:283:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
		.amdhsa_next_free_sgpr 44
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
		.amdhsa_inst_pref_size 45
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
	.size	amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_vgpr, 131
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5676
; TotalNumSgprs: 46
; NumVgprs: 131
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 46
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_nt_sc256_none_bm32_bn128_bk64_gm4_w8_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     131
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
