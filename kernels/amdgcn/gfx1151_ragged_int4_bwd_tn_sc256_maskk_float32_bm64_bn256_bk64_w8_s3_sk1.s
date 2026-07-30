	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 970 0                         ; ragged.py:970:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[22:23], s[0:1], 0x30
.Ltmp0:
	.loc	1 998 20 prologue_end           ; ragged.py:998:20
	s_abs_i32 s9, s2
	v_mov_b32_e32 v243, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_and_b32_e32 v19, 15, v243
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:995:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s22, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:996:21 ]
	s_add_i32 s5, s23, 0xff
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_ashr_i32 s6, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_ashr_i32 s7, s5, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_lshr_b32 s6, s6, 26
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_lshr_b32 s7, s7, 24
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_add_i32 s4, s4, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_add_i32 s5, s5, s7
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_ashr_i32 s4, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_ashr_i32 s8, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 997 27 is_stmt 1              ; ragged.py:997:27
	s_mul_i32 s4, s8, s4
	.loc	1 998 20                        ; ragged.py:998:20
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
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_abs_i32 s9, s8
	.loc	1 998 20                        ; ragged.py:998:20
	s_xor_b32 s5, s5, s7
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_cvt_f32_u32 s6, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_lshrrev_b32_e32 v1, 1, v243
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3)
	s_cvt_u32_f32 s10, s6
	.loc	1 998 20                        ; ragged.py:998:20
	s_sub_i32 s6, s5, s7
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s5, 0, s9
	.loc	1 999 22                        ; ragged.py:999:22
	s_mul_i32 s4, s6, s4
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_mul_i32 s5, s5, s10
	.loc	1 999 16                        ; ragged.py:999:16
	s_sub_i32 s2, s2, s4
	.loc	1 1000 17                       ; ragged.py:1000:17
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
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_ashr_i32 s7, s6, 31
	.loc	1 1001 24                       ; ragged.py:1001:24
	s_mul_i32 s8, s9, s8
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_lshl_b64 s[10:11], s[6:7], 2
	.loc	1 1001 17                       ; ragged.py:1001:17
	s_sub_i32 s8, s2, s8
	.loc	1 1003 18                       ; ragged.py:1003:18
	s_lshl_b32 s38, s9, 6
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s10
	s_addc_u32 s5, s5, s11
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v2, s38, v19
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_load_b32 s7, s[4:5], 0x0
	s_mov_b32 s9, 0
	.loc	1 1207 37                       ; ragged.py:1207:37
	s_mul_i32 s2, s6, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v3, 16, v2
	v_or_b32_e32 v4, 32, v2
	v_or_b32_e32 v5, 48, v2
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s20, s22, v2
	v_cmp_gt_i32_e64 s34, s22, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_i32_e64 s5, s22, v4
	v_cmp_gt_i32_e64 s4, s22, v5
	.loc	1 1008 27                       ; ragged.py:1008:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s11, s7, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_cmp_gt_i32 s11, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge23_crit_edge
	.loc	1 1239 26                       ; ragged.py:1239:26
	s_add_i32 s16, s38, s2
	s_lshl_b32 s21, s23, 4
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s9, -1
                                        ; implicit-def: $sgpr16
                                        ; implicit-def: $sgpr21
.LBB0_3:                                ; %Flow631
	s_load_b64 s[24:25], s[0:1], 0x28
	v_dual_mov_b32 v152, 0 :: v_dual_and_b32 v3, 0x70, v1
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v112, 0
	v_mov_b32_e32 v107, 0
	v_mov_b32_e32 v165, 0
	v_mov_b32_e32 v109, 0
	v_mov_b32_e32 v111, 0
	v_mov_b32_e32 v113, 0
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_lshl_b32 s15, s8, 8
	s_cbranch_vccnz .LBB0_13
; %bb.4:                                ; %.lr.ph22
                                        ; implicit-def: $vgpr255 : SGPR spill to VGPR lane
	s_load_b64 s[8:9], s[0:1], 0x38
	s_waitcnt lgkmcnt(0)
	v_writelane_b32 v255, s24, 0
	v_dual_mov_b32 v112, 0 :: v_dual_and_b32 v1, 63, v243
	.loc	1 1113 28 is_stmt 1             ; ragged.py:1113:28
	v_lshrrev_b32_e32 v0, 6, v243
	.loc	1 1008 26                       ; ragged.py:1008:26
	s_lshr_b32 s12, s11, 31
	v_writelane_b32 v255, s25, 1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v2, s38, v1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v65, s15, v243
	.loc	1 1008 26                       ; ragged.py:1008:26
	s_add_i32 s11, s11, s12
	.loc	1 1118 23                       ; ragged.py:1118:23
	s_lshl_b32 s10, s3, 5
	v_writelane_b32 v255, s26, 2
	.loc	1 1008 26                       ; ragged.py:1008:26
	s_ashr_i32 s11, s11, 1
	v_mad_u64_u32 v[126:127], null, s22, v0, v[1:2]
	.loc	1 1113 28                       ; ragged.py:1113:28
	v_or_b32_e32 v4, 12, v0
	v_writelane_b32 v255, s27, 3
	s_load_b256 s[24:31], s[0:1], 0x0
	.loc	1 1150 55                       ; ragged.py:1150:55
	s_lshr_b32 s0, s7, 31
	scratch_store_b32 off, v0, off offset:480 ; 4-byte Folded Spill
	s_add_i32 s0, s7, s0
	v_writelane_b32 v255, s15, 4
	s_ashr_i32 s12, s0, 1
	.loc	1 1113 28                       ; ragged.py:1113:28
	v_or_b32_e32 v0, 28, v0
	s_lshl_b32 s1, s23, 4
	v_mad_u64_u32 v[132:133], null, s22, v4, v[1:2]
	v_writelane_b32 v255, s1, 5
	v_dual_mov_b32 v111, 0 :: v_dual_add_nc_u32 v118, s1, v65
	v_mad_u64_u32 v[136:137], null, s22, v0, v[1:2]
	scratch_store_b32 off, v0, off offset:488 ; 4-byte Folded Spill
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s22, v2
	v_dual_mov_b32 v109, 0 :: v_dual_add_nc_u32 v178, 0, v19
	v_dual_mov_b32 v54, 0 :: v_dual_lshlrev_b32 v7, 1, v243
	s_waitcnt lgkmcnt(0)
	s_and_b32 s41, s25, 0xffff
	s_and_b32 s25, s27, 0xffff
	s_bitcmp1_b32 s7, 0
	v_mov_b32_e32 v110, 0
	s_cselect_b32 s53, -1, 0
	s_add_i32 s1, s38, s2
	v_dual_mov_b32 v62, 0 :: v_dual_add_nc_u32 v187, v178, v3
	v_add_nc_u32_e32 v1, s1, v19
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v52, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v0, v1, s9
	v_add_nc_u32_e32 v2, 16, v1
	scratch_store_b32 off, v4, off offset:484 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v5, 32, v1
	v_lshlrev_b32_e32 v4, 5, v243
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v1, 48, v1
	v_mov_b32_e32 v61, 0
	scratch_store_b32 off, v0, off offset:296 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v2, s9
	scratch_store_b32 off, v3, off offset:492 ; 4-byte Folded Spill
	v_and_b32_e32 v3, 0xf0, v243
	v_and_b32_e32 v4, 32, v4
	v_dual_mov_b32 v59, 0 :: v_dual_and_b32 v2, 28, v7
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v63, 0 :: v_dual_lshlrev_b32 v6, 2, v3
	scratch_store_b32 off, v0, off offset:300 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v5, s9
	v_dual_mov_b32 v50, 0 :: v_dual_lshlrev_b32 v3, 1, v3
	v_add3_u32 v4, 0, v6, v4
	v_mad_u64_u32 v[121:122], null, s23, 3, v[65:66]
	v_mad_u64_u32 v[122:123], null, s23, 5, v[65:66]
	scratch_store_b32 off, v0, off offset:304 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v1, s9
	v_mov_b32_e32 v57, 0
	v_mad_u64_u32 v[123:124], null, s23, 6, v[65:66]
	v_or_b32_e32 v142, 0x700, v243
	v_mov_b32_e32 v55, 0
	v_mov_b32_e32 v95, v121
	v_mad_u64_u32 v[134:135], null, s22, 20, v[126:127]
	scratch_store_b32 off, v0, off offset:308 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, v4, v2
	v_mad_u64_u32 v[137:138], null, s22, 24, v[126:127]
	v_mad_u64_u32 v[127:128], null, s23, 7, v[65:66]
	scratch_store_b32 off, v0, off offset:312 ; 4-byte Folded Spill
	v_dual_mov_b32 v85, v142 :: v_dual_add_nc_u32 v0, 0, v3
	v_mad_u64_u32 v[128:129], null, s23, 9, v[65:66]
	v_mad_u64_u32 v[138:139], null, s23, 10, v[65:66]
	scratch_store_b32 off, v0, off offset:316 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, v122
	v_mad_u64_u32 v[139:140], null, s23, 12, v[65:66]
	v_mad_u64_u32 v[145:146], null, s23, 11, v[65:66]
	.loc	1 1115 19                       ; ragged.py:1115:19
	scratch_store_b64 off, v[0:1], off      ; 8-byte Folded Spill
	v_mov_b32_e32 v0, v123
	v_mad_u64_u32 v[146:147], null, s23, 13, v[65:66]
	v_mad_u64_u32 v[147:148], null, s23, 14, v[65:66]
	scratch_store_b64 off, v[0:1], off offset:8 ; 8-byte Folded Spill
	v_mov_b32_e32 v0, v127
	v_mad_u64_u32 v[148:149], null, s23, 15, v[65:66]
	v_mad_u64_u32 v[166:167], null, s23, 17, v[65:66]
	scratch_store_b64 off, v[0:1], off offset:16 ; 8-byte Folded Spill
	v_mov_b32_e32 v0, v128
	v_mad_u64_u32 v[188:189], null, s23, 18, v[65:66]
	v_mad_u64_u32 v[189:190], null, s23, 19, v[65:66]
	scratch_store_b64 off, v[0:1], off offset:24 ; 8-byte Folded Spill
	v_mov_b32_e32 v0, v138
	v_mad_u64_u32 v[190:191], null, s23, 20, v[65:66]
	v_mad_u64_u32 v[191:192], null, s23, 21, v[65:66]
	scratch_store_b64 off, v[0:1], off offset:32 ; 8-byte Folded Spill
	v_mov_b32_e32 v0, v139
	v_mad_u64_u32 v[192:193], null, s23, 22, v[65:66]
	v_mad_u64_u32 v[193:194], null, s23, 23, v[65:66]
	scratch_store_b64 off, v[0:1], off offset:40 ; 8-byte Folded Spill
	v_mov_b32_e32 v0, v145
	v_mad_u64_u32 v[194:195], null, s23, 24, v[65:66]
	v_mad_u64_u32 v[195:196], null, s23, 25, v[65:66]
	scratch_store_b64 off, v[0:1], off offset:48 ; 8-byte Folded Spill
	v_mov_b32_e32 v0, v146
	v_mad_u64_u32 v[196:197], null, s23, 26, v[65:66]
	v_mad_u64_u32 v[197:198], null, s23, 27, v[65:66]
	scratch_store_b64 off, v[0:1], off offset:56 ; 8-byte Folded Spill
	v_mov_b32_e32 v0, v147
	v_writelane_b32 v255, s1, 6
	v_mad_u64_u32 v[198:199], null, s23, 28, v[65:66]
	v_mad_u64_u32 v[199:200], null, s23, 29, v[65:66]
	scratch_store_b64 off, v[0:1], off offset:64 ; 8-byte Folded Spill
	v_mov_b32_e32 v0, v148
	v_writelane_b32 v255, s10, 7
	v_mad_u64_u32 v[200:201], null, s23, 30, v[65:66]
	v_mad_u64_u32 v[201:202], null, s23, 31, v[65:66]
	scratch_store_b64 off, v[0:1], off offset:72 ; 8-byte Folded Spill
	v_mov_b32_e32 v0, v166
	v_writelane_b32 v255, s11, 8
	v_lshl_add_u32 v130, s22, 2, v126
	v_lshl_add_u32 v131, s22, 3, v126
	v_lshl_add_u32 v133, s22, 4, v126
	scratch_store_b64 off, v[0:1], off offset:80 ; 8-byte Folded Spill
	v_mov_b32_e32 v0, v188
	v_writelane_b32 v255, s12, 9
	v_dual_mov_b32 v113, 0 :: v_dual_add_nc_u32 v114, s23, v65
	v_lshl_add_u32 v115, s23, 1, v65
	scratch_store_b64 off, v[0:1], off offset:88 ; 8-byte Folded Spill
	v_mov_b32_e32 v0, v189
	v_lshl_add_u32 v116, s23, 2, v65
	v_lshl_add_u32 v117, s23, 3, v65
	v_or_b32_e32 v141, 0x300, v243
	v_or_b32_e32 v143, 0x3f0, v243
	scratch_store_b64 off, v[0:1], off offset:96 ; 8-byte Folded Spill
	v_mov_b32_e32 v0, v190
	v_or_b32_e32 v144, 0x7f0, v243
	v_writelane_b32 v255, s34, 10
	.loc	1 1214 37                       ; ragged.py:1214:37
	s_mul_i32 s13, s6, s9
	v_or_b32_e32 v120, 0xb00, v243
	.loc	1 1115 19                       ; ragged.py:1115:19
	scratch_store_b64 off, v[0:1], off offset:104 ; 8-byte Folded Spill
	v_mov_b32_e32 v0, v191
	v_or_b32_e32 v88, 0xf00, v243
	v_or_b32_e32 v89, 0x1300, v243
	v_or_b32_e32 v90, 0x1700, v243
	v_or_b32_e32 v91, 0x1b00, v243
	scratch_store_b64 off, v[0:1], off offset:112 ; 8-byte Folded Spill
	v_mov_b32_e32 v0, v192
	v_or_b32_e32 v93, 0x1f00, v243
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v44, 0
	scratch_store_b64 off, v[0:1], off offset:120 ; 8-byte Folded Spill
	v_dual_mov_b32 v0, v193 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v45, 0
	v_mov_b32_e32 v34, 0
	scratch_store_b64 off, v[0:1], off offset:128 ; 8-byte Folded Spill
	v_dual_mov_b32 v0, v194 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v184, 0
	scratch_store_b64 off, v[0:1], off offset:136 ; 8-byte Folded Spill
	v_dual_mov_b32 v0, v195 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v33, 0
	v_mov_b32_e32 v180, 0
	scratch_store_b64 off, v[0:1], off offset:144 ; 8-byte Folded Spill
	v_dual_mov_b32 v0, v196 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v183, 0
	v_mov_b32_e32 v72, 0
	scratch_store_b64 off, v[0:1], off offset:152 ; 8-byte Folded Spill
	v_dual_mov_b32 v0, v197 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v179, 0
	v_mov_b32_e32 v172, 0
	scratch_store_b64 off, v[0:1], off offset:160 ; 8-byte Folded Spill
	v_dual_mov_b32 v0, v198 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v175, 0
	v_mov_b32_e32 v168, 0
	scratch_store_b64 off, v[0:1], off offset:168 ; 8-byte Folded Spill
	v_dual_mov_b32 v0, v199 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v171, 0
	v_mov_b32_e32 v162, 0
	scratch_store_b64 off, v[0:1], off offset:176 ; 8-byte Folded Spill
	v_dual_mov_b32 v0, v200 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v74, v130 :: v_dual_mov_b32 v155, 0
	v_mov_b32_e32 v76, v132
	v_writelane_b32 v255, s13, 11
	v_dual_mov_b32 v73, v126 :: v_dual_mov_b32 v78, v136
	v_dual_mov_b32 v75, v131 :: v_dual_mov_b32 v82, v117
	v_dual_mov_b32 v77, v133 :: v_dual_mov_b32 v80, v115
	v_dual_mov_b32 v79, v114 :: v_dual_mov_b32 v84, v141
	v_dual_mov_b32 v81, v116 :: v_dual_mov_b32 v86, v143
	v_dual_mov_b32 v83, v118 :: v_dual_mov_b32 v96, v137
	v_dual_mov_b32 v87, v144 :: v_dual_mov_b32 v94, v134
	scratch_store_b64 off, v[0:1], off offset:184 ; 8-byte Folded Spill
	v_mov_b32_e32 v0, v201
	s_add_i32 s54, s11, -1
	.loc	1 1158 43                       ; ragged.py:1158:43
	s_mul_i32 s17, s6, s8
	s_mov_b32 s40, s24
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	s_mov_b32 s24, s26
	s_mov_b32 s18, 0
	s_and_b32 s29, s29, 0xffff
	s_and_b32 s45, s31, 0xffff
	s_mov_b32 s44, s30
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_lshr_b32 s2, s54, 7
	s_mov_b32 s3, 0
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s23, v65
	.loc	1 1115 19                       ; ragged.py:1115:19
	scratch_store_b64 off, v[0:1], off offset:192 ; 8-byte Folded Spill
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v0, off, off offset:296
	scratch_load_b32 v66, off, off offset:300
	scratch_load_b32 v67, off, off offset:304
	scratch_load_b32 v68, off, off offset:308
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s1, s18, s13
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_mov_b32 s30, s42
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s1, s1, s23
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_mov_b32 s31, s43
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v69, v65, s1, 1
	s_mov_b32 s46, s42
	s_mov_b32 s47, s43
	.loc	1 1204 27                       ; ragged.py:1204:27
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_cndmask_b32_e32 v69, 0x80000000, v69, vcc_lo
	.loc	1 1204 27                       ; ragged.py:1204:27
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
	v_cvt_f32_i32_e32 v41, v41
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
	v_cvt_f32_i32_e32 v70, v1
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v71, v2
	v_cvt_f32_i32_e32 v97, v3
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
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v98, v4
	v_cvt_f32_i32_e32 v99, v5
	v_cvt_f32_i32_e32 v100, v6
	v_cvt_f32_i32_e32 v101, v7
	v_cvt_f32_i32_e32 v102, v8
	.loc	1 1220 17                       ; ragged.py:1220:17
	s_add_i32 s1, s18, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_lshl_b32 s3, s1, 7
	s_cmp_lg_u32 s18, s2
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v0, v0, s18, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v66, v66, s18, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v67, v67, s18, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v68, v68, s18, 1
	s_mov_b32 s18, s1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s20
	v_cndmask_b32_e64 v66, 0x80000000, v66, s34
	v_cndmask_b32_e64 v67, 0x80000000, v67, s5
	v_cndmask_b32_e64 v68, 0x80000000, v68, s4
	s_clause 0x3
	buffer_load_u16 v0, v0, s[28:31], 0 offen
	buffer_load_u16 v66, v66, s[28:31], 0 offen
	buffer_load_u16 v67, v67, s[28:31], 0 offen
	buffer_load_u16 v68, v68, s[28:31], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v69, v69, s[44:47], 0 offen
	.loc	1 1218 21                       ; ragged.py:1218:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v0, 16, v0
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v1, 16, v66
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v2, 16, v67
	.loc	1 1211 21                       ; ragged.py:1211:21
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v60, v60, v0 :: v_dual_lshlrev_b32 v3, 16, v69
	v_mul_f32_e32 v57, v57, v0
	v_mul_f32_e32 v58, v58, v0
	v_dual_mul_f32 v41, v41, v1 :: v_dual_lshlrev_b32 v66, 16, v68
	v_dual_mul_f32 v59, v59, v0 :: v_dual_mul_f32 v42, v42, v1
	v_dual_mul_f32 v61, v61, v0 :: v_dual_mul_f32 v44, v44, v1
	v_dual_mul_f32 v62, v62, v0 :: v_dual_mul_f32 v43, v43, v1
	v_dual_mul_f32 v63, v63, v0 :: v_dual_mul_f32 v46, v46, v1
	v_dual_mul_f32 v64, v64, v0 :: v_dual_mul_f32 v45, v45, v1
	v_dual_mul_f32 v49, v49, v0 :: v_dual_mul_f32 v48, v48, v1
	v_dual_mul_f32 v50, v50, v0 :: v_dual_mul_f32 v47, v47, v1
	v_dual_mul_f32 v51, v51, v0 :: v_dual_mul_f32 v34, v34, v1
	v_dual_mul_f32 v52, v52, v0 :: v_dual_mul_f32 v33, v33, v1
	v_dual_mul_f32 v53, v53, v0 :: v_dual_mul_f32 v36, v36, v1
	v_dual_mul_f32 v54, v54, v0 :: v_dual_mul_f32 v35, v35, v1
	v_dual_mul_f32 v55, v55, v0 :: v_dual_mul_f32 v38, v38, v1
	v_dual_mul_f32 v0, v56, v0 :: v_dual_mul_f32 v37, v37, v1
	v_dual_mul_f32 v39, v39, v1 :: v_dual_mul_f32 v26, v26, v2
	v_dual_mul_f32 v40, v40, v1 :: v_dual_mul_f32 v25, v25, v2
	.loc	1 1218 21                       ; ragged.py:1218:21
	scratch_load_b32 v1, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_mul_f32_e32 v27, v27, v2
	v_mul_f32_e32 v28, v28, v2
	v_mul_f32_e32 v30, v30, v2
	v_mul_f32_e32 v32, v32, v2
	v_mul_f32_e32 v18, v18, v2
	v_mul_f32_e32 v21, v21, v2
	v_mul_f32_e32 v22, v22, v2
	v_mul_f32_e32 v23, v23, v2
	v_mul_f32_e32 v24, v24, v2
	v_mul_f32_e32 v56, v9, v66
	v_mul_f32_e32 v67, v10, v66
	v_mul_f32_e32 v68, v11, v66
	v_mul_f32_e32 v69, v12, v66
	v_mul_f32_e32 v103, v13, v66
	v_mul_f32_e32 v104, v14, v66
	v_mul_f32_e32 v105, v15, v66
	v_mul_f32_e32 v106, v16, v66
	.loc	1 1218 21                       ; ragged.py:1218:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v1, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v92, off, off offset:316 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[5:8], v92 offset:16
	ds_load_b128 v[9:12], v92 offset:512
	ds_load_b128 v[13:16], v92 offset:528
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_mul_f32_e32 v29, v29, v2
	v_mul_f32_e32 v31, v31, v2
	v_mul_f32_e32 v17, v17, v2
	v_mul_f32_e32 v19, v19, v2
	v_mul_f32_e32 v20, v20, v2
	.loc	1 1218 21                       ; ragged.py:1218:21
	ds_load_b128 v[1:4], v92
	.loc	1 1219 17                       ; ragged.py:1219:17
	s_waitcnt lgkmcnt(3)
	v_fmac_f32_e32 v165, v62, v6
	v_fmac_f32_e32 v107, v63, v7
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v63, off, off offset:288
	scratch_load_b32 v62, off, off offset:284
	v_fmac_f32_e32 v109, v61, v5
	scratch_load_b32 v61, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_dual_mul_f32 v99, v99, v66 :: v_dual_fmac_f32 v176, v32, v8
	.loc	1 1219 17                       ; ragged.py:1219:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v113, v57, v1 :: v_dual_fmac_f32 v112, v58, v2
	v_fmac_f32_e32 v185, v40, v16
	v_dual_fmac_f32 v111, v59, v3 :: v_dual_fmac_f32 v110, v60, v4
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v60, off, off offset:276
	scratch_load_b32 v59, off, off offset:272
	scratch_load_b32 v58, off, off offset:268
	scratch_load_b32 v57, off, off offset:264
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_dual_mul_f32 v97, v97, v66 :: v_dual_fmac_f32 v182, v27, v3
	.loc	1 1219 17                       ; ragged.py:1219:17
	v_fmac_f32_e32 v186, v39, v15
	v_dual_fmac_f32 v184, v25, v1 :: v_dual_fmac_f32 v179, v30, v6
	v_dual_fmac_f32 v150, v99, v13 :: v_dual_fmac_f32 v175, v18, v10
	v_fmac_f32_e32 v181, v28, v4
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v63, v64, v8 :: v_dual_fmac_f32 v62, v49, v9
	scratch_load_b32 v49, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v61, v50, v10
	scratch_load_b32 v50, off, off offset:240 ; 4-byte Folded Reload
	v_fmac_f32_e32 v171, v22, v14
	v_fmac_f32_e32 v177, v31, v7
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v60, v51, v11 :: v_dual_fmac_f32 v59, v52, v12
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v58, v53, v13 :: v_dual_fmac_f32 v57, v54, v14
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v54, off, off offset:256
	scratch_load_b32 v53, off, off offset:252
	scratch_load_b32 v52, off, off offset:248
	scratch_load_b32 v51, off, off offset:244
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_dual_mul_f32 v71, v71, v66 :: v_dual_fmac_f32 v180, v29, v5
	v_dual_mul_f32 v101, v101, v66 :: v_dual_fmac_f32 v174, v19, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1219 17                       ; ragged.py:1219:17
	v_dual_fmac_f32 v159, v105, v7 :: v_dual_fmac_f32 v154, v71, v10
	v_dual_fmac_f32 v168, v56, v1 :: v_dual_fmac_f32 v155, v101, v15
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v49, v55, v15
	v_fmac_f32_e32 v173, v20, v12
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b32_e32 v55, v49
	scratch_load_b32 v49, off, off offset:236 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v54, v0, v16 :: v_dual_fmac_f32 v53, v41, v1
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v52, v42, v2 :: v_dual_fmac_f32 v51, v43, v3
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v0, off, off offset:232
	scratch_load_b32 v42, off, off offset:216
	scratch_load_b32 v43, off, off offset:220
	scratch_load_b32 v41, off, off offset:212
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_mul_f32_e32 v98, v98, v66
	v_mul_f32_e32 v100, v100, v66
	.loc	1 1219 17                       ; ragged.py:1219:17
	v_fmac_f32_e32 v72, v17, v9
	v_dual_fmac_f32 v161, v103, v5 :: v_dual_fmac_f32 v160, v104, v6
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v49, v45, v5
	scratch_load_b32 v45, off, off offset:228 ; 4-byte Folded Reload
	v_fmac_f32_e32 v50, v44, v4
	scratch_load_b32 v44, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_mul_f32_e32 v70, v70, v66
	.loc	1 1219 17                       ; ragged.py:1219:17
	v_fmac_f32_e32 v172, v21, v13
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v0, v46, v6 :: v_dual_fmac_f32 v43, v33, v9
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v41, v35, v11
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v35, off, off offset:208
	scratch_load_b32 v33, off, off offset:200
	v_fmac_f32_e32 v42, v34, v10
	scratch_load_b32 v34, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_mul_f32_e32 v66, v102, v66
	v_mov_b32_e32 v46, v0
	.loc	1 1219 17                       ; ragged.py:1219:17
	v_dual_fmac_f32 v170, v23, v15 :: v_dual_fmac_f32 v157, v106, v8
	v_dual_fmac_f32 v158, v100, v14 :: v_dual_fmac_f32 v151, v98, v12
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v45, v47, v7
	v_dual_fmac_f32 v163, v68, v3 :: v_dual_fmac_f32 v156, v70, v9
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v44, v48, v8
	v_dual_fmac_f32 v169, v24, v16 :: v_dual_fmac_f32 v164, v67, v2
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v35, v36, v12
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v33, v38, v14
	v_dual_fmac_f32 v153, v97, v11 :: v_dual_fmac_f32 v152, v66, v16
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v34, v37, v13 :: v_dual_fmac_f32 v183, v26, v2
	v_fmac_f32_e32 v162, v69, v4
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_cbranch_scc0 .LBB0_12
.LBB0_6:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 1150 54                       ; ragged.py:1150:54
	s_sub_i32 s1, s12, s3
	s_clause 0x16                           ; 92-byte Folded Spill
	scratch_store_b32 off, v63, off offset:288
	scratch_store_b32 off, v62, off offset:284
	scratch_store_b32 off, v61, off offset:280
	scratch_store_b32 off, v60, off offset:276
	scratch_store_b32 off, v59, off offset:272
	scratch_store_b32 off, v58, off offset:268
	scratch_store_b32 off, v57, off offset:264
	scratch_store_b32 off, v55, off offset:260
	scratch_store_b32 off, v54, off offset:256
	scratch_store_b32 off, v53, off offset:252
	scratch_store_b32 off, v52, off offset:248
	scratch_store_b32 off, v51, off offset:244
	scratch_store_b32 off, v50, off offset:240
	scratch_store_b32 off, v49, off offset:236
	scratch_store_b32 off, v46, off offset:232
	scratch_store_b32 off, v45, off offset:228
	scratch_store_b32 off, v44, off offset:224
	scratch_store_b32 off, v43, off offset:220
	scratch_store_b32 off, v42, off offset:216
	scratch_store_b32 off, v41, off offset:212
	scratch_store_b32 off, v35, off offset:208
	scratch_store_b32 off, v34, off offset:204
	scratch_store_b32 off, v33, off offset:200
	.loc	1 1148 45                       ; ragged.py:1148:45
	v_med3_i32 v1, s1, 0, 0x80
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v5, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1152 41                       ; ragged.py:1152:41
	v_readfirstlane_b32 s1, v1
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v3, 0
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
	.loc	1 1155 27                       ; ragged.py:1155:27
	s_cmp_ge_i32 s10, s6
	scratch_store_b32 off, v107, off offset:292 ; 4-byte Folded Spill
	s_cbranch_scc1 .LBB0_10
