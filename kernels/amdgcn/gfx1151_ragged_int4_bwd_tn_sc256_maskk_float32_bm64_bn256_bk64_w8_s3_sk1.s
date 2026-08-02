	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1276 0                        ; ragged.py:1276:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[22:23], s[0:1], 0x30
.Ltmp0:
	.loc	1 1304 20 prologue_end          ; ragged.py:1304:20
	s_abs_i32 s9, s2
	.loc	1 1309 36                       ; ragged.py:1309:36
	v_and_b32_e32 v29, 15, v0
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_and_b32_e32 v18, 0xe0, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1301:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s22, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s23, 0xff
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1301:21 ]
	s_ashr_i32 s6, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s7, s5, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1301:21 ]
	s_lshr_b32 s6, s6, 26
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_lshr_b32 s7, s7, 24
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1301:21 ]
	s_add_i32 s4, s4, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_add_i32 s5, s5, s7
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1301:21 ]
	s_ashr_i32 s4, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1302:21 ]
	s_ashr_i32 s8, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 1303 27 is_stmt 1             ; ragged.py:1303:27
	s_mul_i32 s4, s8, s4
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s7, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s7, s7, s6
	s_mul_hi_u32 s7, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s7
	s_xor_b32 s7, s2, s4
	s_mul_hi_u32 s6, s9, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s10, s6, s5
	s_sub_i32 s9, s9, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s9, s5
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s5, s10, s6
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_abs_i32 s9, s8
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_xor_b32 s5, s5, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_cvt_f32_u32 s6, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3)
	s_cvt_u32_f32 s10, s6
	.loc	1 1304 20                       ; ragged.py:1304:20
	s_sub_i32 s6, s5, s7
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_sub_i32 s5, 0, s9
	.loc	1 1305 22                       ; ragged.py:1305:22
	s_mul_i32 s4, s6, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_i32 s5, s5, s10
	.loc	1 1305 16                       ; ragged.py:1305:16
	s_sub_i32 s2, s2, s4
	.loc	1 1306 17                       ; ragged.py:1306:17
	s_mul_hi_u32 s4, s10, s5
	s_abs_i32 s7, s2
	s_add_i32 s10, s10, s4
	s_load_b64 s[4:5], s[0:1], 0x20
	s_mul_hi_u32 s10, s7, s10
	s_xor_b32 s11, s2, s8
	s_mul_i32 s12, s10, s9
	s_ashr_i32 s11, s11, 31
	s_sub_i32 s7, s7, s12
	s_add_i32 s12, s10, 1
	s_sub_i32 s13, s7, s9
	s_cmp_ge_u32 s7, s9
	s_cselect_b32 s10, s12, s10
	s_cselect_b32 s7, s13, s7
	s_add_i32 s12, s10, 1
	s_cmp_ge_u32 s7, s9
	s_cselect_b32 s7, s12, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s7, s7, s11
	s_sub_i32 s9, s7, s11
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_ashr_i32 s7, s6, 31
	.loc	1 1307 24                       ; ragged.py:1307:24
	s_mul_i32 s8, s9, s8
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_lshl_b64 s[10:11], s[6:7], 2
	.loc	1 1307 17                       ; ragged.py:1307:17
	s_sub_i32 s8, s2, s8
	.loc	1 1309 18                       ; ragged.py:1309:18
	s_lshl_b32 s17, s9, 6
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s10
	s_addc_u32 s5, s5, s11
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v1, s17, v29
	.loc	1 1313 19                       ; ragged.py:1313:19
	s_load_b32 s4, s[4:5], 0x0
	s_mov_b32 s9, 0
	.loc	1 1513 37                       ; ragged.py:1513:37
	s_mul_i32 s7, s6, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1309 18                       ; ragged.py:1309:18
	v_or_b32_e32 v2, 16, v1
	v_or_b32_e32 v3, 32, v1
	v_or_b32_e32 v4, 48, v1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s21, s22, v1
	v_cmp_gt_i32_e64 s20, s22, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_i32_e64 s5, s22, v3
	v_cmp_gt_i32_e64 s19, s22, v4
	.loc	1 1314 27                       ; ragged.py:1314:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s2, s4, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cmp_gt_i32 s2, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge23_crit_edge
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_add_i32 s16, s17, s7
	s_lshl_b32 s26, s23, 4
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s9, -1
                                        ; implicit-def: $sgpr16
                                        ; implicit-def: $sgpr26
.LBB0_3:                                ; %Flow422
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v1, 0
	s_load_b64 s[24:25], s[0:1], 0x28
	v_lshrrev_b32_e32 v33, 1, v18
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v150, 0
	scratch_store_b32 off, v1, off          ; 4-byte Folded Spill
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v158, 0
	v_mov_b32_e32 v154, 0
	scratch_store_b32 off, v1, off offset:4 ; 4-byte Folded Spill
	v_mov_b32_e32 v1, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v220, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v153, 0
	v_mov_b32_e32 v160, 0
	scratch_store_b32 off, v1, off offset:16 ; 4-byte Folded Spill
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v166, 0
	scratch_store_b32 off, v1, off offset:24 ; 4-byte Folded Spill
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v222, 0
	scratch_store_b32 off, v1, off offset:12 ; 4-byte Folded Spill
	v_mov_b32_e32 v1, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v224, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v226, 0
	scratch_store_b32 off, v1, off offset:8 ; 4-byte Folded Spill
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v228, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v230, 0
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v232, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v234, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v236, 0
	v_dual_mov_b32 v225, 0 :: v_dual_mov_b32 v238, 0
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v240, 0
	v_dual_mov_b32 v229, 0 :: v_dual_mov_b32 v242, 0
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v244, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v235, 0 :: v_dual_mov_b32 v246, 0
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v252, 0
	v_mov_b32_e32 v239, 0
	v_mov_b32_e32 v241, 0
	v_mov_b32_e32 v243, 0
	v_mov_b32_e32 v245, 0
	v_mov_b32_e32 v247, 0
	v_mov_b32_e32 v253, 0
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_lshl_b32 s15, s8, 8
	scratch_store_b32 off, v1, off offset:20 ; 4-byte Folded Spill
	s_cbranch_vccnz .LBB0_12
