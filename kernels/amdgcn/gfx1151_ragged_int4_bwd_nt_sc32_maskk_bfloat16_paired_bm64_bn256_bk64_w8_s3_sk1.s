	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 970 0                         ; ragged.py:970:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[34:35], s[0:1], 0x30
.Ltmp0:
	.loc	1 998 20 prologue_end           ; ragged.py:998:20
	s_abs_i32 s8, s2
	v_lshlrev_b32_e32 v108, 1, v0
	v_and_b32_e32 v109, 0x7f, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:995:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:996:21 ]
	s_add_i32 s5, s35, 0xff
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
	s_ashr_i32 s61, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_ashr_i32 s60, s5, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 997 27 is_stmt 1              ; ragged.py:997:27
	s_mul_i32 s4, s60, s61
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
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s9, s6, s5
	s_sub_i32 s8, s8, s9
	s_add_i32 s9, s6, 1
	s_sub_i32 s10, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s9, s6
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_abs_i32 s10, s60
	.loc	1 998 20                        ; ragged.py:998:20
	s_xor_b32 s5, s5, s7
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_cvt_f32_u32 s6, s10
	.loc	1 998 20                        ; ragged.py:998:20
	s_sub_i32 s46, s5, s7
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s5, 0, s10
	.loc	1 999 22                        ; ragged.py:999:22
	s_mul_i32 s4, s46, s4
	.loc	1 1000 17                       ; ragged.py:1000:17
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s8, s6
	.loc	1 999 16                        ; ragged.py:999:16
	s_sub_i32 s6, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_xor_b32 s7, s6, s60
	s_mul_i32 s5, s5, s8
	s_ashr_i32 s58, s7, 31
	s_mul_hi_u32 s4, s8, s5
	s_abs_i32 s5, s6
	s_add_i32 s4, s8, s4
	s_load_b64 s[8:9], s[0:1], 0x20
	s_mul_hi_u32 s4, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s4, s10
	s_add_i32 s7, s4, 1
	s_sub_i32 s5, s5, s11
	s_sub_i32 s11, s5, s10
	s_cmp_ge_u32 s5, s10
	s_cselect_b32 s4, s7, s4
	s_cselect_b32 s5, s11, s5
	s_add_i32 s7, s4, 1
	s_cmp_ge_u32 s5, s10
	s_mov_b32 s5, 0
	s_cselect_b32 s4, s7, s4
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_ashr_i32 s47, s46, 31
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_xor_b32 s59, s4, s58
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_lshl_b64 s[10:11], s[46:47], 2
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s4, s59, s58
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s8, s8, s10
	s_addc_u32 s9, s9, s11
	.loc	1 1001 24                       ; ragged.py:1001:24
	s_mul_i32 s7, s4, s60
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_load_b32 s47, s[8:9], 0x0
	.loc	1 1008 27                       ; ragged.py:1008:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s28, s47, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_cmp_gt_i32 s28, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge31_crit_edge
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_lshlrev_b32_e32 v1, 1, v0
	v_and_b32_e32 v32, 0x7f, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 34 is_stmt 0                ; ragged.py:0:34
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr32
.LBB0_3:                                ; %Flow279
	s_load_b64 s[48:49], s[0:1], 0x28
	v_dual_mov_b32 v97, 0 :: v_dual_and_b32 v98, 0x80, v0
	v_dual_mov_b32 v100, 0 :: v_dual_and_b32 v65, 15, v0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v102, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u32_e64 s26, 0, v98
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v177, 0
	v_mov_b32_e32 v168, 0
	v_mov_b32_e32 v176, 0
	s_sub_i32 s33, s6, s7
	s_lshl_b32 s50, s4, 6
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_mul_i32 s27, s46, s34
	s_cbranch_vccnz .LBB0_12