; %bb.7:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v92, v91
	s_add_i32 s7, s3, s17
	s_mov_b32 s1, s10
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v113, off offset:476
	scratch_store_b32 off, v112, off offset:472
	scratch_store_b32 off, v111, off offset:468
	scratch_store_b32 off, v110, off offset:464
	scratch_store_b32 off, v109, off offset:460
	scratch_store_b32 off, v165, off offset:456
	scratch_store_b32 off, v186, off offset:452
	scratch_store_b32 off, v185, off offset:448
	scratch_store_b32 off, v184, off offset:444
	scratch_store_b32 off, v183, off offset:440
	scratch_store_b32 off, v182, off offset:436
	scratch_store_b32 off, v181, off offset:432
	scratch_store_b32 off, v180, off offset:428
	scratch_store_b32 off, v179, off offset:424
	scratch_store_b32 off, v177, off offset:420
	scratch_store_b32 off, v176, off offset:416
	scratch_store_b32 off, v72, off offset:412
	scratch_store_b32 off, v175, off offset:408
	scratch_store_b32 off, v174, off offset:404
	scratch_store_b32 off, v173, off offset:400
	scratch_store_b32 off, v172, off offset:396
	scratch_store_b32 off, v171, off offset:392
	scratch_store_b32 off, v170, off offset:388
	scratch_store_b32 off, v169, off offset:384
	scratch_store_b32 off, v168, off offset:380
	scratch_store_b32 off, v164, off offset:376
	scratch_store_b32 off, v163, off offset:372
	scratch_store_b32 off, v162, off offset:368
	scratch_store_b32 off, v161, off offset:364
	scratch_store_b32 off, v160, off offset:360
	scratch_store_b32 off, v159, off offset:356
	scratch_store_b32 off, v158, off offset:352
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v157, off offset:348
	scratch_store_b32 off, v156, off offset:344
	scratch_store_b32 off, v155, off offset:340
	scratch_store_b32 off, v154, off offset:336
	scratch_store_b32 off, v153, off offset:332
	scratch_store_b32 off, v152, off offset:328
	scratch_store_b32 off, v151, off offset:324
	scratch_store_b32 off, v150, off offset:320
	v_dual_mov_b32 v58, v57 :: v_dual_mov_b32 v91, v90
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
	v_dual_mov_b32 v90, v89 :: v_dual_mov_b32 v89, v88
	v_mov_b32_e32 v88, v120