; %bb.4:                                ; %.lr.ph22
                                        ; implicit-def: $vgpr255 : SGPR spill to VGPR lane
	v_dual_mov_b32 v252, 0 :: v_dual_and_b32 v1, 63, v0
	s_waitcnt lgkmcnt(0)
	v_writelane_b32 v255, s24, 0
	s_load_b64 s[8:9], s[0:1], 0x38
	v_lshrrev_b32_e32 v4, 1, v0
	.loc	1 1309 18 is_stmt 1             ; ragged.py:1309:18
	v_or_b32_e32 v3, s17, v1
	v_dual_mov_b32 v253, 0 :: v_dual_and_b32 v2, 0xc0, v0
	v_writelane_b32 v255, s25, 1
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_lshrrev_b32_e32 v22, 6, v0
	.loc	1 1424 23                       ; ragged.py:1424:23
	s_lshl_b32 s10, s3, 5
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_lshrrev_b32_e32 v2, 3, v2
	s_lshl_b32 s3, s22, 2
	v_writelane_b32 v255, s26, 2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v22, off offset:332
	scratch_store_b32 off, v0, off offset:424
	v_mad_u64_u32 v[66:67], null, s22, v2, v[1:2]
	v_writelane_b32 v255, s27, 3
	s_load_b256 s[24:31], s[0:1], 0x0
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_lshr_b32 s0, s2, 31
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_lshr_b32 s1, s4, 31
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_add_i32 s2, s2, s0
	.loc	1 1456 55                       ; ragged.py:1456:55
	s_add_i32 s0, s4, s1
	v_mov_b32_e32 v246, 0
	s_ashr_i32 s12, s0, 1
	.loc	1 1311 20                       ; ragged.py:1311:20
	v_cmp_gt_i32_e64 s0, s22, v3
	v_lshlrev_b32_e32 v3, 1, v0
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v65, s15, v0
	v_lshrrev_b32_e32 v11, 2, v0
	v_dual_mov_b32 v243, 0 :: v_dual_lshlrev_b32 v14, 5, v0
	v_mov_b32_e32 v239, 0
	v_xor_b32_e32 v4, v3, v4
	v_or_b32_e32 v23, 0x700, v0
	v_or_b32_e32 v24, 0x3f0, v0
	v_or_b32_e32 v25, 0x7f0, v0
	v_or_b32_e32 v26, 0xb00, v0
	v_and_b32_e32 v4, 24, v4
	v_or_b32_e32 v27, 0xf00, v0
	v_or_b32_e32 v28, 0x1300, v0
	v_or_b32_e32 v30, 0x1700, v0
	v_or_b32_e32 v31, 0x1b00, v0
	v_xor_b32_e32 v2, v4, v2
	v_or_b32_e32 v32, 0x1f00, v0
	v_dual_mov_b32 v236, 0 :: v_dual_and_b32 v35, 0xf0, v0
	v_or_b32_e32 v178, v4, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_mad_u64_u32 v[38:39], null, s22, v22, v[1:2]
	v_mov_b32_e32 v235, 0
	v_lshl_add_u32 v6, v1, 5, 0
	v_xor_b32_e32 v1, 24, v178
	v_mov_b32_e32 v157, 0
	v_mad_u64_u32 v[68:69], null, s22, 3, v[66:67]
	v_add_nc_u32_e32 v22, s3, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v161, 0 :: v_dual_add_nc_u32 v202, 0, v1
	v_mov_b32_e32 v219, 0
	v_mad_u64_u32 v[69:70], null, s22, 5, v[66:67]
	scratch_store_b32 off, v22, off offset:344 ; 4-byte Folded Spill
	v_or_b32_e32 v22, 0x300, v0
	v_dual_mov_b32 v155, 0 :: v_dual_add_nc_u32 v0, 0, v0
	v_writelane_b32 v255, s15, 4
	v_mad_u64_u32 v[70:71], null, s22, 6, v[66:67]
	scratch_store_b32 off, v0, off offset:348 ; 4-byte Folded Spill
	scratch_load_b32 v217, off, off offset:348 ; 4-byte Folded Reload
	v_dual_mov_b32 v153, 0 :: v_dual_add_nc_u32 v0, 0, v22
	v_mov_b32_e32 v151, 0
	v_mad_u64_u32 v[71:72], null, s22, 7, v[66:67]
	scratch_store_b32 off, v0, off offset:352 ; 4-byte Folded Spill
	v_dual_mov_b32 v215, 0 :: v_dual_add_nc_u32 v0, 0, v23
	v_mad_u64_u32 v[72:73], null, s23, 3, v[65:66]
	s_lshl_b32 s1, s23, 4
	scratch_store_b32 off, v0, off offset:356 ; 4-byte Folded Spill
	v_dual_mov_b32 v149, 0 :: v_dual_add_nc_u32 v0, 0, v24
	v_mad_u64_u32 v[73:74], null, s23, 5, v[65:66]
	v_mad_u64_u32 v[74:75], null, s23, 6, v[65:66]
	scratch_store_b32 off, v0, off offset:360 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v25
	.loc	1 1314 26                       ; ragged.py:1314:26
	s_ashr_i32 s11, s2, 1
	s_waitcnt lgkmcnt(0)
	s_and_b32 s41, s25, 0xffff
	v_writelane_b32 v255, s1, 5
	s_and_b32 s25, s27, 0xffff
	scratch_store_b32 off, v0, off offset:364 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v26
	v_mad_u64_u32 v[75:76], null, s23, 7, v[65:66]
	s_bitcmp1_b32 s4, 0
	v_mad_u64_u32 v[76:77], null, s23, 9, v[65:66]
	scratch_store_b32 off, v0, off offset:368 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v27
	v_mad_u64_u32 v[77:78], null, s23, 10, v[65:66]
	v_dual_mov_b32 v241, 0 :: v_dual_add_nc_u32 v176, s1, v65
	scratch_store_b32 off, v0, off offset:372 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v28
	s_cselect_b32 s53, -1, 0
	s_add_i32 s1, s17, s7
	v_mad_u64_u32 v[78:79], null, s23, 11, v[65:66]
	scratch_store_b32 off, v0, off offset:376 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v30
	v_mad_u64_u32 v[79:80], null, s23, 12, v[65:66]
	v_xor_b32_e32 v11, v3, v11
	v_writelane_b32 v255, s1, 6
	scratch_store_b32 off, v0, off offset:380 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v31
	v_mad_u64_u32 v[80:81], null, s23, 13, v[65:66]
	v_mad_u64_u32 v[81:82], null, s23, 14, v[65:66]
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v32
	v_mad_u64_u32 v[82:83], null, s23, 15, v[65:66]
	v_mad_u64_u32 v[83:84], null, s23, 17, v[65:66]
	scratch_store_b32 off, v0, off offset:388 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_mad_u64_u32 v[84:85], null, s23, 18, v[65:66]
	v_dual_mov_b32 v206, 0 :: v_dual_lshlrev_b32 v5, 5, v29
	scratch_store_b32 off, v0, off offset:20 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_lshlrev_b32 v21, 4, v18
	v_mov_b32_e32 v244, 0
	v_dual_mov_b32 v237, 0 :: v_dual_and_b32 v4, 24, v11
	scratch_store_b32 off, v0, off offset:8 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, 0 :: v_dual_add_nc_u32 v181, 0, v29
	v_dual_mov_b32 v242, 0 :: v_dual_add_nc_u32 v29, s1, v29
	v_mov_b32_e32 v240, 0
	scratch_store_b32 off, v0, off offset:12 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_mad_u64_u32 v[85:86], null, s23, 19, v[65:66]
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_writelane_b32 v255, s5, 7
	v_mad_u64_u32 v[86:87], null, s23, 20, v[65:66]
	scratch_store_b32 off, v0, off offset:24 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_mad_u64_u32 v[87:88], null, s23, 21, v[65:66]
	v_mad_u64_u32 v[88:89], null, s23, 22, v[65:66]
	scratch_store_b32 off, v0, off offset:16 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	v_mad_u64_u32 v[89:90], null, s23, 23, v[65:66]
	v_and_or_b32 v177, v3, 24, v5
	v_or3_b32 v179, v4, v21, v5
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b32 off, v33, off offset:428 ; 4-byte Folded Spill
	v_dual_mov_b32 v233, 0 :: v_dual_add_nc_u32 v182, v181, v33
	v_dual_mov_b32 v238, 0 :: v_dual_add_nc_u32 v33, 16, v29
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, s22, 12, v[38:39]
	v_dual_mov_b32 v231, 0 :: v_dual_add_nc_u32 v34, 32, v29
	v_dual_mov_b32 v229, 0 :: v_dual_add_nc_u32 v36, 48, v29
	v_mul_lo_u32 v250, v29, s9
	v_dual_mov_b32 v234, 0 :: v_dual_lshlrev_b32 v29, 2, v35
	scratch_store_b64 off, v[0:1], off offset:392 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, s22, 20, v[38:39]
	v_dual_mov_b32 v227, 0 :: v_dual_and_b32 v14, 32, v14
	v_mad_u64_u32 v[90:91], null, s23, 24, v[65:66]
	v_writelane_b32 v255, s10, 8
	v_mad_u64_u32 v[91:92], null, s23, 25, v[65:66]
	scratch_store_b64 off, v[0:1], off offset:400 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, s22, 24, v[38:39]
	v_mad_u64_u32 v[92:93], null, s23, 26, v[65:66]
	v_mad_u64_u32 v[93:94], null, s23, 27, v[65:66]
	v_mad_u64_u32 v[94:95], null, s23, 28, v[65:66]
	scratch_store_b64 off, v[0:1], off offset:408 ; 8-byte Folded Spill
	v_mov_b32_e32 v0, v38
	v_xor_b32_e32 v7, 8, v177
	v_xor_b32_e32 v8, 16, v177
	v_xor_b32_e32 v9, 24, v177
	v_xor_b32_e32 v10, 0x208, v177
	v_xor_b32_e32 v12, 0x218, v177
	v_xor_b32_e32 v13, 0x210, v177
	v_xor_b32_e32 v15, 0x410, v177
	v_xor_b32_e32 v16, 0x418, v177
	v_xor_b32_e32 v17, 0x408, v177
	v_xor_b32_e32 v11, 0x618, v177
	v_xor_b32_e32 v18, 0x610, v177
	v_xor_b32_e32 v19, 0x608, v177
	v_xor_b32_e32 v20, 8, v178
	v_xor_b32_e32 v37, 16, v178
	v_xor_b32_e32 v4, 8, v179
	v_xor_b32_e32 v5, 16, v179
	v_xor_b32_e32 v21, 24, v179
	v_dual_mov_b32 v232, 0 :: v_dual_and_b32 v3, 28, v3
	v_add3_u32 v14, 0, v29, v14
	v_dual_mov_b32 v230, 0 :: v_dual_lshlrev_b32 v29, 1, v35
	v_mad_u64_u32 v[95:96], null, s23, 29, v[65:66]
	v_writelane_b32 v255, s11, 9
	s_add_i32 s54, s11, -1
	v_mad_u64_u32 v[96:97], null, s23, 30, v[65:66]
	v_mul_lo_u32 v171, v33, s9
	v_mul_lo_u32 v210, v34, s9
	v_mul_lo_u32 v211, v36, s9
	v_mad_u64_u32 v[97:98], null, s23, 31, v[65:66]
	scratch_store_b64 off, v[0:1], off offset:336 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, s22, 28, v[38:39]
	s_lshr_b32 s4, s54, 7
	v_dual_mov_b32 v247, 0 :: v_dual_add_nc_u32 v148, s3, v66
	v_dual_mov_b32 v245, 0 :: v_dual_add_nc_u32 v172, s23, v65
	v_lshl_add_u32 v173, s23, 1, v65
	v_lshl_add_u32 v174, s23, 2, v65
	v_lshl_add_u32 v175, s23, 3, v65
	v_dual_mov_b32 v228, 0 :: v_dual_add_nc_u32 v187, v6, v2
	v_dual_mov_b32 v225, 0 :: v_dual_add_nc_u32 v188, 0, v7
	v_dual_mov_b32 v226, 0 :: v_dual_add_nc_u32 v189, 0, v8
	v_dual_mov_b32 v223, 0 :: v_dual_add_nc_u32 v190, 0, v9
	v_dual_mov_b32 v224, 0 :: v_dual_add_nc_u32 v191, 0, v10
	v_dual_mov_b32 v169, 0 :: v_dual_add_nc_u32 v192, 0, v12
	v_dual_mov_b32 v222, 0 :: v_dual_add_nc_u32 v193, 0, v13
	v_dual_mov_b32 v221, 0 :: v_dual_add_nc_u32 v194, 0, v15
	v_dual_mov_b32 v168, 0 :: v_dual_add_nc_u32 v195, 0, v16
	v_dual_mov_b32 v167, 0 :: v_dual_add_nc_u32 v196, 0, v17
	v_dual_mov_b32 v166, 0 :: v_dual_add_nc_u32 v197, 0, v11
	v_dual_mov_b32 v165, 0 :: v_dual_add_nc_u32 v198, 0, v18
	v_dual_mov_b32 v164, 0 :: v_dual_add_nc_u32 v199, 0, v19
	v_dual_mov_b32 v163, 0 :: v_dual_add_nc_u32 v200, 0, v20
	v_dual_mov_b32 v162, 0 :: v_dual_add_nc_u32 v201, 0, v37
	v_dual_mov_b32 v160, 0 :: v_dual_add_nc_u32 v203, 0, v4
	v_dual_mov_b32 v159, 0 :: v_dual_add_nc_u32 v204, 0, v5
	v_dual_mov_b32 v220, 0 :: v_dual_add_nc_u32 v205, 0, v21
	v_dual_mov_b32 v158, 0 :: v_dual_add_nc_u32 v147, v14, v3
	v_dual_mov_b32 v156, 0 :: v_dual_add_nc_u32 v213, 0, v29
	v_mov_b32_e32 v218, 0
	v_mov_b32_e32 v216, 0
	v_mov_b32_e32 v154, 0
	v_mov_b32_e32 v152, 0
	v_mov_b32_e32 v214, 0
	v_mov_b32_e32 v150, 0
	v_writelane_b32 v255, s4, 10
	.loc	1 1464 43                       ; ragged.py:1464:43
	s_mul_i32 s14, s6, s8
	.loc	1 1520 37                       ; ragged.py:1520:37
	s_mul_i32 s91, s6, s9
	s_mov_b32 s40, s24
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	s_mov_b32 s24, s26
	s_mov_b32 s15, 0
	s_and_b32 s29, s29, 0xffff
	s_and_b32 s93, s31, 0xffff
	s_mov_b32 s92, s30
	s_mov_b32 s3, 0
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s23, v65
	scratch_store_b64 off, v[0:1], off offset:416 ; 8-byte Folded Spill
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v0, v250, s15, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_add_i32 s1, s15, s91
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v67, v171, s15, 1
	v_add_lshl_u32 v98, v210, s15, 1
	.loc	1 1520 25                       ; ragged.py:1520:25
	s_mul_i32 s1, s1, s23
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_add_lshl_u32 v99, v211, s15, 1
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_add_lshl_u32 v100, v65, s1, 1
	.loc	1 1512 40                       ; ragged.py:1512:40
	v_cndmask_b32_e64 v0, 0x80000000, v0, s21
	v_cndmask_b32_e64 v67, 0x80000000, v67, s20
	v_cndmask_b32_e64 v98, 0x80000000, v98, s5
	s_mov_b32 s30, s42
	s_mov_b32 s31, s43
	v_cndmask_b32_e64 v99, 0x80000000, v99, s19
	.loc	1 1519 40                       ; ragged.py:1519:40
	v_cndmask_b32_e32 v100, 0x80000000, v100, vcc_lo
	s_mov_b32 s94, s42
	s_mov_b32 s95, s43
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_clause 0x3
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	buffer_load_u16 v67, v67, s[28:31], 0 offen
	buffer_load_u16 v98, v98, s[28:31], 0 offen
	buffer_load_u16 v99, v99, s[28:31], 0 offen
	.loc	1 1519 40                       ; ragged.py:1519:40
	buffer_load_u16 v100, v100, s[92:95], 0 offen
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v101, v1
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v102, v2
	v_cvt_f32_i32_e32 v103, v3
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v104, v4
	v_cvt_f32_i32_e32 v105, v5
	v_cvt_f32_i32_e32 v106, v6
	v_cvt_f32_i32_e32 v107, v7
	.loc	1 1524 21                       ; ragged.py:1524:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1510 27                       ; ragged.py:1510:27
	v_cvt_f32_i32_e32 v108, v8
	.loc	1 1526 17                       ; ragged.py:1526:17
	s_add_i32 s1, s15, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_lshl_b32 s3, s1, 7
	s_cmp_lg_u32 s15, s4
	s_mov_b32 s15, s1
	.loc	1 1512 40                       ; ragged.py:1512:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v1, 16, v67
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 1517 21                       ; ragged.py:1517:21
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v42, v42, v1 :: v_dual_lshlrev_b32 v3, 16, v100
	v_dual_mul_f32 v41, v41, v1 :: v_dual_lshlrev_b32 v2, 16, v98
	v_mul_f32_e32 v57, v57, v0
	v_dual_mul_f32 v58, v58, v0 :: v_dual_lshlrev_b32 v67, 16, v99
	v_dual_mul_f32 v59, v59, v0 :: v_dual_mul_f32 v44, v44, v1
	v_dual_mul_f32 v60, v60, v0 :: v_dual_mul_f32 v43, v43, v1
	v_dual_mul_f32 v61, v61, v0 :: v_dual_mul_f32 v46, v46, v1
	v_dual_mul_f32 v62, v62, v0 :: v_dual_mul_f32 v45, v45, v1
	v_dual_mul_f32 v63, v63, v0 :: v_dual_mul_f32 v48, v48, v1
	v_dual_mul_f32 v64, v64, v0 :: v_dual_mul_f32 v47, v47, v1
	v_dual_mul_f32 v49, v49, v0 :: v_dual_mul_f32 v34, v34, v1
	v_dual_mul_f32 v50, v50, v0 :: v_dual_mul_f32 v33, v33, v1
	v_dual_mul_f32 v51, v51, v0 :: v_dual_mul_f32 v36, v36, v1
	v_dual_mul_f32 v52, v52, v0 :: v_dual_mul_f32 v35, v35, v1
	v_dual_mul_f32 v53, v53, v0 :: v_dual_mul_f32 v38, v38, v1
	v_dual_mul_f32 v54, v54, v0 :: v_dual_mul_f32 v37, v37, v1
	v_dual_mul_f32 v55, v55, v0 :: v_dual_mul_f32 v40, v40, v1
	v_dual_mul_f32 v56, v56, v0 :: v_dual_mul_f32 v39, v39, v1
	v_dual_mul_f32 v25, v25, v2 :: v_dual_mul_f32 v100, v11, v67
	v_dual_mul_f32 v26, v26, v2 :: v_dual_mul_f32 v109, v12, v67
	v_dual_mul_f32 v27, v27, v2 :: v_dual_mul_f32 v98, v9, v67
	v_dual_mul_f32 v28, v28, v2 :: v_dual_mul_f32 v99, v10, v67
	v_dual_mul_f32 v29, v29, v2 :: v_dual_mul_f32 v112, v15, v67
	v_dual_mul_f32 v30, v30, v2 :: v_dual_mul_f32 v101, v101, v67
	v_dual_mul_f32 v31, v31, v2 :: v_dual_mul_f32 v110, v13, v67
	v_dual_mul_f32 v32, v32, v2 :: v_dual_mul_f32 v111, v14, v67
	v_dual_mul_f32 v17, v17, v2 :: v_dual_mul_f32 v16, v16, v67
	v_dual_mul_f32 v18, v18, v2 :: v_dual_mul_f32 v103, v103, v67
	v_dual_mul_f32 v19, v19, v2 :: v_dual_mul_f32 v102, v102, v67
	v_dual_mul_f32 v20, v20, v2 :: v_dual_mul_f32 v105, v105, v67
	v_dual_mul_f32 v21, v21, v2 :: v_dual_mul_f32 v104, v104, v67
	v_dual_mul_f32 v22, v22, v2 :: v_dual_mul_f32 v107, v107, v67
	v_dual_mul_f32 v23, v23, v2 :: v_dual_mul_f32 v106, v106, v67
	v_mul_f32_e32 v24, v24, v2
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_store_b32 v147, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v213
	ds_load_b128 v[4:7], v213 offset:16
	.loc	1 1517 21                       ; ragged.py:1517:21
	v_mul_f32_e32 v67, v108, v67
	.loc	1 1524 21                       ; ragged.py:1524:21
	ds_load_b128 v[8:11], v213 offset:512
	ds_load_b128 v[12:15], v213 offset:528
	.loc	1 1525 17                       ; ragged.py:1525:17
	s_waitcnt lgkmcnt(3)
	v_fmac_f32_e32 v252, v57, v0
	v_dual_fmac_f32 v234, v41, v0 :: v_dual_fmac_f32 v233, v42, v1
	v_dual_fmac_f32 v167, v25, v0 :: v_dual_fmac_f32 v166, v26, v1
	v_dual_fmac_f32 v155, v98, v0 :: v_dual_fmac_f32 v216, v99, v1
	scratch_load_b32 v0, off, off offset:8  ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v220, v17, v8 :: v_dual_fmac_f32 v159, v18, v9
	scratch_load_b32 v17, off, off offset:20 ; 4-byte Folded Reload
	v_fmac_f32_e32 v253, v58, v1
	v_dual_fmac_f32 v247, v59, v2 :: v_dual_fmac_f32 v246, v60, v3
	v_dual_fmac_f32 v206, v61, v4 :: v_dual_fmac_f32 v245, v62, v5
	v_dual_fmac_f32 v244, v63, v6 :: v_dual_fmac_f32 v243, v64, v7
	v_dual_fmac_f32 v242, v49, v8 :: v_dual_fmac_f32 v241, v50, v9
	v_dual_fmac_f32 v240, v51, v10 :: v_dual_fmac_f32 v239, v52, v11
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v238, v53, v12 :: v_dual_fmac_f32 v237, v54, v13
	v_dual_fmac_f32 v236, v55, v14 :: v_dual_fmac_f32 v235, v56, v15
	v_dual_fmac_f32 v232, v43, v2 :: v_dual_fmac_f32 v231, v44, v3
	v_dual_fmac_f32 v230, v45, v4 :: v_dual_fmac_f32 v229, v46, v5
	v_dual_fmac_f32 v228, v47, v6 :: v_dual_fmac_f32 v227, v48, v7
	v_dual_fmac_f32 v226, v33, v8 :: v_dual_fmac_f32 v225, v34, v9
	v_dual_fmac_f32 v224, v35, v10 :: v_dual_fmac_f32 v223, v36, v11
	v_dual_fmac_f32 v222, v37, v12 :: v_dual_fmac_f32 v169, v38, v13
	v_dual_fmac_f32 v221, v39, v14 :: v_dual_fmac_f32 v168, v40, v15
	v_dual_fmac_f32 v165, v27, v2 :: v_dual_fmac_f32 v164, v28, v3
	v_dual_fmac_f32 v163, v29, v4 :: v_dual_fmac_f32 v162, v30, v5
	v_dual_fmac_f32 v161, v31, v6 :: v_dual_fmac_f32 v160, v32, v7
	v_dual_fmac_f32 v158, v19, v10 :: v_dual_fmac_f32 v157, v20, v11
	v_dual_fmac_f32 v156, v21, v12 :: v_dual_fmac_f32 v219, v22, v13
	v_dual_fmac_f32 v154, v100, v2 :: v_dual_fmac_f32 v153, v109, v3
	v_dual_fmac_f32 v152, v110, v4 :: v_dual_fmac_f32 v151, v111, v5
	v_fmac_f32_e32 v214, v106, v13
	v_fmac_f32_e32 v150, v107, v14
	v_fmac_f32_e32 v149, v67, v15
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v0, v16, v7
	scratch_store_b32 off, v0, off offset:8 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v215, v112, v6 :: v_dual_fmac_f32 v0, v101, v8
	scratch_store_b32 off, v0, off offset:12 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v0, v102, v9
	scratch_store_b32 off, v0, off offset:24 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v0, v103, v10
	scratch_store_b32 off, v0, off offset:16 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:4  ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v0, v104, v11
	scratch_store_b32 off, v0, off offset:4 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off           ; 4-byte Folded Reload
	v_dual_fmac_f32 v218, v23, v14 :: v_dual_fmac_f32 v17, v24, v15
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v0, v105, v12
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v17, off offset:20
	scratch_store_b32 off, v0, off
	.loc	1 1421 19                       ; ragged.py:1421:19
	s_cbranch_scc0 .LBB0_11