; %bb.4:                                ; %.lr.ph30
	s_clause 0x1
	s_load_b256 s[36:43], s[0:1], 0x0
	s_load_b64 s[44:45], s[0:1], 0x38
	.loc	1 1003 36 is_stmt 1             ; ragged.py:1003:36
	v_lshrrev_b32_e32 v4, 4, v0
	.loc	1 1004 18                       ; ragged.py:1004:18
	s_lshl_b32 s55, s33, 8
	.loc	1 1008 26                       ; ragged.py:1008:26
	s_lshr_b32 s29, s28, 31
	.loc	1 1162 43                       ; ragged.py:1162:43
	s_mul_i32 s62, s46, s35
	.loc	1 1008 26                       ; ragged.py:1008:26
	s_add_i32 s28, s28, s29
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v1, 16, v4
	v_or_b32_e32 v2, 32, v4
	.loc	1 1003 18 is_stmt 0             ; ragged.py:1003:18
	v_or_b32_e32 v7, s50, v4
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v3, 48, v4
	.loc	1 1150 55 is_stmt 1             ; ragged.py:1150:55
	s_lshr_b32 s29, s47, 31
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v8, s50, v1
	v_or_b32_e32 v9, s50, v2
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v1, s55, v1
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e32 vcc_lo, s34, v7
	v_dual_mov_b32 v164, 0 :: v_dual_lshlrev_b32 v7, 4, v0
	v_cmp_gt_i32_e64 s0, s34, v8
	v_cmp_gt_i32_e64 s1, s34, v9
	v_bfe_i32 v8, v0, 3, 1
	v_dual_mov_b32 v160, 0 :: v_dual_lshlrev_b32 v9, 3, v0
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s8, s35, v1
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s44, v4
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v10, s50, v3
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v2, s55, v2
	v_or_b32_e32 v3, s55, v3
	v_dual_mov_b32 v158, 0 :: v_dual_and_b32 v7, 0x70, v7
	v_dual_mov_b32 v161, 0 :: v_dual_and_b32 v8, 0x88, v8
	v_dual_mov_b32 v156, 0 :: v_dual_and_b32 v9, 0x700, v9
	.loc	1 1008 26                       ; ragged.py:1008:26
	s_ashr_i32 s51, s28, 1
	.loc	1 1150 55                       ; ragged.py:1150:55
	s_add_i32 s28, s47, s29
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v13, s55, v4
	v_or_b32_e32 v143, s55, v0
	.loc	1 1118 23                       ; ragged.py:1118:23
	s_lshl_b32 s52, s3, 4
	.loc	1 1150 55                       ; ragged.py:1150:55
	s_ashr_i32 s53, s28, 1
	s_add_i32 s3, s50, s27
	s_and_b32 s29, s37, 0xffff
	s_add_i32 s55, s55, s62
	s_and_b32 s37, s39, 0xffff
	s_bitcmp1_b32 s47, 0
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_mul_i32 s61, s61, s46
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v6, s50, v65
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s9, s35, v2
	v_cmp_gt_i32_e64 s10, s35, v3
	v_mad_u64_u32 v[2:3], null, s44, 48, v[1:2]
	v_or_b32_e32 v165, v8, v7
	v_or3_b32 v167, v7, v9, v8
	v_dual_mov_b32 v152, 0 :: v_dual_add_nc_u32 v7, s3, v65
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s24, s34, v10
	v_lshl_add_u32 v3, s44, 5, v1
	s_mul_i32 s63, s3, s44
	v_cndmask_b32_e64 v10, 0x88, 0, s26
	s_cselect_b32 s26, -1, 0
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_sub_i32 s3, s58, s61
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v11, 16, v6
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_sub_i32 s3, s3, s59
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v12, 32, v6
	v_or_b32_e32 v14, 48, v6
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s25, s34, v6
	v_lshl_add_u32 v6, s44, 4, v1
	v_dual_mov_b32 v177, 0 :: v_dual_add_nc_u32 v66, v1, v65
	v_dual_mov_b32 v159, 0 :: v_dual_add_nc_u32 v172, s63, v1
	v_dual_mov_b32 v148, 0 :: v_dual_add_nc_u32 v1, 16, v7
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_mul_i32 s60, s60, s3
	v_dual_mov_b32 v173, 0 :: v_dual_add_nc_u32 v154, v3, v65
	v_dual_mov_b32 v150, 0 :: v_dual_add_nc_u32 v175, s63, v3
	v_dual_mov_b32 v146, 0 :: v_dual_add_nc_u32 v3, 48, v7
	s_lshl_b32 s3, s60, 8
	s_lshl_b32 s2, s2, 8
	s_add_i32 s3, s3, s62
	v_dual_mov_b32 v176, 0 :: v_dual_and_b32 v5, 0xf0, v0
	v_dual_mov_b32 v166, 0 :: v_dual_add_nc_u32 v155, v2, v65
	v_dual_mov_b32 v151, 0 :: v_dual_add_nc_u32 v178, s63, v2
	v_dual_mov_b32 v149, 0 :: v_dual_add_nc_u32 v2, 32, v7
	v_mul_lo_u32 v180, v1, s45
	v_dual_mov_b32 v144, 0 :: v_dual_lshlrev_b32 v1, 5, v0
	v_mul_lo_u32 v182, v3, s45
	v_add3_u32 v3, s3, s2, v4
	v_mul_lo_u32 v181, v2, s45
	v_dual_mov_b32 v147, 0 :: v_dual_lshlrev_b32 v2, 2, v5
	v_dual_mov_b32 v142, 0 :: v_dual_and_b32 v1, 32, v1
	v_mul_lo_u32 v179, v7, s45
	v_dual_mov_b32 v140, 0 :: v_dual_add_nc_u32 v7, 0xf0, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v1, 0, v2, v1
	v_dual_mov_b32 v141, 0 :: v_dual_lshlrev_b32 v2, 1, v5
	v_dual_mov_b32 v138, 0 :: v_dual_add_nc_u32 v5, 0xe0, v3
	v_mad_u64_u32 v[67:68], null, s44, v7, v[65:66]
	v_dual_mov_b32 v136, 0 :: v_dual_add_nc_u32 v7, 0xd0, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[68:69], null, s44, v5, v[65:66]
	v_dual_mov_b32 v134, 0 :: v_dual_add_nc_u32 v5, 0xc0, v3
	v_mad_u64_u32 v[69:70], null, s44, v7, v[65:66]
	v_dual_mov_b32 v132, 0 :: v_dual_add_nc_u32 v7, 0xb0, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[70:71], null, s44, v5, v[65:66]
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v5, 0xa0, v3
	v_mad_u64_u32 v[71:72], null, s44, v7, v[65:66]
	v_dual_mov_b32 v128, 0 :: v_dual_add_nc_u32 v7, 0x90, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[72:73], null, s44, v5, v[65:66]
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v5, 0x80, v3
	v_mad_u64_u32 v[73:74], null, s44, v7, v[65:66]
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v7, 0x70, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[74:75], null, s44, v5, v[65:66]
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v5, 0x60, v3
	v_mad_u64_u32 v[75:76], null, s44, v7, v[65:66]
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v7, 0x50, v3
	s_lshl_b32 s2, s59, 6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[76:77], null, s44, v5, v[65:66]
	v_dual_mov_b32 v118, 0 :: v_dual_add_nc_u32 v5, 64, v3
	v_mad_u64_u32 v[77:78], null, s44, v7, v[65:66]
	v_dual_mov_b32 v116, 0 :: v_dual_add_nc_u32 v7, 48, v3
	v_add3_u32 v4, s27, s2, v4
	s_lshl_b32 s2, s58, 6
	v_mad_u64_u32 v[78:79], null, s44, v5, v[65:66]
	v_dual_mov_b32 v114, 0 :: v_dual_add_nc_u32 v5, 32, v3
	v_mad_u64_u32 v[79:80], null, s44, v7, v[65:66]
	v_dual_mov_b32 v112, 0 :: v_dual_add_nc_u32 v7, 16, v3
	v_subrev_nc_u32_e32 v4, s2, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[80:81], null, s44, v5, v[65:66]
	v_mad_u64_u32 v[81:82], null, s44, v7, v[65:66]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v110, 0 :: v_dual_add_nc_u32 v5, 48, v4
	v_mad_u64_u32 v[82:83], null, s44, v3, v[65:66]
	v_dual_mov_b32 v106, 0 :: v_dual_add_nc_u32 v3, 32, v4
	v_dual_mov_b32 v104, 0 :: v_dual_add_nc_u32 v7, 16, v4
	v_mad_u64_u32 v[83:84], null, s44, v5, v[65:66]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[84:85], null, s44, v3, v[65:66]
	v_mad_u64_u32 v[85:86], null, s44, v7, v[65:66]
	v_mad_u64_u32 v[86:87], null, s44, v4, v[65:66]
	v_mad_u64_u32 v[87:88], null, 0x50, s44, v[66:67]
	v_mad_u64_u32 v[88:89], null, 0x60, s44, v[66:67]
	v_mad_u64_u32 v[89:90], null, 0x70, s44, v[66:67]
	v_mad_u64_u32 v[90:91], null, 0x90, s44, v[66:67]
	v_mad_u64_u32 v[91:92], null, 0xa0, s44, v[66:67]
	v_mad_u64_u32 v[92:93], null, 0xb0, s44, v[66:67]
	v_mad_u64_u32 v[93:94], null, 0xc0, s44, v[66:67]
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v15, 64, v13
	v_or_b32_e32 v16, 0x50, v13
	v_or_b32_e32 v17, 0x60, v13
	v_or_b32_e32 v18, 0x70, v13
	v_or_b32_e32 v19, 0x80, v13
	v_or_b32_e32 v20, 0x90, v13
	v_or_b32_e32 v21, 0xa0, v13
	v_or_b32_e32 v22, 0xb0, v13
	v_or_b32_e32 v23, 0xc0, v13
	v_or_b32_e32 v24, 0xd0, v13
	v_or_b32_e32 v25, 0xe0, v13
	v_or_b32_e32 v26, 0xf0, v13
	v_dual_mov_b32 v168, 0 :: v_dual_add_nc_u32 v153, v6, v65
	v_dual_mov_b32 v157, 0 :: v_dual_add_nc_u32 v174, s63, v6
	v_dual_mov_b32 v145, 0 :: v_dual_and_b32 v6, 28, v108
	v_mad_u64_u32 v[94:95], null, 0xd0, s44, v[66:67]
	v_mad_u64_u32 v[95:96], null, 0xe0, s44, v[66:67]
	v_mad_u64_u32 v[96:97], null, 0xf0, s44, v[66:67]
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s4, s34, v11
	v_cmp_gt_i32_e64 s5, s34, v12
	v_cmp_gt_i32_e64 s6, s34, v14
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s7, s35, v13
	v_cmp_gt_i32_e64 s11, s35, v15
	v_cmp_gt_i32_e64 s12, s35, v16
	v_cmp_gt_i32_e64 s13, s35, v17
	v_cmp_gt_i32_e64 s14, s35, v18
	v_cmp_gt_i32_e64 s15, s35, v19
	v_cmp_gt_i32_e64 s16, s35, v20
	v_cmp_gt_i32_e64 s17, s35, v21
	v_cmp_gt_i32_e64 s18, s35, v22
	v_cmp_gt_i32_e64 s19, s35, v23
	v_cmp_gt_i32_e64 s20, s35, v24
	v_cmp_gt_i32_e64 s21, s35, v25
	v_cmp_gt_i32_e64 s22, s35, v26
	v_cmp_gt_i32_e64 s23, s35, v143
	v_lshl_add_u32 v162, s44, 6, v66
	v_lshl_add_u32 v163, s44, 7, v66
	v_xor_b32_e32 v169, v10, v109
	v_xor_b32_e32 v170, 8, v165
	v_xor_b32_e32 v171, 8, v167
	v_dual_mov_b32 v102, 0 :: v_dual_add_nc_u32 v183, v1, v6
	v_dual_mov_b32 v139, 0 :: v_dual_add_nc_u32 v184, 0, v2
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v100, 0
	v_mov_b32_e32 v135, 0
	v_mov_b32_e32 v133, 0
	v_mov_b32_e32 v131, 0
	v_mov_b32_e32 v129, 0
	v_mov_b32_e32 v127, 0
	v_mov_b32_e32 v125, 0
	v_mov_b32_e32 v123, 0
	v_mov_b32_e32 v121, 0
	v_mov_b32_e32 v119, 0
	v_mov_b32_e32 v117, 0
	v_mov_b32_e32 v115, 0
	v_mov_b32_e32 v113, 0
	v_mov_b32_e32 v111, 0
	v_mov_b32_e32 v107, 0
	v_mov_b32_e32 v105, 0
	v_mov_b32_e32 v103, 0
	v_mov_b32_e32 v101, 0
	v_mov_b32_e32 v99, 0
	v_mov_b32_e32 v97, 0
	s_add_i32 s56, s51, -1
	.loc	1 1214 37                       ; ragged.py:1214:37
	s_mul_i32 s54, s46, s45
	s_mov_b32 s28, s36
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_mul_i32 s55, s55, s44
	s_mov_b32 s36, s38
	s_mov_b32 s57, 0
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s45, s43, 0xffff
	s_mov_b32 s44, s42
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_lshr_b32 s58, s56, 4
	s_mov_b32 s2, 0
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_add_lshl_u32 v185, v179, s57, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s2, s57, s54
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_add_lshl_u32 v186, v180, s57, 1
	v_add_lshl_u32 v187, v181, s57, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s2, s2, s35
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_add_lshl_u32 v188, v182, s57, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v189, v143, s2, 1
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_cndmask_b32_e64 v185, 0x80000000, v185, s25
	v_cndmask_b32_e64 v186, 0x80000000, v186, s4
	v_cndmask_b32_e64 v187, 0x80000000, v187, s5
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
	v_cndmask_b32_e64 v188, 0x80000000, v188, s6
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_cndmask_b32_e64 v189, 0x80000000, v189, s23
	s_mov_b32 s46, s30
	s_mov_b32 s47, s31
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_clause 0x3
	buffer_load_u16 v185, v185, s[40:43], 0 offen
	buffer_load_u16 v186, v186, s[40:43], 0 offen
	buffer_load_u16 v187, v187, s[40:43], 0 offen
	buffer_load_u16 v188, v188, s[40:43], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v189, v189, s[44:47], 0 offen
	.loc	1 1204 27                       ; ragged.py:1204:27
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v191, v2
	v_cvt_f32_i32_e32 v192, v3
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
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
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
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v190, v1
	v_cvt_f32_i32_e32 v193, v4
	v_cvt_f32_i32_e32 v194, v5
	v_cvt_f32_i32_e32 v195, v6
	v_cvt_f32_i32_e32 v196, v7
	v_cvt_f32_i32_e32 v197, v8
	.loc	1 1218 21                       ; ragged.py:1218:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1220 17                       ; ragged.py:1220:17
	s_add_i32 s3, s57, 1
	.loc	1 1115 19                       ; ragged.py:1115:19
	v_add_nc_u32_e32 v86, 16, v86
	s_lshl_b32 s2, s3, 4
	s_cmp_lg_u32 s57, s58
	s_mov_b32 s57, s3
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v3, 16, v187
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_dual_mul_f32 v25, v25, v3 :: v_dual_lshlrev_b32 v2, 16, v186
	v_dual_mul_f32 v36, v36, v2 :: v_dual_lshlrev_b32 v1, 16, v185
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v185, 16, v188
	.loc	1 1211 21                       ; ragged.py:1211:21
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v43, v43, v2 :: v_dual_lshlrev_b32 v4, 16, v189
	v_dual_mul_f32 v58, v58, v1 :: v_dual_add_nc_u32 v67, 16, v67
	v_dual_mul_f32 v57, v57, v1 :: v_dual_add_nc_u32 v68, 16, v68
	v_dual_mul_f32 v42, v42, v2 :: v_dual_add_nc_u32 v69, 16, v69
	v_dual_mul_f32 v59, v59, v1 :: v_dual_add_nc_u32 v70, 16, v70
	v_dual_mul_f32 v60, v60, v1 :: v_dual_add_nc_u32 v71, 16, v71
	v_dual_mul_f32 v61, v61, v1 :: v_dual_add_nc_u32 v72, 16, v72
	v_dual_mul_f32 v44, v44, v2 :: v_dual_add_nc_u32 v73, 16, v73
	v_dual_mul_f32 v63, v63, v1 :: v_dual_add_nc_u32 v74, 16, v74
	v_dual_mul_f32 v62, v62, v1 :: v_dual_add_nc_u32 v75, 16, v75
	v_dual_mul_f32 v49, v49, v1 :: v_dual_add_nc_u32 v76, 16, v76
	v_dual_mul_f32 v46, v46, v2 :: v_dual_add_nc_u32 v77, 16, v77
	v_dual_mul_f32 v51, v51, v1 :: v_dual_add_nc_u32 v78, 16, v78
	v_dual_mul_f32 v64, v64, v1 :: v_dual_add_nc_u32 v79, 16, v79
	v_dual_mul_f32 v53, v53, v1 :: v_dual_add_nc_u32 v80, 16, v80
	v_dual_mul_f32 v48, v48, v2 :: v_dual_add_nc_u32 v81, 16, v81
	v_dual_mul_f32 v55, v55, v1 :: v_dual_add_nc_u32 v82, 16, v82
	v_dual_mul_f32 v50, v50, v1 :: v_dual_add_nc_u32 v83, 16, v83
	v_dual_mul_f32 v41, v41, v2 :: v_dual_add_nc_u32 v84, 16, v84
	v_dual_mul_f32 v34, v34, v2 :: v_dual_add_nc_u32 v85, 16, v85
	v_mul_f32_e32 v52, v52, v1
	v_mul_f32_e32 v54, v54, v1
	v_dual_mul_f32 v56, v56, v1 :: v_dual_mul_f32 v45, v45, v2
	v_dual_mul_f32 v47, v47, v2 :: v_dual_mul_f32 v26, v26, v3
	v_dual_mul_f32 v33, v33, v2 :: v_dual_mul_f32 v28, v28, v3
	v_dual_mul_f32 v35, v35, v2 :: v_dual_mul_f32 v30, v30, v3
	v_dual_mul_f32 v37, v37, v2 :: v_dual_mul_f32 v32, v32, v3
	v_dual_mul_f32 v38, v38, v2 :: v_dual_mul_f32 v27, v27, v3
	v_dual_mul_f32 v39, v39, v2 :: v_dual_mul_f32 v18, v18, v3
	v_dual_mul_f32 v40, v40, v2 :: v_dual_mul_f32 v29, v29, v3
	v_dual_mul_f32 v31, v31, v3 :: v_dual_mul_f32 v186, v9, v185
	v_dual_mul_f32 v17, v17, v3 :: v_dual_mul_f32 v188, v11, v185
	v_dual_mul_f32 v19, v19, v3 :: v_dual_mul_f32 v198, v13, v185
	v_dual_mul_f32 v20, v20, v3 :: v_dual_mul_f32 v187, v10, v185
	v_dual_mul_f32 v21, v21, v3 :: v_dual_mul_f32 v200, v15, v185
	v_dual_mul_f32 v22, v22, v3 :: v_dual_mul_f32 v189, v12, v185
	v_dual_mul_f32 v23, v23, v3 :: v_dual_mul_f32 v190, v190, v185
	v_dual_mul_f32 v24, v24, v3 :: v_dual_mul_f32 v199, v14, v185
	.loc	1 1218 21                       ; ragged.py:1218:21
	ds_store_b32 v183, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v184
	ds_load_b128 v[5:8], v184 offset:16
	ds_load_b128 v[9:12], v184 offset:512
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_mul_f32_e32 v201, v16, v185
	.loc	1 1218 21                       ; ragged.py:1218:21
	ds_load_b128 v[13:16], v184 offset:528
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_mul_f32_e32 v191, v191, v185
	v_mul_f32_e32 v192, v192, v185
	v_mul_f32_e32 v193, v193, v185
	v_mul_f32_e32 v194, v194, v185
	v_mul_f32_e32 v195, v195, v185
	v_mul_f32_e32 v196, v196, v185
	v_mul_f32_e32 v185, v197, v185
	.loc	1 1219 17                       ; ragged.py:1219:17
	s_waitcnt lgkmcnt(3)
	v_dual_fmac_f32 v177, v57, v1 :: v_dual_fmac_f32 v176, v58, v2
	v_dual_fmac_f32 v173, v59, v3 :: v_dual_fmac_f32 v168, v60, v4
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v166, v61, v5 :: v_dual_fmac_f32 v151, v54, v14
	v_dual_fmac_f32 v164, v62, v6 :: v_dual_fmac_f32 v161, v63, v7
	v_dual_fmac_f32 v160, v64, v8 :: v_dual_fmac_f32 v159, v49, v9
	v_fmac_f32_e32 v150, v55, v15
	v_dual_fmac_f32 v158, v50, v10 :: v_dual_fmac_f32 v157, v51, v11
	v_fmac_f32_e32 v156, v52, v12
	v_dual_fmac_f32 v152, v53, v13 :: v_dual_fmac_f32 v149, v56, v16
	v_dual_fmac_f32 v148, v41, v1 :: v_dual_fmac_f32 v147, v42, v2
	v_dual_fmac_f32 v146, v43, v3 :: v_dual_fmac_f32 v145, v44, v4
	v_dual_fmac_f32 v144, v45, v5 :: v_dual_fmac_f32 v141, v47, v7
	v_dual_fmac_f32 v142, v46, v6 :: v_dual_fmac_f32 v139, v33, v9
	v_dual_fmac_f32 v140, v48, v8 :: v_dual_fmac_f32 v137, v35, v11
	v_dual_fmac_f32 v138, v34, v10 :: v_dual_fmac_f32 v135, v37, v13
	v_dual_fmac_f32 v136, v36, v12 :: v_dual_fmac_f32 v133, v39, v15
	v_dual_fmac_f32 v134, v38, v14 :: v_dual_fmac_f32 v131, v25, v1
	v_dual_fmac_f32 v132, v40, v16 :: v_dual_fmac_f32 v129, v27, v3
	v_dual_fmac_f32 v130, v26, v2 :: v_dual_fmac_f32 v127, v29, v5
	v_dual_fmac_f32 v128, v28, v4 :: v_dual_fmac_f32 v125, v31, v7
	v_dual_fmac_f32 v126, v30, v6 :: v_dual_fmac_f32 v123, v17, v9
	v_dual_fmac_f32 v124, v32, v8 :: v_dual_fmac_f32 v121, v19, v11
	v_dual_fmac_f32 v122, v18, v10 :: v_dual_fmac_f32 v119, v21, v13
	v_dual_fmac_f32 v120, v20, v12 :: v_dual_fmac_f32 v117, v23, v15
	v_dual_fmac_f32 v118, v22, v14 :: v_dual_fmac_f32 v113, v188, v3
	v_dual_fmac_f32 v116, v24, v16 :: v_dual_fmac_f32 v115, v186, v1
	v_dual_fmac_f32 v114, v187, v2 :: v_dual_fmac_f32 v111, v198, v5
	v_dual_fmac_f32 v112, v189, v4 :: v_dual_fmac_f32 v107, v200, v7
	v_dual_fmac_f32 v110, v199, v6 :: v_dual_fmac_f32 v105, v190, v9
	v_dual_fmac_f32 v106, v201, v8 :: v_dual_fmac_f32 v103, v192, v11
	v_dual_fmac_f32 v104, v191, v10 :: v_dual_fmac_f32 v99, v196, v15
	v_dual_fmac_f32 v102, v193, v12 :: v_dual_fmac_f32 v101, v195, v14
	v_dual_fmac_f32 v100, v194, v13 :: v_dual_fmac_f32 v97, v185, v16
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_cbranch_scc0 .LBB0_11
.LBB0_6:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 1150 54                       ; ragged.py:1150:54
	s_sub_i32 s3, s53, s2
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v7, 0
	.loc	1 1148 45                       ; ragged.py:1148:45
	v_med3_i32 v1, s3, 0, 16
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v3, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1152 41                       ; ragged.py:1152:41
	v_readfirstlane_b32 s3, v1
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
	s_and_b32 s42, s3, 16
	s_mov_b32 s3, s52
	.loc	1 1155 27                       ; ragged.py:1155:27
	s_cmp_ge_i32 s52, s42
	s_cbranch_scc1 .LBB0_9
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v57, 0
	s_mov_b32 s3, s52
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
.LBB0_8:                                ; %.lr.ph
                                        ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1165 46 is_stmt 1             ; ragged.py:1165:46
	v_add_nc_u32_e32 v185, s3, v86
	v_add_nc_u32_e32 v186, s3, v85
	v_add_nc_u32_e32 v187, s3, v84
	.loc	1 1165 38 is_stmt 0             ; ragged.py:1165:38
	v_add_nc_u32_e32 v188, s3, v83
	.loc	1 1166 46 is_stmt 1             ; ragged.py:1166:46
	v_add_nc_u32_e32 v189, s3, v82
	v_add_nc_u32_e32 v201, s3, v70
	v_add_nc_u32_e32 v202, s3, v69
	v_add_nc_u32_e32 v203, s3, v68
	.loc	1 1166 38 is_stmt 0             ; ragged.py:1166:38
	v_add_nc_u32_e32 v204, s3, v67
	.loc	1 1166 46                       ; ragged.py:1166:46
	v_add_nc_u32_e32 v190, s3, v81
	v_add_nc_u32_e32 v191, s3, v80
	v_add_nc_u32_e32 v192, s3, v79
	v_add_nc_u32_e32 v193, s3, v78
	v_add_nc_u32_e32 v194, s3, v77
	v_add_nc_u32_e32 v195, s3, v76
	v_add_nc_u32_e32 v196, s3, v75
	v_add_nc_u32_e32 v197, s3, v74
	v_add_nc_u32_e32 v198, s3, v73
	v_add_nc_u32_e32 v199, s3, v72
	v_add_nc_u32_e32 v200, s3, v71
	.loc	1 1165 38 is_stmt 1             ; ragged.py:1165:38
	v_dual_cndmask_b32 v185, 0x80000000, v185 :: v_dual_add_nc_u32 v218, 0, v167
	v_cndmask_b32_e64 v186, 0x80000000, v186, s0
	v_cndmask_b32_e64 v187, 0x80000000, v187, s1
	v_cndmask_b32_e64 v188, 0x80000000, v188, s24
	.loc	1 1166 38                       ; ragged.py:1166:38
	v_cndmask_b32_e64 v189, 0x80000000, v189, s7
	v_cndmask_b32_e64 v201, 0x80000000, v201, s19
	v_cndmask_b32_e64 v202, 0x80000000, v202, s20
	v_cndmask_b32_e64 v203, 0x80000000, v203, s21
	v_cndmask_b32_e64 v204, 0x80000000, v204, s22
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	v_cndmask_b32_e64 v190, 0x80000000, v190, s8
	v_cndmask_b32_e64 v191, 0x80000000, v191, s9
	v_cndmask_b32_e64 v192, 0x80000000, v192, s10
	v_cndmask_b32_e64 v193, 0x80000000, v193, s11
	v_cndmask_b32_e64 v194, 0x80000000, v194, s12
	v_cndmask_b32_e64 v195, 0x80000000, v195, s13
	v_cndmask_b32_e64 v196, 0x80000000, v196, s14
	v_cndmask_b32_e64 v197, 0x80000000, v197, s15
	v_cndmask_b32_e64 v198, 0x80000000, v198, s16
	v_cndmask_b32_e64 v199, 0x80000000, v199, s17
	v_cndmask_b32_e64 v200, 0x80000000, v200, s18
	.loc	1 1165 38                       ; ragged.py:1165:38
	s_clause 0x3
	buffer_load_u8 v185, v185, s[28:31], 0 offen
	buffer_load_u8 v186, v186, s[28:31], 0 offen
	buffer_load_u8 v187, v187, s[28:31], 0 offen
	buffer_load_u8 v188, v188, s[28:31], 0 offen
	.loc	1 1166 38                       ; ragged.py:1166:38
	s_clause 0xf
	buffer_load_u8 v205, v189, s[36:39], 0 offen
	buffer_load_u8 v206, v190, s[36:39], 0 offen
	buffer_load_u8 v207, v191, s[36:39], 0 offen
	buffer_load_u8 v208, v192, s[36:39], 0 offen
	buffer_load_u8 v209, v193, s[36:39], 0 offen
	buffer_load_u8 v210, v194, s[36:39], 0 offen
	buffer_load_u8 v211, v195, s[36:39], 0 offen
	buffer_load_u8 v212, v196, s[36:39], 0 offen
	buffer_load_u8 v213, v197, s[36:39], 0 offen
	buffer_load_u8 v214, v198, s[36:39], 0 offen
	buffer_load_u8 v215, v199, s[36:39], 0 offen
	buffer_load_u8 v216, v200, s[36:39], 0 offen
	buffer_load_u8 v201, v201, s[36:39], 0 offen
	buffer_load_u8 v202, v202, s[36:39], 0 offen
	buffer_load_u8 v203, v203, s[36:39], 0 offen
	buffer_load_u8 v204, v204, s[36:39], 0 offen
	.loc	1 1165 38                       ; ragged.py:1165:38
	v_add_nc_u32_e32 v217, 0, v169
	v_add_nc_u32_e32 v189, 0, v165
	.loc	1 1166 38                       ; ragged.py:1166:38
	v_add_nc_u32_e32 v219, 0, v171
	.loc	1 1165 38                       ; ragged.py:1165:38
	v_add_nc_u32_e32 v197, 0, v170
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1177 25                       ; ragged.py:1177:25
	s_add_i32 s3, s3, 16
	.loc	1 1165 38                       ; ragged.py:1165:38
	s_waitcnt vmcnt(19)
	ds_store_b8 v217, v185
	s_waitcnt vmcnt(18)
	ds_store_b8 v217, v186 offset:256
	s_waitcnt vmcnt(17)
	ds_store_b8 v217, v187 offset:512
	s_waitcnt vmcnt(16)
	ds_store_b8 v217, v188 offset:768
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[185:188], v189 offset1:32
	ds_load_2addr_b64 v[189:192], v189 offset0:64 offset1:96
	ds_load_2addr_b64 v[193:196], v197 offset1:32
	ds_load_2addr_b64 v[197:200], v197 offset0:64 offset1:96
	.loc	1 1166 38                       ; ragged.py:1166:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b8 v217, v205
	s_waitcnt vmcnt(14)
	ds_store_b8 v217, v206 offset:256
	s_waitcnt vmcnt(13)
	ds_store_b8 v217, v207 offset:512
	s_waitcnt vmcnt(12)
	ds_store_b8 v217, v208 offset:768
	s_waitcnt vmcnt(11)
	ds_store_b8 v217, v209 offset:1024
	s_waitcnt vmcnt(10)
	ds_store_b8 v217, v210 offset:1280
	s_waitcnt vmcnt(9)
	ds_store_b8 v217, v211 offset:1536
	s_waitcnt vmcnt(8)
	ds_store_b8 v217, v212 offset:1792
	s_waitcnt vmcnt(7)
	ds_store_b8 v217, v213 offset:2048
	s_waitcnt vmcnt(6)
	ds_store_b8 v217, v214 offset:2304
	s_waitcnt vmcnt(5)
	ds_store_b8 v217, v215 offset:2560
	s_waitcnt vmcnt(4)
	ds_store_b8 v217, v216 offset:2816
	s_waitcnt vmcnt(3)
	ds_store_b8 v217, v201 offset:3072
	s_waitcnt vmcnt(2)
	ds_store_b8 v217, v202 offset:3328
	s_waitcnt vmcnt(1)
	ds_store_b8 v217, v203 offset:3584
	s_waitcnt vmcnt(0)
	ds_store_b8 v217, v204 offset:3840
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[201:204], v218 offset1:4
	ds_load_2addr_stride64_b64 v[205:208], v219 offset1:4
	.loc	1 1155 27                       ; ragged.py:1155:27
	s_cmp_lt_i32 s3, s42
	.loc	1 1167 35                       ; ragged.py:1167:35
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[201:202], v[185:186], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[203:204], v[185:186], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[201:202], v[187:188], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[203:204], v[187:188], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[201:202], v[189:190], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[203:204], v[189:190], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[201:202], v[191:192], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[203:204], v[191:192], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[205:206], v[193:194], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[207:208], v[193:194], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[205:206], v[195:196], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[207:208], v[195:196], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[205:206], v[197:198], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[207:208], v[197:198], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[205:206], v[199:200], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[207:208], v[199:200], v[1:8] neg_lo:[1,1,0]
	.loc	1 1155 27                       ; ragged.py:1155:27
	s_cbranch_scc1 .LBB0_8