.LBB0_8:                                ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1165 46 is_stmt 1             ; ragged.py:1165:46
	s_add_i32 s8, s7, s1
	.loc	1 1166 38                       ; ragged.py:1166:38
	s_mov_b32 s26, s42
	.loc	1 1165 46                       ; ragged.py:1165:46
	s_mul_i32 s9, s8, s22
	.loc	1 1166 46                       ; ragged.py:1166:46
	s_mul_i32 s8, s8, s23
	.loc	1 1165 46                       ; ragged.py:1165:46
	s_add_i32 s9, s9, s38
	.loc	1 1166 46                       ; ragged.py:1166:46
	v_add_nc_u32_e32 v97, s8, v65
	v_add_nc_u32_e32 v98, s8, v114
	v_add_nc_u32_e32 v99, s8, v115
	v_add_nc_u32_e32 v100, s8, v121
	v_add_nc_u32_e32 v101, s8, v116
	s_waitcnt vmcnt(21)
	v_add_nc_u32_e32 v102, s8, v122
	s_waitcnt vmcnt(17)
	v_add_nc_u32_e32 v103, s8, v123
	v_add_nc_u32_e32 v104, s8, v127
	v_add_nc_u32_e32 v105, s8, v117
	v_add_nc_u32_e32 v106, s8, v128
	.loc	1 1166 38 is_stmt 0             ; ragged.py:1166:38
	v_dual_cndmask_b32 v97, 0x80000000, v97 :: v_dual_cndmask_b32 v98, 0x80000000, v98
	.loc	1 1166 46                       ; ragged.py:1166:46
	v_add_nc_u32_e32 v107, s8, v138
	v_add_nc_u32_e32 v108, s8, v145
	v_add_nc_u32_e32 v109, s8, v139
	v_add_nc_u32_e32 v110, s8, v146
	s_waitcnt vmcnt(16)
	v_add_nc_u32_e32 v111, s8, v147
	s_waitcnt vmcnt(13)
	v_add_nc_u32_e32 v112, s8, v148
	v_add_nc_u32_e32 v113, s8, v118
	v_add_nc_u32_e32 v114, s8, v166
	v_add_nc_u32_e32 v115, s8, v188
	s_waitcnt vmcnt(12)
	v_add_nc_u32_e32 v116, s8, v189
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v117, s8, v190
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v118, s8, v191
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v119, s8, v192
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v120, s8, v193
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v121, s8, v194
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v122, s8, v195
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v123, s8, v196
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v124, s8, v197
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v125, s8, v198
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v126, s8, v199
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v127, s8, v200
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v128, s8, v201
	v_add_nc_u32_e32 v129, s9, v73
	v_add_nc_u32_e32 v130, s9, v74
	v_add_nc_u32_e32 v131, s9, v75
	v_add_nc_u32_e32 v132, s9, v76
	v_add_nc_u32_e32 v133, s9, v77
	v_add_nc_u32_e32 v134, s9, v94
	v_add_nc_u32_e32 v135, s9, v137
	v_add_nc_u32_e32 v136, s9, v78
	.loc	1 1166 38                       ; ragged.py:1166:38
	v_dual_cndmask_b32 v99, 0x80000000, v99 :: v_dual_cndmask_b32 v100, 0x80000000, v100
	s_mov_b32 s27, s43
	v_dual_cndmask_b32 v101, 0x80000000, v101 :: v_dual_cndmask_b32 v102, 0x80000000, v102
	v_dual_cndmask_b32 v103, 0x80000000, v103 :: v_dual_cndmask_b32 v104, 0x80000000, v104
	v_dual_cndmask_b32 v105, 0x80000000, v105 :: v_dual_cndmask_b32 v106, 0x80000000, v106
	v_dual_cndmask_b32 v107, 0x80000000, v107 :: v_dual_cndmask_b32 v108, 0x80000000, v108
	v_dual_cndmask_b32 v109, 0x80000000, v109 :: v_dual_cndmask_b32 v110, 0x80000000, v110
	v_dual_cndmask_b32 v111, 0x80000000, v111 :: v_dual_cndmask_b32 v112, 0x80000000, v112
	v_dual_cndmask_b32 v113, 0x80000000, v113 :: v_dual_cndmask_b32 v114, 0x80000000, v114
	v_dual_cndmask_b32 v115, 0x80000000, v115 :: v_dual_cndmask_b32 v116, 0x80000000, v116
	v_dual_cndmask_b32 v117, 0x80000000, v117 :: v_dual_cndmask_b32 v118, 0x80000000, v118
	v_dual_cndmask_b32 v119, 0x80000000, v119 :: v_dual_cndmask_b32 v120, 0x80000000, v120
	v_dual_cndmask_b32 v121, 0x80000000, v121 :: v_dual_cndmask_b32 v122, 0x80000000, v122
	v_dual_cndmask_b32 v123, 0x80000000, v123 :: v_dual_cndmask_b32 v124, 0x80000000, v124
	v_dual_cndmask_b32 v125, 0x80000000, v125 :: v_dual_cndmask_b32 v126, 0x80000000, v126
	v_dual_cndmask_b32 v127, 0x80000000, v127 :: v_dual_cndmask_b32 v128, 0x80000000, v128
	.loc	1 1165 38 is_stmt 1             ; ragged.py:1165:38
	v_cndmask_b32_e64 v129, 0x80000000, v129, s0
	v_cndmask_b32_e64 v130, 0x80000000, v130, s0
	v_cndmask_b32_e64 v131, 0x80000000, v131, s0
	v_cndmask_b32_e64 v132, 0x80000000, v132, s0
	v_cndmask_b32_e64 v133, 0x80000000, v133, s0
	v_cndmask_b32_e64 v134, 0x80000000, v134, s0
	v_cndmask_b32_e64 v135, 0x80000000, v135, s0
	v_cndmask_b32_e64 v136, 0x80000000, v136, s0
	.loc	1 1166 38                       ; ragged.py:1166:38
	s_clause 0x1f
	buffer_load_u8 v97, v97, s[24:27], 0 offen
	buffer_load_u8 v98, v98, s[24:27], 0 offen
	buffer_load_u8 v150, v99, s[24:27], 0 offen
	buffer_load_u8 v151, v100, s[24:27], 0 offen
	buffer_load_u8 v152, v101, s[24:27], 0 offen
	buffer_load_u8 v153, v102, s[24:27], 0 offen
	buffer_load_u8 v148, v103, s[24:27], 0 offen
	buffer_load_u8 v154, v104, s[24:27], 0 offen
	buffer_load_u8 v155, v105, s[24:27], 0 offen
	buffer_load_u8 v156, v106, s[24:27], 0 offen
	buffer_load_u8 v157, v107, s[24:27], 0 offen
	buffer_load_u8 v158, v108, s[24:27], 0 offen
	buffer_load_u8 v159, v109, s[24:27], 0 offen
	buffer_load_u8 v160, v110, s[24:27], 0 offen
	buffer_load_u8 v161, v111, s[24:27], 0 offen
	buffer_load_u8 v162, v112, s[24:27], 0 offen
	buffer_load_u8 v163, v113, s[24:27], 0 offen
	buffer_load_u8 v164, v114, s[24:27], 0 offen
	buffer_load_u8 v176, v115, s[24:27], 0 offen
	buffer_load_u8 v177, v116, s[24:27], 0 offen
	buffer_load_u8 v179, v117, s[24:27], 0 offen
	buffer_load_u8 v180, v118, s[24:27], 0 offen
	buffer_load_u8 v181, v119, s[24:27], 0 offen
	buffer_load_u8 v182, v120, s[24:27], 0 offen
	buffer_load_u8 v183, v121, s[24:27], 0 offen
	buffer_load_u8 v184, v122, s[24:27], 0 offen
	buffer_load_u8 v185, v123, s[24:27], 0 offen
	buffer_load_u8 v186, v124, s[24:27], 0 offen
	buffer_load_u8 v168, v125, s[24:27], 0 offen
	buffer_load_u8 v0, v126, s[24:27], 0 offen
	buffer_load_u8 v169, v127, s[24:27], 0 offen
	buffer_load_u8 v67, v128, s[24:27], 0 offen
	.loc	1 1165 38                       ; ragged.py:1165:38
	s_clause 0x7
	buffer_load_u8 v99, v129, s[40:43], 0 offen
	buffer_load_u8 v100, v130, s[40:43], 0 offen
	buffer_load_u8 v101, v131, s[40:43], 0 offen
	buffer_load_u8 v102, v133, s[40:43], 0 offen
	buffer_load_u8 v103, v134, s[40:43], 0 offen
	buffer_load_u8 v104, v135, s[40:43], 0 offen
	buffer_load_u8 v105, v136, s[40:43], 0 offen
	buffer_load_u8 v106, v132, s[40:43], 0 offen
	v_add_nc_u32_e32 v170, 0, v243
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v68, 0, v141
	v_add_nc_u32_e32 v171, 0, v142
	.loc	1 1177 25                       ; ragged.py:1177:25
	s_add_i32 s1, s1, 32
	.loc	1 1165 38                       ; ragged.py:1165:38
	s_waitcnt vmcnt(7)
	ds_store_b8 v170, v99
	s_waitcnt vmcnt(6)
	ds_store_b8 v170, v100 offset:256
	s_waitcnt vmcnt(5)
	ds_store_b8 v170, v101 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v170, v102 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b8 v170, v103 offset:1280
	v_add_nc_u32_e32 v99, 0, v143
	s_waitcnt vmcnt(0)
	ds_store_b8 v68, v106
	ds_store_b8 v170, v104 offset:1536
	ds_store_b8 v171, v105
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1167 35                       ; ragged.py:1167:35
	ds_load_u8 v215, v99
	.loc	1 1165 38                       ; ragged.py:1165:38
	v_add_nc_u32_e32 v99, 0, v144
	.loc	1 1167 35                       ; ragged.py:1167:35
	ds_load_u8 v194, v99
	ds_load_u8 v172, v178 offset:192
	ds_load_u8 v173, v178 offset:128
	ds_load_u8 v140, v178 offset:208
	ds_load_u8 v141, v178 offset:144
	ds_load_u8 v132, v178 offset:224
	ds_load_u8 v133, v178 offset:160
	ds_load_u8 v124, v178 offset:240
	ds_load_u8 v125, v178 offset:176
	ds_load_u8 v174, v178 offset:448
	ds_load_u8 v175, v178 offset:384
	ds_load_u8 v142, v178 offset:464
	ds_load_u8 v143, v178 offset:400
	ds_load_u8 v134, v178 offset:480
	ds_load_u8 v135, v178 offset:416
	ds_load_u8 v126, v178 offset:496
	ds_load_u8 v127, v178 offset:432
	ds_load_u8 v66, v178 offset:320
	ds_load_u8 v69, v178 offset:256
	ds_load_u8 v144, v178 offset:336
	ds_load_u8 v145, v178 offset:272
	ds_load_u8 v136, v178 offset:352
	ds_load_u8 v137, v178 offset:288
	ds_load_u8 v128, v178 offset:368
	ds_load_u8 v129, v178 offset:304
	ds_load_u8 v70, v178 offset:64
	ds_load_u8 v146, v178 offset:80
	ds_load_u8 v138, v178 offset:96
	ds_load_u8 v130, v178 offset:112
	ds_load_u8 v71, v178
	ds_load_u8 v147, v178 offset:16
	ds_load_u8 v139, v178 offset:32
	ds_load_u8 v131, v178 offset:48
	ds_load_u8 v115, v178 offset:960
	ds_load_u8 v116, v178 offset:896
	ds_load_u8 v233, v178 offset:1024
	ds_load_u8 v246, v178 offset:976
	ds_load_u8 v248, v178 offset:912
	ds_load_u8 v241, v178 offset:992
	ds_load_u8 v242, v178 offset:928
	ds_load_u8 v240, v178 offset:944
	ds_load_u8 v117, v178 offset:832
	ds_load_u8 v119, v178 offset:768
	ds_load_u8 v253, v178 offset:848
	ds_load_u8 v100, v178 offset:784
	ds_load_u8 v249, v178 offset:864
	ds_load_u8 v251, v178 offset:800
	ds_load_u8 v244, v178 offset:880
	ds_load_u8 v245, v178 offset:816
	ds_load_u8 v120, v178 offset:704
	ds_load_u8 v121, v178 offset:640
	ds_load_u8 v104, v178 offset:720
	ds_load_u8 v105, v178 offset:656
	ds_load_u8 v101, v178 offset:736
	ds_load_u8 v102, v178 offset:672
	ds_load_u8 v252, v178 offset:752
	ds_load_u8 v254, v178 offset:688
	ds_load_u8 v122, v178 offset:576
	ds_load_u8 v123, v178 offset:512
	ds_load_u8 v111, v178 offset:592
	ds_load_u8 v112, v178 offset:528
	ds_load_u8 v108, v178 offset:608
	ds_load_u8 v110, v178 offset:544
	ds_load_u8 v106, v178 offset:624
	ds_load_u8 v107, v178 offset:560
	ds_load_u8 v247, v178 offset:1216
	ds_load_u8 v250, v178 offset:1280
	ds_load_u8 v211, v178 offset:1232
	ds_load_u8 v212, v178 offset:1168
	ds_load_u8 v209, v178 offset:1248
	ds_load_u8 v210, v178 offset:1184
	ds_load_u8 v207, v178 offset:1264
	ds_load_u8 v208, v178 offset:1200
	ds_load_u8 v72, v178 offset:1152
	ds_load_u8 v103, v178 offset:1088
	ds_load_u8 v218, v178 offset:1104
	ds_load_u8 v220, v178 offset:1040
	ds_load_u8 v216, v178 offset:1120
	ds_load_u8 v219, v178 offset:1056
	ds_load_u8 v213, v178 offset:1136
	ds_load_u8 v214, v178 offset:1072
	ds_load_u8 v109, v178 offset:1472
	ds_load_u8 v206, v178 offset:1536
	ds_load_u8 v229, v178 offset:1488
	ds_load_u8 v230, v178 offset:1424
	ds_load_u8 v226, v178 offset:1504
	ds_load_u8 v227, v178 offset:1440
	ds_load_u8 v222, v178 offset:1520
	ds_load_u8 v223, v178 offset:1456
	ds_load_u8 v113, v178 offset:1408
	ds_load_u8 v114, v178 offset:1344
	ds_load_u8 v237, v178 offset:1360
	ds_load_u8 v239, v178 offset:1296
	ds_load_u8 v234, v178 offset:1376
	ds_load_u8 v235, v178 offset:1312
	ds_load_u8 v231, v178 offset:1392
	ds_load_u8 v221, v178 offset:1328
	ds_load_u8 v217, v178 offset:1984
	ds_load_u8 v167, v178 offset:2000
	ds_load_u8 v118, v178 offset:2016
	ds_load_u8 v188, v178 offset:1936
	ds_load_u8 v149, v178 offset:1952
	ds_load_u8 v99, v178 offset:1968
	ds_load_u8 v224, v178 offset:1920
	ds_load_u8 v225, v178 offset:1856
	ds_load_u8 v192, v178 offset:1872
	ds_load_u8 v195, v178 offset:1808
	ds_load_u8 v189, v178 offset:1888
	ds_load_u8 v190, v178 offset:1824
	ds_load_u8 v165, v178 offset:1904
	ds_load_u8 v166, v178 offset:1840
	ds_load_u8 v228, v178 offset:1728
	ds_load_u8 v232, v178 offset:1792
	ds_load_u8 v198, v178 offset:1744
	ds_load_u8 v199, v178 offset:1680
	ds_load_u8 v196, v178 offset:1760
	ds_load_u8 v197, v178 offset:1696
	ds_load_u8 v191, v178 offset:1776
	ds_load_u8 v193, v178 offset:1712
	ds_load_u8 v236, v178 offset:1664
	ds_load_u8 v238, v178 offset:1600
	ds_load_u8 v204, v178 offset:1616
	ds_load_u8 v205, v178 offset:1552
	ds_load_u8 v202, v178 offset:1632
	ds_load_u8 v203, v178 offset:1568
	ds_load_u8 v200, v178 offset:1648
	ds_load_u8 v201, v178 offset:1584
	.loc	1 1166 38                       ; ragged.py:1166:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v68, v151
	ds_store_b8 v171, v154
	v_add_nc_u32_e32 v68, 0, v88
	v_add_nc_u32_e32 v151, 0, v89
	.loc	1 1155 27                       ; ragged.py:1155:27
	s_cmp_lt_i32 s1, s6
	.loc	1 1166 38                       ; ragged.py:1166:38
	ds_store_b8 v68, v158
	ds_store_b8 v151, v162
	v_add_nc_u32_e32 v68, 0, v90
	v_add_nc_u32_e32 v151, 0, v91
	ds_store_b8 v68, v177
	v_add_nc_u32_e32 v68, 0, v92
	ds_store_b8 v151, v182
	ds_store_b8 v170, v97
	ds_store_b8 v170, v98 offset:256
	ds_store_b8 v170, v150 offset:512
	ds_store_b8 v170, v152 offset:1024
	ds_store_b8 v170, v153 offset:1280
	ds_store_b8 v170, v148 offset:1536
	ds_store_b8 v170, v155 offset:2048
	ds_store_b8 v170, v156 offset:2304
	ds_store_b8 v170, v157 offset:2560
	ds_store_b8 v170, v159 offset:3072
	ds_store_b8 v170, v160 offset:3328
	ds_store_b8 v170, v161 offset:3584
	ds_store_b8 v170, v163 offset:4096
	ds_store_b8 v170, v164 offset:4352
	ds_store_b8 v170, v176 offset:4608
	ds_store_b8 v170, v179 offset:5120
	ds_store_b8 v170, v180 offset:5376
	ds_store_b8 v170, v181 offset:5632
	ds_store_b8 v170, v183 offset:6144
	ds_store_b8 v170, v184 offset:6400
	ds_store_b8 v170, v185 offset:6656
	ds_store_b8 v170, v168 offset:7168
	ds_store_b8 v170, v0 offset:7424
	ds_store_b8 v170, v169 offset:7680
	v_add_nc_u32_e32 v0, 0, v93
	ds_store_b8 v68, v186
	ds_store_b8 v0, v67
	.loc	1 1167 35                       ; ragged.py:1167:35
	v_perm_b32 v0, v69, v66, 0xc0c0004
	v_perm_b32 v66, v175, v174, 0xc0c0004
	v_perm_b32 v67, v71, v70, 0xc0c0004
	v_perm_b32 v68, v173, v172, 0xc0c0004
	.loc	1 1166 38                       ; ragged.py:1166:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1167 35                       ; ragged.py:1167:35
	v_lshl_or_b32 v98, v66, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v97, v68, 16, v67
	ds_load_u8 v0, v187 offset:1280
	ds_load_u8 v66, v187 offset:1024
	ds_load_u8 v67, v187 offset:1920
	ds_load_u8 v68, v187 offset:1664
	ds_load_u8 v69, v187 offset:1408
	ds_load_u8 v70, v187 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v66, v0, 0xc0c0004
	ds_load_u8 v66, v187 offset:1792
	ds_load_u8 v71, v187 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v71, v66, 0xc0c0004
	ds_load_u8 v71, v187 offset:256
	ds_load_u8 v148, v187
	ds_load_u8 v152, v187 offset:896
	ds_load_u8 v153, v187 offset:640
	ds_load_u8 v154, v187 offset:384
	ds_load_u8 v155, v187 offset:128
	v_lshl_or_b32 v151, v66, 16, v0
	v_perm_b32 v0, v70, v69, 0xc0c0004
	v_perm_b32 v66, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v71, v148, v71, 0xc0c0004
	ds_load_u8 v148, v187 offset:768
	ds_load_u8 v150, v187 offset:512
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v68, v153, v152, 0xc0c0004
	v_lshl_or_b32 v153, v66, 16, v0
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v67, v155, v154, 0xc0c0004
	v_perm_b32 v0, v145, v144, 0xc0c0004
	v_perm_b32 v66, v143, v142, 0xc0c0004
	v_dual_mov_b32 v144, v87 :: v_dual_mov_b32 v143, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v152, v68, 16, v67
	v_perm_b32 v67, v147, v146, 0xc0c0004
	v_perm_b32 v68, v141, v140, 0xc0c0004
	v_lshl_or_b32 v141, v66, 16, v0
	v_perm_b32 v0, v137, v136, 0xc0c0004
	v_perm_b32 v66, v135, v134, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[49:56], v[152:153], v[97:98], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v140, v68, 16, v67
	v_perm_b32 v67, v139, v138, 0xc0c0004
	v_perm_b32 v68, v133, v132, 0xc0c0004
	v_lshl_or_b32 v133, v66, 16, v0
	v_perm_b32 v0, v129, v128, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v150, v148, 0xc0c0004
	v_perm_b32 v66, v127, v126, 0xc0c0004
	v_lshl_or_b32 v132, v68, 16, v67
	v_perm_b32 v67, v131, v130, 0xc0c0004
	v_perm_b32 v68, v125, v124, 0xc0c0004
	v_lshl_or_b32 v150, v148, 16, v71
	v_lshl_or_b32 v125, v66, 16, v0
	v_perm_b32 v0, v119, v117, 0xc0c0004
	v_perm_b32 v66, v116, v115, 0xc0c0004
	v_lshl_or_b32 v124, v68, 16, v67
	v_perm_b32 v67, v123, v122, 0xc0c0004
	v_perm_b32 v68, v121, v120, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[150:151], v[97:98], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v98, v66, 16, v0
	v_wmma_i32_16x16x16_iu4 v[41:48], v[150:151], v[140:141], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[152:153], v[140:141], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v97, v68, 16, v67
	ds_load_u8 v0, v187 offset:3328
	ds_load_u8 v66, v187 offset:3072
	ds_load_u8 v67, v187 offset:3968
	ds_load_u8 v68, v187 offset:3712
	ds_load_u8 v69, v187 offset:3456
	ds_load_u8 v70, v187 offset:3200
	v_wmma_i32_16x16x16_iu4 v[25:32], v[150:151], v[132:133], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[152:153], v[132:133], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[150:151], v[124:125], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[152:153], v[124:125], v[1:8] neg_lo:[1,1,0]
	s_clause 0x8                            ; 72-byte Folded Reload
	scratch_load_b64 v[145:146], off, off offset:48
	scratch_load_b64 v[138:139], off, off offset:32
	scratch_load_b64 v[127:128], off, off offset:16
	scratch_load_b64 v[122:123], off, off
	scratch_load_b64 v[146:147], off, off offset:56
	scratch_load_b64 v[128:129], off, off offset:24
	scratch_load_b64 v[139:140], off, off offset:40
	scratch_load_b64 v[123:124], off, off offset:8
	scratch_load_b64 v[147:148], off, off offset:64
	v_dual_mov_b32 v142, v85 :: v_dual_mov_b32 v137, v96
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v66, v0, 0xc0c0004
	ds_load_u8 v66, v187 offset:3840
	ds_load_u8 v71, v187 offset:3584
	v_mov_b32_e32 v141, v84
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v71, v66, 0xc0c0004
	ds_load_u8 v71, v187 offset:2304
	ds_load_u8 v115, v187 offset:2048
	ds_load_u8 v117, v187 offset:2944
	ds_load_u8 v119, v187 offset:2688
	ds_load_u8 v120, v187 offset:2432
	ds_load_u8 v121, v187 offset:2176
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v71, v115, v71, 0xc0c0004
	ds_load_u8 v115, v187 offset:2816
	ds_load_u8 v116, v187 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	v_lshl_or_b32 v116, v66, 16, v0
	v_perm_b32 v0, v70, v69, 0xc0c0004
	v_perm_b32 v66, v68, v67, 0xc0c0004
	v_perm_b32 v67, v121, v120, 0xc0c0004
	v_perm_b32 v68, v119, v117, 0xc0c0004
	v_lshl_or_b32 v115, v115, 16, v71
	v_mov_b32_e32 v121, v95
	v_lshl_or_b32 v120, v66, 16, v0
	v_perm_b32 v0, v100, v253, 0xc0c0004
	v_lshl_or_b32 v119, v68, 16, v67
	v_perm_b32 v66, v248, v246, 0xc0c0004
	v_perm_b32 v67, v112, v111, 0xc0c0004
	v_perm_b32 v68, v105, v104, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[115:116], v[97:98], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[119:120], v[97:98], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v105, v66, 16, v0
	v_perm_b32 v0, v251, v249, 0xc0c0004
	v_lshl_or_b32 v104, v68, 16, v67
	v_perm_b32 v66, v242, v241, 0xc0c0004
	v_perm_b32 v67, v110, v108, 0xc0c0004
	v_perm_b32 v68, v102, v101, 0xc0c0004
	v_mov_b32_e32 v117, v82
	v_wmma_i32_16x16x16_iu4 v[41:48], v[115:116], v[104:105], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v101, v66, 16, v0
	v_perm_b32 v0, v107, v106, 0xc0c0004
	v_lshl_or_b32 v100, v68, 16, v67
	v_perm_b32 v66, v254, v252, 0xc0c0004
	v_perm_b32 v67, v245, v244, 0xc0c0004
	v_perm_b32 v68, v240, v215, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[119:120], v[104:105], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[115:116], v[100:101], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v106, v66, 16, v0
	v_perm_b32 v0, v250, v114, 0xc0c0004
	v_lshl_or_b32 v107, v68, 16, v67
	v_perm_b32 v66, v113, v109, 0xc0c0004
	v_perm_b32 v67, v233, v103, 0xc0c0004
	v_perm_b32 v68, v72, v247, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[119:120], v[100:101], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[115:116], v[106:107], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v98, v66, 16, v0
	v_wmma_i32_16x16x16_iu4 v[1:8], v[119:120], v[106:107], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v97, v68, 16, v67
	ds_load_u8 v0, v187 offset:5376
	ds_load_u8 v66, v187 offset:5120
	ds_load_u8 v67, v187 offset:6016
	ds_load_u8 v68, v187 offset:5760
	ds_load_u8 v69, v187 offset:5504
	ds_load_u8 v70, v187 offset:5248
	v_dual_mov_b32 v116, v81 :: v_dual_mov_b32 v115, v80
	v_mov_b32_e32 v114, v79
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v66, v0, 0xc0c0004
	ds_load_u8 v66, v187 offset:5888
	ds_load_u8 v71, v187 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v71, v66, 0xc0c0004
	ds_load_u8 v71, v187 offset:4352
	ds_load_u8 v100, v187 offset:4096
	ds_load_u8 v102, v187 offset:4992
	ds_load_u8 v103, v187 offset:4736
	ds_load_u8 v104, v187 offset:4480
	ds_load_u8 v105, v187 offset:4224
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v71, v100, v71, 0xc0c0004
	ds_load_u8 v100, v187 offset:4864
	ds_load_u8 v101, v187 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	v_lshl_or_b32 v101, v66, 16, v0
	v_perm_b32 v0, v70, v69, 0xc0c0004
	v_perm_b32 v66, v68, v67, 0xc0c0004
	v_perm_b32 v67, v105, v104, 0xc0c0004
	v_perm_b32 v68, v103, v102, 0xc0c0004
	v_lshl_or_b32 v100, v100, 16, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v103, v66, 16, v0
	v_perm_b32 v0, v239, v237, 0xc0c0004
	v_lshl_or_b32 v102, v68, 16, v67
	v_perm_b32 v66, v230, v229, 0xc0c0004
	v_perm_b32 v67, v220, v218, 0xc0c0004
	v_perm_b32 v68, v212, v211, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[100:101], v[97:98], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[102:103], v[97:98], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v105, v66, 16, v0
	v_perm_b32 v0, v235, v234, 0xc0c0004
	v_lshl_or_b32 v104, v68, 16, v67
	v_perm_b32 v66, v227, v226, 0xc0c0004
	v_perm_b32 v67, v219, v216, 0xc0c0004
	v_perm_b32 v68, v210, v209, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[100:101], v[104:105], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v107, v66, 16, v0
	v_perm_b32 v0, v221, v231, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v106, v68, 16, v67
	v_perm_b32 v66, v223, v222, 0xc0c0004
	v_perm_b32 v67, v214, v213, 0xc0c0004
	v_perm_b32 v68, v208, v207, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[102:103], v[104:105], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[100:101], v[106:107], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v109, v66, 16, v0
	v_perm_b32 v0, v232, v225, 0xc0c0004
	v_lshl_or_b32 v108, v68, 16, v67
	v_perm_b32 v66, v224, v217, 0xc0c0004
	v_perm_b32 v67, v206, v238, 0xc0c0004
	v_perm_b32 v68, v236, v228, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[102:103], v[106:107], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[100:101], v[108:109], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v98, v66, 16, v0
	v_wmma_i32_16x16x16_iu4 v[1:8], v[102:103], v[108:109], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v97, v68, 16, v67
	ds_load_u8 v0, v187 offset:7424
	ds_load_u8 v66, v187 offset:7168
	ds_load_u8 v67, v187 offset:8064
	ds_load_u8 v68, v187 offset:7808
	ds_load_u8 v69, v187 offset:7552
	ds_load_u8 v70, v187 offset:7296
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v66, v0, 0xc0c0004
	ds_load_u8 v66, v187 offset:7936
	ds_load_u8 v71, v187 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v71, v66, 0xc0c0004
	ds_load_u8 v71, v187 offset:6400
	ds_load_u8 v100, v187 offset:6144
	ds_load_u8 v102, v187 offset:7040
	ds_load_u8 v103, v187 offset:6784
	ds_load_u8 v104, v187 offset:6528
	ds_load_u8 v105, v187 offset:6272
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v71, v100, v71, 0xc0c0004
	ds_load_u8 v100, v187 offset:6912
	ds_load_u8 v101, v187 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	v_lshl_or_b32 v101, v66, 16, v0
	v_perm_b32 v66, v68, v67, 0xc0c0004
	v_perm_b32 v67, v105, v104, 0xc0c0004
	v_perm_b32 v68, v103, v102, 0xc0c0004
	v_perm_b32 v0, v70, v69, 0xc0c0004
	v_lshl_or_b32 v100, v100, 16, v71
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v102, v68, 16, v67
	v_perm_b32 v67, v205, v204, 0xc0c0004
	v_perm_b32 v68, v199, v198, 0xc0c0004
	v_lshl_or_b32 v103, v66, 16, v0
	v_perm_b32 v0, v195, v192, 0xc0c0004
	v_perm_b32 v66, v188, v167, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[100:101], v[97:98], v[57:64] neg_lo:[1,1,0]
	v_lshl_or_b32 v104, v68, 16, v67
	v_perm_b32 v67, v203, v202, 0xc0c0004
	v_perm_b32 v68, v197, v196, 0xc0c0004
	v_lshl_or_b32 v105, v66, 16, v0
	v_perm_b32 v0, v190, v189, 0xc0c0004
	v_perm_b32 v66, v149, v118, 0xc0c0004
	scratch_load_b64 v[188:189], off, off offset:88 ; 8-byte Folded Reload
	v_lshl_or_b32 v106, v68, 16, v67
	v_perm_b32 v67, v166, v165, 0xc0c0004
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[166:167], off, off offset:80
	scratch_load_b64 v[148:149], off, off offset:72
	scratch_load_b64 v[189:190], off, off offset:96
	v_lshl_or_b32 v107, v66, 16, v0
	v_perm_b32 v66, v193, v191, 0xc0c0004
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[190:191], off, off offset:104
	scratch_load_b64 v[191:192], off, off offset:112
	scratch_load_b64 v[192:193], off, off offset:120
	v_perm_b32 v68, v99, v194, 0xc0c0004
	s_clause 0x5                            ; 48-byte Folded Reload
	scratch_load_b64 v[193:194], off, off offset:128
	scratch_load_b64 v[194:195], off, off offset:136
	scratch_load_b64 v[195:196], off, off offset:144
	scratch_load_b64 v[196:197], off, off offset:152
	scratch_load_b64 v[197:198], off, off offset:160
	scratch_load_b64 v[198:199], off, off offset:168
	v_perm_b32 v0, v201, v200, 0xc0c0004
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[199:200], off, off offset:176
	scratch_load_b64 v[200:201], off, off offset:184
	scratch_load_b64 v[201:202], off, off offset:192
	v_lshl_or_b32 v109, v68, 16, v67
	v_lshl_or_b32 v108, v66, 16, v0
	v_mov_b32_e32 v118, v83
	v_wmma_i32_16x16x16_iu4 v[49:56], v[102:103], v[97:98], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[100:101], v[104:105], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[102:103], v[104:105], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[100:101], v[106:107], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[102:103], v[106:107], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[100:101], v[108:109], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[102:103], v[108:109], v[1:8] neg_lo:[1,1,0]
	.loc	1 1155 27                       ; ragged.py:1155:27
	s_cbranch_scc1 .LBB0_8