.LBB0_6:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 1456 54                       ; ragged.py:1456:54
	s_sub_i32 s1, s12, s3
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v7, 0
	.loc	1 1454 45                       ; ragged.py:1454:45
	v_med3_i32 v0, s1, 0, 0x80
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v3, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1458 41                       ; ragged.py:1458:41
	v_readfirstlane_b32 s1, v0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	s_and_b32 s6, s1, 0xe0
	s_mov_b32 s1, s10
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_ge_i32 s10, s6
	s_cbranch_scc1 .LBB0_9
; %bb.7:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v57, 0
	s_add_i32 s7, s3, s14
	s_mov_b32 s1, s10
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v58, v57
	v_mov_b32_e32 v59, v57
	v_mov_b32_e32 v60, v57
	v_mov_b32_e32 v61, v57
	v_mov_b32_e32 v62, v57
	v_mov_b32_e32 v63, v57
	v_mov_b32_e32 v64, v57
	v_mov_b32_e32 v49, v57
	v_mov_b32_e32 v50, v57
	v_mov_b32_e32 v51, v57
	v_mov_b32_e32 v52, v57
	v_mov_b32_e32 v53, v57
	v_mov_b32_e32 v54, v57
	v_mov_b32_e32 v55, v57
	v_mov_b32_e32 v56, v57
	v_mov_b32_e32 v41, v57
	v_mov_b32_e32 v42, v57
	v_mov_b32_e32 v43, v57
	v_mov_b32_e32 v44, v57
	v_mov_b32_e32 v45, v57
	v_mov_b32_e32 v46, v57
	v_mov_b32_e32 v47, v57
	v_mov_b32_e32 v48, v57
	v_mov_b32_e32 v33, v57
	v_mov_b32_e32 v34, v57
	v_mov_b32_e32 v35, v57
	v_mov_b32_e32 v36, v57
	v_mov_b32_e32 v37, v57
	v_mov_b32_e32 v38, v57
	v_mov_b32_e32 v39, v57
	v_mov_b32_e32 v40, v57
	v_mov_b32_e32 v25, v57
	v_mov_b32_e32 v26, v57
	v_mov_b32_e32 v27, v57
	v_mov_b32_e32 v28, v57
	v_mov_b32_e32 v29, v57
	v_mov_b32_e32 v30, v57
	v_mov_b32_e32 v31, v57
	v_mov_b32_e32 v32, v57
	v_mov_b32_e32 v17, v57
	v_mov_b32_e32 v18, v57
	v_mov_b32_e32 v19, v57
	v_mov_b32_e32 v20, v57
	v_mov_b32_e32 v21, v57
	v_mov_b32_e32 v22, v57
	v_mov_b32_e32 v23, v57
	v_mov_b32_e32 v24, v57
	v_mov_b32_e32 v9, v57
	v_mov_b32_e32 v10, v57
	v_mov_b32_e32 v11, v57
	v_mov_b32_e32 v12, v57
	v_mov_b32_e32 v13, v57
	v_mov_b32_e32 v14, v57
	v_mov_b32_e32 v15, v57
	v_mov_b32_e32 v16, v57
	v_mov_b32_e32 v1, v57
	v_mov_b32_e32 v2, v57
	v_mov_b32_e32 v3, v57
	v_mov_b32_e32 v4, v57
	v_mov_b32_e32 v5, v57
	v_mov_b32_e32 v6, v57
	v_mov_b32_e32 v7, v57
	v_mov_b32_e32 v8, v57
.LBB0_8:                                ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1471 46 is_stmt 1             ; ragged.py:1471:46
	s_add_i32 s9, s7, s1
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_mov_b32 s26, s42
	.loc	1 1472 46 is_stmt 0             ; ragged.py:1472:46
	s_mul_i32 s8, s9, s23
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_mov_b32 s27, s43
	.loc	1 1472 46                       ; ragged.py:1472:46
	v_add_nc_u32_e32 v98, s8, v75
	v_add_nc_u32_e32 v0, s8, v174
	v_add_nc_u32_e32 v67, s8, v73
	v_add_nc_u32_e32 v99, s8, v74
	v_add_nc_u32_e32 v100, s8, v72
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_cndmask_b32_e32 v98, 0x80000000, v98, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v67, 0x80000000, v67
	v_dual_cndmask_b32 v99, 0x80000000, v99 :: v_dual_cndmask_b32 v100, 0x80000000, v100
	s_clause 0x4
	buffer_load_u8 v98, v98, s[24:27], 0 offen
	buffer_load_u8 v67, v67, s[24:27], 0 offen
	buffer_load_u8 v99, v99, s[24:27], 0 offen
	buffer_load_u8 v101, v0, s[24:27], 0 offen
	buffer_load_u8 v100, v100, s[24:27], 0 offen
	.loc	1 1471 46 is_stmt 1             ; ragged.py:1471:46
	s_mul_i32 s2, s9, s22
	.loc	1 1472 46                       ; ragged.py:1472:46
	v_add_nc_u32_e32 v105, s8, v82
	.loc	1 1471 46                       ; ragged.py:1471:46
	s_add_i32 s2, s2, s17
	.loc	1 1472 46                       ; ragged.py:1472:46
	v_add_nc_u32_e32 v103, s8, v80
	v_add_nc_u32_e32 v104, s8, v81
	v_add_nc_u32_e32 v102, s8, v79
	v_add_nc_u32_e32 v108, s8, v176
	v_add_nc_u32_e32 v109, s8, v83
	v_add_nc_u32_e32 v110, s8, v84
	v_add_nc_u32_e32 v111, s8, v85
	v_add_nc_u32_e32 v112, s8, v86
	v_add_nc_u32_e32 v113, s8, v87
	v_add_nc_u32_e32 v114, s8, v88
	v_add_nc_u32_e32 v115, s8, v89
	v_add_nc_u32_e32 v116, s8, v90
	v_add_nc_u32_e32 v117, s8, v91
	v_add_nc_u32_e32 v118, s8, v92
	v_add_nc_u32_e32 v119, s8, v93
	v_add_nc_u32_e32 v120, s8, v94
	v_add_nc_u32_e32 v121, s8, v95
	v_add_nc_u32_e32 v122, s8, v96
	v_add_nc_u32_e32 v123, s8, v97
	.loc	1 1472 38 is_stmt 0             ; ragged.py:1472:38
	v_dual_cndmask_b32 v104, 0x80000000, v104 :: v_dual_cndmask_b32 v111, 0x80000000, v111
	v_dual_cndmask_b32 v102, 0x80000000, v102 :: v_dual_cndmask_b32 v109, 0x80000000, v109
	v_dual_cndmask_b32 v108, 0x80000000, v108 :: v_dual_cndmask_b32 v113, 0x80000000, v113
	v_dual_cndmask_b32 v110, 0x80000000, v110 :: v_dual_cndmask_b32 v115, 0x80000000, v115
	v_dual_cndmask_b32 v112, 0x80000000, v112 :: v_dual_cndmask_b32 v117, 0x80000000, v117
	v_dual_cndmask_b32 v114, 0x80000000, v114 :: v_dual_cndmask_b32 v119, 0x80000000, v119
	v_dual_cndmask_b32 v116, 0x80000000, v116 :: v_dual_cndmask_b32 v121, 0x80000000, v121
	v_dual_cndmask_b32 v118, 0x80000000, v118 :: v_dual_cndmask_b32 v123, 0x80000000, v123
	v_cndmask_b32_e32 v120, 0x80000000, v120, vcc_lo
	v_cndmask_b32_e32 v122, 0x80000000, v122, vcc_lo
	.loc	1 1483 25 is_stmt 1             ; ragged.py:1483:25
	s_add_i32 s1, s1, 32
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_cndmask_b32_e32 v105, 0x80000000, v105, vcc_lo
	v_cndmask_b32_e32 v103, 0x80000000, v103, vcc_lo
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cmp_lt_i32 s1, s6
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v0.l, 8, v98.l
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v0.h, 8, v67.l
	.loc	1 1472 46 is_stmt 0             ; ragged.py:1472:46
	v_add_nc_u32_e32 v67, s8, v172
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_waitcnt vmcnt(2)
	v_or_b16 v107.h, v99.l, v0.l
	s_waitcnt vmcnt(1)
	v_or_b16 v107.l, v101.l, v0.h
	.loc	1 1472 46                       ; ragged.py:1472:46
	v_add_nc_u32_e32 v0, s8, v173
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	v_add_nc_u32_e32 v99, s2, v70
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x1
	buffer_load_u8 v98, v0, s[24:27], 0 offen
	buffer_load_u8 v67, v67, s[24:27], 0 offen
	s_waitcnt vmcnt(2)
	v_lshlrev_b16 v0.l, 8, v100.l
	v_add_nc_u32_e32 v100, s2, v68
	.loc	1 1471 38 is_stmt 1             ; ragged.py:1471:38
	v_cndmask_b32_e64 v99, 0x80000000, v99, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v100, 0x80000000, v100, s0
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_waitcnt vmcnt(1)
	v_or_b16 v106.h, v98.l, v0.l
	.loc	1 1472 46 is_stmt 0             ; ragged.py:1472:46
	v_add_nc_u32_e32 v0, s8, v65
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_u8 v98, v0, s[24:27], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v0.l, 8, v67.l
	v_add_nc_u32_e32 v67, s2, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1471 38 is_stmt 1             ; ragged.py:1471:38
	v_cndmask_b32_e64 v67, 0x80000000, v67, s0
	.loc	1 1472 38                       ; ragged.py:1472:38
	s_waitcnt vmcnt(0)
	v_or_b16 v106.l, v98.l, v0.l
	v_add_nc_u32_e32 v98, s2, v71
	v_add_nc_u32_e32 v0, s2, v148
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_cndmask_b32_e64 v98, 0x80000000, v98, s0
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	s_clause 0x4
	buffer_load_u8 v98, v98, s[40:43], 0 offen
	buffer_load_u8 v67, v67, s[40:43], 0 offen
	buffer_load_u8 v99, v99, s[40:43], 0 offen
	buffer_load_u8 v101, v0, s[40:43], 0 offen
	buffer_load_u8 v100, v100, s[40:43], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v0.l, 8, v98.l
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v0.h, 8, v67.l
	v_add_nc_u32_e32 v67, s22, v66
	s_waitcnt vmcnt(2)
	v_or_b16 v99.h, v99.l, v0.l
	s_waitcnt vmcnt(1)
	v_or_b16 v99.l, v101.l, v0.h
	v_lshl_add_u32 v0, s22, 1, v66
	v_add_nc_u32_e32 v67, s2, v67
	.loc	1 1472 46                       ; ragged.py:1472:46
	v_add_nc_u32_e32 v101, s8, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v0, s2, v0
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_cndmask_b32_e64 v67, 0x80000000, v67, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_cndmask_b32_e32 v101, 0x80000000, v101, vcc_lo
	.loc	1 1471 38                       ; ragged.py:1471:38
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	s_clause 0x1
	buffer_load_u8 v98, v0, s[40:43], 0 offen
	buffer_load_u8 v67, v67, s[40:43], 0 offen
	s_waitcnt vmcnt(2)
	v_lshlrev_b16 v0.l, 8, v100.l
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v98.h, v98.l, v0.l
	v_add_nc_u32_e32 v0, s2, v66
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_load_u8 v100, v0, s[40:43], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v0.l, 8, v67.l
	.loc	1 1472 46                       ; ragged.py:1472:46
	v_add_nc_u32_e32 v67, s8, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1472 38 is_stmt 0             ; ragged.py:1472:38
	v_cndmask_b32_e32 v67, 0x80000000, v67, vcc_lo
	.loc	1 1471 38 is_stmt 1             ; ragged.py:1471:38
	s_waitcnt vmcnt(0)
	v_or_b16 v98.l, v100.l, v0.l
	.loc	1 1472 46                       ; ragged.py:1472:46
	v_add_nc_u32_e32 v100, s8, v77
	v_add_nc_u32_e32 v0, s8, v175
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1472 38 is_stmt 0             ; ragged.py:1472:38
	v_cndmask_b32_e32 v100, 0x80000000, v100, vcc_lo
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x17
	buffer_load_u8 v134, v105, s[24:27], 0 offen
	buffer_load_u8 v135, v103, s[24:27], 0 offen
	buffer_load_u8 v136, v104, s[24:27], 0 offen
	buffer_load_u8 v137, v102, s[24:27], 0 offen
	buffer_load_u8 v138, v101, s[24:27], 0 offen
	buffer_load_u8 v139, v100, s[24:27], 0 offen
	buffer_load_u8 v67, v67, s[24:27], 0 offen
	buffer_load_u8 v140, v0, s[24:27], 0 offen
	buffer_load_u8 v141, v115, s[24:27], 0 offen
	buffer_load_u8 v142, v113, s[24:27], 0 offen
	buffer_load_u8 v143, v114, s[24:27], 0 offen
	buffer_load_u8 v144, v112, s[24:27], 0 offen
	buffer_load_u8 v145, v111, s[24:27], 0 offen
	buffer_load_u8 v146, v110, s[24:27], 0 offen
	buffer_load_u8 v170, v109, s[24:27], 0 offen
	buffer_load_u8 v108, v108, s[24:27], 0 offen
	buffer_load_u8 v180, v123, s[24:27], 0 offen
	buffer_load_u8 v183, v121, s[24:27], 0 offen
	buffer_load_u8 v184, v122, s[24:27], 0 offen
	buffer_load_u8 v185, v120, s[24:27], 0 offen
	buffer_load_u8 v186, v119, s[24:27], 0 offen
	buffer_load_u8 v207, v118, s[24:27], 0 offen
	buffer_load_u8 v208, v117, s[24:27], 0 offen
	buffer_load_u8 v209, v116, s[24:27], 0 offen
	.loc	1 1471 38 is_stmt 1             ; ragged.py:1471:38
	v_add_nc_u32_e32 v0, 0, v177
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v187, v[98:99]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[110:111], v188
	ds_load_b64 v[112:113], v189
	ds_load_b64 v[114:115], v190
	ds_load_b64 v[116:117], v191
	ds_load_b64 v[118:119], v192
	ds_load_b64 v[120:121], v193
	ds_load_b64 v[122:123], v194
	ds_load_b64 v[124:125], v195
	ds_load_b64 v[126:127], v196
	ds_load_b64 v[128:129], v197
	ds_load_b64 v[130:131], v198
	ds_load_b64 v[132:133], v199
	ds_load_2addr_stride64_b64 v[98:101], v0 offset1:1
	ds_load_2addr_stride64_b64 v[102:105], v0 offset0:2 offset1:3
	.loc	1 1472 38                       ; ragged.py:1472:38
	v_add_nc_u32_e32 v0, 0, v178
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v0, v[106:107]
	s_waitcnt vmcnt(23)
	v_lshlrev_b16 v0.l, 8, v134.l
	s_waitcnt vmcnt(22)
	v_lshlrev_b16 v0.h, 8, v135.l
	s_waitcnt vmcnt(21)
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b16 v107.h, v136.l, v0.l
	s_waitcnt vmcnt(19)
	v_lshlrev_b16 v0.l, 8, v138.l
	v_or_b16 v107.l, v137.l, v0.h
	s_waitcnt vmcnt(14)
	v_lshlrev_b16 v0.h, 8, v142.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_or_b16 v106.h, v139.l, v0.l
	v_lshlrev_b16 v0.l, 8, v67.l
	s_waitcnt vmcnt(12)
	v_or_b16 v109.l, v144.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v106.l, v140.l, v0.l
	v_lshlrev_b16 v0.l, 8, v141.l
	s_waitcnt vmcnt(6)
	v_lshlrev_b16 v0.h, 8, v183.l
	v_or_b16 v109.h, v143.l, v0.l
	v_lshlrev_b16 v0.l, 8, v145.l
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b16 v135.l, v185.l, v0.h
	v_or_b16 v108.h, v146.l, v0.l
	v_lshlrev_b16 v0.l, 8, v170.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v108.l, v108.l, v0.l
	v_lshlrev_b16 v0.l, 8, v180.l
	v_or_b16 v135.h, v184.l, v0.l
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v0.l, 8, v186.l
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v134.h, v207.l, v0.l
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v0.l, 8, v208.l
	s_waitcnt vmcnt(0)
	v_or_b16 v134.l, v209.l, v0.l
	v_add_nc_u32_e32 v0, 0, v179
	ds_store_b64 v200, v[106:107]
	ds_store_b64 v201, v[108:109]
	ds_store_b64 v202, v[134:135]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[106:109], v0 offset1:8
	.loc	1 1473 35                       ; ragged.py:1473:35
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[106:107], v[116:117], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[108:109], v[116:117], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[106:107], v[122:123], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[108:109], v[122:123], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[106:107], v[128:129], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[108:109], v[128:129], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[106:107], v[98:99], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[108:109], v[98:99], v[49:56] neg_lo:[1,1,0]
	.loc	1 1472 38                       ; ragged.py:1472:38
	ds_load_2addr_stride64_b64 v[106:109], v203 offset1:8
	.loc	1 1473 35                       ; ragged.py:1473:35
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[106:107], v[100:101], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[108:109], v[100:101], v[33:40] neg_lo:[1,1,0]
	.loc	1 1472 38                       ; ragged.py:1472:38
	ds_load_2addr_stride64_b64 v[98:101], v204 offset1:8
	.loc	1 1473 35                       ; ragged.py:1473:35
	v_wmma_i32_16x16x16_iu4 v[57:64], v[106:107], v[110:111], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[108:109], v[110:111], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[106:107], v[124:125], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[108:109], v[124:125], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[106:107], v[130:131], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[108:109], v[130:131], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[98:99], v[112:113], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[100:101], v[112:113], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[98:99], v[118:119], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[100:101], v[118:119], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[98:99], v[132:133], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[100:101], v[132:133], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[98:99], v[102:103], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[100:101], v[102:103], v[17:24] neg_lo:[1,1,0]
	.loc	1 1472 38                       ; ragged.py:1472:38
	ds_load_2addr_stride64_b64 v[98:101], v205 offset1:8
	.loc	1 1473 35                       ; ragged.py:1473:35
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[98:99], v[104:105], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[100:101], v[104:105], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[98:99], v[114:115], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[100:101], v[114:115], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[98:99], v[120:121], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[100:101], v[120:121], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[98:99], v[126:127], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[100:101], v[126:127], v[17:24] neg_lo:[1,1,0]
	.loc	1 1461 27                       ; ragged.py:1461:27
	s_cbranch_scc1 .LBB0_8