.LBB0_9:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1146 25                       ; ragged.py:1146:25
	s_sub_i32 s38, s51, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1144 42                       ; ragged.py:1144:42
	s_min_i32 s38, s38, 16
	.loc	1 1178 24                       ; ragged.py:1178:24
	s_cmp_ge_i32 s3, s38
	.loc	1 1178 21 is_stmt 0             ; ragged.py:1178:21
	s_cbranch_scc1 .LBB0_5
; %bb.10:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1179 30 is_stmt 1             ; ragged.py:1179:30
	s_add_i32 s3, s3, s2
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_add_nc_u32_e32 v220, 0, v169
	.loc	1 1179 30                       ; ragged.py:1179:30
	v_or_b32_e32 v185, s3, v65
	.loc	1 1191 46                       ; ragged.py:1191:46
	s_add_i32 s39, s3, s55
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_add_nc_u32_e32 v221, 0, v165
	v_add_nc_u32_e32 v187, s39, v66
	v_add_nc_u32_e32 v191, s39, v153
	.loc	1 1188 35                       ; ragged.py:1188:35
	v_subrev_nc_u32_e32 v186, s2, v185
	v_add_nc_u32_e32 v188, v185, v174
	v_add_nc_u32_e32 v189, v185, v175
	v_add_nc_u32_e32 v190, v185, v178
	v_add_nc_u32_e32 v192, s39, v88
	.loc	1 1188 34 is_stmt 0             ; ragged.py:1188:34
	v_cmp_gt_i32_e64 s2, s38, v186
	v_add_nc_u32_e32 v186, v185, v172
	v_add_nc_u32_e32 v193, s39, v89
	v_add_nc_u32_e32 v194, s39, v163
	v_add_nc_u32_e32 v199, s39, v90
	.loc	1 1190 70 is_stmt 1             ; ragged.py:1190:70
	s_and_b32 s3, vcc_lo, s2
	v_add_nc_u32_e32 v200, s39, v91
	.loc	1 1190 38 is_stmt 0             ; ragged.py:1190:38
	v_cndmask_b32_e64 v186, 0x80000000, v186, s3
	.loc	1 1190 70                       ; ragged.py:1190:70
	s_and_b32 s3, s0, s2
	v_add_nc_u32_e32 v201, s39, v92
	.loc	1 1190 38                       ; ragged.py:1190:38
	v_cndmask_b32_e64 v188, 0x80000000, v188, s3
	.loc	1 1190 70                       ; ragged.py:1190:70
	s_and_b32 s3, s1, s2
	v_add_nc_u32_e32 v202, s39, v93
	.loc	1 1190 38                       ; ragged.py:1190:38
	v_cndmask_b32_e64 v189, 0x80000000, v189, s3
	.loc	1 1190 70                       ; ragged.py:1190:70
	s_and_b32 s3, s24, s2
	v_add_nc_u32_e32 v203, s39, v94
	.loc	1 1190 38                       ; ragged.py:1190:38
	v_cndmask_b32_e64 v190, 0x80000000, v190, s3
	.loc	1 1191 70 is_stmt 1             ; ragged.py:1191:70
	s_and_b32 s3, s7, s2
	.loc	1 1190 38                       ; ragged.py:1190:38
	s_clause 0x3
	buffer_load_u8 v195, v186, s[28:31], 0 offen
	buffer_load_u8 v196, v188, s[28:31], 0 offen
	buffer_load_u8 v197, v189, s[28:31], 0 offen
	buffer_load_u8 v198, v190, s[28:31], 0 offen
	v_add_nc_u32_e32 v186, s39, v154
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e64 v187, 0x80000000, v187, s3
	.loc	1 1191 70 is_stmt 0             ; ragged.py:1191:70
	s_and_b32 s3, s8, s2
	v_add_nc_u32_e32 v188, s39, v155
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e64 v191, 0x80000000, v191, s3
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s3, s9, s2
	v_add_nc_u32_e32 v189, s39, v162
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e64 v186, 0x80000000, v186, s3
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s3, s10, s2
	v_add_nc_u32_e32 v190, s39, v87
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e64 v188, 0x80000000, v188, s3
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s3, s11, s2
	v_add_nc_u32_e32 v204, s39, v95
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e64 v189, 0x80000000, v189, s3
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s3, s12, s2
	v_add_nc_u32_e32 v205, s39, v96
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e64 v190, 0x80000000, v190, s3
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s3, s13, s2
	.loc	1 1191 38                       ; ragged.py:1191:38
	s_mov_b32 s38, s30
	v_cndmask_b32_e64 v192, 0x80000000, v192, s3
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s3, s14, s2
	.loc	1 1191 38                       ; ragged.py:1191:38
	s_mov_b32 s39, s31
	v_cndmask_b32_e64 v193, 0x80000000, v193, s3
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s3, s15, s2
	.loc	1 1191 38                       ; ragged.py:1191:38
	s_clause 0x7
	buffer_load_u8 v206, v187, s[36:39], 0 offen
	buffer_load_u8 v207, v191, s[36:39], 0 offen
	buffer_load_u8 v208, v186, s[36:39], 0 offen
	buffer_load_u8 v209, v188, s[36:39], 0 offen
	buffer_load_u8 v210, v189, s[36:39], 0 offen
	buffer_load_u8 v211, v190, s[36:39], 0 offen
	buffer_load_u8 v212, v192, s[36:39], 0 offen
	buffer_load_u8 v213, v193, s[36:39], 0 offen
	v_cndmask_b32_e64 v186, 0x80000000, v194, s3
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s3, s16, s2
	.loc	1 1193 38 is_stmt 1             ; ragged.py:1193:38
	v_add_nc_u32_e32 v223, 0, v167
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e64 v187, 0x80000000, v199, s3
	.loc	1 1191 70 is_stmt 0             ; ragged.py:1191:70
	s_and_b32 s3, s17, s2
	.loc	1 1192 38 is_stmt 1             ; ragged.py:1192:38
	v_add_nc_u32_e32 v222, 0, v170
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e64 v188, 0x80000000, v200, s3
	.loc	1 1191 70 is_stmt 0             ; ragged.py:1191:70
	s_and_b32 s3, s18, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e64 v189, 0x80000000, v201, s3
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s3, s19, s2
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e64 v190, 0x80000000, v202, s3
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s3, s20, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e64 v191, 0x80000000, v203, s3
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s3, s21, s2
	s_and_b32 s2, s22, s2
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e64 v192, 0x80000000, v204, s3
	v_cndmask_b32_e64 v193, 0x80000000, v205, s2
	s_clause 0x7
	buffer_load_u8 v199, v186, s[36:39], 0 offen
	buffer_load_u8 v200, v187, s[36:39], 0 offen
	buffer_load_u8 v214, v188, s[36:39], 0 offen
	buffer_load_u8 v215, v189, s[36:39], 0 offen
	buffer_load_u8 v216, v190, s[36:39], 0 offen
	buffer_load_u8 v217, v191, s[36:39], 0 offen
	buffer_load_u8 v218, v192, s[36:39], 0 offen
	buffer_load_u8 v219, v193, s[36:39], 0 offen
	.loc	1 1189 60 is_stmt 1             ; ragged.py:1189:60
	v_cmp_eq_u32_e64 s2, s56, v185
	.loc	1 1192 38                       ; ragged.py:1192:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1189 36                       ; ragged.py:1189:36
	s_and_b32 s2, s2, s26
	.loc	1 1192 66                       ; ragged.py:1192:66
	s_waitcnt vmcnt(19)
	v_and_b16 v185.l, v195.l, 15
	s_waitcnt vmcnt(18)
	v_and_b16 v185.h, v196.l, 15
	s_waitcnt vmcnt(17)
	v_and_b16 v186.l, v197.l, 15
	s_waitcnt vmcnt(16)
	v_and_b16 v186.h, v198.l, 15
	.loc	1 1192 38 is_stmt 0             ; ragged.py:1192:38
	v_cndmask_b16 v185.l, v195.l, v185.l, s2
	v_cndmask_b16 v185.h, v196.l, v185.h, s2
	v_cndmask_b16 v186.l, v197.l, v186.l, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v186.h, v198.l, v186.h, s2
	ds_store_b8 v220, v185
	ds_store_b8_d16_hi v220, v185 offset:256
	ds_store_b8 v220, v186 offset:512
	ds_store_b8_d16_hi v220, v186 offset:768
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1193 66 is_stmt 1             ; ragged.py:1193:66
	s_waitcnt vmcnt(15)
	v_and_b16 v187.l, v206.l, 15
	s_waitcnt vmcnt(14)
	v_and_b16 v187.h, v207.l, 15
	s_waitcnt vmcnt(13)
	v_and_b16 v188.l, v208.l, 15
	s_waitcnt vmcnt(12)
	v_and_b16 v188.h, v209.l, 15
	s_waitcnt vmcnt(11)
	v_and_b16 v189.l, v210.l, 15
	s_waitcnt vmcnt(10)
	v_and_b16 v189.h, v211.l, 15
	s_waitcnt vmcnt(9)
	v_and_b16 v190.l, v212.l, 15
	s_waitcnt vmcnt(8)
	v_and_b16 v190.h, v213.l, 15
	.loc	1 1193 38 is_stmt 0             ; ragged.py:1193:38
	v_cndmask_b16 v201.l, v206.l, v187.l, s2
	v_cndmask_b16 v201.h, v207.l, v187.h, s2
	v_cndmask_b16 v202.l, v208.l, v188.l, s2
	v_cndmask_b16 v202.h, v209.l, v188.h, s2
	v_cndmask_b16 v203.l, v210.l, v189.l, s2
	v_cndmask_b16 v203.h, v211.l, v189.h, s2
	v_cndmask_b16 v204.l, v212.l, v190.l, s2
	v_cndmask_b16 v204.h, v213.l, v190.h, s2
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(7)
	v_and_b16 v191.l, v199.l, 15
	s_waitcnt vmcnt(6)
	v_and_b16 v191.h, v200.l, 15
	s_waitcnt vmcnt(5)
	v_and_b16 v192.l, v214.l, 15
	s_waitcnt vmcnt(4)
	v_and_b16 v192.h, v215.l, 15
	s_waitcnt vmcnt(3)
	v_and_b16 v193.l, v216.l, 15
	s_waitcnt vmcnt(2)
	v_and_b16 v193.h, v217.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v194.l, v218.l, 15
	s_waitcnt vmcnt(0)
	v_and_b16 v194.h, v219.l, 15
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v205.l, v199.l, v191.l, s2
	v_cndmask_b16 v205.h, v200.l, v191.h, s2
	v_cndmask_b16 v206.l, v214.l, v192.l, s2
	v_cndmask_b16 v206.h, v215.l, v192.h, s2
	v_cndmask_b16 v207.l, v216.l, v193.l, s2
	v_cndmask_b16 v207.h, v217.l, v193.h, s2
	v_cndmask_b16 v208.l, v218.l, v194.l, s2
	v_cndmask_b16 v208.h, v219.l, v194.h, s2
	.loc	1 1192 38 is_stmt 1             ; ragged.py:1192:38
	ds_load_2addr_b64 v[185:188], v221 offset1:32
	ds_load_2addr_b64 v[189:192], v221 offset0:64 offset1:96
	ds_load_2addr_b64 v[193:196], v222 offset1:32
	ds_load_2addr_b64 v[197:200], v222 offset0:64 offset1:96
	.loc	1 1193 38                       ; ragged.py:1193:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v220, v201
	ds_store_b8_d16_hi v220, v201 offset:256
	ds_store_b8 v220, v202 offset:512
	ds_store_b8_d16_hi v220, v202 offset:768
	ds_store_b8 v220, v203 offset:1024
	ds_store_b8_d16_hi v220, v203 offset:1280
	ds_store_b8 v220, v204 offset:1536
	ds_store_b8_d16_hi v220, v204 offset:1792
	ds_store_b8 v220, v205 offset:2048
	ds_store_b8_d16_hi v220, v205 offset:2304
	ds_store_b8 v220, v206 offset:2560
	ds_store_b8_d16_hi v220, v206 offset:2816
	ds_store_b8 v220, v207 offset:3072
	ds_store_b8_d16_hi v220, v207 offset:3328
	ds_store_b8 v220, v208 offset:3584
	ds_store_b8_d16_hi v220, v208 offset:3840
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[201:204], v223 offset1:4
	v_add_nc_u32_e32 v205, 0, v171
	ds_load_2addr_stride64_b64 v[205:208], v205 offset1:4
	.loc	1 1194 35                       ; ragged.py:1194:35
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[201:202], v[185:186], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[203:204], v[185:186], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[201:202], v[187:188], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[203:204], v[187:188], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[201:202], v[189:190], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[203:204], v[189:190], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[201:202], v[191:192], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[203:204], v[191:192], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[205:206], v[193:194], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[207:208], v[193:194], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[205:206], v[195:196], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[207:208], v[195:196], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[205:206], v[197:198], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[207:208], v[197:198], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[205:206], v[199:200], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[207:208], v[199:200], v[1:8] neg_lo:[1,1,0]
	s_branch .LBB0_5