; %bb.9:                                ; %Flow
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	s_clause 0x1f                           ; 128-byte Folded Reload
	scratch_load_b32 v150, off, off offset:320
	scratch_load_b32 v151, off, off offset:324
	scratch_load_b32 v152, off, off offset:328
	scratch_load_b32 v153, off, off offset:332
	scratch_load_b32 v154, off, off offset:336
	scratch_load_b32 v155, off, off offset:340
	scratch_load_b32 v156, off, off offset:344
	scratch_load_b32 v157, off, off offset:348
	scratch_load_b32 v158, off, off offset:352
	scratch_load_b32 v159, off, off offset:356
	scratch_load_b32 v160, off, off offset:360
	scratch_load_b32 v161, off, off offset:364
	scratch_load_b32 v162, off, off offset:368
	scratch_load_b32 v163, off, off offset:372
	scratch_load_b32 v164, off, off offset:376
	scratch_load_b32 v168, off, off offset:380
	scratch_load_b32 v169, off, off offset:384
	scratch_load_b32 v170, off, off offset:388
	scratch_load_b32 v171, off, off offset:392
	scratch_load_b32 v172, off, off offset:396
	scratch_load_b32 v173, off, off offset:400
	scratch_load_b32 v174, off, off offset:404
	scratch_load_b32 v175, off, off offset:408
	scratch_load_b32 v72, off, off offset:412
	scratch_load_b32 v176, off, off offset:416
	scratch_load_b32 v177, off, off offset:420
	scratch_load_b32 v179, off, off offset:424
	scratch_load_b32 v180, off, off offset:428
	scratch_load_b32 v181, off, off offset:432
	scratch_load_b32 v182, off, off offset:436
	scratch_load_b32 v183, off, off offset:440
	scratch_load_b32 v184, off, off offset:444
	s_clause 0x8                            ; 36-byte Folded Reload
	scratch_load_b32 v185, off, off offset:448
	scratch_load_b32 v186, off, off offset:452
	scratch_load_b32 v107, off, off offset:292
	scratch_load_b32 v165, off, off offset:456
	scratch_load_b32 v109, off, off offset:460
	scratch_load_b32 v110, off, off offset:464
	scratch_load_b32 v111, off, off offset:468
	scratch_load_b32 v112, off, off offset:472
	scratch_load_b32 v113, off, off offset:476
	v_dual_mov_b32 v136, v78 :: v_dual_mov_b32 v131, v75
	v_dual_mov_b32 v134, v94 :: v_dual_mov_b32 v133, v77
	v_mov_b32_e32 v130, v74
	v_mov_b32_e32 v126, v73
	v_mov_b32_e32 v132, v76
	v_mov_b32_e32 v120, v88
	v_dual_mov_b32 v88, v89 :: v_dual_mov_b32 v89, v90
	v_dual_mov_b32 v90, v91 :: v_dual_mov_b32 v91, v92
.LBB0_10:                               ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1146 25 is_stmt 1             ; ragged.py:1146:25
	s_sub_i32 s6, s11, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1144 42                       ; ragged.py:1144:42
	s_min_i32 s27, s6, 0x80
	.loc	1 1178 24                       ; ragged.py:1178:24
	s_cmp_ge_i32 s1, s27
	.loc	1 1178 21 is_stmt 0             ; ragged.py:1178:21
	s_cbranch_scc1 .LBB0_5