.LBB0_9:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1452 25                       ; ragged.py:1452:25
	s_sub_i32 s2, s11, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1450 42                       ; ragged.py:1450:42
	s_min_i32 s27, s2, 0x80
	.loc	1 1484 24                       ; ragged.py:1484:24
	s_cmp_ge_i32 s1, s27
	.loc	1 1484 21 is_stmt 0             ; ragged.py:1484:21
	s_cbranch_scc1 .LBB0_5
; %bb.10:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 21                          ; ragged.py:0:21
	scratch_load_b32 v104, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 1485 30 is_stmt 1             ; ragged.py:1485:30
	s_add_i32 s26, s1, s3
	s_mov_b32 s7, s19
	s_mov_b32 s38, s20
	s_or_b32 s30, s26, 1
	s_or_b32 s31, s26, 2
	s_mov_b32 s45, s21
	s_mov_b32 s9, s12
	v_mov_b32_e32 v212, v211
	v_mov_b32_e32 v123, v147
	v_dual_mov_b32 v211, v210 :: v_dual_mov_b32 v210, v171
	v_mov_b32_e32 v171, v250
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v99, s26, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v0, s3, v99
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s1, s27, v0
	.loc	1 1419 28 is_stmt 1             ; ragged.py:1419:28
	v_or_b32_e32 v0, 4, v104
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_writelane_b32 v255, s1, 11
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v100, s26, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v0, s3, v100
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s1, s27, v0
	.loc	1 1419 28 is_stmt 1             ; ragged.py:1419:28
	v_or_b32_e32 v0, 8, v104
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_writelane_b32 v255, s1, 12
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v101, s26, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v0, s3, v101
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s1, s27, v0
	.loc	1 1419 28 is_stmt 1             ; ragged.py:1419:28
	v_or_b32_e32 v0, 12, v104
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_writelane_b32 v255, s1, 13
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v102, s26, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v0, s3, v102
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s1, s27, v0
	.loc	1 1419 28 is_stmt 1             ; ragged.py:1419:28
	v_or_b32_e32 v0, 16, v104
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_writelane_b32 v255, s1, 14
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v103, s26, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v0, s3, v103
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s8, s54, v103
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s1, s27, v0
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v0, 20, v104
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_writelane_b32 v255, s1, 15
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v0, s26, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v67, s3, v0
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s18, s54, v0
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s1, s27, v67
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v67, 24, v104
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_writelane_b32 v255, s1, 16
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v98, s26, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v67, s3, v98
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s19, s54, v98
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s1, s27, v67
	.loc	1 1419 28                       ; ragged.py:1419:28
	v_or_b32_e32 v67, 28, v104
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_writelane_b32 v255, s1, 17
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_or_b32_e32 v67, s26, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1494 35                       ; ragged.py:1494:35
	v_subrev_nc_u32_e32 v104, s3, v67
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_cmp_eq_u32_e64 s20, s54, v67
	scratch_load_b32 v67, off, off offset:344 ; 4-byte Folded Reload
	.loc	1 1494 34                       ; ragged.py:1494:34
	v_cmp_gt_i32_e64 s1, s27, v104
	.loc	1 1495 60                       ; ragged.py:1495:60
	v_writelane_b32 v255, s1, 18
	v_cmp_eq_u32_e64 s1, s54, v99
	scratch_load_b64 v[98:99], off, off offset:336 ; 8-byte Folded Reload
	v_writelane_b32 v255, s1, 19
	v_cmp_eq_u32_e64 s1, s54, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_writelane_b32 v255, s1, 20
	v_cmp_eq_u32_e64 s1, s54, v101
	v_writelane_b32 v255, s1, 21
	v_cmp_eq_u32_e64 s1, s54, v102
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[101:102], off, off offset:392
	scratch_load_b64 v[102:103], off, off offset:400
	v_writelane_b32 v255, s1, 22
	.loc	1 1485 30                       ; ragged.py:1485:30
	v_writelane_b32 v255, s24, 23
	s_or_b32 s46, s26, 3
	s_or_b32 s47, s26, 4
	s_or_b32 s56, s26, 5
	s_or_b32 s57, s26, 6
	v_writelane_b32 v255, s25, 24
	s_or_b32 s58, s26, 7
	s_or_b32 s59, s26, 8
	s_or_b32 s60, s26, 9
	s_or_b32 s61, s26, 10
	v_writelane_b32 v255, s26, 25
	s_or_b32 s62, s26, 11
	s_or_b32 s63, s26, 12
	s_or_b32 s64, s26, 13
	s_or_b32 s65, s26, 14
	v_writelane_b32 v255, s27, 26
	s_or_b32 s66, s26, 15
	s_or_b32 s67, s26, 16
	s_or_b32 s21, s26, 17
	s_or_b32 s4, s26, 18
	v_writelane_b32 v255, s28, 27
	s_or_b32 s5, s26, 19
	s_or_b32 s39, s26, 20
	s_or_b32 s36, s26, 21
	s_or_b32 s37, s26, 22
	v_writelane_b32 v255, s29, 28
	s_or_b32 s1, s26, 23
	s_or_b32 s52, s26, 24
	s_or_b32 s10, s26, 25
	s_or_b32 s11, s26, 26
	v_writelane_b32 v255, s30, 29
	s_or_b32 s12, s26, 27
	s_or_b32 s68, s26, 28
	s_or_b32 s69, s26, 29
	s_or_b32 s70, s26, 30
	v_writelane_b32 v255, s31, 30
	s_or_b32 s71, s26, 31
	.loc	1 1494 35                       ; ragged.py:1494:35
	s_sub_i32 s2, s30, s3
	s_sub_i32 s6, s31, s3
	s_sub_i32 s33, s46, s3
	s_sub_i32 s34, s47, s3
	s_sub_i32 s35, s56, s3
	s_sub_i32 s49, s57, s3
	s_sub_i32 s73, s58, s3
	s_sub_i32 s74, s59, s3
	s_sub_i32 s75, s60, s3
	s_sub_i32 s76, s61, s3
	s_sub_i32 s77, s62, s3
	s_sub_i32 s78, s63, s3
	s_sub_i32 s79, s64, s3
	s_sub_i32 s80, s65, s3
	s_sub_i32 s81, s66, s3
	s_sub_i32 s82, s67, s3
	s_sub_i32 s83, s21, s3
	s_sub_i32 s84, s4, s3
	s_sub_i32 s85, s5, s3
	s_sub_i32 s86, s39, s3
	s_sub_i32 s87, s36, s3
	s_sub_i32 s88, s37, s3
	s_sub_i32 s89, s1, s3
	s_sub_i32 s90, s52, s3
	s_sub_i32 s72, s10, s3
	s_sub_i32 s13, s11, s3
	s_mov_b32 s28, s17
	s_mov_b32 s17, s14
	s_sub_i32 s14, s12, s3
	v_writelane_b32 v255, s15, 31
	s_sub_i32 s15, s68, s3
	s_sub_i32 s16, s69, s3
	s_sub_i32 s44, s70, s3
	s_sub_i32 s3, s71, s3
	.loc	1 1494 34 is_stmt 0             ; ragged.py:1494:34
	s_cmp_lt_i32 s2, s27
	s_cselect_b32 s2, -1, 0
	s_cmp_lt_i32 s6, s27
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s33, s27
	s_cselect_b32 s33, -1, 0
	s_cmp_lt_i32 s34, s27
	s_cselect_b32 s48, -1, 0
	s_cmp_lt_i32 s35, s27
	s_cselect_b32 s51, -1, 0
	s_cmp_lt_i32 s49, s27
	s_cselect_b32 s50, -1, 0
	s_cmp_lt_i32 s73, s27
	s_cselect_b32 s49, -1, 0
	s_cmp_lt_i32 s74, s27
	s_cselect_b32 s35, -1, 0
	s_cmp_lt_i32 s75, s27
	s_cselect_b32 s34, -1, 0
	s_cmp_lt_i32 s76, s27
	s_cselect_b32 vcc_hi, -1, 0
	s_cmp_lt_i32 s77, s27
	s_cselect_b32 s104, -1, 0
	s_cmp_lt_i32 s78, s27
	s_cselect_b32 s103, -1, 0
	s_cmp_lt_i32 s79, s27
	s_cselect_b32 s102, -1, 0
	s_cmp_lt_i32 s80, s27
	s_cselect_b32 s101, -1, 0
	s_cmp_lt_i32 s81, s27
	s_cselect_b32 s100, -1, 0
	s_cmp_lt_i32 s82, s27
	s_cselect_b32 s99, -1, 0
	s_cmp_lt_i32 s83, s27
	s_cselect_b32 s98, -1, 0
	s_cmp_lt_i32 s84, s27
	s_cselect_b32 s97, -1, 0
	s_cmp_lt_i32 s85, s27
	s_cselect_b32 s96, -1, 0
	s_cmp_lt_i32 s86, s27
	s_cselect_b32 s73, -1, 0
	s_cmp_lt_i32 s87, s27
	s_cselect_b32 s95, -1, 0
	s_cmp_lt_i32 s88, s27
	s_cselect_b32 s94, -1, 0
	s_cmp_lt_i32 s89, s27
	s_cselect_b32 s29, -1, 0
	s_cmp_lt_i32 s90, s27
	s_cselect_b32 s6, -1, 0
	s_cmp_lt_i32 s72, s27
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 s13, s27
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s14, s27
	s_mov_b32 s14, s17
	s_cselect_b32 s88, -1, 0
	s_cmp_lt_i32 s15, s27
	s_mov_b32 s17, s28
	s_cselect_b32 s87, -1, 0
	s_cmp_lt_i32 s16, s27
	s_cselect_b32 s86, -1, 0
	s_cmp_lt_i32 s44, s27
	s_cselect_b32 s85, -1, 0
	s_cmp_lt_i32 s3, s27
	.loc	1 1497 38 is_stmt 1             ; ragged.py:1497:38
	s_mov_b32 s27, s43
	.loc	1 1494 34                       ; ragged.py:1494:34
	s_cselect_b32 s84, -1, 0
	.loc	1 1495 60                       ; ragged.py:1495:60
	s_cmp_eq_u32 s26, s54
	s_cselect_b32 s83, -1, 0
	s_cmp_eq_u32 s30, s54
	s_cselect_b32 s82, -1, 0
	s_cmp_eq_u32 s31, s54
	s_cselect_b32 s81, -1, 0
	s_cmp_eq_u32 s46, s54
	s_cselect_b32 s80, -1, 0
	s_cmp_eq_u32 s47, s54
	s_cselect_b32 s79, -1, 0
	s_cmp_eq_u32 s56, s54
	s_cselect_b32 s78, -1, 0
	s_cmp_eq_u32 s57, s54
	s_cselect_b32 s77, -1, 0
	s_cmp_eq_u32 s58, s54
	s_cselect_b32 s76, -1, 0
	s_cmp_eq_u32 s59, s54
	s_cselect_b32 s75, -1, 0
	s_cmp_eq_u32 s60, s54
	s_cselect_b32 s74, -1, 0
	s_cmp_eq_u32 s61, s54
	s_cselect_b32 s16, -1, 0
	s_cmp_eq_u32 s62, s54
	s_cselect_b32 s47, -1, 0
	s_cmp_eq_u32 s63, s54
	s_cselect_b32 s46, -1, 0
	s_cmp_eq_u32 s64, s54
	s_cselect_b32 s31, -1, 0
	s_cmp_eq_u32 s65, s54
	s_cselect_b32 s30, -1, 0
	s_cmp_eq_u32 s66, s54
	s_cselect_b32 s15, -1, 0
	s_cmp_eq_u32 s67, s54
	s_cselect_b32 s67, -1, 0
	s_cmp_eq_u32 s21, s54
	s_mov_b32 s21, s45
	s_cselect_b32 s66, -1, 0
	s_cmp_eq_u32 s4, s54
	s_cselect_b32 s65, -1, 0
	s_cmp_eq_u32 s5, s54
	s_cselect_b32 s64, -1, 0
	s_cmp_eq_u32 s39, s54
	s_cselect_b32 s63, -1, 0
	s_cmp_eq_u32 s36, s54
	s_cselect_b32 s62, -1, 0
	s_cmp_eq_u32 s37, s54
	s_cselect_b32 s61, -1, 0
	s_cmp_eq_u32 s1, s54
	s_cselect_b32 s60, -1, 0
	s_cmp_eq_u32 s52, s54
	s_cselect_b32 s59, -1, 0
	s_cmp_eq_u32 s10, s54
	s_cselect_b32 s58, -1, 0
	s_cmp_eq_u32 s11, s54
	s_cselect_b32 s57, -1, 0
	s_cmp_eq_u32 s12, s54
	s_cselect_b32 s56, -1, 0
	s_cmp_eq_u32 s68, s54
	s_cselect_b32 s11, -1, 0
	s_cmp_eq_u32 s69, s54
	s_cselect_b32 s10, -1, 0
	s_cmp_eq_u32 s70, s54
	s_cselect_b32 s5, -1, 0
	s_cmp_eq_u32 s71, s54
	s_cselect_b32 s4, -1, 0
	.loc	1 1496 46                       ; ragged.py:1496:46
	s_add_i32 s12, s26, s14
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_mov_b32 s26, s42
	.loc	1 1496 46                       ; ragged.py:1496:46
	s_mul_i32 s1, s12, s22
	.loc	1 1497 46                       ; ragged.py:1497:46
	s_mul_i32 s12, s12, s23
	.loc	1 1496 46                       ; ragged.py:1496:46
	s_add_i32 s13, s1, s28
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	v_readlane_b32 s1, v255, 11
	.loc	1 1497 46 is_stmt 1             ; ragged.py:1497:46
	v_add_nc_u32_e32 v113, s12, v83
	v_add_nc_u32_e32 v121, s12, v88
	v_add_nc_u32_e32 v108, s12, v82
	v_add_nc_u32_e32 v110, s12, v176
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, s0, s1
	v_readlane_b32 s1, v255, 12
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v114, s12, v84
	v_add_nc_u32_e32 v118, s12, v86
	s_waitcnt vmcnt(2)
	v_dual_mov_b32 v100, v98 :: v_dual_add_nc_u32 v67, s13, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v0, s13, v100
	.loc	1 1421 19                       ; ragged.py:1421:19
	v_lshl_add_u32 v98, s22, 3, v100
	v_lshl_add_u32 v100, s22, 4, v100
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1496 70 is_stmt 0             ; ragged.py:1496:70
	s_and_b32 s3, s0, s1
	v_readlane_b32 s1, v255, 13
	v_add_nc_u32_e32 v98, s13, v98
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v67, 0x80000000, v67, s3
	v_add_nc_u32_e32 v100, s13, v100
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, s0, s1
	v_readlane_b32 s1, v255, 14
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v98, 0x80000000, v98, s3
	s_clause 0x2
	buffer_load_u8 v99, v0, s[40:43], 0 offen
	buffer_load_u8 v67, v67, s[40:43], 0 offen
	buffer_load_u8 v98, v98, s[40:43], 0 offen
	.loc	1 1496 70                       ; ragged.py:1496:70
	s_and_b32 s3, s0, s1
	v_readlane_b32 s1, v255, 15
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v0, s13, v101
	s_and_b32 s1, s0, s1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	v_cndmask_b32_e64 v100, 0x80000000, v100, s1
	s_clause 0x1
	buffer_load_u8 v101, v0, s[40:43], 0 offen
	buffer_load_u8 v100, v100, s[40:43], 0 offen
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v0, s13, v102
	scratch_load_b64 v[102:103], off, off offset:408 ; 8-byte Folded Reload
	.loc	1 1496 70                       ; ragged.py:1496:70
	v_readlane_b32 s1, v255, 16
	s_and_b32 s1, s0, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	.loc	1 1496 70                       ; ragged.py:1496:70
	v_readlane_b32 s1, v255, 17
	s_and_b32 s1, s0, s1
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v102, s13, v102
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v102, 0x80000000, v102, s1
	s_clause 0x1
	buffer_load_u8 v104, v0, s[40:43], 0 offen
	buffer_load_u8 v105, v102, s[40:43], 0 offen
	scratch_load_b64 v[102:103], off, off offset:416 ; 8-byte Folded Reload
	.loc	1 1496 70                       ; ragged.py:1496:70
	v_readlane_b32 s1, v255, 18
	s_and_b32 s1, s0, s1
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s13, v102
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1496 38                       ; ragged.py:1496:38
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	v_readlane_b32 s1, v255, 19
	.loc	1 1496 38                       ; ragged.py:1496:38
	buffer_load_u8 v106, v0, s[40:43], 0 offen
	.loc	1 1498 66                       ; ragged.py:1498:66
	v_and_b16 v0.l, v99.l, 15
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s1, s1, s53
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v102.l, v99.l, v0.l, s1
	.loc	1 1495 36                       ; ragged.py:1495:36
	v_readlane_b32 s1, v255, 20
	.loc	1 1498 66                       ; ragged.py:1498:66
	v_and_b16 v0.l, v67.l, 15
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v99, s12, v72
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s1, s1, s53
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v102.h, v67.l, v0.l, s1
	.loc	1 1495 36                       ; ragged.py:1495:36
	v_readlane_b32 s1, v255, 21
	.loc	1 1498 66                       ; ragged.py:1498:66
	v_and_b16 v0.l, v98.l, 15
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v67, s12, v172
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s1, s1, s53
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v103.l, v98.l, v0.l, s1
	.loc	1 1495 36                       ; ragged.py:1495:36
	v_readlane_b32 s1, v255, 22
	.loc	1 1498 66                       ; ragged.py:1498:66
	v_and_b16 v0.l, v101.l, 15
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v98, s12, v173
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s1, s1, s53
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v103.h, v101.l, v0.l, s1
	.loc	1 1498 66 is_stmt 0             ; ragged.py:1498:66
	v_and_b16 v0.l, v100.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s8, s53
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v101, s12, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v107.l, v100.l, v0.l, s1
	.loc	1 1498 66 is_stmt 0             ; ragged.py:1498:66
	v_and_b16 v0.l, v104.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s18, s53
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v100, s12, v174
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v107.h, v104.l, v0.l, s1
	.loc	1 1498 66 is_stmt 0             ; ragged.py:1498:66
	v_and_b16 v0.l, v105.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s19, s53
	s_mov_b32 s19, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1498 38                       ; ragged.py:1498:38
	v_cndmask_b16 v112.l, v105.l, v0.l, s1
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s1, s20, s53
	s_mov_b32 s20, s38
	.loc	1 1498 66                       ; ragged.py:1498:66
	s_waitcnt vmcnt(0)
	v_and_b16 v0.l, v106.l, 15
	.loc	1 1498 38 is_stmt 0             ; ragged.py:1498:38
	v_cndmask_b16 v112.h, v106.l, v0.l, s1
	.loc	1 1497 70 is_stmt 1             ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s2
	.loc	1 1497 46 is_stmt 0             ; ragged.py:1497:46
	v_add_nc_u32_e32 v0, s12, v65
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v67, 0x80000000, v67, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s55
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v106, s12, v81
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v98, 0x80000000, v98, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s33
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_cndmask_b32_e64 v99, 0x80000000, v99, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s48
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_clause 0x3
	buffer_load_u8 v67, v67, s[24:27], 0 offen
	buffer_load_u8 v98, v98, s[24:27], 0 offen
	buffer_load_u8 v0, v0, s[24:27], 0 offen
	buffer_load_u8 v99, v99, s[24:27], 0 offen
	v_cndmask_b32_e64 v100, 0x80000000, v100, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s51
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v104, 0x80000000, v101, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s50
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_clause 0x1
	buffer_load_u8 v101, v100, s[24:27], 0 offen
	buffer_load_u8 v105, v104, s[24:27], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v100, s12, v74
	v_add_nc_u32_e32 v104, s12, v75
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v100, 0x80000000, v100, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s49
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v104, 0x80000000, v104, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s35
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_clause 0x1
	buffer_load_u8 v109, v100, s[24:27], 0 offen
	buffer_load_u8 v111, v104, s[24:27], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v100, s12, v175
	v_add_nc_u32_e32 v104, s12, v76
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v100, 0x80000000, v100, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s34
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v104, 0x80000000, v104, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, vcc_hi
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_clause 0x1
	buffer_load_u8 v115, v100, s[24:27], 0 offen
	buffer_load_u8 v117, v104, s[24:27], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v100, s12, v77
	v_add_nc_u32_e32 v104, s12, v78
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v100, 0x80000000, v100, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s104
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v104, 0x80000000, v104, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s103
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_clause 0x1
	buffer_load_u8 v119, v100, s[24:27], 0 offen
	buffer_load_u8 v122, v104, s[24:27], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v100, s12, v79
	v_add_nc_u32_e32 v104, s12, v80
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v100, 0x80000000, v100, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s102
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v104, 0x80000000, v104, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s101
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v100, v100, s[24:27], 0 offen
	v_cndmask_b32_e64 v106, 0x80000000, v106, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s100
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v104, v104, s[24:27], 0 offen
	v_cndmask_b32_e64 v108, 0x80000000, v108, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s99
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v106, v106, s[24:27], 0 offen
	v_cndmask_b32_e64 v110, 0x80000000, v110, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s98
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v108, v108, s[24:27], 0 offen
	v_cndmask_b32_e64 v113, 0x80000000, v113, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s97
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v110, v110, s[24:27], 0 offen
	v_cndmask_b32_e64 v116, 0x80000000, v114, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s96
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_clause 0x1
	buffer_load_u8 v114, v113, s[24:27], 0 offen
	buffer_load_u8 v116, v116, s[24:27], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v113, s12, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v113, 0x80000000, v113, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s73
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v120, 0x80000000, v118, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s95
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_clause 0x1
	buffer_load_u8 v118, v113, s[24:27], 0 offen
	buffer_load_u8 v120, v120, s[24:27], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v113, s12, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v113, 0x80000000, v113, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s94
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v121, 0x80000000, v121, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s29
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_clause 0x1
	buffer_load_u8 v124, v113, s[24:27], 0 offen
	buffer_load_u8 v134, v121, s[24:27], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v113, s12, v89
	v_add_nc_u32_e32 v121, s12, v90
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v113, 0x80000000, v113, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v121, 0x80000000, v121, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s90
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_clause 0x1
	buffer_load_u8 v170, v113, s[24:27], 0 offen
	buffer_load_u8 v180, v121, s[24:27], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v113, s12, v91
	v_add_nc_u32_e32 v121, s12, v92
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v113, 0x80000000, v113, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s89
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v121, 0x80000000, v121, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s88
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_clause 0x1
	buffer_load_u8 v183, v113, s[24:27], 0 offen
	buffer_load_u8 v185, v121, s[24:27], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v113, s12, v93
	v_add_nc_u32_e32 v121, s12, v94
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v113, 0x80000000, v113, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s87
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v121, 0x80000000, v121, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s86
	.loc	1 1497 38                       ; ragged.py:1497:38
	s_clause 0x1
	buffer_load_u8 v186, v113, s[24:27], 0 offen
	buffer_load_u8 v207, v121, s[24:27], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v113, s12, v95
	v_add_nc_u32_e32 v121, s12, v96
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v113, 0x80000000, v113, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s85
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v121, 0x80000000, v121, s1
	.loc	1 1497 70                       ; ragged.py:1497:70
	s_and_b32 s1, vcc_lo, s84
	.loc	1 1497 38                       ; ragged.py:1497:38
	buffer_load_u8 v208, v113, s[24:27], 0 offen
	.loc	1 1497 46                       ; ragged.py:1497:46
	v_add_nc_u32_e32 v113, s12, v97
	s_mov_b32 s12, s9
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1497 38                       ; ragged.py:1497:38
	v_cndmask_b32_e64 v113, 0x80000000, v113, s1
	s_clause 0x1
	buffer_load_u8 v209, v121, s[24:27], 0 offen
	buffer_load_u8 v184, v113, s[24:27], 0 offen
	.loc	1 1498 38 is_stmt 1             ; ragged.py:1498:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v147, off, off offset:352
	scratch_load_b32 v121, off, off offset:356
	ds_store_b8 v217, v102
	ds_store_b8_d16_hi v217, v102 offset:256
	ds_store_b8 v217, v103 offset:512
	ds_store_b8 v217, v107 offset:1024
	ds_store_b8_d16_hi v217, v107 offset:1280
	.loc	1 1495 36                       ; ragged.py:1495:36
	s_and_b32 s1, s83, s53
	.loc	1 1498 38                       ; ragged.py:1498:38
	s_waitcnt vmcnt(1)
	ds_store_b8_d16_hi v147, v103
	ds_store_b8 v217, v112 offset:1536
	s_waitcnt vmcnt(0)
	ds_store_b8_d16_hi v121, v112
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1500 35                       ; ragged.py:1500:35
	ds_load_u8 v102, v181 offset:320
	ds_load_u8 v103, v181 offset:256
	ds_load_u8 v130, v181 offset:336
	ds_load_u8 v125, v181 offset:272
	ds_load_u8 v107, v181 offset:352
	.loc	1 1499 66                       ; ragged.py:1499:66
	v_and_b16 v0.h, v0.l, 15
	.loc	1 1500 35                       ; ragged.py:1500:35
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v107, off offset:324 ; 4-byte Folded Spill
	ds_load_u8 v107, v181 offset:288
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v107, off offset:328
	scratch_store_b32 off, v223, off offset:40
	ds_load_u8 v107, v181 offset:368
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v107, off offset:296
	scratch_store_b32 off, v225, off offset:44
	ds_load_u8 v107, v181 offset:304
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v107, off offset:300 ; 4-byte Folded Spill
	ds_load_u8 v103, v181 offset:448
	ds_load_u8 v107, v181 offset:384
	ds_load_u8 v254, v181 offset:464
	ds_load_u8 v131, v181 offset:400
	ds_load_u8 v225, v181 offset:480
	ds_load_u8 v223, v181 offset:416
	ds_load_u8 v112, v181 offset:496
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v103, v107, v103, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v112, off offset:308 ; 4-byte Folded Spill
	ds_load_u8 v112, v181 offset:432
	v_lshl_or_b32 v103, v103, 16, v102
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v112, off offset:312 ; 4-byte Folded Spill
	ds_load_u8 v112, v181 offset:64
	ds_load_u8 v113, v181
	ds_load_u8 v132, v181 offset:80
	ds_load_u8 v126, v181 offset:96
	ds_load_u8 v107, v181 offset:112
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v136, v113, v112, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v107, off offset:316 ; 4-byte Folded Spill
	ds_load_u8 v133, v181 offset:16
	ds_load_u8 v127, v181 offset:32
	ds_load_u8 v107, v181 offset:48
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v107, off offset:320 ; 4-byte Folded Spill
	ds_load_u8 v137, v181 offset:192
	ds_load_u8 v138, v181 offset:128
	ds_load_u8 v135, v181 offset:208
	ds_load_u8 v107, v181 offset:144
	ds_load_u8 v128, v181 offset:224
	ds_load_u8 v129, v181 offset:160
	ds_load_u8 v112, v181 offset:240
	ds_load_u8 v113, v181 offset:176
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v102, v137, 16, v136
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v136.l, v0.l, v0.h, s1
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	v_and_b16 v0.l, v67.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s82, s53
	.loc	1 1500 35                       ; ragged.py:1500:35
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v136.h, v67.l, v0.l, s1
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	v_and_b16 v0.l, v98.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s81, s53
	v_mov_b32_e32 v67, v247
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v137.l, v98.l, v0.l, s1
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	v_and_b16 v0.l, v99.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s80, s53
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v137.h, v99.l, v0.l, s1
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	v_and_b16 v0.l, v101.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s79, s53
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v247.l, v101.l, v0.l, s1
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	v_and_b16 v0.l, v105.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s78, s53
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v247.h, v105.l, v0.l, s1
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	v_and_b16 v0.l, v109.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s77, s53
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v138.l, v109.l, v0.l, s1
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	v_and_b16 v0.l, v111.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s76, s53
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v138.h, v111.l, v0.l, s1
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	v_and_b16 v0.l, v115.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s75, s53
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v139.l, v115.l, v0.l, s1
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	v_and_b16 v0.l, v117.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s74, s53
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v139.h, v117.l, v0.l, s1
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	v_and_b16 v0.l, v119.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s16, s53
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v248.l, v119.l, v0.l, s1
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	v_and_b16 v0.l, v122.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s47, s53
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v248.h, v122.l, v0.l, s1
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	v_and_b16 v0.l, v100.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s46, s53
	v_readlane_b32 s44, v255, 23
	v_readlane_b32 s48, v255, 27
	v_readlane_b32 s49, v255, 28
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v140.l, v100.l, v0.l, s1
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	v_and_b16 v0.l, v104.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s31, s53
	v_readlane_b32 s45, v255, 24
	s_mov_b64 s[28:29], s[48:49]
	v_readlane_b32 s46, v255, 25
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v140.h, v104.l, v0.l, s1
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	v_and_b16 v0.l, v106.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s30, s53
	v_readlane_b32 s47, v255, 26
	v_readlane_b32 s50, v255, 29
	v_readlane_b32 s51, v255, 30
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v141.l, v106.l, v0.l, s1
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	v_and_b16 v0.l, v108.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s15, s53
	v_readlane_b32 s15, v255, 31
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v141.h, v108.l, v0.l, s1
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	v_and_b16 v0.l, v110.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s67, s53
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v249.l, v110.l, v0.l, s1
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	v_and_b16 v0.l, v114.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s66, s53
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v249.h, v114.l, v0.l, s1
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	v_and_b16 v0.l, v116.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s65, s53
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v250.l, v116.l, v0.l, s1
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	v_and_b16 v0.l, v118.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s64, s53
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v250.h, v118.l, v0.l, s1
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	v_and_b16 v0.l, v120.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s63, s53
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v142.l, v120.l, v0.l, s1
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	v_and_b16 v0.l, v124.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s62, s53
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v142.h, v124.l, v0.l, s1
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	v_and_b16 v0.l, v134.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s61, s53
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v143.l, v134.l, v0.l, s1
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	v_and_b16 v0.l, v170.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s60, s53
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v143.h, v170.l, v0.l, s1
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	v_and_b16 v0.l, v180.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s59, s53
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v251.l, v180.l, v0.l, s1
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	v_and_b16 v0.l, v183.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s58, s53
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v251.h, v183.l, v0.l, s1
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	v_and_b16 v0.l, v185.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s57, s53
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v144.l, v185.l, v0.l, s1
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	v_and_b16 v0.l, v186.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s56, s53
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v144.h, v186.l, v0.l, s1
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	v_and_b16 v0.l, v207.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s11, s53
	v_readlane_b32 s11, v255, 9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v145.l, v207.l, v0.l, s1
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	v_and_b16 v0.l, v208.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s10, s53
	v_readlane_b32 s10, v255, 8
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v145.h, v208.l, v0.l, s1
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	v_and_b16 v0.l, v209.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s5, s53
	v_readlane_b32 s5, v255, 7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v146.l, v209.l, v0.l, s1
	.loc	1 1499 66 is_stmt 0             ; ragged.py:1499:66
	v_and_b16 v0.l, v184.l, 15
	.loc	1 1495 36 is_stmt 1             ; ragged.py:1495:36
	s_and_b32 s1, s4, s53
	v_readlane_b32 s4, v255, 10
	.loc	1 1499 38                       ; ragged.py:1499:38
	v_cndmask_b16 v146.h, v184.l, v0.l, s1
	.loc	1 1500 35                       ; ragged.py:1500:35
	ds_load_u8 v115, v181 offset:960
	ds_load_u8 v116, v181 offset:896
	ds_load_u8 v0, v181 offset:1024
	v_mov_b32_e32 v184, v156
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:264 ; 4-byte Folded Spill
	ds_load_u8 v0, v181 offset:976
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:292 ; 4-byte Folded Spill
	ds_load_u8 v0, v181 offset:912
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:304 ; 4-byte Folded Spill
	ds_load_u8 v0, v181 offset:992
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:284 ; 4-byte Folded Spill
	ds_load_u8 v0, v181 offset:928
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:280 ; 4-byte Folded Spill
	ds_load_u8 v0, v181 offset:944
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:268 ; 4-byte Folded Spill
	ds_load_u8 v117, v181 offset:832
	ds_load_u8 v118, v181 offset:768
	ds_load_u8 v156, v181 offset:848
	ds_load_u8 v134, v181 offset:784
	ds_load_u8 v208, v181 offset:864
	ds_load_u8 v207, v181 offset:800
	ds_load_u8 v0, v181 offset:880
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:276 ; 4-byte Folded Spill
	ds_load_u8 v0, v181 offset:816
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:272 ; 4-byte Folded Spill
	ds_load_u8 v119, v181 offset:704
	ds_load_u8 v120, v181 offset:640
	ds_load_u8 v104, v181 offset:720
	ds_load_u8 v101, v181 offset:656
	ds_load_u8 v170, v181 offset:736
	ds_load_u8 v105, v181 offset:672
	ds_load_u8 v185, v181 offset:752
	ds_load_u8 v180, v181 offset:688
	ds_load_u8 v122, v181 offset:576
	ds_load_u8 v124, v181 offset:512
	ds_load_u8 v108, v181 offset:592
	ds_load_u8 v109, v181 offset:528
	ds_load_u8 v0, v181 offset:608
	ds_load_u8 v106, v181 offset:544
	ds_load_u8 v100, v181 offset:624
	ds_load_u8 v98, v181 offset:560
	ds_load_u8 v99, v181 offset:1216
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v106, v106, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v99, off offset:288 ; 4-byte Folded Spill
	ds_load_u8 v209, v181 offset:1280
	ds_load_u8 v99, v181 offset:1232
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v99, off offset:168 ; 4-byte Folded Spill
	ds_load_u8 v99, v181 offset:1168
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v99, off offset:172 ; 4-byte Folded Spill
	ds_load_u8 v99, v181 offset:1248
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v99, off offset:160 ; 4-byte Folded Spill
	ds_load_u8 v99, v181 offset:1184
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v99, off offset:164 ; 4-byte Folded Spill
	ds_load_u8 v99, v181 offset:1264
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v99, off offset:152 ; 4-byte Folded Spill
	ds_load_u8 v99, v181 offset:1200
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v99, off offset:156 ; 4-byte Folded Spill
	ds_load_u8 v186, v181 offset:1152
	ds_load_u8 v183, v181 offset:1088
	ds_load_u8 v99, v181 offset:1104
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v99, off offset:196 ; 4-byte Folded Spill
	ds_load_u8 v99, v181 offset:1040
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v99, off offset:200 ; 4-byte Folded Spill
	ds_load_u8 v99, v181 offset:1120
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v99, off offset:188 ; 4-byte Folded Spill
	ds_load_u8 v99, v181 offset:1056
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v99, off offset:192 ; 4-byte Folded Spill
	ds_load_u8 v99, v181 offset:1136
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v99, off offset:176 ; 4-byte Folded Spill
	ds_load_u8 v99, v181 offset:1072
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v99, off offset:180 ; 4-byte Folded Spill
	ds_load_u8 v99, v181 offset:1472
	ds_load_u8 v110, v181 offset:1536
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v110, off offset:148
	scratch_store_b32 off, v214, off offset:48
	ds_load_u8 v110, v181 offset:1488
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v110, off offset:228 ; 4-byte Folded Spill
	ds_load_u8 v110, v181 offset:1424
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v110, off offset:232 ; 4-byte Folded Spill
	ds_load_u8 v110, v181 offset:1504
	s_waitcnt lgkmcnt(0)
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v110, off offset:216
	scratch_store_b32 off, v149, off offset:32
	scratch_store_b32 off, v150, off offset:36
	ds_load_u8 v110, v181 offset:1440
	scratch_load_b32 v150, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v110, off offset:224 ; 4-byte Folded Spill
	ds_load_u8 v110, v181 offset:1520
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v110, off offset:204 ; 4-byte Folded Spill
	ds_load_u8 v110, v181 offset:1456
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v110, off offset:208 ; 4-byte Folded Spill
	ds_load_u8 v110, v181 offset:1408
	ds_load_u8 v111, v181 offset:1344
	ds_load_u8 v214, v181 offset:1360
	ds_load_u8 v149, v181 offset:1296
	ds_load_u8 v114, v181 offset:1376
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v114, off offset:248 ; 4-byte Folded Spill
	ds_load_u8 v114, v181 offset:1312
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v114, off offset:256 ; 4-byte Folded Spill
	ds_load_u8 v114, v181 offset:1392
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v114, off offset:236 ; 4-byte Folded Spill
	ds_load_u8 v114, v181 offset:1328
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v114, off offset:240 ; 4-byte Folded Spill
	ds_load_u8 v114, v181 offset:1984
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v114, off offset:184 ; 4-byte Folded Spill
	ds_load_u8 v114, v181 offset:2000
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v114, off offset:68 ; 4-byte Folded Spill
	ds_load_u8 v114, v181 offset:1936
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v114, off offset:76 ; 4-byte Folded Spill
	ds_load_u8 v114, v181 offset:2016
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v114, off offset:60 ; 4-byte Folded Spill
	ds_load_u8 v114, v181 offset:1952
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v114, off offset:64 ; 4-byte Folded Spill
	scratch_load_b32 v114, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_u8 v150, v150
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v150, off offset:52 ; 4-byte Folded Spill
	ds_load_u8 v150, v181 offset:1968
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v150, off offset:56 ; 4-byte Folded Spill
	ds_load_u8 v150, v181 offset:1920
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v150, off offset:212 ; 4-byte Folded Spill
	ds_load_u8 v150, v181 offset:1856
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v150, off offset:220 ; 4-byte Folded Spill
	ds_load_u8 v150, v181 offset:1872
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v150, off offset:96 ; 4-byte Folded Spill
	ds_load_u8 v150, v181 offset:1808
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v150, off offset:104 ; 4-byte Folded Spill
	ds_load_u8 v150, v181 offset:1888
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v150, off offset:84 ; 4-byte Folded Spill
	ds_load_u8 v150, v181 offset:1824
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v150, off offset:88 ; 4-byte Folded Spill
	ds_load_u8 v150, v181 offset:1904
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v150, off offset:72 ; 4-byte Folded Spill
	ds_load_u8 v150, v181 offset:1840
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v150, off offset:80
	scratch_store_b32 off, v215, off offset:28
	ds_load_u8 v150, v181 offset:1728
	v_mov_b32_e32 v215, v151
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v150, off offset:244 ; 4-byte Folded Spill
	ds_load_u8 v150, v181 offset:1792
	s_waitcnt vmcnt(0)
	ds_load_u8 v114, v114
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v150, off offset:252 ; 4-byte Folded Spill
	ds_load_u8 v150, v181 offset:1744
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v150, off offset:116 ; 4-byte Folded Spill
	ds_load_u8 v150, v181 offset:1680
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v150, off offset:120 ; 4-byte Folded Spill
	ds_load_u8 v150, v181 offset:1760
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v150, off offset:108 ; 4-byte Folded Spill
	ds_load_u8 v150, v181 offset:1696
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v150, off offset:112 ; 4-byte Folded Spill
	ds_load_u8 v150, v181 offset:1776
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v150, off offset:92 ; 4-byte Folded Spill
	ds_load_u8 v150, v181 offset:1712
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v150, off offset:100 ; 4-byte Folded Spill
	ds_load_u8 v150, v181 offset:1664
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v150, off offset:260 ; 4-byte Folded Spill
	ds_load_u8 v151, v181 offset:1600
	ds_load_u8 v150, v181 offset:1616
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v150, off offset:140 ; 4-byte Folded Spill
	ds_load_u8 v150, v181 offset:1552
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v150, off offset:144 ; 4-byte Folded Spill
	ds_load_u8 v150, v181 offset:1632
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v150, off offset:132 ; 4-byte Folded Spill
	ds_load_u8 v150, v181 offset:1568
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v150, off offset:136 ; 4-byte Folded Spill
	ds_load_u8 v150, v181 offset:1648
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v150, off offset:124 ; 4-byte Folded Spill
	ds_load_u8 v150, v181 offset:1584
	.loc	1 1499 38                       ; ragged.py:1499:38
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v150, off offset:128 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v217, v136
	ds_store_b8_d16_hi v217, v136 offset:256
	ds_store_b8 v217, v137 offset:512
	ds_store_b8 v217, v247 offset:1024
	ds_store_b8_d16_hi v217, v247 offset:1280
	ds_store_b8 v217, v138 offset:1536
	ds_store_b8 v217, v139 offset:2048
	ds_store_b8_d16_hi v217, v139 offset:2304
	ds_store_b8 v217, v248 offset:2560
	ds_store_b8 v217, v140 offset:3072
	ds_store_b8_d16_hi v217, v140 offset:3328
	ds_store_b8 v217, v141 offset:3584
	ds_store_b8 v217, v249 offset:4096
	ds_store_b8_d16_hi v217, v249 offset:4352
	ds_store_b8 v217, v250 offset:4608
	ds_store_b8 v217, v142 offset:5120
	ds_store_b8_d16_hi v217, v142 offset:5376
	ds_store_b8 v217, v143 offset:5632
	ds_store_b8 v217, v251 offset:6144
	ds_store_b8_d16_hi v217, v251 offset:6400
	ds_store_b8 v217, v144 offset:6656
	ds_store_b8 v217, v145 offset:7168
	ds_store_b8_d16_hi v217, v145 offset:7424
	ds_store_b8 v217, v146 offset:7680
	ds_store_b8_d16_hi v147, v137
	ds_store_b8_d16_hi v121, v138
	scratch_load_b32 v121, off, off offset:368 ; 4-byte Folded Reload
	v_mov_b32_e32 v147, v123
	.loc	1 1500 35                       ; ragged.py:1500:35
	v_perm_b32 v123, v223, v225, 0xc0c0004
	.loc	1 1499 38                       ; ragged.py:1499:38
	s_waitcnt vmcnt(0)
	ds_store_b8_d16_hi v121, v248
	scratch_load_b32 v121, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8_d16_hi v121, v141
	scratch_load_b32 v121, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8_d16_hi v121, v250
	scratch_load_b32 v121, off, off offset:380 ; 4-byte Folded Reload
	v_dual_mov_b32 v250, v171 :: v_dual_mov_b32 v171, v210
	v_dual_mov_b32 v210, v211 :: v_dual_mov_b32 v211, v212
	s_waitcnt vmcnt(0)
	ds_store_b8_d16_hi v121, v143
	scratch_load_b32 v121, off, off offset:384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8_d16_hi v121, v144
	scratch_load_b32 v121, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8_d16_hi v121, v146
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1500 35                       ; ragged.py:1500:35
	ds_load_u8 v136, v182 offset:1280
	ds_load_u8 v137, v182 offset:1024
	ds_load_u8 v138, v182 offset:1920
	ds_load_u8 v139, v182 offset:1664
	ds_load_u8 v140, v182 offset:1408
	ds_load_u8 v141, v182 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	ds_load_u8 v137, v182 offset:1792
	ds_load_u8 v142, v182 offset:1536
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v140, v141, v140, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v139, v138, 16, v140
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v142, v137, 0xc0c0004
	ds_load_u8 v142, v182 offset:256
	ds_load_u8 v143, v182
	ds_load_u8 v144, v182 offset:896
	ds_load_u8 v145, v182 offset:640
	ds_load_u8 v146, v182 offset:384
	ds_load_u8 v247, v182 offset:128
	v_lshl_or_b32 v137, v137, 16, v136
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	ds_load_u8 v143, v182 offset:768
	ds_load_u8 v248, v182 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v141, v247, v146, 0xc0c0004
	v_mov_b32_e32 v247, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v143, v248, v143, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v136, v143, 16, v142
	v_perm_b32 v142, v145, v144, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[136:137], v[102:103], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v138, v142, 16, v141
	v_wmma_i32_16x16x16_iu4 v[49:56], v[138:139], v[102:103], v[49:56] neg_lo:[1,1,0]
	v_perm_b32 v103, v131, v254, 0xc0c0004
	v_perm_b32 v131, v107, v135, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:324
	scratch_load_b32 v107, off, off offset:328
	v_perm_b32 v102, v125, v130, 0xc0c0004
	v_perm_b32 v125, v127, v126, 0xc0c0004
	v_perm_b32 v130, v133, v132, 0xc0c0004
	v_perm_b32 v127, v129, v128, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v103, v103, 16, v102
	v_lshl_or_b32 v102, v131, 16, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v125, v127, 16, v125
	v_wmma_i32_16x16x16_iu4 v[41:48], v[136:137], v[102:103], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[138:139], v[102:103], v[33:40] neg_lo:[1,1,0]
	v_perm_b32 v102, v118, v117, 0xc0c0004
	v_perm_b32 v103, v116, v115, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v103, v103, 16, v102
	s_waitcnt vmcnt(0)
	v_perm_b32 v121, v107, v67, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:296
	scratch_load_b32 v107, off, off offset:300
	v_lshl_or_b32 v126, v123, 16, v121
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[136:137], v[125:126], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[138:139], v[125:126], v[17:24] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v121, v107, v67, 0xc0c0004
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v225, off, off offset:44
	scratch_load_b32 v223, off, off offset:40
	scratch_load_b32 v67, off, off offset:308
	scratch_load_b32 v107, off, off offset:312
	s_waitcnt vmcnt(0)
	v_perm_b32 v123, v107, v67, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:316
	scratch_load_b32 v107, off, off offset:320
	v_lshl_or_b32 v113, v123, 16, v121
	s_waitcnt vmcnt(0)
	v_perm_b32 v107, v107, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v112, v112, 16, v107
	v_perm_b32 v107, v124, v122, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[136:137], v[112:113], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[138:139], v[112:113], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v112, v120, v119, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v102, v112, 16, v107
	ds_load_u8 v107, v182 offset:3328
	ds_load_u8 v112, v182 offset:3072
	ds_load_u8 v115, v182 offset:3968
	ds_load_u8 v116, v182 offset:3712
	ds_load_u8 v117, v182 offset:3456
	ds_load_u8 v118, v182 offset:3200
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v107, v112, v107, 0xc0c0004
	ds_load_u8 v112, v182 offset:3840
	ds_load_u8 v113, v182 offset:3584
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	ds_load_u8 v113, v182 offset:2304
	ds_load_u8 v119, v182 offset:2048
	ds_load_u8 v120, v182 offset:2944
	ds_load_u8 v121, v182 offset:2688
	ds_load_u8 v122, v182 offset:2432
	ds_load_u8 v123, v182 offset:2176
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v119, v119, v113, 0xc0c0004
	ds_load_u8 v113, v182 offset:2816
	ds_load_u8 v124, v182 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v124, v113, 0xc0c0004
	v_lshl_or_b32 v113, v112, 16, v107
	v_perm_b32 v107, v118, v117, 0xc0c0004
	v_perm_b32 v117, v123, v122, 0xc0c0004
	v_perm_b32 v118, v121, v120, 0xc0c0004
	v_lshl_or_b32 v112, v124, 16, v119
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v116, v115, 16, v107
	v_perm_b32 v107, v109, v108, 0xc0c0004
	v_lshl_or_b32 v115, v118, 16, v117
	v_perm_b32 v108, v101, v104, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[112:113], v[102:103], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[115:116], v[102:103], v[49:56] neg_lo:[1,1,0]
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:292
	scratch_load_b32 v103, off, off offset:304
	v_perm_b32 v102, v134, v156, 0xc0c0004
	v_mov_b32_e32 v156, v184
	s_waitcnt vmcnt(0)
	v_perm_b32 v103, v103, v67, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:280
	scratch_load_b32 v101, off, off offset:284
	v_lshl_or_b32 v103, v103, 16, v102
	v_lshl_or_b32 v102, v108, 16, v107
	v_perm_b32 v107, v207, v208, 0xc0c0004
	v_perm_b32 v108, v105, v170, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[112:113], v[102:103], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[115:116], v[102:103], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v106, v108, 16, v106
	v_perm_b32 v108, v180, v185, 0xc0c0004
	v_perm_b32 v102, v110, v99, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v67, v67, v101, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v107, v67, 16, v107
	v_perm_b32 v67, v98, v100, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:272
	scratch_load_b32 v98, off, off offset:276
	v_wmma_i32_16x16x16_iu4 v[25:32], v[112:113], v[106:107], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[115:116], v[106:107], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v108, v108, 16, v67
	v_perm_b32 v67, v209, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v103, v102, 16, v67
	s_waitcnt vmcnt(0)
	v_perm_b32 v105, v0, v98, 0xc0c0004
	scratch_load_b32 v0, off, off offset:268 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v109, v0, v114, 0xc0c0004
	scratch_load_b32 v0, off, off offset:264 ; 4-byte Folded Reload
	v_lshl_or_b32 v109, v109, 16, v105
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[112:113], v[108:109], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[115:116], v[108:109], v[1:8] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v105, v0, v183, 0xc0c0004
	scratch_load_b32 v0, off, off offset:288 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v106, v186, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:228
	scratch_load_b32 v98, off, off offset:232
	v_lshl_or_b32 v102, v106, 16, v105
	ds_load_u8 v67, v182 offset:5376
	ds_load_u8 v105, v182 offset:5120
	ds_load_u8 v107, v182 offset:6016
	ds_load_u8 v108, v182 offset:5760
	ds_load_u8 v109, v182 offset:5504
	ds_load_u8 v110, v182 offset:5248
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v67, v105, v67, 0xc0c0004
	ds_load_u8 v105, v182 offset:5888
	ds_load_u8 v106, v182 offset:5632
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v107, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v106, v105, 0xc0c0004
	ds_load_u8 v106, v182 offset:4352
	ds_load_u8 v111, v182 offset:4096
	ds_load_u8 v112, v182 offset:4992
	ds_load_u8 v113, v182 offset:4736
	ds_load_u8 v114, v182 offset:4480
	ds_load_u8 v115, v182 offset:4224
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v111, v111, v106, 0xc0c0004
	ds_load_u8 v106, v182 offset:4864
	ds_load_u8 v116, v182 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v116, v116, v106, 0xc0c0004
	v_lshl_or_b32 v106, v105, 16, v67
	v_perm_b32 v67, v110, v109, 0xc0c0004
	v_perm_b32 v109, v115, v114, 0xc0c0004
	v_perm_b32 v110, v113, v112, 0xc0c0004
	v_lshl_or_b32 v105, v116, 16, v111
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v108, v107, 16, v67
	v_perm_b32 v67, v149, v214, 0xc0c0004
	v_lshl_or_b32 v107, v110, 16, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[105:106], v[102:103], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[107:108], v[102:103], v[49:56] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v102, v98, v0, 0xc0c0004
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v214, off, off offset:48
	scratch_load_b32 v0, off, off offset:196
	scratch_load_b32 v98, off, off offset:200
	v_lshl_or_b32 v103, v102, 16, v67
	s_waitcnt vmcnt(0)
	v_perm_b32 v104, v98, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:168
	scratch_load_b32 v98, off, off offset:172
	s_waitcnt vmcnt(0)
	v_perm_b32 v109, v98, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:248
	scratch_load_b32 v67, off, off offset:256
	v_lshl_or_b32 v102, v109, 16, v104
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[105:106], v[102:103], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[107:108], v[102:103], v[33:40] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v67, v67, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:216
	scratch_load_b32 v98, off, off offset:224
	s_waitcnt vmcnt(0)
	v_perm_b32 v101, v98, v0, 0xc0c0004
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v150, off, off offset:36
	scratch_load_b32 v149, off, off offset:32
	scratch_load_b32 v0, off, off offset:188
	scratch_load_b32 v98, off, off offset:192
	v_lshl_or_b32 v110, v101, 16, v67
	s_waitcnt vmcnt(0)
	v_perm_b32 v104, v98, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:160
	scratch_load_b32 v98, off, off offset:164
	s_waitcnt vmcnt(0)
	v_perm_b32 v109, v98, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:236
	scratch_load_b32 v67, off, off offset:240
	v_lshl_or_b32 v109, v109, 16, v104
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[105:106], v[109:110], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[107:108], v[109:110], v[17:24] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v67, v67, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:204
	scratch_load_b32 v98, off, off offset:208
	s_waitcnt vmcnt(0)
	v_perm_b32 v98, v98, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:176
	scratch_load_b32 v99, off, off offset:180
	s_waitcnt vmcnt(0)
	v_perm_b32 v101, v99, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:152
	scratch_load_b32 v99, off, off offset:156
	s_waitcnt vmcnt(0)
	v_perm_b32 v104, v99, v0, 0xc0c0004
	v_lshl_or_b32 v99, v98, 16, v67
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:220
	scratch_load_b32 v67, off, off offset:252
	v_lshl_or_b32 v98, v104, 16, v101
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[105:106], v[98:99], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[107:108], v[98:99], v[1:8] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v67, v67, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:184
	scratch_load_b32 v98, off, off offset:212
	s_waitcnt vmcnt(0)
	v_perm_b32 v98, v98, v0, 0xc0c0004
	scratch_load_b32 v0, off, off offset:148 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v100, v0, v151, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:244
	scratch_load_b32 v99, off, off offset:260
	v_mov_b32_e32 v151, v215
	scratch_load_b32 v215, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_perm_b32 v0, v99, v0, 0xc0c0004
	v_lshl_or_b32 v99, v98, 16, v67
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v98, v0, 16, v100
	ds_load_u8 v0, v182 offset:7424
	ds_load_u8 v67, v182 offset:7168
	ds_load_u8 v102, v182 offset:8064
	ds_load_u8 v103, v182 offset:7808
	ds_load_u8 v104, v182 offset:7552
	ds_load_u8 v105, v182 offset:7296
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v67, v0, 0xc0c0004
	ds_load_u8 v67, v182 offset:7936
	ds_load_u8 v100, v182 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v100, v67, 0xc0c0004
	ds_load_u8 v100, v182 offset:6400
	ds_load_u8 v101, v182 offset:6144
	ds_load_u8 v106, v182 offset:7040
	ds_load_u8 v107, v182 offset:6784
	ds_load_u8 v108, v182 offset:6528
	ds_load_u8 v109, v182 offset:6272
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	ds_load_u8 v101, v182 offset:6912
	ds_load_u8 v110, v182 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v110, v101, 0xc0c0004
	v_lshl_or_b32 v101, v67, 16, v0
	v_perm_b32 v0, v105, v104, 0xc0c0004
	v_perm_b32 v67, v103, v102, 0xc0c0004
	v_perm_b32 v102, v109, v108, 0xc0c0004
	v_perm_b32 v104, v107, v106, 0xc0c0004
	v_lshl_or_b32 v100, v110, 16, v100
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v103, v67, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:96
	scratch_load_b32 v67, off, off offset:104
	v_lshl_or_b32 v102, v104, 16, v102
	v_wmma_i32_16x16x16_iu4 v[57:64], v[100:101], v[98:99], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[102:103], v[98:99], v[49:56] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v67, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:68
	scratch_load_b32 v98, off, off offset:76
	s_waitcnt vmcnt(0)
	v_perm_b32 v67, v98, v67, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v98, off, off offset:140
	scratch_load_b32 v99, off, off offset:144
	s_waitcnt vmcnt(0)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v99, off, off offset:116
	scratch_load_b32 v104, off, off offset:120
	s_waitcnt vmcnt(0)
	v_perm_b32 v104, v104, v99, 0xc0c0004
	v_lshl_or_b32 v99, v67, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:84
	scratch_load_b32 v67, off, off offset:88
	v_lshl_or_b32 v98, v104, 16, v98
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[100:101], v[98:99], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[102:103], v[98:99], v[33:40] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v67, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:60
	scratch_load_b32 v104, off, off offset:64
	s_waitcnt vmcnt(0)
	v_perm_b32 v67, v104, v67, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v104, off, off offset:132
	scratch_load_b32 v105, off, off offset:136
	s_waitcnt vmcnt(0)
	v_perm_b32 v104, v105, v104, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v105, off, off offset:108
	scratch_load_b32 v106, off, off offset:112
	s_waitcnt vmcnt(0)
	v_perm_b32 v106, v106, v105, 0xc0c0004
	v_lshl_or_b32 v105, v67, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:124
	scratch_load_b32 v67, off, off offset:128
	v_lshl_or_b32 v104, v106, 16, v104
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[100:101], v[104:105], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[102:103], v[104:105], v[17:24] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v67, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:92
	scratch_load_b32 v106, off, off offset:100
	s_waitcnt vmcnt(0)
	v_perm_b32 v67, v106, v67, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v106, off, off offset:72
	scratch_load_b32 v107, off, off offset:80
	s_waitcnt vmcnt(0)
	v_perm_b32 v107, v107, v106, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v106, off, off offset:52
	scratch_load_b32 v108, off, off offset:56
	s_waitcnt vmcnt(0)
	v_perm_b32 v108, v108, v106, 0xc0c0004
	v_lshl_or_b32 v106, v67, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v107, v108, 16, v107
	v_wmma_i32_16x16x16_iu4 v[9:16], v[100:101], v[106:107], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[102:103], v[106:107], v[1:8] neg_lo:[1,1,0]
	s_branch .LBB0_5