.LBB0_11:                               ; %Flow278
	.loc	1 0 35 is_stmt 0                ; ragged.py:0:35
	v_dual_mov_b32 v1, v108 :: v_dual_mov_b32 v32, v109
.LBB0_12:                               ; %._crit_edge31
	.loc	1 1226 33 is_stmt 1             ; ragged.py:1226:33
	v_bfe_u32 v3, v176, 16, 1
	v_bfe_u32 v4, v173, 16, 1
	v_cmp_o_f32_e64 s0, v176, v176
	v_bfe_u32 v2, v177, 16, 1
	v_cmp_o_f32_e64 s1, v173, v173
	v_add3_u32 v3, v176, v3, 0x7fff
	v_add3_u32 v4, v173, v4, 0x7fff
	v_bfe_u32 v7, v164, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v177, v177
	v_add3_u32 v2, v177, v2, 0x7fff
	v_cndmask_b16 v4.l, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v166, 16, 1
	v_bfe_u32 v5, v168, 16, 1
	v_cndmask_b16 v6.l, 0x7fff, v4.h, s1
	v_add3_u32 v7, v164, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v164, v164
	v_add3_u32 v3, v166, v3, 0x7fff
	v_cmp_o_f32_e64 s0, v166, v166
	v_cndmask_b16 v2.l, 0x7fff, v2.h, vcc_lo
	v_add3_u32 v5, v168, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v168, v168
	v_cndmask_b16 v12.l, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v159, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v160, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v161, 16, 1
	v_add3_u32 v7, v159, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v159, v159
	v_add3_u32 v3, v160, v3, 0x7fff
	v_cmp_o_f32_e64 s0, v160, v160
	v_add3_u32 v5, v161, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v161, v161
	v_cndmask_b16 v18.l, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v156, 16, 1
	v_cndmask_b16 v16.l, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v157, 16, 1
	v_cndmask_b16 v14.l, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v158, 16, 1
	v_add3_u32 v7, v156, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v156, v156
	v_add3_u32 v3, v157, v3, 0x7fff
	v_cmp_o_f32_e64 s0, v157, v157
	v_add3_u32 v5, v158, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v158, v158
	v_cndmask_b16 v24.l, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v150, 16, 1
	v_cndmask_b16 v22.l, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v151, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v152, 16, 1
	v_add3_u32 v7, v150, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v150, v150
	v_add3_u32 v3, v151, v3, 0x7fff
	v_cmp_o_f32_e64 s0, v151, v151
	v_add3_u32 v5, v152, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v152, v152
	v_cndmask_b16 v30.l, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v147, 16, 1
	v_cndmask_b16 v28.l, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v148, 16, 1
	v_cndmask_b16 v26.l, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v149, 16, 1
	v_add3_u32 v7, v147, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v147, v147
	v_add3_u32 v3, v148, v3, 0x7fff
	v_cmp_o_f32_e64 s0, v148, v148
	v_add3_u32 v5, v149, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v149, v149
	v_cndmask_b16 v4.h, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v144, 16, 1
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v145, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v146, 16, 1
	v_add3_u32 v7, v144, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v144, v144
	v_add3_u32 v3, v145, v3, 0x7fff
	v_cmp_o_f32_e64 s0, v145, v145
	v_add3_u32 v5, v146, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v146, v146
	v_cndmask_b16 v10.h, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v140, 16, 1
	v_cndmask_b16 v8.h, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v141, 16, 1
	v_cndmask_b16 v6.h, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v142, 16, 1
	v_add3_u32 v7, v140, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v140, v140
	v_add3_u32 v3, v141, v3, 0x7fff
	v_cmp_o_f32_e64 s0, v141, v141
	v_add3_u32 v5, v142, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v142, v142
	v_cndmask_b16 v16.h, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v137, 16, 1
	v_cndmask_b16 v14.h, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v138, 16, 1
	v_cndmask_b16 v12.h, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v139, 16, 1
	v_add3_u32 v7, v137, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v137, v137
	v_add3_u32 v3, v138, v3, 0x7fff
	v_cmp_o_f32_e64 s0, v138, v138
	v_add3_u32 v5, v139, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v139, v139
	v_cndmask_b16 v22.h, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v134, 16, 1
	v_cndmask_b16 v20.h, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v135, 16, 1
	v_cndmask_b16 v18.h, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v136, 16, 1
	v_add3_u32 v7, v134, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v134, v134
	v_add3_u32 v3, v135, v3, 0x7fff
	v_cmp_o_f32_e64 s0, v135, v135
	v_add3_u32 v5, v136, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v136, v136
	v_cndmask_b16 v28.h, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v131, 16, 1
	v_cndmask_b16 v26.h, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v132, 16, 1
	v_cndmask_b16 v24.h, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v133, 16, 1
	v_add3_u32 v7, v131, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v131, v131
	v_add3_u32 v3, v132, v3, 0x7fff
	v_cmp_o_f32_e64 s0, v132, v132
	v_bfe_u32 v9, v129, 16, 1
	v_add3_u32 v5, v133, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v133, v133
	v_cndmask_b16 v3.l, 0x7fff, v7.h, s1
	v_bfe_u32 v7, v128, 16, 1
	v_cndmask_b16 v33.h, 0x7fff, v3.h, s0
	v_add3_u32 v9, v129, v9, 0x7fff
	v_cmp_o_f32_e64 s0, v129, v129
	v_bfe_u32 v13, v126, 16, 1
	v_cndmask_b16 v30.h, 0x7fff, v5.h, vcc_lo
	v_bfe_u32 v5, v130, 16, 1
	v_add3_u32 v7, v128, v7, 0x7fff
	v_cndmask_b16 v7.l, 0x7fff, v9.h, s0
	v_add3_u32 v13, v126, v13, 0x7fff
	v_cmp_o_f32_e64 s0, v126, v126
	v_bfe_u32 v19, v123, 16, 1
	v_add3_u32 v5, v130, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v130, v130
	v_bfe_u32 v11, v127, 16, 1
	v_cmp_o_f32_e64 s1, v128, v128
	v_bfe_u32 v15, v125, 16, 1
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s0
	v_add3_u32 v19, v123, v19, 0x7fff
	v_cmp_o_f32_e64 s0, v123, v123
	v_bfe_u32 v25, v120, 16, 1
	v_cndmask_b16 v5.l, 0x7fff, v5.h, vcc_lo
	v_add3_u32 v11, v127, v11, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v127, v127
	v_bfe_u32 v17, v124, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v7.h, s1
	v_add3_u32 v15, v125, v15, 0x7fff
	v_cmp_o_f32_e64 s1, v125, v125
	v_bfe_u32 v21, v122, 16, 1
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s0
	v_add3_u32 v25, v120, v25, 0x7fff
	v_cmp_o_f32_e64 s0, v120, v120
	v_bfe_u32 v31, v117, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, vcc_lo
	v_add3_u32 v17, v124, v17, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v124, v124
	v_bfe_u32 v23, v121, 16, 1
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s1
	v_add3_u32 v21, v122, v21, 0x7fff
	v_cmp_o_f32_e64 s1, v122, v122
	v_bfe_u32 v27, v119, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s0
	v_add3_u32 v31, v117, v31, 0x7fff
	v_cmp_o_f32_e64 s0, v117, v117
	v_bfe_u32 v36, v114, 16, 1
	v_cndmask_b16 v17.l, 0x7fff, v17.h, vcc_lo
	v_add3_u32 v23, v121, v23, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v121, v121
	v_bfe_u32 v29, v118, 16, 1
	v_cndmask_b16 v21.l, 0x7fff, v21.h, s1
	v_add3_u32 v27, v119, v27, 0x7fff
	v_cmp_o_f32_e64 s1, v119, v119
	v_bfe_u32 v34, v116, 16, 1
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s0
	v_add3_u32 v36, v114, v36, 0x7fff
	v_cmp_o_f32_e64 s0, v114, v114
	v_cndmask_b16 v23.l, 0x7fff, v23.h, vcc_lo
	v_add3_u32 v29, v118, v29, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v118, v118
	v_bfe_u32 v35, v115, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s1
	v_add3_u32 v34, v116, v34, 0x7fff
	v_cmp_o_f32_e64 s1, v116, v116
	v_bfe_u32 v37, v113, 16, 1
	v_cndmask_b16 v5.h, 0x7fff, v36.h, s0
	v_bfe_u32 v36, v111, 16, 1
	v_cndmask_b16 v29.l, 0x7fff, v29.h, vcc_lo
	v_add3_u32 v35, v115, v35, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v115, v115
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s1
	v_add3_u32 v37, v113, v37, 0x7fff
	v_cmp_o_f32_e64 s1, v113, v113
	v_add3_u32 v36, v111, v36, 0x7fff
	v_cmp_o_f32_e64 s0, v111, v111
	v_cndmask_b16 v3.h, 0x7fff, v35.h, vcc_lo
	v_bfe_u32 v35, v112, 16, 1
	v_cndmask_b16 v7.h, 0x7fff, v37.h, s1
	v_bfe_u32 v37, v110, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v36.h, s0
	v_bfe_u32 v36, v106, 16, 1
	v_add3_u32 v35, v112, v35, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v112, v112
	v_add3_u32 v37, v110, v37, 0x7fff
	v_cmp_o_f32_e64 s1, v110, v110
	v_add3_u32 v36, v106, v36, 0x7fff
	v_cmp_o_f32_e64 s0, v106, v106
	v_cndmask_b16 v9.h, 0x7fff, v35.h, vcc_lo
	v_bfe_u32 v35, v107, 16, 1
	v_cndmask_b16 v13.h, 0x7fff, v37.h, s1
	v_bfe_u32 v37, v105, 16, 1
	v_cndmask_b16 v17.h, 0x7fff, v36.h, s0
	v_bfe_u32 v36, v103, 16, 1
	v_add3_u32 v35, v107, v35, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v107, v107
	v_add3_u32 v37, v105, v37, 0x7fff
	v_cmp_o_f32_e64 s1, v105, v105
	v_add3_u32 v36, v103, v36, 0x7fff
	v_cmp_o_f32_e64 s0, v103, v103
	v_bfe_u32 v38, v100, 16, 1
	v_cndmask_b16 v15.h, 0x7fff, v35.h, vcc_lo
	v_bfe_u32 v35, v104, 16, 1
	v_cndmask_b16 v19.h, 0x7fff, v37.h, s1
	v_bfe_u32 v37, v102, 16, 1
	v_cndmask_b16 v23.h, 0x7fff, v36.h, s0
	v_add3_u32 v36, v100, v38, 0x7fff
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_lshlrev_b32_e32 v38, 3, v65
	v_lshlrev_b32_e32 v0, 6, v0
	v_and_b32_e32 v1, 0x1c0, v1
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_add3_u32 v35, v104, v35, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v104, v104
	v_add3_u32 v37, v102, v37, 0x7fff
	v_cmp_o_f32_e64 s1, v102, v102
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_lshlrev_b32_e32 v40, 11, v65
	v_and_b32_e32 v0, 0x400, v0
	v_xor_b32_e32 v1, v38, v1
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_cndmask_b16 v21.h, 0x7fff, v35.h, vcc_lo
	v_bfe_u32 v35, v101, 16, 1
	v_cndmask_b16 v25.h, 0x7fff, v37.h, s1
	v_bfe_u32 v37, v99, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v100, v100
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_or3_b32 v0, v40, v0, v1
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_add3_u32 v35, v101, v35, 0x7fff
	v_cmp_o_f32_e64 s0, v101, v101
	v_add3_u32 v37, v99, v37, 0x7fff
	v_cmp_o_f32_e64 s1, v99, v99
	v_cndmask_b16 v27.h, 0x7fff, v36.h, vcc_lo
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_add_nc_u32_e32 v1, 0, v0
	v_cmp_eq_u32_e32 vcc_lo, 0, v98
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_cndmask_b16 v29.h, 0x7fff, v35.h, s0
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_xad_u32 v35, v0, 8, 0
	v_xad_u32 v36, v0, 16, 0
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_bfe_u32 v39, v97, 16, 1
	v_cndmask_b16 v31.h, 0x7fff, v37.h, s1
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_xad_u32 v37, v0, 24, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_stride64_b64 v1, v[2:3], v[18:19] offset1:1
	ds_store_2addr_stride64_b64 v35, v[4:5], v[20:21] offset1:1
	ds_store_2addr_stride64_b64 v36, v[6:7], v[22:23] offset1:1
	ds_store_2addr_stride64_b64 v37, v[8:9], v[24:25] offset1:1
	v_lshlrev_b32_e32 v1, 3, v32
	v_cndmask_b32_e64 v2, 0x808, 0, vcc_lo
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_add3_u32 v38, v97, v39, 0x7fff
	v_cmp_o_f32_e64 s2, v97, v97
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_xad_u32 v3, v0, 32, 0
	v_xad_u32 v4, v0, 40, 0
	v_xor_b32_e32 v1, v2, v1
	v_xad_u32 v5, v0, 48, 0
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_cndmask_b16 v34.h, 0x7fff, v38.h, s2
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_xad_u32 v0, v0, 56, 0
	ds_store_2addr_stride64_b64 v3, v[10:11], v[26:27] offset1:1
	ds_store_2addr_stride64_b64 v4, v[12:13], v[28:29] offset1:1
	ds_store_2addr_stride64_b64 v5, v[14:15], v[30:31] offset1:1
	ds_store_2addr_stride64_b64 v0, v[16:17], v[33:34] offset1:1
	v_add_nc_u32_e32 v0, 0, v1
	v_xad_u32 v2, 0x1010, v1, 0
	v_xad_u32 v3, 0x2020, v1, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[28:31], v0 offset1:2
	ds_load_2addr_stride64_b64 v[24:27], v2 offset1:2
	ds_load_2addr_stride64_b64 v[20:23], v3 offset1:2
	v_xad_u32 v0, 0x3030, v1, 0
	v_xad_u32 v2, 0x4040, v1, 0
	v_xad_u32 v3, 0x5050, v1, 0
	v_xad_u32 v4, 0x6060, v1, 0
	v_xad_u32 v1, 0x7070, v1, 0
	ds_load_2addr_stride64_b64 v[16:19], v0 offset1:2
	ds_load_2addr_stride64_b64 v[12:15], v2 offset1:2
	ds_load_2addr_stride64_b64 v[8:11], v3 offset1:2
	ds_load_2addr_stride64_b64 v[4:7], v4 offset1:2
	ds_load_2addr_stride64_b64 v[0:3], v1 offset1:2
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_lshrrev_b32_e32 v33, 7, v98
	.loc	1 1232 37                       ; ragged.py:1232:37
	s_lshr_b32 s0, s35, 31
	.loc	1 1230 31                       ; ragged.py:1230:31
	v_lshl_or_b32 v32, s33, 7, v32
	.loc	1 1232 37                       ; ragged.py:1232:37
	s_add_i32 s0, s35, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v33, s50, v33
	.loc	1 1232 37                       ; ragged.py:1232:37
	s_ashr_i32 s1, s0, 1
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1236 54                       ; ragged.py:1236:54
	v_cmp_gt_i32_e32 vcc_lo, s1, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v33
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_14
; %bb.13:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v34, s27, v33
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v36, v28, v30, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s48, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s49, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v36, off
.LBB0_14:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v34, 2, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v34
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_16
; %bb.15:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v34, s27, v34
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v36, v24, v26, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s48, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s49, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v36, off
.LBB0_16:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v34, 4, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v34
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_18
; %bb.17:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v34, s27, v34
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v36, v20, v22, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s48, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s49, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v36, off
.LBB0_18:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v34, 6, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v34
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_20
; %bb.19:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v34, s27, v34
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v36, v16, v18, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s48, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s49, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v36, off
.LBB0_20:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v34, 8, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v34
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_22
; %bb.21:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v34, s27, v34
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v36, v12, v14, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s48, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s49, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v36, off
.LBB0_22:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v34, 10, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v34
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_24
; %bb.23:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v34, s27, v34
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v36, v8, v10, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s48, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s49, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v36, off
.LBB0_24:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v34, 12, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v34
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_26
; %bb.25:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v34, s27, v34
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v36, v4, v6, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s48, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s49, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v36, off
.LBB0_26:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v34, 14, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v34
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_28
; %bb.27:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v34, s27, v34
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v0, v2, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s48, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s49, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v36, off
.LBB0_28:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v34, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v34
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_30
; %bb.29:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v34, s27, v34
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v28, v28, v30, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[34:35], null, v34, s1, v[32:33]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s48, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s49, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v28, off
.LBB0_30:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	s_waitcnt lgkmcnt(7)
	v_or_b32_e32 v28, 18, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v28
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_32
; %bb.31:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v28, s27, v28
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v24, v24, v26, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[34:35], null, v28, s1, v[32:33]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s48, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s49, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v24, off
.LBB0_32:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	s_waitcnt lgkmcnt(6)
	v_or_b32_e32 v24, 20, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v24
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_34
; %bb.33:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v24, s27, v24
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v20, v20, v22, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[34:35], null, v24, s1, v[32:33]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s48, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s49, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v20, off
.LBB0_34:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	s_waitcnt lgkmcnt(5)
	v_or_b32_e32 v20, 22, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v20
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_36
; %bb.35:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v20, s27, v20
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v16, v16, v18, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[34:35], null, v20, s1, v[32:33]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s48, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s49, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v16, off
.LBB0_36:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	s_waitcnt lgkmcnt(4)
	v_or_b32_e32 v16, 24, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v16
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_38
; %bb.37:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v16, s27, v16
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v12, v12, v14, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[34:35], null, v16, s1, v[32:33]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s48, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s49, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v12, off
.LBB0_38:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	s_waitcnt lgkmcnt(3)
	v_or_b32_e32 v12, 26, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v12
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_40
; %bb.39:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v12, s27, v12
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v8, v8, v10, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[34:35], null, v12, s1, v[32:33]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s48, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s49, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v8, off
.LBB0_40:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	s_waitcnt lgkmcnt(2)
	v_or_b32_e32 v8, 28, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v8
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_42
; %bb.41:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v8, s27, v8
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v4, v4, v6, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[34:35], null, v8, s1, v[32:33]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s48, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s49, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v4, off
.LBB0_42:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	s_waitcnt lgkmcnt(1)
	v_or_b32_e32 v4, 30, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v4
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_44
; %bb.43:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v4, s27, v4
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v0, v0, v2, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[34:35], null, v4, s1, v[32:33]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s48, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s49, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v0, off
.LBB0_44:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	s_waitcnt lgkmcnt(0)
	v_or_b32_e32 v0, 32, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_46