; %bb.11:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 21                          ; ragged.py:0:21
	scratch_load_b32 v69, off, off offset:480 ; 4-byte Folded Reload
	.loc	1 1179 30 is_stmt 1             ; ragged.py:1179:30
	s_add_i32 s26, s1, s3
	s_mov_b32 s9, s2
	s_or_b32 s30, s26, 1
	s_or_b32 s31, s26, 2
	s_or_b32 s35, s26, 3
	s_or_b32 s46, s26, 4
	s_or_b32 s47, s26, 5
	s_or_b32 s49, s26, 6
	s_or_b32 s50, s26, 7
	s_or_b32 s56, s26, 8
	s_or_b32 s57, s26, 9
	s_or_b32 s58, s26, 10
	s_or_b32 s59, s26, 11
	s_or_b32 s60, s26, 12
	s_or_b32 s61, s26, 13
	s_or_b32 s62, s26, 14
	s_or_b32 s63, s26, 15
	s_or_b32 s64, s26, 16
	s_or_b32 s77, s26, 17
	s_or_b32 s78, s26, 18
	s_or_b32 s79, s26, 19
	s_or_b32 s48, s26, 20
	s_or_b32 s55, s26, 21
	s_or_b32 s34, s26, 22
	s_or_b32 s2, s26, 23
	s_or_b32 s21, s26, 24
	s_mov_b32 s7, s4
	s_or_b32 s4, s26, 25
	s_mov_b32 s8, s5
	s_or_b32 s5, s26, 26
	s_or_b32 s39, s26, 27
	s_or_b32 s36, s26, 28
	s_or_b32 s37, s26, 29
	s_or_b32 s52, s26, 31
	.loc	1 1188 35                       ; ragged.py:1188:35
	s_sub_i32 s33, s30, s3
	s_sub_i32 s51, s31, s3
	s_sub_i32 s65, s35, s3
	s_sub_i32 s66, s46, s3
	s_sub_i32 s67, s47, s3
	s_sub_i32 s68, s49, s3
	s_sub_i32 s69, s50, s3
	s_sub_i32 s70, s56, s3
	s_sub_i32 s71, s57, s3
	s_sub_i32 s72, s58, s3
	s_sub_i32 s73, s59, s3
	s_sub_i32 s74, s60, s3
	s_sub_i32 s75, s61, s3
	s_sub_i32 s76, s62, s3
	s_sub_i32 s80, s63, s3
	s_sub_i32 s81, s64, s3
	s_sub_i32 s82, s77, s3
	s_sub_i32 s83, s78, s3
	s_sub_i32 s84, s79, s3
	s_sub_i32 s85, s48, s3
	s_sub_i32 s86, s55, s3
	s_sub_i32 s87, s34, s3
	s_sub_i32 s88, s2, s3
	s_sub_i32 s10, s21, s3
	s_sub_i32 s11, s4, s3
	s_sub_i32 s12, s5, s3
	s_sub_i32 s13, s39, s3
	s_sub_i32 s14, s36, s3
	s_sub_i32 s15, s37, s3
	.loc	1 1192 38                       ; ragged.py:1192:38
	s_waitcnt vmcnt(60)
	v_add_nc_u32_e32 v140, 0, v243
	v_add_nc_u32_e32 v119, 0, v142
	s_waitcnt vmcnt(5)
	v_mov_b32_e32 v149, v109
	.loc	1 1179 30                       ; ragged.py:1179:30
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v101, s26, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1188 35                       ; ragged.py:1188:35
	v_subrev_nc_u32_e32 v0, s3, v101
	.loc	1 1188 34 is_stmt 0             ; ragged.py:1188:34
	v_cmp_gt_i32_e64 s1, s27, v0
	.loc	1 1113 28 is_stmt 1             ; ragged.py:1113:28
	v_or_b32_e32 v0, 4, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_writelane_b32 v255, s1, 12
	.loc	1 1179 30                       ; ragged.py:1179:30
	v_or_b32_e32 v0, s26, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1188 35                       ; ragged.py:1188:35
	v_subrev_nc_u32_e32 v66, s3, v0
	.loc	1 1188 34 is_stmt 0             ; ragged.py:1188:34
	v_cmp_gt_i32_e64 s1, s27, v66
	.loc	1 1113 28 is_stmt 1             ; ragged.py:1113:28
	v_or_b32_e32 v66, 8, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_writelane_b32 v255, s1, 13
	.loc	1 1179 30                       ; ragged.py:1179:30
	v_or_b32_e32 v66, s26, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1188 35                       ; ragged.py:1188:35
	v_subrev_nc_u32_e32 v67, s3, v66
	.loc	1 1188 34 is_stmt 0             ; ragged.py:1188:34
	v_cmp_gt_i32_e64 s1, s27, v67
	.loc	1 1179 30 is_stmt 1             ; ragged.py:1179:30
	scratch_load_b32 v67, off, off offset:484 ; 4-byte Folded Reload
	v_writelane_b32 v255, s1, 14
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v67, s26, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1188 35                       ; ragged.py:1188:35
	v_subrev_nc_u32_e32 v68, s3, v67
	.loc	1 1188 34 is_stmt 0             ; ragged.py:1188:34
	v_cmp_gt_i32_e64 s1, s27, v68
	.loc	1 1113 28 is_stmt 1             ; ragged.py:1113:28
	v_or_b32_e32 v68, 16, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_writelane_b32 v255, s1, 15
	.loc	1 1179 30                       ; ragged.py:1179:30
	v_or_b32_e32 v100, s26, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1188 35                       ; ragged.py:1188:35
	v_subrev_nc_u32_e32 v68, s3, v100
	.loc	1 1188 34 is_stmt 0             ; ragged.py:1188:34
	v_cmp_gt_i32_e64 s1, s27, v68
	.loc	1 1113 28 is_stmt 1             ; ragged.py:1113:28
	v_or_b32_e32 v68, 20, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_writelane_b32 v255, s1, 16
	.loc	1 1179 30                       ; ragged.py:1179:30
	v_or_b32_e32 v97, s26, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1188 35                       ; ragged.py:1188:35
	v_subrev_nc_u32_e32 v68, s3, v97
	.loc	1 1188 34 is_stmt 0             ; ragged.py:1188:34
	v_cmp_gt_i32_e64 s1, s27, v68
	.loc	1 1113 28 is_stmt 1             ; ragged.py:1113:28
	v_or_b32_e32 v68, 24, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_writelane_b32 v255, s1, 17
	.loc	1 1179 30                       ; ragged.py:1179:30
	v_or_b32_e32 v99, s26, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1188 35                       ; ragged.py:1188:35
	v_subrev_nc_u32_e32 v68, s3, v99
	.loc	1 1188 34 is_stmt 0             ; ragged.py:1188:34
	v_cmp_gt_i32_e64 s1, s27, v68
	.loc	1 1179 30 is_stmt 1             ; ragged.py:1179:30
	scratch_load_b32 v68, off, off offset:488 ; 4-byte Folded Reload
	v_writelane_b32 v255, s1, 18
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v98, s26, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1188 35                       ; ragged.py:1188:35
	v_subrev_nc_u32_e32 v68, s3, v98
	.loc	1 1189 60                       ; ragged.py:1189:60
	v_cmp_eq_u32_e64 s19, s54, v98
	.loc	1 1188 34                       ; ragged.py:1188:34
	v_cmp_gt_i32_e64 s1, s27, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1189 60                       ; ragged.py:1189:60
	v_writelane_b32 v255, s1, 19
	v_cmp_eq_u32_e64 s1, s54, v101
	v_writelane_b32 v255, s1, 20
	v_cmp_eq_u32_e64 s1, s54, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_writelane_b32 v255, s1, 21
	v_cmp_eq_u32_e64 s1, s54, v66
	v_writelane_b32 v255, s1, 22
	v_cmp_eq_u32_e64 s1, s54, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_writelane_b32 v255, s1, 23
	v_cmp_eq_u32_e64 s1, s54, v100
	v_writelane_b32 v255, s1, 24
	v_cmp_eq_u32_e64 s1, s54, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_writelane_b32 v255, s1, 25
	v_cmp_eq_u32_e64 s1, s54, v99
	v_writelane_b32 v255, s1, 26
	.loc	1 1179 30                       ; ragged.py:1179:30
	s_or_b32 s1, s26, 30
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1188 35                       ; ragged.py:1188:35
	s_sub_i32 s16, s1, s3
	s_sub_i32 s3, s52, s3
	.loc	1 1188 34 is_stmt 0             ; ragged.py:1188:34
	s_cmp_lt_i32 s33, s27
	s_cselect_b32 s101, -1, 0
	s_cmp_lt_i32 s51, s27
	s_cselect_b32 s6, -1, 0
	s_cmp_lt_i32 s65, s27
	s_cselect_b32 s65, -1, 0
	s_cmp_lt_i32 s66, s27
	s_cselect_b32 s66, -1, 0
	s_cmp_lt_i32 s67, s27
	s_cselect_b32 s67, -1, 0
	s_cmp_lt_i32 s68, s27
	s_cselect_b32 s68, -1, 0
	s_cmp_lt_i32 s69, s27
	s_cselect_b32 s51, -1, 0
	s_cmp_lt_i32 s70, s27
	s_cselect_b32 s100, -1, 0
	s_cmp_lt_i32 s71, s27
	s_cselect_b32 s99, -1, 0
	s_cmp_lt_i32 s72, s27
	s_cselect_b32 s97, -1, 0
	s_cmp_lt_i32 s73, s27
	s_cselect_b32 s102, -1, 0
	s_cmp_lt_i32 s74, s27
	s_cselect_b32 s98, -1, 0
	s_cmp_lt_i32 s75, s27
	s_cselect_b32 s96, -1, 0
	s_cmp_lt_i32 s76, s27
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s80, s27
	s_cselect_b32 s103, -1, 0
	s_cmp_lt_i32 s81, s27
	s_cselect_b32 s95, -1, 0
	s_cmp_lt_i32 s82, s27
	s_cselect_b32 s93, -1, 0
	s_cmp_lt_i32 s83, s27
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s84, s27
	s_cselect_b32 s104, -1, 0
	s_cmp_lt_i32 s85, s27
	s_cselect_b32 s94, -1, 0
	s_cmp_lt_i32 s86, s27
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 s87, s27
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s88, s27
	s_cselect_b32 vcc_hi, -1, 0
	s_cmp_lt_i32 s10, s27
	s_cselect_b32 s88, -1, 0
	s_cmp_lt_i32 s11, s27
	s_cselect_b32 s86, -1, 0
	s_cmp_lt_i32 s12, s27
	s_cselect_b32 s85, -1, 0
	s_cmp_lt_i32 s13, s27
	s_cselect_b32 s33, -1, 0
	s_cmp_lt_i32 s14, s27
	s_cselect_b32 s87, -1, 0
	s_cmp_lt_i32 s15, s27
	s_cselect_b32 s84, -1, 0
	s_cmp_lt_i32 s16, s27
	s_cselect_b32 s83, -1, 0
	s_cmp_lt_i32 s3, s27
	.loc	1 1191 38 is_stmt 1             ; ragged.py:1191:38
	s_mov_b32 s27, s43
	.loc	1 1188 34                       ; ragged.py:1188:34
	s_cselect_b32 s82, -1, 0
	.loc	1 1189 60                       ; ragged.py:1189:60
	s_cmp_eq_u32 s26, s54
	s_cselect_b32 s76, -1, 0
	s_cmp_eq_u32 s30, s54
	s_cselect_b32 s74, -1, 0
	s_cmp_eq_u32 s31, s54
	s_cselect_b32 s71, -1, 0
	s_cmp_eq_u32 s35, s54
	s_cselect_b32 s14, -1, 0
	s_cmp_eq_u32 s46, s54
	s_cselect_b32 s75, -1, 0
	s_cmp_eq_u32 s47, s54
	s_cselect_b32 s72, -1, 0
	s_cmp_eq_u32 s49, s54
	s_cselect_b32 s13, -1, 0
	s_cmp_eq_u32 s50, s54
	s_cselect_b32 s49, -1, 0
	s_cmp_eq_u32 s56, s54
	s_cselect_b32 s73, -1, 0
	s_cmp_eq_u32 s57, s54
	s_cselect_b32 s69, -1, 0
	s_cmp_eq_u32 s58, s54
	s_cselect_b32 s10, -1, 0
	s_cmp_eq_u32 s59, s54
	s_cselect_b32 s81, -1, 0
	s_cmp_eq_u32 s60, s54
	s_cselect_b32 s70, -1, 0
	s_cmp_eq_u32 s61, s54
	s_cselect_b32 s11, -1, 0
	s_cmp_eq_u32 s62, s54
	s_cselect_b32 s62, -1, 0
	s_cmp_eq_u32 s63, s54
	s_cselect_b32 s80, -1, 0
	s_cmp_eq_u32 s64, s54
	s_cselect_b32 s12, -1, 0
	s_cmp_eq_u32 s77, s54
	s_cselect_b32 s63, -1, 0
	s_cmp_eq_u32 s78, s54
	s_cselect_b32 s59, -1, 0
	s_cmp_eq_u32 s79, s54
	s_cselect_b32 s79, -1, 0
	s_cmp_eq_u32 s48, s54
	s_cselect_b32 s64, -1, 0
	s_cmp_eq_u32 s55, s54
	s_cselect_b32 s60, -1, 0
	s_cmp_eq_u32 s34, s54
	v_readlane_b32 s34, v255, 10
	s_cselect_b32 s56, -1, 0
	s_cmp_eq_u32 s2, s54
	s_cselect_b32 s78, -1, 0
	s_cmp_eq_u32 s21, s54
	s_cselect_b32 s61, -1, 0
	s_cmp_eq_u32 s4, s54
	s_mov_b32 s4, s7
	s_cselect_b32 s57, -1, 0
	s_cmp_eq_u32 s5, s54
	s_mov_b32 s5, s8
	s_cselect_b32 s46, -1, 0
	s_cmp_eq_u32 s39, s54
	s_cselect_b32 s77, -1, 0
	s_cmp_eq_u32 s36, s54
	s_cselect_b32 s58, -1, 0
	s_cmp_eq_u32 s37, s54
	s_cselect_b32 s47, -1, 0
	s_cmp_eq_u32 s1, s54
	s_cselect_b32 s31, -1, 0
	s_cmp_eq_u32 s52, s54
	s_cselect_b32 s30, -1, 0
	.loc	1 1190 46                       ; ragged.py:1190:46
	s_add_i32 s50, s26, s17
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s3, vcc_lo, s65
	.loc	1 1191 46 is_stmt 0             ; ragged.py:1191:46
	s_mul_i32 s35, s50, s23
	.loc	1 1191 38                       ; ragged.py:1191:38
	s_mov_b32 s26, s42
	.loc	1 1191 46                       ; ragged.py:1191:46
	v_add_nc_u32_e32 v0, s35, v121
	v_add_nc_u32_e32 v66, s35, v116
	v_add_nc_u32_e32 v67, s35, v122
	v_add_nc_u32_e32 v68, s35, v123
	v_add_nc_u32_e32 v69, s35, v115
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s3, vcc_lo, s66
	.loc	1 1189 36 is_stmt 1             ; ragged.py:1189:36
	s_and_b32 s1, s14, s53
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e64 v66, 0x80000000, v66, s3
	.loc	1 1191 70 is_stmt 0             ; ragged.py:1191:70
	s_and_b32 s3, vcc_lo, s67
	.loc	1 1191 38                       ; ragged.py:1191:38
	buffer_load_u8 v0, v0, s[24:27], 0 offen
	.loc	1 1191 46                       ; ragged.py:1191:46
	v_add_nc_u32_e32 v107, s35, v118
	v_mov_b32_e32 v118, v110
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e64 v67, 0x80000000, v67, s3
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s3, vcc_lo, s68
	.loc	1 1191 46                       ; ragged.py:1191:46
	v_add_nc_u32_e32 v102, s35, v128
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e64 v68, 0x80000000, v68, s3
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s3, vcc_lo, s6
	.loc	1 1191 46                       ; ragged.py:1191:46
	v_add_nc_u32_e32 v103, s35, v138
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e64 v69, 0x80000000, v69, s3
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s3, vcc_lo, s51
	.loc	1 1191 38                       ; ragged.py:1191:38
	s_clause 0x3
	buffer_load_u8 v208, v66, s[24:27], 0 offen
	buffer_load_u8 v207, v67, s[24:27], 0 offen
	buffer_load_u8 v206, v68, s[24:27], 0 offen
	buffer_load_u8 v209, v69, s[24:27], 0 offen
	.loc	1 1191 46                       ; ragged.py:1191:46
	v_add_nc_u32_e32 v104, s35, v139
	v_add_nc_u32_e32 v105, s35, v146
	v_add_nc_u32_e32 v106, s35, v147
	v_add_nc_u32_e32 v108, s35, v166
	v_add_nc_u32_e32 v109, s35, v188
	v_add_nc_u32_e32 v110, s35, v190
	.loc	1 1193 66 is_stmt 1             ; ragged.py:1193:66
	s_waitcnt vmcnt(4)
	v_and_b16 v97.l, v0.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1193 38 is_stmt 0             ; ragged.py:1193:38
	v_cndmask_b16 v116.l, v0.l, v97.l, s1
	.loc	1 1191 46 is_stmt 1             ; ragged.py:1191:46
	v_add_nc_u32_e32 v0, s35, v127
	.loc	1 1189 36                       ; ragged.py:1189:36
	s_and_b32 s1, s49, s53
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	buffer_load_u8 v0, v0, s[24:27], 0 offen
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(0)
	v_and_b16 v97.l, v0.l, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1193 38 is_stmt 0             ; ragged.py:1193:38
	v_cndmask_b16 v116.h, v0.l, v97.l, s1
	.loc	1 1190 46 is_stmt 1             ; ragged.py:1190:46
	s_mul_i32 s1, s50, s22
	s_add_i32 s2, s1, s38
	.loc	1 1190 70 is_stmt 0             ; ragged.py:1190:70
	v_readlane_b32 s1, v255, 12
	v_add_nc_u32_e32 v0, s2, v126
	v_add_nc_u32_e32 v66, s2, v130
	v_add_nc_u32_e32 v67, s2, v131
	v_add_nc_u32_e32 v68, s2, v132
	s_and_b32 s1, s0, s1
	v_add_nc_u32_e32 v69, s2, v133
	.loc	1 1190 38                       ; ragged.py:1190:38
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	.loc	1 1190 70                       ; ragged.py:1190:70
	v_readlane_b32 s1, v255, 13
	v_add_nc_u32_e32 v70, s2, v134
	v_add_nc_u32_e32 v71, s2, v137
	v_add_nc_u32_e32 v97, s2, v136
	.loc	1 1190 38                       ; ragged.py:1190:38
	buffer_load_u8 v0, v0, s[40:43], 0 offen
	.loc	1 1190 70                       ; ragged.py:1190:70
	s_and_b32 s1, s0, s1
	s_mov_b32 s2, s9
	.loc	1 1190 38                       ; ragged.py:1190:38
	v_cndmask_b32_e64 v66, 0x80000000, v66, s1
	.loc	1 1190 70                       ; ragged.py:1190:70
	v_readlane_b32 s1, v255, 14
	.loc	1 1190 38                       ; ragged.py:1190:38
	buffer_load_u8 v66, v66, s[40:43], 0 offen
	.loc	1 1190 70                       ; ragged.py:1190:70
	s_and_b32 s1, s0, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 1190 38                       ; ragged.py:1190:38
	v_cndmask_b32_e64 v67, 0x80000000, v67, s1
	.loc	1 1190 70                       ; ragged.py:1190:70
	v_readlane_b32 s1, v255, 15
	.loc	1 1190 38                       ; ragged.py:1190:38
	buffer_load_u8 v67, v67, s[40:43], 0 offen
	.loc	1 1190 70                       ; ragged.py:1190:70
	s_and_b32 s1, s0, s1
	.loc	1 1190 38                       ; ragged.py:1190:38
	v_cndmask_b32_e64 v68, 0x80000000, v68, s1
	.loc	1 1190 70                       ; ragged.py:1190:70
	v_readlane_b32 s1, v255, 16
	.loc	1 1190 38                       ; ragged.py:1190:38
	buffer_load_u8 v68, v68, s[40:43], 0 offen
	.loc	1 1190 70                       ; ragged.py:1190:70
	s_and_b32 s1, s0, s1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 1190 38                       ; ragged.py:1190:38
	v_cndmask_b32_e64 v69, 0x80000000, v69, s1
	.loc	1 1190 70                       ; ragged.py:1190:70
	v_readlane_b32 s1, v255, 17
	.loc	1 1190 38                       ; ragged.py:1190:38
	buffer_load_u8 v69, v69, s[40:43], 0 offen
	.loc	1 1190 70                       ; ragged.py:1190:70
	s_and_b32 s1, s0, s1
	.loc	1 1190 38                       ; ragged.py:1190:38
	v_cndmask_b32_e64 v70, 0x80000000, v70, s1
	.loc	1 1190 70                       ; ragged.py:1190:70
	v_readlane_b32 s1, v255, 18
	s_and_b32 s1, s0, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1190 38                       ; ragged.py:1190:38
	v_cndmask_b32_e64 v71, 0x80000000, v71, s1
	.loc	1 1190 70                       ; ragged.py:1190:70
	v_readlane_b32 s1, v255, 19
	.loc	1 1190 38                       ; ragged.py:1190:38
	s_clause 0x1
	buffer_load_u8 v70, v70, s[40:43], 0 offen
	buffer_load_u8 v71, v71, s[40:43], 0 offen
	.loc	1 1190 70                       ; ragged.py:1190:70
	s_and_b32 s1, s0, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1190 38                       ; ragged.py:1190:38
	v_cndmask_b32_e64 v97, 0x80000000, v97, s1
	.loc	1 1189 36 is_stmt 1             ; ragged.py:1189:36
	v_readlane_b32 s1, v255, 20
	.loc	1 1190 38                       ; ragged.py:1190:38
	buffer_load_u8 v101, v97, s[40:43], 0 offen
	.loc	1 1189 36                       ; ragged.py:1189:36
	s_and_b32 s1, s1, s53
	.loc	1 1192 66                       ; ragged.py:1192:66
	s_waitcnt vmcnt(7)
	v_and_b16 v97.l, v0.l, 15
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1192 38 is_stmt 0             ; ragged.py:1192:38
	v_cndmask_b16 v97.l, v0.l, v97.l, s1
	.loc	1 1189 36 is_stmt 1             ; ragged.py:1189:36
	v_readlane_b32 s1, v255, 21
	.loc	1 1191 46                       ; ragged.py:1191:46
	v_add_nc_u32_e32 v0, s35, v65
	.loc	1 1192 66                       ; ragged.py:1192:66
	s_waitcnt vmcnt(6)
	v_and_b16 v97.h, v66.l, 15
	.loc	1 1189 36                       ; ragged.py:1189:36
	s_and_b32 s1, s1, s53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v97.h, v66.l, v97.h, s1
	.loc	1 1189 36                       ; ragged.py:1189:36
	v_readlane_b32 s1, v255, 22
	.loc	1 1191 46                       ; ragged.py:1191:46
	v_add_nc_u32_e32 v66, s35, v114
	.loc	1 1192 66                       ; ragged.py:1192:66
	s_waitcnt vmcnt(5)
	v_and_b16 v98.l, v67.l, 15
	.loc	1 1189 36                       ; ragged.py:1189:36
	s_and_b32 s1, s1, s53
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v98.l, v67.l, v98.l, s1
	.loc	1 1189 36                       ; ragged.py:1189:36
	v_readlane_b32 s1, v255, 23
	.loc	1 1191 46                       ; ragged.py:1191:46
	v_add_nc_u32_e32 v67, s35, v145
	.loc	1 1192 66                       ; ragged.py:1192:66
	s_waitcnt vmcnt(4)
	v_and_b16 v98.h, v68.l, 15
	.loc	1 1189 36                       ; ragged.py:1189:36
	s_and_b32 s1, s1, s53
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v98.h, v68.l, v98.h, s1
	.loc	1 1189 36                       ; ragged.py:1189:36
	v_readlane_b32 s1, v255, 24
	.loc	1 1191 46                       ; ragged.py:1191:46
	v_add_nc_u32_e32 v68, s35, v148
	.loc	1 1192 66                       ; ragged.py:1192:66
	s_waitcnt vmcnt(3)
	v_and_b16 v99.l, v69.l, 15
	.loc	1 1189 36                       ; ragged.py:1189:36
	s_and_b32 s1, s1, s53
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v99.l, v69.l, v99.l, s1
	.loc	1 1189 36                       ; ragged.py:1189:36
	v_readlane_b32 s1, v255, 25
	.loc	1 1191 46                       ; ragged.py:1191:46
	v_add_nc_u32_e32 v69, s35, v189
	.loc	1 1189 36                       ; ragged.py:1189:36
	s_and_b32 s1, s1, s53
	.loc	1 1192 66                       ; ragged.py:1192:66
	s_waitcnt vmcnt(2)
	v_and_b16 v99.h, v70.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v100.l, v71.l, 15
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1192 38 is_stmt 0             ; ragged.py:1192:38
	v_cndmask_b16 v99.h, v70.l, v99.h, s1
	.loc	1 1189 36 is_stmt 1             ; ragged.py:1189:36
	v_readlane_b32 s1, v255, 26
	.loc	1 1191 46                       ; ragged.py:1191:46
	v_add_nc_u32_e32 v70, s35, v193
	.loc	1 1192 66                       ; ragged.py:1192:66
	s_waitcnt vmcnt(0)
	v_and_b16 v100.h, v101.l, 15
	.loc	1 1189 36                       ; ragged.py:1189:36
	s_and_b32 s1, s1, s53
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v100.l, v71.l, v100.l, s1
	.loc	1 1189 36                       ; ragged.py:1189:36
	s_and_b32 s1, s19, s53
	.loc	1 1191 46                       ; ragged.py:1191:46
	v_add_nc_u32_e32 v71, s35, v197
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v100.h, v101.l, v100.h, s1
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s1, vcc_lo, s101
	.loc	1 1191 46 is_stmt 0             ; ragged.py:1191:46
	v_add_nc_u32_e32 v101, s35, v117
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e64 v66, 0x80000000, v66, s1
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s1, vcc_lo, s102
	.loc	1 1192 38 is_stmt 1             ; ragged.py:1192:38
	v_add_nc_u32_e32 v117, 0, v141
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e64 v67, 0x80000000, v67, s1
	.loc	1 1191 70 is_stmt 0             ; ragged.py:1191:70
	s_and_b32 s1, vcc_lo, s103
	.loc	1 1191 38                       ; ragged.py:1191:38
	s_clause 0x1
	buffer_load_u8 v0, v0, s[24:27], 0 offen
	buffer_load_u8 v66, v66, s[24:27], 0 offen
	v_cndmask_b32_e64 v68, 0x80000000, v68, s1
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s1, vcc_lo, s104
	.loc	1 1191 38                       ; ragged.py:1191:38
	buffer_load_u8 v67, v67, s[24:27], 0 offen
	v_cndmask_b32_e64 v69, 0x80000000, v69, s1
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s1, vcc_lo, vcc_hi
	.loc	1 1191 38                       ; ragged.py:1191:38
	buffer_load_u8 v68, v68, s[24:27], 0 offen
	v_cndmask_b32_e64 v70, 0x80000000, v70, s1
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s1, vcc_lo, s33
	.loc	1 1191 38                       ; ragged.py:1191:38
	buffer_load_u8 v69, v69, s[24:27], 0 offen
	v_cndmask_b32_e64 v71, 0x80000000, v71, s1
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s1, vcc_lo, s100
	.loc	1 1191 38                       ; ragged.py:1191:38
	buffer_load_u8 v70, v70, s[24:27], 0 offen
	v_cndmask_b32_e64 v101, 0x80000000, v101, s1
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s1, vcc_lo, s99
	.loc	1 1191 38                       ; ragged.py:1191:38
	buffer_load_u8 v71, v71, s[24:27], 0 offen
	v_cndmask_b32_e64 v102, 0x80000000, v102, s1
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s1, vcc_lo, s97
	.loc	1 1191 38                       ; ragged.py:1191:38
	buffer_load_u8 v121, v101, s[24:27], 0 offen
	v_cndmask_b32_e64 v103, 0x80000000, v103, s1
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s1, vcc_lo, s98
	.loc	1 1191 38                       ; ragged.py:1191:38
	buffer_load_u8 v122, v102, s[24:27], 0 offen
	v_cndmask_b32_e64 v104, 0x80000000, v104, s1
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s1, vcc_lo, s96
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e64 v105, 0x80000000, v105, s1
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s1, vcc_lo, s92
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e64 v106, 0x80000000, v106, s1
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s1, vcc_lo, s95
	.loc	1 1191 38                       ; ragged.py:1191:38
	s_clause 0x3
	buffer_load_u8 v123, v104, s[24:27], 0 offen
	buffer_load_u8 v124, v105, s[24:27], 0 offen
	buffer_load_u8 v125, v106, s[24:27], 0 offen
	buffer_load_u8 v126, v103, s[24:27], 0 offen
	v_cndmask_b32_e64 v107, 0x80000000, v107, s1
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s1, vcc_lo, s93
	.loc	1 1191 46                       ; ragged.py:1191:46
	v_add_nc_u32_e32 v103, s35, v194
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e64 v108, 0x80000000, v108, s1
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s1, vcc_lo, s91
	.loc	1 1191 38                       ; ragged.py:1191:38
	buffer_load_u8 v127, v107, s[24:27], 0 offen
	.loc	1 1191 46                       ; ragged.py:1191:46
	v_add_nc_u32_e32 v101, s35, v191
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e64 v109, 0x80000000, v109, s1
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s1, vcc_lo, s94
	.loc	1 1191 46                       ; ragged.py:1191:46
	v_add_nc_u32_e32 v102, s35, v192
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e64 v110, 0x80000000, v110, s1
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s1, vcc_lo, s90
	.loc	1 1191 46                       ; ragged.py:1191:46
	v_add_nc_u32_e32 v104, s35, v195
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e64 v101, 0x80000000, v101, s1
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s1, vcc_lo, s89
	.loc	1 1191 46                       ; ragged.py:1191:46
	v_add_nc_u32_e32 v105, s35, v196
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e64 v102, 0x80000000, v102, s1
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s1, vcc_lo, s88
	.loc	1 1191 46                       ; ragged.py:1191:46
	v_add_nc_u32_e32 v106, s35, v198
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e64 v103, 0x80000000, v103, s1
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s1, vcc_lo, s86
	.loc	1 1191 46                       ; ragged.py:1191:46
	v_add_nc_u32_e32 v107, s35, v199
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e64 v104, 0x80000000, v104, s1
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s1, vcc_lo, s85
	.loc	1 1191 38                       ; ragged.py:1191:38
	buffer_load_u8 v128, v108, s[24:27], 0 offen
	v_cndmask_b32_e64 v105, 0x80000000, v105, s1
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s1, vcc_lo, s87
	.loc	1 1191 46                       ; ragged.py:1191:46
	v_add_nc_u32_e32 v108, s35, v200
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e64 v106, 0x80000000, v106, s1
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s1, vcc_lo, s84
	.loc	1 1191 38                       ; ragged.py:1191:38
	s_clause 0x3
	buffer_load_u8 v129, v110, s[24:27], 0 offen
	buffer_load_u8 v130, v101, s[24:27], 0 offen
	buffer_load_u8 v131, v102, s[24:27], 0 offen
	buffer_load_u8 v132, v109, s[24:27], 0 offen
	.loc	1 1191 46                       ; ragged.py:1191:46
	v_add_nc_u32_e32 v101, s35, v201
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e64 v107, 0x80000000, v107, s1
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s1, vcc_lo, s83
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e64 v108, 0x80000000, v108, s1
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s1, vcc_lo, s82
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e64 v101, 0x80000000, v101, s1
	s_clause 0x6
	buffer_load_u8 v133, v103, s[24:27], 0 offen
	buffer_load_u8 v134, v104, s[24:27], 0 offen
	buffer_load_u8 v135, v106, s[24:27], 0 offen
	buffer_load_u8 v136, v107, s[24:27], 0 offen
	buffer_load_u8 v137, v108, s[24:27], 0 offen
	buffer_load_u8 v138, v101, s[24:27], 0 offen
	buffer_load_u8 v139, v105, s[24:27], 0 offen
	.loc	1 1192 38 is_stmt 1             ; ragged.py:1192:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v140, v97
	ds_store_b8_d16_hi v140, v97 offset:256
	ds_store_b8 v140, v98 offset:512
	ds_store_b8 v140, v99 offset:1024
	ds_store_b8_d16_hi v140, v99 offset:1280
	v_add_nc_u32_e32 v97, 0, v143
	ds_store_b8_d16_hi v117, v98
	ds_store_b8 v140, v100 offset:1536
	ds_store_b8_d16_hi v119, v100
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1189 36                       ; ragged.py:1189:36
	s_and_b32 s1, s81, s53
	.loc	1 1194 35                       ; ragged.py:1194:35
	ds_load_u8 v227, v97
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_add_nc_u32_e32 v97, 0, v144
	.loc	1 1194 35                       ; ragged.py:1194:35
	ds_load_u8 v92, v97
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v92, off offset:320 ; 4-byte Folded Spill
	ds_load_u8 v141, v178 offset:192
	ds_load_u8 v142, v178 offset:128
	ds_load_u8 v108, v178 offset:208
	ds_load_u8 v109, v178 offset:144
	ds_load_u8 v100, v178 offset:224
	ds_load_u8 v101, v178 offset:160
	ds_load_u8 v218, v178 offset:240
	ds_load_u8 v220, v178 offset:176
	ds_load_u8 v143, v178 offset:448
	ds_load_u8 v144, v178 offset:384
	ds_load_u8 v110, v178 offset:464
	ds_load_u8 v99, v178 offset:400
	ds_load_u8 v102, v178 offset:480
	ds_load_u8 v103, v178 offset:416
	ds_load_u8 v221, v178 offset:496
	ds_load_u8 v232, v178 offset:432
	ds_load_u8 v145, v178 offset:320
	ds_load_u8 v146, v178 offset:256
	ds_load_u8 v98, v178 offset:336
	ds_load_u8 v97, v178 offset:272
	ds_load_u8 v104, v178 offset:352
	ds_load_u8 v105, v178 offset:288
	ds_load_u8 v233, v178 offset:368
	ds_load_u8 v240, v178 offset:304
	ds_load_u8 v147, v178 offset:64
	ds_load_u8 v114, v178 offset:80
	ds_load_u8 v106, v178 offset:96
	ds_load_u8 v241, v178 offset:112
	ds_load_u8 v148, v178
	ds_load_u8 v115, v178 offset:16
	ds_load_u8 v107, v178 offset:32
	ds_load_u8 v242, v178 offset:48
	ds_load_u8 v210, v178 offset:960
	ds_load_u8 v211, v178 offset:896
	ds_load_u8 v249, v178 offset:1024
	ds_load_u8 v224, v178 offset:976
	ds_load_u8 v223, v178 offset:912
	ds_load_u8 v251, v178 offset:992
	ds_load_u8 v252, v178 offset:928
	ds_load_u8 v250, v178 offset:944
	ds_load_u8 v212, v178 offset:832
	ds_load_u8 v213, v178 offset:768
	ds_load_u8 v189, v178 offset:848
	ds_load_u8 v188, v178 offset:784
	ds_load_u8 v219, v178 offset:864
	ds_load_u8 v194, v178 offset:800
	ds_load_u8 v254, v178 offset:880
	ds_load_u8 v225, v178 offset:816
	ds_load_u8 v214, v178 offset:704
	ds_load_u8 v215, v178 offset:640
	ds_load_u8 v195, v178 offset:720
	ds_load_u8 v196, v178 offset:656
	ds_load_u8 v167, v178 offset:736
	ds_load_u8 v166, v178 offset:672
	ds_load_u8 v191, v178 offset:752
	ds_load_u8 v193, v178 offset:688
	ds_load_u8 v216, v178 offset:576
	ds_load_u8 v217, v178 offset:512
	ds_load_u8 v202, v178 offset:592
	ds_load_u8 v203, v178 offset:528
	ds_load_u8 v200, v178 offset:608
	ds_load_u8 v201, v178 offset:544
	ds_load_u8 v198, v178 offset:624
	ds_load_u8 v199, v178 offset:560
	ds_load_u8 v253, v178 offset:1216
	ds_load_u8 v222, v178 offset:1280
	ds_load_u8 v92, v178 offset:1232
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v92, off offset:436 ; 4-byte Folded Spill
	ds_load_u8 v92, v178 offset:1168
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v92, off offset:440 ; 4-byte Folded Spill
	ds_load_u8 v92, v178 offset:1248
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v92, off offset:428 ; 4-byte Folded Spill
	ds_load_u8 v92, v178 offset:1184
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v92, off offset:432 ; 4-byte Folded Spill
	ds_load_u8 v92, v178 offset:1264
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v92, off offset:420 ; 4-byte Folded Spill
	ds_load_u8 v92, v178 offset:1200
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v92, off offset:424 ; 4-byte Folded Spill
	ds_load_u8 v190, v178 offset:1152
	ds_load_u8 v192, v178 offset:1088
	ds_load_u8 v92, v178 offset:1104
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v92, off offset:464 ; 4-byte Folded Spill
	ds_load_u8 v92, v178 offset:1040
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v92, off offset:468 ; 4-byte Folded Spill
	ds_load_u8 v92, v178 offset:1120
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v92, off offset:456 ; 4-byte Folded Spill
	ds_load_u8 v92, v178 offset:1056
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v92, off offset:460 ; 4-byte Folded Spill
	ds_load_u8 v92, v178 offset:1136
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v92, off offset:444 ; 4-byte Folded Spill
	ds_load_u8 v92, v178 offset:1072
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(15)
	v_and_b16 v122.h, v124.l, 15
	s_waitcnt vmcnt(13)
	v_and_b16 v121.h, v126.l, 15
	s_waitcnt vmcnt(12)
	v_and_b16 v123.h, v127.l, 15
	.loc	1 1194 35                       ; ragged.py:1194:35
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v92, off offset:448 ; 4-byte Folded Spill
	ds_load_u8 v197, v178 offset:1472
	ds_load_u8 v92, v178 offset:1536
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v92, off offset:416 ; 4-byte Folded Spill
	ds_load_u8 v237, v178 offset:1488
	ds_load_u8 v238, v178 offset:1424
	ds_load_u8 v234, v178 offset:1504
	ds_load_u8 v235, v178 offset:1440
	ds_load_u8 v92, v178 offset:1520
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(9)
	v_and_b16 v125.h, v130.l, 15
	s_waitcnt vmcnt(7)
	v_and_b16 v124.h, v132.l, 15
	s_waitcnt vmcnt(6)
	v_and_b16 v126.h, v133.l, 15
	s_waitcnt vmcnt(3)
	v_and_b16 v128.h, v136.l, 15
	s_waitcnt vmcnt(0)
	v_and_b16 v127.h, v139.l, 15
	.loc	1 1194 35                       ; ragged.py:1194:35
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v92, off offset:472 ; 4-byte Folded Spill
	ds_load_u8 v92, v178 offset:1456
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v92, off offset:476 ; 4-byte Folded Spill
	ds_load_u8 v204, v178 offset:1408
	ds_load_u8 v205, v178 offset:1344
	ds_load_u8 v247, v178 offset:1360
	ds_load_u8 v248, v178 offset:1296
	ds_load_u8 v226, v178 offset:1376
	ds_load_u8 v244, v178 offset:1312
	ds_load_u8 v239, v178 offset:1392
	ds_load_u8 v229, v178 offset:1328
	ds_load_u8 v92, v178 offset:1984
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v92, off offset:452 ; 4-byte Folded Spill
	ds_load_u8 v92, v178 offset:2000
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v92, off offset:344 ; 4-byte Folded Spill
	ds_load_u8 v92, v178 offset:2016
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v92, off offset:328 ; 4-byte Folded Spill
	ds_load_u8 v92, v178 offset:1936
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v92, off offset:348 ; 4-byte Folded Spill
	ds_load_u8 v92, v178 offset:1952
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v92, off offset:332 ; 4-byte Folded Spill
	ds_load_u8 v92, v178 offset:1968
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v92, off offset:324 ; 4-byte Folded Spill
	ds_load_u8 v231, v178 offset:1920
	ds_load_u8 v230, v178 offset:1856
	ds_load_u8 v92, v178 offset:1872
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v92, off offset:364 ; 4-byte Folded Spill
	ds_load_u8 v92, v178 offset:1808
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v92, off offset:372 ; 4-byte Folded Spill
	ds_load_u8 v92, v178 offset:1888
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v92, off offset:352 ; 4-byte Folded Spill
	ds_load_u8 v92, v178 offset:1824
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v92, off offset:356 ; 4-byte Folded Spill
	ds_load_u8 v92, v178 offset:1904
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v92, off offset:336 ; 4-byte Folded Spill
	ds_load_u8 v92, v178 offset:1840
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v92, off offset:340 ; 4-byte Folded Spill
	ds_load_u8 v236, v178 offset:1728
	ds_load_u8 v228, v178 offset:1792
	ds_load_u8 v92, v178 offset:1744
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v92, off offset:384 ; 4-byte Folded Spill
	ds_load_u8 v92, v178 offset:1680
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v92, off offset:388 ; 4-byte Folded Spill
	ds_load_u8 v92, v178 offset:1760
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v92, off offset:376 ; 4-byte Folded Spill
	ds_load_u8 v92, v178 offset:1696
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v92, off offset:380 ; 4-byte Folded Spill
	ds_load_u8 v92, v178 offset:1776
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v92, off offset:360 ; 4-byte Folded Spill
	ds_load_u8 v92, v178 offset:1712
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v92, off offset:368 ; 4-byte Folded Spill
	ds_load_u8 v245, v178 offset:1664
	ds_load_u8 v246, v178 offset:1600
	ds_load_u8 v92, v178 offset:1616
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v92, off offset:408 ; 4-byte Folded Spill
	ds_load_u8 v92, v178 offset:1552
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v92, off offset:412 ; 4-byte Folded Spill
	ds_load_u8 v92, v178 offset:1632
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v92, off offset:400 ; 4-byte Folded Spill
	ds_load_u8 v92, v178 offset:1568
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v92, off offset:404 ; 4-byte Folded Spill
	ds_load_u8 v92, v178 offset:1648
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v92, off offset:392 ; 4-byte Folded Spill
	ds_load_u8 v92, v178 offset:1584
	.loc	1 1193 38                       ; ragged.py:1193:38
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v92, off offset:396 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v117, v116
	ds_store_b8_d16_hi v119, v116
	.loc	1 1193 66 is_stmt 0             ; ragged.py:1193:66
	v_and_b16 v116.l, v67.l, 15
	v_and_b16 v116.h, v68.l, 15
	v_and_b16 v117.l, v66.l, 15
	v_and_b16 v117.h, v209.l, 15
	v_and_b16 v119.l, v208.l, 15
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v116.l, v67.l, v116.l, s1
	v_add_nc_u32_e32 v67, 0, v120
	.loc	1 1189 36 is_stmt 1             ; ragged.py:1189:36
	s_and_b32 s1, s80, s53
	.loc	1 1193 66                       ; ragged.py:1193:66
	v_and_b16 v119.h, v207.l, 15
	.loc	1 1193 38 is_stmt 0             ; ragged.py:1193:38
	v_cndmask_b16 v116.h, v68.l, v116.h, s1
	v_add_nc_u32_e32 v68, 0, v88
	ds_store_b8 v67, v116
	.loc	1 1193 66                       ; ragged.py:1193:66
	v_and_b16 v116.l, v69.l, 15
	.loc	1 1189 36 is_stmt 1             ; ragged.py:1189:36
	s_and_b32 s1, s79, s53
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_add_nc_u32_e32 v67, 0, v89
	ds_store_b8_d16_hi v68, v116
	.loc	1 1193 66 is_stmt 0             ; ragged.py:1193:66
	v_and_b16 v116.h, v70.l, 15
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v116.l, v69.l, v116.l, s1
	.loc	1 1189 36 is_stmt 1             ; ragged.py:1189:36
	s_and_b32 s1, s78, s53
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_add_nc_u32_e32 v68, 0, v90
	v_mov_b32_e32 v92, v91
	v_cndmask_b16 v116.h, v70.l, v116.h, s1
	ds_store_b8 v67, v116
	.loc	1 1193 66 is_stmt 0             ; ragged.py:1193:66
	v_and_b16 v116.l, v71.l, 15
	.loc	1 1189 36 is_stmt 1             ; ragged.py:1189:36
	s_and_b32 s1, s77, s53
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_add_nc_u32_e32 v67, 0, v91
	ds_store_b8_d16_hi v68, v116
	.loc	1 1193 66 is_stmt 0             ; ragged.py:1193:66
	v_and_b16 v116.h, v0.l, 15
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v116.l, v71.l, v116.l, s1
	.loc	1 1189 36 is_stmt 1             ; ragged.py:1189:36
	s_and_b32 s1, s76, s53
	v_dual_mov_b32 v91, v90 :: v_dual_mov_b32 v90, v89
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v116.h, v0.l, v116.h, s1
	.loc	1 1189 36                       ; ragged.py:1189:36
	s_and_b32 s1, s74, s53
	v_mov_b32_e32 v89, v88
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v117.l, v66.l, v117.l, s1
	.loc	1 1189 36                       ; ragged.py:1189:36
	s_and_b32 s1, s71, s53
	v_mov_b32_e32 v88, v120
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v117.h, v209.l, v117.h, s1
	.loc	1 1189 36                       ; ragged.py:1189:36
	s_and_b32 s1, s75, s53
	.loc	1 1193 66                       ; ragged.py:1193:66
	v_and_b16 v120.l, v206.l, 15
	.loc	1 1193 38 is_stmt 0             ; ragged.py:1193:38
	v_cndmask_b16 v119.l, v208.l, v119.l, s1
	.loc	1 1189 36 is_stmt 1             ; ragged.py:1189:36
	s_and_b32 s1, s72, s53
	.loc	1 1193 66                       ; ragged.py:1193:66
	v_and_b16 v120.h, v121.l, 15
	.loc	1 1193 38 is_stmt 0             ; ragged.py:1193:38
	v_cndmask_b16 v119.h, v207.l, v119.h, s1
	.loc	1 1189 36 is_stmt 1             ; ragged.py:1189:36
	s_and_b32 s1, s13, s53
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_add_nc_u32_e32 v0, 0, v93
	v_cndmask_b16 v120.l, v206.l, v120.l, s1
	.loc	1 1189 36                       ; ragged.py:1189:36
	s_and_b32 s1, s73, s53
	.loc	1 1194 35                       ; ragged.py:1194:35
	v_perm_b32 v66, v144, v143, 0xc0c0004
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v120.h, v121.l, v120.h, s1
	.loc	1 1193 66 is_stmt 0             ; ragged.py:1193:66
	v_and_b16 v121.l, v122.l, 15
	.loc	1 1189 36 is_stmt 1             ; ragged.py:1189:36
	s_and_b32 s1, s69, s53
	.loc	1 1194 35                       ; ragged.py:1194:35
	v_perm_b32 v68, v142, v141, 0xc0c0004
	v_readlane_b32 s13, v255, 11
	v_mov_b32_e32 v144, v87
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v121.l, v122.l, v121.l, s1
	.loc	1 1193 66 is_stmt 0             ; ragged.py:1193:66
	v_and_b16 v122.l, v123.l, 15
	.loc	1 1189 36 is_stmt 1             ; ragged.py:1189:36
	s_and_b32 s1, s10, s53
	v_readlane_b32 s10, v255, 7
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v121.h, v126.l, v121.h, s1
	.loc	1 1189 36                       ; ragged.py:1189:36
	s_and_b32 s1, s70, s53
	.loc	1 1193 66                       ; ragged.py:1193:66
	v_and_b16 v126.l, v131.l, 15
	.loc	1 1193 38 is_stmt 0             ; ragged.py:1193:38
	v_cndmask_b16 v122.l, v123.l, v122.l, s1
	.loc	1 1193 66                       ; ragged.py:1193:66
	v_and_b16 v123.l, v125.l, 15
	.loc	1 1189 36 is_stmt 1             ; ragged.py:1189:36
	s_and_b32 s1, s11, s53
	v_readlane_b32 s11, v255, 8
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v122.h, v124.l, v122.h, s1
	.loc	1 1189 36                       ; ragged.py:1189:36
	s_and_b32 s1, s62, s53
	.loc	1 1193 66                       ; ragged.py:1193:66
	v_and_b16 v124.l, v128.l, 15
	.loc	1 1193 38 is_stmt 0             ; ragged.py:1193:38
	v_cndmask_b16 v123.l, v125.l, v123.l, s1
	.loc	1 1189 36 is_stmt 1             ; ragged.py:1189:36
	s_and_b32 s1, s12, s53
	.loc	1 1193 66                       ; ragged.py:1193:66
	v_and_b16 v125.l, v129.l, 15
	.loc	1 1193 38 is_stmt 0             ; ragged.py:1193:38
	v_cndmask_b16 v123.h, v127.l, v123.h, s1
	.loc	1 1189 36 is_stmt 1             ; ragged.py:1189:36
	s_and_b32 s1, s63, s53
	.loc	1 1193 66                       ; ragged.py:1193:66
	v_and_b16 v127.l, v134.l, 15
	.loc	1 1193 38 is_stmt 0             ; ragged.py:1193:38
	v_cndmask_b16 v124.l, v128.l, v124.l, s1
	.loc	1 1189 36 is_stmt 1             ; ragged.py:1189:36
	s_and_b32 s1, s59, s53
	.loc	1 1193 66                       ; ragged.py:1193:66
	v_and_b16 v128.l, v135.l, 15
	.loc	1 1193 38 is_stmt 0             ; ragged.py:1193:38
	v_cndmask_b16 v124.h, v132.l, v124.h, s1
	.loc	1 1189 36 is_stmt 1             ; ragged.py:1189:36
	s_and_b32 s1, s64, s53
	v_readlane_b32 s12, v255, 9
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v125.l, v129.l, v125.l, s1
	.loc	1 1189 36                       ; ragged.py:1189:36
	s_and_b32 s1, s60, s53
	.loc	1 1193 66                       ; ragged.py:1193:66
	v_and_b16 v129.l, v137.l, 15
	.loc	1 1193 38 is_stmt 0             ; ragged.py:1193:38
	v_cndmask_b16 v125.h, v130.l, v125.h, s1
	.loc	1 1189 36 is_stmt 1             ; ragged.py:1189:36
	s_and_b32 s1, s56, s53
	v_mov_b32_e32 v130, v74
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v126.l, v131.l, v126.l, s1
	.loc	1 1189 36                       ; ragged.py:1189:36
	s_and_b32 s1, s61, s53
	v_mov_b32_e32 v131, v75
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v126.h, v133.l, v126.h, s1
	.loc	1 1189 36                       ; ragged.py:1189:36
	s_and_b32 s1, s57, s53
	v_mov_b32_e32 v133, v77
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v127.l, v134.l, v127.l, s1
	.loc	1 1189 36                       ; ragged.py:1189:36
	s_and_b32 s1, s46, s53
	v_mov_b32_e32 v132, v76
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v127.h, v139.l, v127.h, s1
	.loc	1 1189 36                       ; ragged.py:1189:36
	s_and_b32 s1, s58, s53
	v_mov_b32_e32 v134, v94
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v128.l, v135.l, v128.l, s1
	.loc	1 1189 36                       ; ragged.py:1189:36
	s_and_b32 s1, s47, s53
	v_mov_b32_e32 v143, v86
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v128.h, v136.l, v128.h, s1
	ds_store_b8_d16_hi v140, v116
	ds_store_b8 v140, v117 offset:256
	ds_store_b8_d16_hi v140, v117 offset:512
	ds_store_b8 v140, v119 offset:1024
	ds_store_b8_d16_hi v140, v119 offset:1280
	ds_store_b8 v140, v120 offset:1536
	ds_store_b8_d16_hi v140, v120 offset:2048
	ds_store_b8 v140, v121 offset:2304
	ds_store_b8_d16_hi v140, v121 offset:2560
	ds_store_b8 v140, v122 offset:3072
	ds_store_b8_d16_hi v140, v122 offset:3328
	ds_store_b8 v140, v123 offset:3584
	ds_store_b8_d16_hi v140, v123 offset:4096
	ds_store_b8 v140, v124 offset:4352
	ds_store_b8_d16_hi v140, v124 offset:4608
	ds_store_b8 v140, v125 offset:5120
	ds_store_b8_d16_hi v140, v125 offset:5376
	ds_store_b8 v140, v126 offset:5632
	ds_store_b8_d16_hi v140, v126 offset:6144
	ds_store_b8 v140, v127 offset:6400
	ds_store_b8_d16_hi v140, v127 offset:6656
	ds_store_b8 v140, v128 offset:7168
	ds_store_b8_d16_hi v140, v128 offset:7424
	.loc	1 1193 66 is_stmt 0             ; ragged.py:1193:66
	v_and_b16 v116.h, v138.l, 15
	.loc	1 1189 36 is_stmt 1             ; ragged.py:1189:36
	s_and_b32 s1, s31, s53
	scratch_load_b64 v[127:128], off, off offset:16 ; 8-byte Folded Reload
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v129.l, v137.l, v129.l, s1
	.loc	1 1189 36                       ; ragged.py:1189:36
	s_and_b32 s1, s30, s53
	v_mov_b32_e32 v136, v78
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v116.h, v138.l, v116.h, s1
	ds_store_b8 v67, v116
	ds_store_b8_d16_hi v0, v116
	.loc	1 1194 35                       ; ragged.py:1194:35
	v_perm_b32 v0, v146, v145, 0xc0c0004
	v_perm_b32 v67, v148, v147, 0xc0c0004
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[138:139], off, off offset:32
	scratch_load_b64 v[145:146], off, off offset:48
	.loc	1 1193 38                       ; ragged.py:1193:38
	ds_store_b8 v140, v129 offset:7680
	s_clause 0x3                            ; 32-byte Folded Reload
	scratch_load_b64 v[128:129], off, off offset:24
	scratch_load_b64 v[139:140], off, off offset:40
	scratch_load_b64 v[146:147], off, off offset:56
	scratch_load_b64 v[147:148], off, off offset:64
	.loc	1 1194 35                       ; ragged.py:1194:35
	v_lshl_or_b32 v117, v66, 16, v0
	v_lshl_or_b32 v116, v68, 16, v67
	.loc	1 1193 38                       ; ragged.py:1193:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1194 35                       ; ragged.py:1194:35
	ds_load_u8 v0, v187 offset:1280
	ds_load_u8 v66, v187 offset:1024
	ds_load_u8 v67, v187 offset:1920
	ds_load_u8 v68, v187 offset:1664
	ds_load_u8 v69, v187 offset:1408
	ds_load_u8 v70, v187 offset:1152
	v_dual_mov_b32 v126, v73 :: v_dual_mov_b32 v137, v96
	v_dual_mov_b32 v142, v85 :: v_dual_mov_b32 v141, v84
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v66, v0, 0xc0c0004
	ds_load_u8 v66, v187 offset:1792
	ds_load_u8 v71, v187 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v71, v66, 0xc0c0004
	ds_load_u8 v71, v187 offset:256
	ds_load_u8 v119, v187
	ds_load_u8 v121, v187 offset:896
	ds_load_u8 v122, v187 offset:640
	ds_load_u8 v123, v187 offset:384
	ds_load_u8 v124, v187 offset:128
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v71, v119, v71, 0xc0c0004
	ds_load_u8 v119, v187 offset:768
	ds_load_u8 v120, v187 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	v_lshl_or_b32 v120, v66, 16, v0
	v_perm_b32 v0, v70, v69, 0xc0c0004
	v_perm_b32 v66, v68, v67, 0xc0c0004
	v_perm_b32 v67, v124, v123, 0xc0c0004
	v_perm_b32 v68, v122, v121, 0xc0c0004
	v_lshl_or_b32 v119, v119, 16, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v122, v66, 16, v0
	v_perm_b32 v0, v97, v98, 0xc0c0004
	v_lshl_or_b32 v121, v68, 16, v67
	v_perm_b32 v66, v99, v110, 0xc0c0004
	v_perm_b32 v67, v115, v114, 0xc0c0004
	v_perm_b32 v68, v109, v108, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[119:120], v[116:117], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[121:122], v[116:117], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v109, v66, 16, v0
	v_perm_b32 v0, v105, v104, 0xc0c0004
	v_lshl_or_b32 v108, v68, 16, v67
	v_perm_b32 v66, v103, v102, 0xc0c0004
	v_perm_b32 v67, v107, v106, 0xc0c0004
	v_perm_b32 v68, v101, v100, 0xc0c0004
	v_mov_b32_e32 v117, v82
	v_wmma_i32_16x16x16_iu4 v[41:48], v[119:120], v[108:109], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v101, v66, 16, v0
	v_perm_b32 v0, v240, v233, 0xc0c0004
	v_lshl_or_b32 v100, v68, 16, v67
	v_perm_b32 v66, v232, v221, 0xc0c0004
	v_perm_b32 v67, v242, v241, 0xc0c0004
	v_perm_b32 v68, v220, v218, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[121:122], v[108:109], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[119:120], v[100:101], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v103, v66, 16, v0
	v_perm_b32 v0, v213, v212, 0xc0c0004
	v_lshl_or_b32 v102, v68, 16, v67
	v_perm_b32 v66, v211, v210, 0xc0c0004
	v_perm_b32 v67, v217, v216, 0xc0c0004
	v_perm_b32 v68, v215, v214, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[121:122], v[100:101], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[119:120], v[102:103], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v101, v66, 16, v0
	v_wmma_i32_16x16x16_iu4 v[1:8], v[121:122], v[102:103], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v100, v68, 16, v67
	ds_load_u8 v0, v187 offset:3328
	ds_load_u8 v66, v187 offset:3072
	ds_load_u8 v67, v187 offset:3968
	ds_load_u8 v68, v187 offset:3712
	ds_load_u8 v69, v187 offset:3456
	ds_load_u8 v70, v187 offset:3200
	v_mov_b32_e32 v109, v149
	scratch_load_b64 v[148:149], off, off offset:72 ; 8-byte Folded Reload
	v_mov_b32_e32 v116, v81
	v_mov_b32_e32 v110, v118
	v_dual_mov_b32 v118, v83 :: v_dual_mov_b32 v115, v80
	v_mov_b32_e32 v114, v79
	v_mov_b32_e32 v120, v88
	v_dual_mov_b32 v88, v89 :: v_dual_mov_b32 v89, v90
	v_dual_mov_b32 v90, v91 :: v_dual_mov_b32 v91, v92
	v_mov_b32_e32 v121, v95
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v66, v0, 0xc0c0004
	ds_load_u8 v66, v187 offset:3840
	ds_load_u8 v71, v187 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v71, v66, 0xc0c0004
	ds_load_u8 v71, v187 offset:2304
	ds_load_u8 v102, v187 offset:2048
	ds_load_u8 v104, v187 offset:2944
	ds_load_u8 v105, v187 offset:2688
	ds_load_u8 v106, v187 offset:2432
	ds_load_u8 v107, v187 offset:2176
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v71, v102, v71, 0xc0c0004
	ds_load_u8 v102, v187 offset:2816
	ds_load_u8 v103, v187 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	v_lshl_or_b32 v103, v66, 16, v0
	v_perm_b32 v0, v70, v69, 0xc0c0004
	v_perm_b32 v66, v68, v67, 0xc0c0004
	v_perm_b32 v67, v107, v106, 0xc0c0004
	v_perm_b32 v68, v105, v104, 0xc0c0004
	v_lshl_or_b32 v102, v102, 16, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v105, v66, 16, v0
	v_perm_b32 v0, v188, v189, 0xc0c0004
	v_lshl_or_b32 v104, v68, 16, v67
	v_perm_b32 v66, v223, v224, 0xc0c0004
	v_perm_b32 v67, v203, v202, 0xc0c0004
	v_perm_b32 v68, v196, v195, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[57:64], v[102:103], v[100:101], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[104:105], v[100:101], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v101, v66, 16, v0
	v_perm_b32 v0, v194, v219, 0xc0c0004
	v_lshl_or_b32 v100, v68, 16, v67
	v_perm_b32 v66, v252, v251, 0xc0c0004
	v_perm_b32 v67, v201, v200, 0xc0c0004
	v_perm_b32 v68, v166, v167, 0xc0c0004
	scratch_load_b64 v[188:189], off, off offset:88 ; 8-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[41:48], v[102:103], v[100:101], v[41:48] neg_lo:[1,1,0]
	v_lshl_or_b32 v98, v66, 16, v0
	v_perm_b32 v0, v199, v198, 0xc0c0004
	v_lshl_or_b32 v97, v68, 16, v67
	v_perm_b32 v66, v193, v191, 0xc0c0004
	v_perm_b32 v67, v225, v254, 0xc0c0004
	v_perm_b32 v68, v250, v227, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[33:40], v[104:105], v[100:101], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[102:103], v[97:98], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v106, v66, 16, v0
	v_perm_b32 v0, v222, v205, 0xc0c0004
	v_lshl_or_b32 v107, v68, 16, v67
	v_perm_b32 v66, v204, v197, 0xc0c0004
	v_perm_b32 v67, v249, v192, 0xc0c0004
	v_perm_b32 v68, v190, v253, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[104:105], v[97:98], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[102:103], v[106:107], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v98, v66, 16, v0
	v_wmma_i32_16x16x16_iu4 v[1:8], v[104:105], v[106:107], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v97, v68, 16, v67
	ds_load_u8 v0, v187 offset:5376
	ds_load_u8 v66, v187 offset:5120
	ds_load_u8 v67, v187 offset:6016
	ds_load_u8 v68, v187 offset:5760
	ds_load_u8 v69, v187 offset:5504
	ds_load_u8 v70, v187 offset:5248
	s_clause 0x4                            ; 36-byte Folded Reload
	scratch_load_b32 v107, off, off offset:292
	scratch_load_b64 v[122:123], off, off
	scratch_load_b64 v[123:124], off, off offset:8
	scratch_load_b64 v[166:167], off, off offset:80
	scratch_load_b64 v[189:190], off, off offset:96
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v66, v0, 0xc0c0004
	ds_load_u8 v66, v187 offset:5888
	ds_load_u8 v71, v187 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v71, v66, 0xc0c0004
	ds_load_u8 v71, v187 offset:4352
	ds_load_u8 v99, v187 offset:4096
	ds_load_u8 v101, v187 offset:4992
	ds_load_u8 v102, v187 offset:4736
	ds_load_u8 v103, v187 offset:4480
	ds_load_u8 v104, v187 offset:4224
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v71, v99, v71, 0xc0c0004
	ds_load_u8 v99, v187 offset:4864
	ds_load_u8 v100, v187 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	v_lshl_or_b32 v100, v66, 16, v0
	v_perm_b32 v66, v68, v67, 0xc0c0004
	v_perm_b32 v67, v104, v103, 0xc0c0004
	v_perm_b32 v68, v102, v101, 0xc0c0004
	v_perm_b32 v0, v70, v69, 0xc0c0004
	v_lshl_or_b32 v99, v99, 16, v71
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v101, v68, 16, v67
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:464
	scratch_load_b32 v68, off, off offset:468
	v_lshl_or_b32 v102, v66, 16, v0
	v_wmma_i32_16x16x16_iu4 v[57:64], v[99:100], v[97:98], v[57:64] neg_lo:[1,1,0]
	v_perm_b32 v0, v248, v247, 0xc0c0004
	v_perm_b32 v66, v238, v237, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[101:102], v[97:98], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v98, v66, 16, v0
	v_perm_b32 v0, v244, v226, 0xc0c0004
	v_perm_b32 v66, v235, v234, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v104, v66, 16, v0
	v_perm_b32 v0, v229, v239, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v68, off, off offset:436
	scratch_load_b32 v69, off, off offset:440
	s_waitcnt vmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v97, v68, 16, v67
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:456
	scratch_load_b32 v68, off, off offset:460
	v_wmma_i32_16x16x16_iu4 v[41:48], v[99:100], v[97:98], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[101:102], v[97:98], v[33:40] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v68, off, off offset:428
	scratch_load_b32 v69, off, off offset:432
	s_waitcnt vmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v103, v68, 16, v67
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v66, off, off offset:472
	scratch_load_b32 v67, off, off offset:476
	v_wmma_i32_16x16x16_iu4 v[25:32], v[99:100], v[103:104], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[101:102], v[103:104], v[17:24] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:444
	scratch_load_b32 v68, off, off offset:448
	v_lshl_or_b32 v106, v66, 16, v0
	v_perm_b32 v0, v228, v230, 0xc0c0004
	scratch_load_b32 v66, off, off offset:452 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v68, off, off offset:420
	scratch_load_b32 v69, off, off offset:424
	s_waitcnt vmcnt(2)
	v_perm_b32 v66, v231, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v98, v66, 16, v0
	s_waitcnt vmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	v_lshl_or_b32 v105, v68, 16, v67
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v67, off, off offset:416
	scratch_load_b64 v[190:191], off, off offset:104
	v_perm_b32 v68, v245, v236, 0xc0c0004
	scratch_load_b64 v[191:192], off, off offset:112 ; 8-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[9:16], v[99:100], v[105:106], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[101:102], v[105:106], v[1:8] neg_lo:[1,1,0]
	s_clause 0x9                            ; 80-byte Folded Reload
	scratch_load_b64 v[192:193], off, off offset:120
	scratch_load_b64 v[193:194], off, off offset:128
	scratch_load_b64 v[194:195], off, off offset:136
	scratch_load_b64 v[195:196], off, off offset:144
	scratch_load_b64 v[196:197], off, off offset:152
	scratch_load_b64 v[197:198], off, off offset:160
	scratch_load_b64 v[198:199], off, off offset:168
	scratch_load_b64 v[199:200], off, off offset:176
	scratch_load_b64 v[200:201], off, off offset:184
	scratch_load_b64 v[201:202], off, off offset:192
	s_waitcnt vmcnt(12)
	v_perm_b32 v67, v67, v246, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v97, v68, 16, v67
	ds_load_u8 v0, v187 offset:7424
	ds_load_u8 v66, v187 offset:7168
	ds_load_u8 v67, v187 offset:8064
	ds_load_u8 v68, v187 offset:7808
	ds_load_u8 v69, v187 offset:7552
	ds_load_u8 v70, v187 offset:7296
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v66, v0, 0xc0c0004
	ds_load_u8 v66, v187 offset:7936
	ds_load_u8 v71, v187 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v71, v66, 0xc0c0004
	ds_load_u8 v71, v187 offset:6400
	ds_load_u8 v99, v187 offset:6144
	ds_load_u8 v101, v187 offset:7040
	ds_load_u8 v102, v187 offset:6784
	ds_load_u8 v103, v187 offset:6528
	ds_load_u8 v104, v187 offset:6272
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v71, v99, v71, 0xc0c0004
	ds_load_u8 v99, v187 offset:6912
	ds_load_u8 v100, v187 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	v_lshl_or_b32 v100, v66, 16, v0
	v_perm_b32 v0, v70, v69, 0xc0c0004
	v_perm_b32 v66, v68, v67, 0xc0c0004
	v_perm_b32 v68, v102, v101, 0xc0c0004
	v_perm_b32 v67, v104, v103, 0xc0c0004
	v_lshl_or_b32 v99, v99, 16, v71
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v102, v66, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:364
	scratch_load_b32 v66, off, off offset:372
	v_lshl_or_b32 v101, v68, 16, v67
	v_wmma_i32_16x16x16_iu4 v[57:64], v[99:100], v[97:98], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[101:102], v[97:98], v[49:56] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v66, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v66, off, off offset:344
	scratch_load_b32 v67, off, off offset:348
	s_waitcnt vmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:408
	scratch_load_b32 v68, off, off offset:412
	v_lshl_or_b32 v98, v66, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:352
	scratch_load_b32 v66, off, off offset:356
	s_waitcnt vmcnt(2)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v68, off, off offset:384
	scratch_load_b32 v69, off, off offset:388
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v66, v0, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v97, v68, 16, v67
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v66, off, off offset:328
	scratch_load_b32 v67, off, off offset:332
	v_wmma_i32_16x16x16_iu4 v[41:48], v[99:100], v[97:98], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[101:102], v[97:98], v[33:40] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:400
	scratch_load_b32 v68, off, off offset:404
	v_lshl_or_b32 v104, v66, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:392
	scratch_load_b32 v66, off, off offset:396
	s_waitcnt vmcnt(2)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v68, off, off offset:376
	scratch_load_b32 v69, off, off offset:380
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v66, v0, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v103, v68, 16, v67
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v66, off, off offset:360
	scratch_load_b32 v67, off, off offset:368
	v_wmma_i32_16x16x16_iu4 v[25:32], v[99:100], v[103:104], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[101:102], v[103:104], v[17:24] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:336
	scratch_load_b32 v68, off, off offset:340
	v_lshl_or_b32 v105, v66, 16, v0
	s_waitcnt vmcnt(0)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v68, off, off offset:320
	scratch_load_b32 v69, off, off offset:324
	s_waitcnt vmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v106, v68, 16, v67
	v_wmma_i32_16x16x16_iu4 v[9:16], v[99:100], v[105:106], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[101:102], v[105:106], v[1:8] neg_lo:[1,1,0]
	s_branch .LBB0_5