.LBB0_11:                               ; %Flow421
	.loc	1 0 35 is_stmt 0                ; ragged.py:0:35
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:424
	scratch_load_b32 v33, off, off offset:428
	v_readlane_b32 s24, v255, 0
	v_readlane_b32 s26, v255, 2
	v_readlane_b32 s25, v255, 1
	v_readlane_b32 s15, v255, 4
	v_readlane_b32 s26, v255, 5
	v_readlane_b32 s16, v255, 6
	v_readlane_b32 s27, v255, 3
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v29, 15, v0
.LBB0_12:                               ; %._crit_edge23
	.loc	1 1310 36 is_stmt 1             ; ragged.py:1310:36
	v_lshrrev_b32_e32 v0, 4, v0
	.loc	1 1545 26                       ; ragged.py:1545:26
	s_mul_i32 s2, s16, s23
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	s_waitcnt lgkmcnt(0)
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, 0x31027000
	.loc	1 1310 36 is_stmt 1             ; ragged.py:1310:36
	s_waitcnt vmcnt(0)
	v_and_or_b32 v4, v0, 1, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v7, 0x88, v4
	v_or_b32_e32 v8, 0x86, v4
	v_or_b32_e32 v6, 0x8a, v4
	v_or_b32_e32 v0, 0x8e, v4
	v_or_b32_e32 v5, 0x8c, v4
	v_or_b32_e32 v9, 0x84, v4
	v_or_b32_e32 v10, 0x82, v4
	.loc	1 1310 18 is_stmt 0             ; ragged.py:1310:18
	v_or_b32_e32 v11, s15, v7
	v_or_b32_e32 v12, s15, v8
	v_or_b32_e32 v3, s15, v6
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v15, 12, v4
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s15, v0
	v_or_b32_e32 v2, s15, v5
	v_or_b32_e32 v13, s15, v9
	v_or_b32_e32 v14, s15, v10
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s6, s23, v11
	v_cmp_gt_i32_e64 s7, s23, v12
	.loc	1 1310 36                       ; ragged.py:1310:36
	v_or_b32_e32 v11, 0x80, v4
	v_or_b32_e32 v12, 14, v4
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s1, s23, v3
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v3, s15, v15
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e32 vcc_lo, s23, v1
	v_cmp_gt_i32_e64 s0, s23, v2
	v_cmp_gt_i32_e64 s8, s23, v13
	v_cmp_gt_i32_e64 s9, s23, v14
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s15, v11
	v_or_b32_e32 v2, s15, v12
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v13, 10, v4
	v_or_b32_e32 v14, 8, v4
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s12, s23, v3
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mul_lo_u32 v3, s23, v29
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s10, s23, v1
	v_cmp_gt_i32_e64 s11, s23, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v1, s15, v13
	v_or_b32_e32 v2, s15, v14
	.loc	1 1310 36 is_stmt 0             ; ragged.py:1310:36
	v_or_b32_e32 v16, 6, v4
	v_or_b32_e32 v18, 2, v4
	v_or_b32_e32 v17, 4, v4
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v21, s15, v4
	.loc	1 1312 20 is_stmt 1             ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s13, s23, v1
	v_cmp_gt_i32_e64 s14, s23, v2
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v2, s15, v16
	v_or_b32_e32 v20, s15, v18
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add3_u32 v1, s2, s15, v3
	.loc	1 1310 18                       ; ragged.py:1310:18
	v_or_b32_e32 v19, s15, v17
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s18, s23, v21
	v_cmp_gt_i32_e64 s15, s23, v2
	v_cmp_gt_i32_e64 s17, s23, v20
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v2, v1, v4, 2
	.loc	1 1312 20                       ; ragged.py:1312:20
	v_cmp_gt_i32_e64 s16, s23, v19
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v1, v18, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s21, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v1, v17, 2
	v_cndmask_b32_e64 v22, 0x80000000, v2, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s21, s17
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_add_nc_u32_e32 v19, s26, v1
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_cndmask_b32_e64 v23, 0x80000000, v3, s3
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s3, s21, s16
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_mad_u64_u32 v[2:3], null, s23, 48, v[1:2]
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	s_mov_b32 s26, 0x7ffffffe
	v_add_lshl_u32 v3, v1, v16, 2
	s_clause 0x2
	buffer_store_b32 v252, v22, s[24:27], 0 offen
	buffer_store_b32 v253, v23, s[24:27], 0 offen
	buffer_store_b32 v247, v21, s[24:27], 0 offen
	v_add_lshl_u32 v21, v1, v14, 2
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s3, s21, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v22, v1, v13, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s21, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v23, v1, v15, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s21, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v246, v3, s[24:27], 0 offen
	buffer_store_b32 v206, v21, s[24:27], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s21, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v1, v12, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	v_add_lshl_u32 v21, v1, v11, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s21, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v245, v22, s[24:27], 0 offen
	buffer_store_b32 v244, v23, s[24:27], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v22, v1, v10, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s21, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v23, v1, v9, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s21, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v243, v3, s[24:27], 0 offen
	buffer_store_b32 v242, v21, s[24:27], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s21, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v1, v8, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	v_add_lshl_u32 v21, v1, v7, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s21, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v241, v22, s[24:27], 0 offen
	buffer_store_b32 v240, v23, s[24:27], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v22, v1, v6, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s21, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v23, v1, v5, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s21, s1
	.loc	1 1545 26                       ; ragged.py:1545:26
	v_lshl_add_u32 v20, s23, 5, v1
	.loc	1 1545 17 is_stmt 0             ; ragged.py:1545:17
	v_add_lshl_u32 v1, v1, v0, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20 is_stmt 1             ; ragged.py:1529:20
	s_and_b32 s3, s21, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v239, v3, s[24:27], 0 offen
	buffer_store_b32 v238, v21, s[24:27], 0 offen
	v_add_lshl_u32 v3, v19, v4, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s21, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v19, v18, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s20, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v237, v22, s[24:27], 0 offen
	buffer_store_b32 v236, v23, s[24:27], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v22, v19, v17, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s20, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v235, v1, s[24:27], 0 offen
	buffer_store_b32 v234, v3, s[24:27], 0 offen
	v_add_lshl_u32 v1, v19, v16, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s20, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v19, v14, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s20, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v233, v21, s[24:27], 0 offen
	buffer_store_b32 v232, v22, s[24:27], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s20, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v19, v13, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v22, v19, v15, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s20, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v231, v1, s[24:27], 0 offen
	buffer_store_b32 v230, v3, s[24:27], 0 offen
	v_add_lshl_u32 v1, v19, v12, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s20, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v19, v11, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s20, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v229, v21, s[24:27], 0 offen
	buffer_store_b32 v228, v22, s[24:27], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s20, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v19, v10, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v22, v19, v9, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s20, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v227, v1, s[24:27], 0 offen
	buffer_store_b32 v226, v3, s[24:27], 0 offen
	v_add_lshl_u32 v1, v19, v8, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s20, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v19, v7, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s20, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v225, v21, s[24:27], 0 offen
	buffer_store_b32 v224, v22, s[24:27], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s20, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v21, v19, v6, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v22, v19, v5, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s20, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v223, v1, s[24:27], 0 offen
	buffer_store_b32 v222, v3, s[24:27], 0 offen
	v_add_lshl_u32 v1, v19, v0, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s20, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v20, v4, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s20, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v19, v20, v18, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v169, v21, s[24:27], 0 offen
	buffer_store_b32 v221, v22, s[24:27], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v21, v20, v17, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v168, v1, s[24:27], 0 offen
	buffer_store_b32 v167, v3, s[24:27], 0 offen
	v_add_lshl_u32 v1, v20, v16, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s16
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v20, v14, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s15
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v166, v19, s[24:27], 0 offen
	buffer_store_b32 v165, v21, s[24:27], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v19, v20, v13, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v21, v20, v15, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v164, v1, s[24:27], 0 offen
	buffer_store_b32 v163, v3, s[24:27], 0 offen
	v_add_lshl_u32 v1, v20, v12, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v20, v11, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v162, v19, s[24:27], 0 offen
	buffer_store_b32 v161, v21, s[24:27], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s10
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v19, v20, v10, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v21, v20, v9, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s9
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v160, v1, s[24:27], 0 offen
	buffer_store_b32 v220, v3, s[24:27], 0 offen
	v_add_lshl_u32 v1, v20, v8, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v20, v7, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v159, v19, s[24:27], 0 offen
	buffer_store_b32 v158, v21, s[24:27], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v19, v20, v6, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	s_clause 0x1
	buffer_store_b32 v157, v1, s[24:27], 0 offen
	buffer_store_b32 v156, v3, s[24:27], 0 offen
	v_add_lshl_u32 v3, v2, v4, 2
	v_add_lshl_u32 v4, v2, v18, 2
	scratch_load_b32 v18, off, off offset:20 ; 4-byte Folded Reload
	v_add_lshl_u32 v21, v20, v5, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v1, v20, v0, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v17, v2, v17, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s5, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v219, v19, s[24:27], 0 offen
	buffer_store_b32 v218, v21, s[24:27], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s18
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v9, v2, v9, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s17
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v5, v2, v5, 2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s16
	s_and_b32 s1, s19, s1
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s15
	s_and_b32 s0, s19, s0
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v0, v2, v0, 2
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 vcc_lo, s19, vcc_lo
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_waitcnt vmcnt(0)
	s_clause 0x1
	buffer_store_b32 v18, v1, s[24:27], 0 offen
	buffer_store_b32 v155, v3, s[24:27], 0 offen
	v_add_lshl_u32 v1, v2, v16, 2
	v_add_lshl_u32 v3, v2, v14, 2
	s_clause 0x1
	buffer_store_b32 v216, v4, s[24:27], 0 offen
	buffer_store_b32 v154, v17, s[24:27], 0 offen
	v_add_lshl_u32 v4, v2, v13, 2
	v_add_lshl_u32 v13, v2, v15, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s14
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s13
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_clause 0x1
	buffer_store_b32 v153, v1, s[24:27], 0 offen
	buffer_store_b32 v152, v3, s[24:27], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s12
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v1, v2, v12, 2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s3
	s_clause 0x1
	buffer_store_b32 v151, v4, s[24:27], 0 offen
	buffer_store_b32 v215, v13, s[24:27], 0 offen
	v_add_lshl_u32 v4, v2, v10, 2
	scratch_load_b32 v10, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s11
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_add_lshl_u32 v3, v2, v11, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s10
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s8
	.loc	1 1545 17                       ; ragged.py:1545:17
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s7
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_waitcnt vmcnt(0)
	buffer_store_b32 v10, v1, s[24:27], 0 offen
	scratch_load_b32 v1, off, off offset:12 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	buffer_store_b32 v1, v3, s[24:27], 0 offen
	scratch_load_b32 v3, off, off offset:24 ; 4-byte Folded Reload
	v_add_lshl_u32 v1, v2, v8, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1529 20                       ; ragged.py:1529:20
	s_and_b32 s3, s19, s6
	.loc	1 1545 17                       ; ragged.py:1545:17
	s_waitcnt vmcnt(0)
	buffer_store_b32 v3, v4, s[24:27], 0 offen
	scratch_load_b32 v3, off, off offset:16 ; 4-byte Folded Reload
	v_add_lshl_u32 v4, v2, v6, 2
	s_waitcnt vmcnt(0)
	buffer_store_b32 v3, v9, s[24:27], 0 offen
	v_add_lshl_u32 v3, v2, v7, 2
	v_cndmask_b32_e64 v2, 0x80000000, v4, s1
	v_cndmask_b32_e64 v4, 0x80000000, v5, s0
	scratch_load_b32 v5, off, off offset:4  ; 4-byte Folded Reload
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	s_waitcnt vmcnt(0)
	buffer_store_b32 v5, v1, s[24:27], 0 offen
	scratch_load_b32 v1, off, off           ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	s_clause 0x3
	buffer_store_b32 v1, v3, s[24:27], 0 offen
	buffer_store_b32 v214, v2, s[24:27], 0 offen
	buffer_store_b32 v150, v4, s[24:27], 0 offen
	buffer_store_b32 v149, v0, s[24:27], 0 offen
	.loc	1 1276 5                        ; ragged.py:1276:5
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 436
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
		.amdhsa_next_free_sgpr 105
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 436
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 18424
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 436
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 107
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
	.byte	1                               ; Abbrev [1] 0xb:0x52 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x2c DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1301                            ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1302                            ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
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
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"ragged.py"                     ; string offset=7 ; ragged.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=17 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
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
      - .offset:         60
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 436
    .sgpr_count:     107
    .sgpr_spill_count: 32
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 122
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