; %bb.45:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v0, s27, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v0, v29, v31, 0x1000504
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s48, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s49, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v0, off
.LBB0_46:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v0, 34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_48
; %bb.47:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v0, s27, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v0, v25, v27, 0x1000504
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s48, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s49, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v0, off
.LBB0_48:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v0, 36, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_50
; %bb.49:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v0, s27, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v0, v21, v23, 0x1000504
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s48, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s49, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v0, off
.LBB0_50:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v0, 38, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_52
; %bb.51:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v0, s27, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v0, v17, v19, 0x1000504
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s48, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s49, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v0, off
.LBB0_52:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v0, 40, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_54
; %bb.53:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v0, s27, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v0, v13, v15, 0x1000504
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s48, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s49, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v0, off
.LBB0_54:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v0, 42, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_56
; %bb.55:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v0, s27, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v0, v9, v11, 0x1000504
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s48, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s49, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v0, off
.LBB0_56:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v0, 44, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_58
; %bb.57:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v0, s27, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v0, v5, v7, 0x1000504
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s48, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s49, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v0, off
.LBB0_58:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v0, 46, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_60
; %bb.59:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v0, s27, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v0, v1, v3, 0x1000504
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, s0, s48, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s49, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[34:35], v0, off
.LBB0_60:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v0, 48, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_62
; %bb.61:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v0, s27, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[34:35], null, v0, s1, v[32:33]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v0, v29, v31, 0x3020706
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v28, s0, s48, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v29, null, s49, v35, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[28:29], v0, off
.LBB0_62:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v0, 50, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_64
; %bb.63:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v0, s27, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[28:29], null, v0, s1, v[32:33]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v0, v25, v27, 0x3020706
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v29, 31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[28:29], 2, v[28:29]
	v_add_co_u32 v24, s0, s48, v28
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v25, null, s49, v29, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[24:25], v0, off
.LBB0_64:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v0, 52, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_66
; %bb.65:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v0, s27, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[24:25], null, v0, s1, v[32:33]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v0, v21, v23, 0x3020706
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v25, 31, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[24:25], 2, v[24:25]
	v_add_co_u32 v20, s0, s48, v24
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v21, null, s49, v25, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[20:21], v0, off
.LBB0_66:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v0, 54, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_68
; %bb.67:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v0, s27, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[20:21], null, v0, s1, v[32:33]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v0, v17, v19, 0x3020706
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v21, 31, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[20:21], 2, v[20:21]
	v_add_co_u32 v16, s0, s48, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, s49, v21, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[16:17], v0, off