.LBB0_12:                               ; %Flow630
	.loc	1 0 35 is_stmt 0                ; ragged.py:0:35
	scratch_load_b32 v3, off, off offset:492 ; 4-byte Folded Reload
	v_readlane_b32 s24, v255, 0
	v_readlane_b32 s25, v255, 1
	v_readlane_b32 s21, v255, 5
	v_readlane_b32 s15, v255, 4
	v_readlane_b32 s16, v255, 6
	v_and_b32_e32 v19, 15, v243
	v_readlane_b32 s26, v255, 2
	v_readlane_b32 s27, v255, 3
.LBB0_13:                               ; %._crit_edge23
	.loc	1 1004 36 is_stmt 1             ; ragged.py:1004:36
	v_lshrrev_b32_e32 v0, 4, v243
	.loc	1 1239 26                       ; ragged.py:1239:26
	s_mul_i32 s2, s16, s23
	.loc	1 1239 17 is_stmt 0             ; ragged.py:1239:17
	s_waitcnt lgkmcnt(0)
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 1004 36 is_stmt 1             ; ragged.py:1004:36
	s_waitcnt vmcnt(0)
	v_and_or_b32 v4, v0, 1, v3
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v7, 0x88, v4
	v_or_b32_e32 v8, 0x86, v4
	v_or_b32_e32 v6, 0x8a, v4
	v_or_b32_e32 v0, 0x8e, v4
	v_or_b32_e32 v5, 0x8c, v4
	v_or_b32_e32 v9, 0x84, v4
	v_or_b32_e32 v10, 0x82, v4
	.loc	1 1004 18 is_stmt 0             ; ragged.py:1004:18
	v_or_b32_e32 v11, s15, v7
	v_or_b32_e32 v12, s15, v8
	v_or_b32_e32 v3, s15, v6
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v15, 12, v4
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v1, s15, v0
	v_or_b32_e32 v2, s15, v5
	v_or_b32_e32 v13, s15, v9
	v_or_b32_e32 v14, s15, v10
	.loc	1 1006 20 is_stmt 1             ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s6, s23, v11
	v_cmp_gt_i32_e64 s7, s23, v12
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v11, 0x80, v4
	v_or_b32_e32 v12, 14, v4
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s23, v3
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v3, s15, v15
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s23, v1
	v_cmp_gt_i32_e64 s0, s23, v2
	v_cmp_gt_i32_e64 s8, s23, v13
	v_cmp_gt_i32_e64 s9, s23, v14
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v1, s15, v11
	v_or_b32_e32 v2, s15, v12
	.loc	1 1004 36 is_stmt 0             ; ragged.py:1004:36
	v_or_b32_e32 v13, 10, v4
	v_or_b32_e32 v14, 8, v4
	.loc	1 1006 20 is_stmt 1             ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s12, s23, v3
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_mul_lo_u32 v3, s23, v19
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s10, s23, v1
	v_cmp_gt_i32_e64 s11, s23, v2
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v1, s15, v13
	v_or_b32_e32 v2, s15, v14
	.loc	1 1004 36 is_stmt 0             ; ragged.py:1004:36
	v_or_b32_e32 v16, 6, v4
	v_or_b32_e32 v18, 2, v4
	v_or_b32_e32 v17, 4, v4
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v21, s15, v4
	.loc	1 1006 20 is_stmt 1             ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s13, s23, v1
	v_cmp_gt_i32_e64 s14, s23, v2
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v2, s15, v16
	v_or_b32_e32 v20, s15, v18
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_add3_u32 v1, s2, s15, v3
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v19, s15, v17
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s18, s23, v21
	v_cmp_gt_i32_e64 s15, s23, v2
	v_cmp_gt_i32_e64 s17, s23, v20
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v2, v1, v4, 2
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s16, s23, v19
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v3, v1, v18, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s20, s18
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v21, v1, v17, 2
	v_cndmask_b32_e64 v22, 0x80000000, v2, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s20, s17
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_add_nc_u32_e32 v19, s21, v1
	.loc	1 1239 17 is_stmt 0             ; ragged.py:1239:17
	v_cndmask_b32_e64 v23, 0x80000000, v3, s3
	.loc	1 1223 20 is_stmt 1             ; ragged.py:1223:20
	s_and_b32 s3, s20, s16
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_mad_u64_u32 v[2:3], null, s23, 48, v[1:2]
	.loc	1 1239 17 is_stmt 0             ; ragged.py:1239:17
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	v_add_lshl_u32 v3, v1, v16, 2
	s_clause 0x2
	buffer_store_b32 v113, v22, s[24:27], 0 offen
	buffer_store_b32 v112, v23, s[24:27], 0 offen
	buffer_store_b32 v111, v21, s[24:27], 0 offen
	v_add_lshl_u32 v21, v1, v14, 2
	.loc	1 1223 20 is_stmt 1             ; ragged.py:1223:20
	s_and_b32 s3, s20, s15
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v22, v1, v13, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s20, s14
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v23, v1, v15, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s20, s13
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v110, v3, s[24:27], 0 offen
	buffer_store_b32 v109, v21, s[24:27], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s20, s12
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v3, v1, v12, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	v_add_lshl_u32 v21, v1, v11, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s20, s11
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v165, v22, s[24:27], 0 offen
	buffer_store_b32 v107, v23, s[24:27], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v22, v1, v10, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s20, s10
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v23, v1, v9, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s20, s9
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v63, v3, s[24:27], 0 offen
	buffer_store_b32 v62, v21, s[24:27], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s20, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v3, v1, v8, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	v_add_lshl_u32 v21, v1, v7, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s20, s7
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v61, v22, s[24:27], 0 offen
	buffer_store_b32 v60, v23, s[24:27], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v22, v1, v6, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s20, s6
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v23, v1, v5, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s20, s1
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_lshl_add_u32 v20, s23, 5, v1
	.loc	1 1239 17 is_stmt 0             ; ragged.py:1239:17
	v_add_lshl_u32 v1, v1, v0, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1223 20 is_stmt 1             ; ragged.py:1223:20
	s_and_b32 s3, s20, s0
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v59, v3, s[24:27], 0 offen
	buffer_store_b32 v58, v21, s[24:27], 0 offen
	v_add_lshl_u32 v3, v19, v4, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s20, vcc_lo
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v21, v19, v18, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s34, s18
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v57, v22, s[24:27], 0 offen
	buffer_store_b32 v55, v23, s[24:27], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v22, v19, v17, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s34, s17
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v54, v1, s[24:27], 0 offen
	buffer_store_b32 v53, v3, s[24:27], 0 offen
	v_add_lshl_u32 v1, v19, v16, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s34, s16
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v3, v19, v14, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s34, s15
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v52, v21, s[24:27], 0 offen
	buffer_store_b32 v51, v22, s[24:27], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s34, s14
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v21, v19, v13, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v22, v19, v15, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s34, s13
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v50, v1, s[24:27], 0 offen
	buffer_store_b32 v49, v3, s[24:27], 0 offen
	v_add_lshl_u32 v1, v19, v12, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s34, s12
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v3, v19, v11, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s34, s11
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v46, v21, s[24:27], 0 offen
	buffer_store_b32 v45, v22, s[24:27], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s34, s10
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v21, v19, v10, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v22, v19, v9, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s34, s9
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v44, v1, s[24:27], 0 offen
	buffer_store_b32 v43, v3, s[24:27], 0 offen
	v_add_lshl_u32 v1, v19, v8, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s34, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v3, v19, v7, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s34, s7
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v42, v21, s[24:27], 0 offen
	buffer_store_b32 v41, v22, s[24:27], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s34, s6
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v21, v19, v6, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v22, v19, v5, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s34, s1
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v35, v1, s[24:27], 0 offen
	buffer_store_b32 v34, v3, s[24:27], 0 offen
	v_add_lshl_u32 v1, v19, v0, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s34, s0
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v3, v20, v4, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s34, vcc_lo
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v19, v20, v18, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s5, s18
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v33, v21, s[24:27], 0 offen
	buffer_store_b32 v186, v22, s[24:27], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v21, v20, v17, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s5, s17
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v185, v1, s[24:27], 0 offen
	buffer_store_b32 v184, v3, s[24:27], 0 offen
	v_add_lshl_u32 v1, v20, v16, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s5, s16
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v3, v20, v14, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s5, s15
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v183, v19, s[24:27], 0 offen
	buffer_store_b32 v182, v21, s[24:27], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s5, s14
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v19, v20, v13, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v21, v20, v15, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s5, s13
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v181, v1, s[24:27], 0 offen
	buffer_store_b32 v180, v3, s[24:27], 0 offen
	v_add_lshl_u32 v1, v20, v12, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s5, s12
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v3, v20, v11, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s5, s11
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v179, v19, s[24:27], 0 offen
	buffer_store_b32 v177, v21, s[24:27], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s5, s10
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v19, v20, v10, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v21, v20, v9, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s5, s9
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v176, v1, s[24:27], 0 offen
	buffer_store_b32 v72, v3, s[24:27], 0 offen
	v_add_lshl_u32 v1, v20, v8, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s5, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v3, v20, v7, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s5, s7
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v175, v19, s[24:27], 0 offen
	buffer_store_b32 v174, v21, s[24:27], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s5, s6
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v19, v20, v6, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_add_lshl_u32 v21, v20, v5, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s5, s1
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v173, v1, s[24:27], 0 offen
	buffer_store_b32 v172, v3, s[24:27], 0 offen
	v_add_lshl_u32 v1, v20, v0, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s5, s0
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v3, v2, v4, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s5, vcc_lo
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v4, v2, v18, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, s18
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v17, v2, v17, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, s17
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v171, v19, s[24:27], 0 offen
	buffer_store_b32 v170, v21, s[24:27], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, s16
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v169, v1, s[24:27], 0 offen
	buffer_store_b32 v168, v3, s[24:27], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	v_add_lshl_u32 v1, v2, v16, 2
	v_add_lshl_u32 v3, v2, v14, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, s15
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v164, v4, s[24:27], 0 offen
	buffer_store_b32 v163, v17, s[24:27], 0 offen
	v_add_lshl_u32 v4, v2, v13, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, s14
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v13, v2, v15, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, s13
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v162, v1, s[24:27], 0 offen
	buffer_store_b32 v161, v3, s[24:27], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, s12
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v1, v2, v12, 2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s3
	v_add_lshl_u32 v3, v2, v11, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, s11
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v160, v4, s[24:27], 0 offen
	buffer_store_b32 v159, v13, s[24:27], 0 offen
	v_add_lshl_u32 v4, v2, v10, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, s10
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v9, v2, v9, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, s9
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v157, v1, s[24:27], 0 offen
	buffer_store_b32 v156, v3, s[24:27], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v1, v2, v8, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	v_add_lshl_u32 v3, v2, v7, 2
	s_clause 0x1
	buffer_store_b32 v154, v4, s[24:27], 0 offen
	buffer_store_b32 v153, v9, s[24:27], 0 offen
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, s7
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v4, v2, v6, 2
	v_add_lshl_u32 v5, v2, v5, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, s6
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v0, v2, v0, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s4, s1
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, s4, s0
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v2, 0x80000000, v4, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v4, 0x80000000, v5, s0
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x4
	buffer_store_b32 v151, v1, s[24:27], 0 offen
	buffer_store_b32 v150, v3, s[24:27], 0 offen
	buffer_store_b32 v158, v2, s[24:27], 0 offen
	buffer_store_b32 v155, v4, s[24:27], 0 offen
	buffer_store_b32 v152, v0, s[24:27], 0 offen
	.loc	1 970 5                         ; ragged.py:970:5
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 500
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
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 500
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 21428
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 500
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
	.short	995                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	996                             ; DW_AT_call_line
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
    .private_segment_fixed_size: 500
    .sgpr_count:     107
    .sgpr_spill_count: 27
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 164
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