.LBB0_68:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v0, 56, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_70
; %bb.69:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v0, s27, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[16:17], null, v0, s1, v[32:33]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v0, v13, v15, 0x3020706
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v17, 31, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[16:17], 2, v[16:17]
	v_add_co_u32 v12, s0, s48, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s49, v17, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[12:13], v0, off
.LBB0_70:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v0, 58, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_72
; %bb.71:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v0, s27, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[12:13], null, v0, s1, v[32:33]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v0, v9, v11, 0x3020706
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v13, 31, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	v_add_co_u32 v8, s0, s48, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s49, v13, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[8:9], v0, off
.LBB0_72:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v0, 60, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_74
; %bb.73:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v0, s27, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[8:9], null, v0, s1, v[32:33]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v0, v5, v7, 0x3020706
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v9, 31, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_add_co_u32 v4, s0, s48, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, s49, v9, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[4:5], v0, off
.LBB0_74:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v0, 62, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v0
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_76
; %bb.75:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v0, s27, v0
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v2, v1, v3, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[4:5], null, v0, s1, v[32:33]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v5, 31, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	v_add_co_u32 v0, vcc_lo, s48, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s49, v5, vcc_lo
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[0:1], v2, off
.LBB0_76:
	.loc	1 970 5 is_stmt 1               ; ragged.py:970:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 224
		.amdhsa_next_free_sgpr 64
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 224
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 64
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12664
; TotalNumSgprs: 66
; NumVgprs: 224
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 27
; NumSGPRsForWavesPerEU: 66
; NumVGPRsForWavesPerEU: 224
; Occupancy: 6
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     66
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_maskk_bfloat16_paired_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     224
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
