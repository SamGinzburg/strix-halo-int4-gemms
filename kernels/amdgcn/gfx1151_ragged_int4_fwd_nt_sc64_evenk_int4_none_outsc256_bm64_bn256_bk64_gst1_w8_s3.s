	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s78, s[0:1], 0x54
	s_load_b64 s[34:35], s[0:1], 0x5c
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	v_and_b32_e32 v179, 0x7f, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s78, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s4, s3, 31
	s_lshr_b32 s4, s4, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s3, s3, s4
	s_ashr_i32 s3, s3, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s4, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s5, s6
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s4, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s6
	s_sub_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s5, s35, s4
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s4, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s5, s5, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s2, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s6, s5
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s3, s7, s8
	s_abs_i32 s8, s2
	s_add_i32 s7, s7, s3
	s_mul_hi_u32 s3, s8, s7
	s_xor_b32 s7, s2, s5
	s_mul_i32 s9, s3, s6
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s12, s8, s9
	s_add_i32 s13, s3, 1
	s_sub_i32 s14, s12, s6
	s_cmp_ge_u32 s12, s6
	s_load_b128 s[8:11], s[0:1], 0x28
	s_cselect_b32 s3, s13, s3
	s_cselect_b32 s12, s14, s12
	s_add_i32 s13, s3, 1
	s_cmp_ge_u32 s12, s6
	s_cselect_b32 s3, s13, s3
	s_load_b64 s[12:13], s[0:1], 0x38
	s_xor_b32 s3, s3, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s79, s3, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s79, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s2, s2, s3
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s2, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s3, s2, 31
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[4:5], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s8, s4
	s_addc_u32 s3, s9, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s10, s4
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_load_b64 s[72:73], s[2:3], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_addc_u32 s7, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s12, s4
	s_addc_u32 s3, s13, s5
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s34, 0
	s_mov_b32 s8, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_and_b32_e32 v8, 0x7f, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 50 is_stmt 0                ; ragged.py:0:50
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr8
.LBB0_3:                                ; %Flow357
	s_load_b128 s[64:67], s[0:1], 0x40
	s_load_b64 s[74:75], s[6:7], 0x0
	s_load_b64 s[76:77], s[2:3], 0x0
	v_dual_mov_b32 v120, 0 :: v_dual_and_b32 v115, 0x80, v0
	v_dual_mov_b32 v113, 0 :: v_dual_and_b32 v114, 15, v0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v128, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u32_e64 s2, 0, v115
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v157, 0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v25, 5, v0
	s_clause 0x2
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[24:31], s[0:1], 0x0
	s_load_b32 s35, s[0:1], 0x58
	v_dual_mov_b32 v133, 0 :: v_dual_lshlrev_b32 v34, 1, v0
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s0, s72, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s73, 0, s0
	v_add_co_u32 v15, s0, s72, v114
	v_add_co_u32 v3, vcc_lo, v1, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, 0, v2, vcc_lo
	v_add_co_u32 v5, vcc_lo, v1, 16
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v7, vcc_lo, v1, 24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, 0, v2, vcc_lo
	v_add_co_u32 v9, vcc_lo, v1, 32
	v_add_co_ci_u32_e64 v10, null, 0, v2, vcc_lo
	v_add_co_u32 v11, vcc_lo, v1, 40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v12, null, 0, v2, vcc_lo
	v_add_co_u32 v13, vcc_lo, v1, 48
	v_add_co_ci_u32_e64 v16, null, s73, 0, s0
	v_add_co_ci_u32_e64 v14, null, 0, v2, vcc_lo
	v_add_co_u32 v17, vcc_lo, v1, 56
	v_add_co_ci_u32_e64 v18, null, 0, v2, vcc_lo
	v_add_co_u32 v19, vcc_lo, v15, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v20, null, 0, v16, vcc_lo
	v_add_co_u32 v21, vcc_lo, v15, 32
	v_add_co_ci_u32_e64 v22, null, 0, v16, vcc_lo
	v_add_co_u32 v23, vcc_lo, v15, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v24, null, 0, v16, vcc_lo
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[76:77], v[1:2]
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_add_u32 s36, s6, s4
	s_addc_u32 s37, s7, s5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s13, s[76:77], v[3:4]
	v_dual_mov_b32 v166, 0 :: v_dual_add_nc_u32 v1, s72, v114
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s12
	.loc	1 1214 25 is_stmt 1             ; ragged.py:1214:25
	s_load_b32 s12, s[36:37], 0x0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[74:75], v[5:6]
	.loc	1 1046 20 is_stmt 0             ; ragged.py:1046:20
	s_and_b32 s0, s0, s13
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	s_lshl_b32 s13, s79, 8
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[76:77], v[5:6]
	v_dual_mov_b32 v149, 0 :: v_dual_add_nc_u32 v2, 16, v1
	v_dual_mov_b32 v164, 0 :: v_dual_add_nc_u32 v3, 32, v1
	v_dual_mov_b32 v147, 0 :: v_dual_add_nc_u32 v4, 48, v1
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v181, v1, s34
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v1, s13, v25
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[74:75], v[13:14]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s18, s[76:77], v[13:14]
	v_cmp_gt_i64_e64 s19, s[76:77], v[17:18]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s14
	.loc	1 1149 29 is_stmt 1             ; ragged.py:1149:29
	s_mul_i32 s14, s35, s78
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v35, 8, v1
	v_or_b32_e32 v33, 16, v1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s6, s6, s18
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v32, 24, v1
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s18, s14, s12
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v31, 32, v1
	v_or_b32_e32 v30, 40, v1
	v_mad_u64_u32 v[81:82], null, v1, s35, s[18:19]
	v_or_b32_e32 v29, 48, v1
	v_mad_u64_u32 v[82:83], null, v35, s35, s[18:19]
	v_or_b32_e32 v28, 56, v1
	v_mad_u64_u32 v[83:84], null, v33, s35, s[18:19]
	v_or_b32_e32 v27, 64, v1
	v_mad_u64_u32 v[84:85], null, v32, s35, s[18:19]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s11, s[74:75], v[23:24]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s23, s[76:77], v[23:24]
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_or_b32_e32 v24, 0x48, v1
	v_mad_u64_u32 v[85:86], null, v31, s35, s[18:19]
	v_or_b32_e32 v23, 0x50, v1
	v_mad_u64_u32 v[86:87], null, v30, s35, s[18:19]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s10, s[74:75], v[21:22]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s22, s[76:77], v[21:22]
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_or_b32_e32 v22, 0x58, v1
	v_mad_u64_u32 v[87:88], null, v29, s35, s[18:19]
	v_or_b32_e32 v21, 0x60, v1
	v_mad_u64_u32 v[88:89], null, v28, s35, s[18:19]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s9, s[74:75], v[19:20]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s21, s[76:77], v[19:20]
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_or_b32_e32 v20, 0x68, v1
	v_mad_u64_u32 v[89:90], null, v27, s35, s[18:19]
	v_or_b32_e32 v19, 0x70, v1
	v_mad_u64_u32 v[90:91], null, v24, s35, s[18:19]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[74:75], v[17:18]
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v18, 0x78, v1
	v_mad_u64_u32 v[91:92], null, v23, s35, s[18:19]
	v_or_b32_e32 v17, 0x80, v1
	v_mad_u64_u32 v[92:93], null, v22, s35, s[18:19]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s8, s[74:75], v[15:16]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s20, s[76:77], v[15:16]
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_or_b32_e32 v16, 0x88, v1
	v_mad_u64_u32 v[93:94], null, v21, s35, s[18:19]
	v_or_b32_e32 v15, 0x90, v1
	v_mad_u64_u32 v[94:95], null, v20, s35, s[18:19]
	v_or_b32_e32 v14, 0x98, v1
	v_dual_mov_b32 v131, 0 :: v_dual_and_b32 v36, 24, v34
	v_mad_u64_u32 v[95:96], null, v19, s35, s[18:19]
	v_or_b32_e32 v13, 0xa0, v1
	v_mad_u64_u32 v[96:97], null, v18, s35, s[18:19]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[74:75], v[11:12]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s17, s[76:77], v[11:12]
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_or_b32_e32 v12, 0xa8, v1
	v_dual_mov_b32 v117, 0 :: v_dual_and_b32 v42, 0xf0, v0
	v_dual_mov_b32 v154, 0 :: v_dual_lshlrev_b32 v43, 5, v0
	v_dual_mov_b32 v148, 0 :: v_dual_add_nc_u32 v25, s72, v25
	v_mad_u64_u32 v[97:98], null, v17, s35, s[18:19]
	v_or_b32_e32 v11, 0xb0, v1
	v_mad_u64_u32 v[98:99], null, v16, s35, s[18:19]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[74:75], v[9:10]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s16, s[76:77], v[9:10]
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_or_b32_e32 v10, 0xb8, v1
	v_mad_u64_u32 v[99:100], null, v15, s35, s[18:19]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v157, 0 :: v_dual_and_b32 v26, 0xe0, v0
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v9, 0xc0, v1
	v_cndmask_b32_e64 v37, 0x88, 0, s2
	v_lshl_or_b32 v185, v114, 5, v36
	v_mad_u64_u32 v[100:101], null, v14, s35, s[18:19]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[74:75], v[7:8]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s15, s[76:77], v[7:8]
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_or_b32_e32 v8, 0xc8, v1
	v_mad_u64_u32 v[101:102], null, v13, s35, s[18:19]
	v_or_b32_e32 v7, 0xd0, v1
	v_dual_mov_b32 v125, 0 :: v_dual_lshlrev_b32 v44, 2, v42
	v_dual_mov_b32 v138, 0 :: v_dual_and_b32 v43, 32, v43
	v_dual_mov_b32 v132, 0 :: v_dual_add_nc_u32 v45, 8, v25
	v_dual_mov_b32 v141, 0 :: v_dual_add_nc_u32 v46, 16, v25
	v_mad_u64_u32 v[102:103], null, v12, s35, s[18:19]
	v_or_b32_e32 v6, 0xd8, v1
	v_mad_u64_u32 v[103:104], null, v11, s35, s[18:19]
	v_or_b32_e32 v5, 0xe0, v1
	v_mad_u64_u32 v[104:105], null, v10, s35, s[18:19]
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v184, v4, s34
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v4, 0xe8, v1
	v_xor_b32_e32 v186, v37, v179
	v_lshl_or_b32 v187, v26, 4, v185
	v_mad_u64_u32 v[105:106], null, v9, s35, s[18:19]
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v183, v3, s34
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v3, 0xf0, v1
	v_mad_u64_u32 v[106:107], null, v8, s35, s[18:19]
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v182, v2, s34
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v2, 0xf8, v1
	v_add3_u32 v43, 0, v44, v43
	v_mul_lo_u32 v189, v25, s35
	v_mul_lo_u32 v190, v45, s35
	v_mul_lo_u32 v191, v46, s35
	v_dual_mov_b32 v159, 0 :: v_dual_add_nc_u32 v44, 24, v25
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v45, 32, v25
	v_dual_mov_b32 v155, 0 :: v_dual_add_nc_u32 v46, 40, v25
	v_dual_mov_b32 v118, 0 :: v_dual_add_nc_u32 v47, 48, v25
	v_dual_mov_b32 v116, 0 :: v_dual_add_nc_u32 v25, 56, v25
	v_mad_u64_u32 v[107:108], null, v7, s35, s[18:19]
	v_mad_u64_u32 v[108:109], null, v6, s35, s[18:19]
	v_mad_u64_u32 v[109:110], null, v5, s35, s[18:19]
	v_xor_b32_e32 v26, 0x110, v186
	v_xor_b32_e32 v36, 8, v185
	v_xor_b32_e32 v37, 16, v185
	v_xor_b32_e32 v38, 24, v185
	v_xor_b32_e32 v39, 8, v187
	v_xor_b32_e32 v40, 16, v187
	v_xor_b32_e32 v41, 24, v187
	v_dual_mov_b32 v123, 0 :: v_dual_and_b32 v34, 28, v34
	v_dual_mov_b32 v139, 0 :: v_dual_lshlrev_b32 v42, 1, v42
	v_mad_u64_u32 v[110:111], null, v4, s35, s[18:19]
	v_mad_u64_u32 v[111:112], null, v3, s35, s[18:19]
	v_mul_lo_u32 v192, v44, s35
	v_mul_lo_u32 v193, v45, s35
	v_mul_lo_u32 v194, v46, s35
	v_mul_lo_u32 v195, v47, s35
	v_mul_lo_u32 v196, v25, s35
	v_mad_u64_u32 v[112:113], null, v2, s35, s[18:19]
	v_dual_mov_b32 v165, 0 :: v_dual_and_b32 v180, 31, v0
	v_or_b32_e32 v188, s13, v0
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v197, v43, v34
	v_dual_mov_b32 v173, 0 :: v_dual_add_nc_u32 v198, 0, v26
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v199, 0, v36
	v_dual_mov_b32 v171, 0 :: v_dual_add_nc_u32 v200, 0, v37
	v_dual_mov_b32 v142, 0 :: v_dual_add_nc_u32 v201, 0, v38
	v_dual_mov_b32 v177, 0 :: v_dual_add_nc_u32 v202, 0, v39
	v_dual_mov_b32 v140, 0 :: v_dual_add_nc_u32 v203, 0, v40
	v_dual_mov_b32 v175, 0 :: v_dual_add_nc_u32 v204, 0, v41
	v_dual_mov_b32 v158, 0 :: v_dual_add_nc_u32 v205, 0, v42
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v113, 0
	v_mov_b32_e32 v130, 0
	v_mov_b32_e32 v128, 0
	v_mov_b32_e32 v120, 0
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s33, s34, s12
	s_mov_b32 s12, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s3, s3, s15
	s_and_b32 s4, s4, s16
	s_and_b32 s5, s5, s17
	s_and_b32 s7, s7, s19
	s_and_b32 s8, s8, s20
	s_and_b32 s9, s9, s21
	s_and_b32 s10, s10, s22
	s_and_b32 s11, s11, s23
	s_and_b32 s21, s25, 0xffff
	s_mov_b32 s20, s24
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s25, s27, 0xffff
	s_mov_b32 s24, s26
	s_and_b32 s29, s29, 0xffff
	s_and_b32 s37, s31, 0xffff
	s_mov_b32 s36, s30
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	s_mov_b32 s35, s12
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 20 is_stmt 0                ; ragged.py:0:20
	s_delay_alu instid0(SALU_CYCLE_1)
	v_lshl_or_b32 v1, s35, 5, v180
	.loc	1 1156 34 is_stmt 1             ; ragged.py:1156:34
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_add_nc_u32_e32 v49, 0, v186
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_mov_b32 s30, s22
	v_add_nc_u32_e32 v2, v189, v1
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_dual_mov_b32 v72, s19 :: v_dual_add_nc_u32 v5, v192, v1
	v_mov_b32_e32 v71, s18
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_add_nc_u32 v3, v190, v1
	v_dual_mov_b32 v69, s16 :: v_dual_add_nc_u32 v4, v191, v1
	v_dual_mov_b32 v67, s14 :: v_dual_add_nc_u32 v6, v193, v1
	v_dual_mov_b32 v65, s12 :: v_dual_add_nc_u32 v8, v195, v1
	v_dual_mov_b32 v70, s17 :: v_dual_add_nc_u32 v7, v194, v1
	v_dual_mov_b32 v68, s15 :: v_dual_add_nc_u32 v9, v196, v1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	v_cndmask_b32_e64 v10, 0x80000000, v4, s1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	v_cndmask_b32_e64 v11, 0x80000000, v6, s4
	v_cndmask_b32_e64 v8, 0x80000000, v8, s6
	v_cndmask_b32_e64 v12, 0x80000000, v7, s5
	v_cndmask_b32_e64 v9, 0x80000000, v9, s7
	v_dual_mov_b32 v66, s13 :: v_dual_add_nc_u32 v13, v81, v1
	v_add_nc_u32_e32 v14, v82, v1
	v_add_nc_u32_e32 v15, v83, v1
	v_add_nc_u32_e32 v16, v84, v1
	v_add_nc_u32_e32 v17, v85, v1
	v_add_nc_u32_e32 v18, v86, v1
	v_add_nc_u32_e32 v19, v87, v1
	v_add_nc_u32_e32 v20, v88, v1
	v_add_nc_u32_e32 v21, v89, v1
	v_add_nc_u32_e32 v22, v90, v1
	v_add_nc_u32_e32 v23, v91, v1
	v_add_nc_u32_e32 v24, v92, v1
	v_add_nc_u32_e32 v25, v93, v1
	v_add_nc_u32_e32 v26, v94, v1
	v_add_nc_u32_e32 v27, v95, v1
	v_add_nc_u32_e32 v28, v96, v1
	v_add_nc_u32_e32 v29, v97, v1
	v_add_nc_u32_e32 v30, v98, v1
	v_add_nc_u32_e32 v31, v99, v1
	v_add_nc_u32_e32 v32, v100, v1
	v_add_nc_u32_e32 v33, v101, v1
	v_add_nc_u32_e32 v34, v102, v1
	v_add_nc_u32_e32 v35, v103, v1
	v_add_nc_u32_e32 v36, v104, v1
	v_add_nc_u32_e32 v37, v105, v1
	v_add_nc_u32_e32 v38, v106, v1
	v_add_nc_u32_e32 v39, v107, v1
	v_add_nc_u32_e32 v40, v108, v1
	v_add_nc_u32_e32 v41, v109, v1
	v_add_nc_u32_e32 v42, v110, v1
	v_add_nc_u32_e32 v43, v111, v1
	v_add_nc_u32_e32 v44, v112, v1
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v4, v2, s[20:23], 0 offen
	buffer_load_u8 v1, v3, s[20:23], 0 offen
	buffer_load_u8 v6, v10, s[20:23], 0 offen
	buffer_load_u8 v2, v5, s[20:23], 0 offen
	buffer_load_u8 v7, v11, s[20:23], 0 offen
	buffer_load_u8 v3, v12, s[20:23], 0 offen
	buffer_load_u8 v8, v8, s[20:23], 0 offen
	buffer_load_u8 v5, v9, s[20:23], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x1f
	buffer_load_u8 v45, v13, s[24:27], 0 offen
	buffer_load_u8 v46, v14, s[24:27], 0 offen
	buffer_load_u8 v47, v15, s[24:27], 0 offen
	buffer_load_u8 v48, v16, s[24:27], 0 offen
	buffer_load_u8 v17, v17, s[24:27], 0 offen
	buffer_load_u8 v18, v18, s[24:27], 0 offen
	buffer_load_u8 v19, v19, s[24:27], 0 offen
	buffer_load_u8 v20, v20, s[24:27], 0 offen
	buffer_load_u8 v21, v21, s[24:27], 0 offen
	buffer_load_u8 v22, v22, s[24:27], 0 offen
	buffer_load_u8 v23, v23, s[24:27], 0 offen
	buffer_load_u8 v24, v24, s[24:27], 0 offen
	buffer_load_u8 v25, v25, s[24:27], 0 offen
	buffer_load_u8 v26, v26, s[24:27], 0 offen
	buffer_load_u8 v27, v27, s[24:27], 0 offen
	buffer_load_u8 v28, v28, s[24:27], 0 offen
	buffer_load_u8 v29, v29, s[24:27], 0 offen
	buffer_load_u8 v30, v30, s[24:27], 0 offen
	buffer_load_u8 v31, v31, s[24:27], 0 offen
	buffer_load_u8 v32, v32, s[24:27], 0 offen
	buffer_load_u8 v33, v33, s[24:27], 0 offen
	buffer_load_u8 v34, v34, s[24:27], 0 offen
	buffer_load_u8 v35, v35, s[24:27], 0 offen
	buffer_load_u8 v36, v36, s[24:27], 0 offen
	buffer_load_u8 v37, v37, s[24:27], 0 offen
	buffer_load_u8 v38, v38, s[24:27], 0 offen
	buffer_load_u8 v39, v39, s[24:27], 0 offen
	buffer_load_u8 v40, v40, s[24:27], 0 offen
	buffer_load_u8 v41, v41, s[24:27], 0 offen
	buffer_load_u8 v42, v42, s[24:27], 0 offen
	buffer_load_u8 v43, v43, s[24:27], 0 offen
	buffer_load_u8 v44, v44, s[24:27], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_mov_b32 s31, s23
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s26, s35, s33
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s38, s22
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s26, s26, s78
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s39, s23
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(39)
	ds_store_b8 v49, v4
	s_waitcnt vmcnt(37)
	ds_store_b8 v49, v6 offset:512
	s_waitcnt vmcnt(35)
	ds_store_b8 v49, v7 offset:1024
	s_waitcnt vmcnt(33)
	ds_store_b8 v49, v8 offset:1536
	ds_store_b8 v198, v1
	ds_store_b8 v198, v2 offset:512
	ds_store_b8 v198, v3 offset:1024
	s_waitcnt vmcnt(32)
	ds_store_b8 v198, v5 offset:1536
	v_add_nc_u32_e32 v5, 0, v185
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[1:4], v5 offset1:1
	ds_load_2addr_stride64_b64 v[73:76], v5 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[5:8], v199 offset1:1
	ds_load_2addr_stride64_b64 v[77:80], v199 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[9:12], v200 offset1:1
	ds_load_2addr_stride64_b64 v[206:209], v200 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[13:16], v201 offset1:1
	ds_load_2addr_stride64_b64 v[210:213], v201 offset0:2 offset1:3
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(31)
	ds_store_b8 v49, v45
	s_waitcnt vmcnt(29)
	ds_store_b8 v49, v47 offset:512
	s_waitcnt vmcnt(27)
	ds_store_b8 v49, v17 offset:1024
	s_waitcnt vmcnt(25)
	ds_store_b8 v49, v19 offset:1536
	s_waitcnt vmcnt(23)
	ds_store_b8 v49, v21 offset:2048
	s_waitcnt vmcnt(21)
	ds_store_b8 v49, v23 offset:2560
	s_waitcnt vmcnt(19)
	ds_store_b8 v49, v25 offset:3072
	s_waitcnt vmcnt(17)
	ds_store_b8 v49, v27 offset:3584
	s_waitcnt vmcnt(15)
	ds_store_b8 v49, v29 offset:4096
	s_waitcnt vmcnt(13)
	ds_store_b8 v49, v31 offset:4608
	s_waitcnt vmcnt(11)
	ds_store_b8 v49, v33 offset:5120
	s_waitcnt vmcnt(9)
	ds_store_b8 v49, v35 offset:5632
	s_waitcnt vmcnt(7)
	ds_store_b8 v49, v37 offset:6144
	s_waitcnt vmcnt(5)
	ds_store_b8 v49, v39 offset:6656
	s_waitcnt vmcnt(3)
	ds_store_b8 v49, v41 offset:7168
	s_waitcnt vmcnt(1)
	ds_store_b8 v49, v43 offset:7680
	ds_store_b8 v198, v46
	ds_store_b8 v198, v48 offset:512
	ds_store_b8 v198, v18 offset:1024
	ds_store_b8 v198, v20 offset:1536
	ds_store_b8 v198, v22 offset:2048
	ds_store_b8 v198, v24 offset:2560
	ds_store_b8 v198, v26 offset:3072
	ds_store_b8 v198, v28 offset:3584
	ds_store_b8 v198, v30 offset:4096
	ds_store_b8 v198, v32 offset:4608
	ds_store_b8 v198, v34 offset:5120
	ds_store_b8 v198, v36 offset:5632
	ds_store_b8 v198, v38 offset:6144
	ds_store_b8 v198, v40 offset:6656
	ds_store_b8 v198, v42 offset:7168
	s_waitcnt vmcnt(0)
	ds_store_b8 v198, v44 offset:7680
	v_add_nc_u32_e32 v17, 0, v187
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[214:217], v17 offset1:8
	ds_load_2addr_stride64_b64 v[218:221], v202 offset1:8
	ds_load_2addr_stride64_b64 v[222:225], v203 offset1:8
	ds_load_2addr_stride64_b64 v[226:229], v204 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[214:215], v[1:2], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[216:217], v[1:2], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[214:215], v[3:4], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[216:217], v[3:4], v[65:72] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[218:219], v[5:6], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[220:221], v[5:6], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[218:219], v[7:8], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[220:221], v[7:8], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[216:217], v[73:74], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[216:217], v[75:76], v[65:72] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[224:225], v[11:12], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[220:221], v[77:78], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[222:223], v[9:10], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[220:221], v[79:80], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[224:225], v[9:10], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[222:223], v[11:12], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[224:225], v[206:207], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[228:229], v[15:16], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[224:225], v[208:209], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[226:227], v[13:14], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[228:229], v[13:14], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[228:229], v[210:211], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[226:227], v[15:16], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[228:229], v[212:213], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[214:215], v[73:74], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[214:215], v[75:76], v[65:72] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v66, v40
	v_cvt_f32_i32_e32 v67, v24
	v_cvt_f32_i32_e32 v68, v8
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v8, s35, v181, 1
	v_add_lshl_u32 v24, s35, v182, 1
	v_add_lshl_u32 v40, s35, v183, 1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v65, v56
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v56, s35, v184, 1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s8
	v_cndmask_b32_e64 v24, 0x80000000, v24, s9
	v_cndmask_b32_e64 v40, 0x80000000, v40, s10
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[25:32], v[218:219], v[77:78], v[25:32] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v56, 0x80000000, v56, s11
	s_clause 0x2
	buffer_load_u16 v8, v8, s[28:31], 0 offen
	buffer_load_u16 v24, v24, s[28:31], 0 offen
	buffer_load_u16 v40, v40, s[28:31], 0 offen
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[25:32], v[222:223], v[206:207], v[25:32] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v56, v56, s[28:31], 0 offen
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[9:16], v[218:219], v[79:80], v[9:16] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v54, v54
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[25:32], v[226:227], v[210:211], v[25:32] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v55, v55
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[9:16], v[222:223], v[208:209], v[9:16] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v210, v57
	v_cvt_f32_i32_e32 v57, v60
	v_cvt_f32_i32_e32 v211, v58
	v_cvt_f32_i32_e32 v58, v59
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[9:16], v[226:227], v[212:213], v[9:16] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s35, s35, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s35, s34
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v207, 16, v40
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v26, v207, v26 :: v_dual_lshlrev_b32 v209, 16, v24
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v208, 16, v8
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v206, 16, v56
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v40, v33, v209
	v_mul_f32_e32 v33, v38, v209
	v_mul_f32_e32 v38, v39, v209
	v_mul_f32_e32 v56, v49, v208
	v_mul_f32_e32 v49, v54, v208
	v_mul_f32_e32 v54, v55, v208
	v_mul_f32_e32 v55, v65, v208
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v65, v188, s26, 1
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v60, v208, v210
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v210, v61
	v_cvt_f32_i32_e32 v61, v64
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v59, v208, v211
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v65, v65, s[36:39], 0 offen
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v211, v62
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v64, v208, v210
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v210, v50
	v_cvt_f32_i32_e32 v50, v53
	v_cvt_f32_i32_e32 v62, v63
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v63, v208, v211
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v211, v51
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v208, v210
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v210, v42
	v_cvt_f32_i32_e32 v51, v52
	v_cvt_f32_i32_e32 v42, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v58, v208, v58
	v_mul_f32_e32 v61, v208, v61
	v_mul_f32_e32 v43, v209, v210
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v210, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v62, v208, v62
	v_mul_f32_e32 v50, v208, v50
	v_mul_f32_e32 v51, v208, v51
	v_mul_f32_e32 v52, v208, v211
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v46, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v47, v209, v210
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v210, v35
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v57, v208, v57
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v208, v41
	v_cvt_f32_i32_e32 v41, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v39, v66, v209 :: v_dual_mul_f32 v8, v1, v206
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v1, v6, v206 :: v_dual_mul_f32 v44, v209, v208
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v208, v45
	v_cvt_f32_i32_e32 v45, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v6, v7, v206
	v_mul_f32_e32 v7, v68, v206
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v35, v36
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v209, v42
	v_mul_f32_e32 v46, v209, v46
	v_mul_f32_e32 v36, v209, v210
	v_mul_f32_e32 v48, v209, v208
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v208, v34
	v_cvt_f32_i32_e32 v34, v37
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v35, v209, v35 :: v_dual_mul_f32 v12, v206, v12
	v_mul_f32_e32 v11, v206, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v37, v209, v208
	v_mul_f32_e32 v34, v209, v34
	v_mul_f32_e32 v24, v17, v207
	v_mul_f32_e32 v17, v22, v207
	v_mul_f32_e32 v22, v23, v207
	v_mul_f32_e32 v23, v67, v207
	v_dual_mul_f32 v41, v209, v41 :: v_dual_mul_f32 v30, v207, v30
	v_dual_mul_f32 v45, v209, v45 :: v_dual_mul_f32 v20, v207, v20
	v_mul_f32_e32 v28, v207, v28
	v_mul_f32_e32 v27, v207, v27
	v_mul_f32_e32 v25, v207, v25
	v_mul_f32_e32 v32, v207, v32
	v_mul_f32_e32 v31, v207, v31
	v_dual_mul_f32 v29, v207, v29 :: v_dual_mul_f32 v10, v206, v10
	v_dual_mul_f32 v21, v207, v21 :: v_dual_mul_f32 v16, v206, v16
	v_dual_mul_f32 v19, v207, v19 :: v_dual_mul_f32 v14, v206, v14
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v18, v207, v18 :: v_dual_lshlrev_b32 v65, 16, v65
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_store_b32 v197, v65
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[77:80], v205
	ds_load_b128 v[73:76], v205 offset:16
	ds_load_b128 v[69:72], v205 offset:512
	ds_load_b128 v[65:68], v205 offset:528
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v9, v206, v9
	v_mul_f32_e32 v15, v206, v15
	v_mul_f32_e32 v13, v206, v13
	v_mul_f32_e32 v5, v206, v5
	v_mul_f32_e32 v4, v206, v4
	v_mul_f32_e32 v3, v206, v3
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v2, v206, v2 :: v_dual_fmac_f32 v175, v57, v80
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v178, v60, v77 :: v_dual_fmac_f32 v177, v59, v78
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v176, v58, v79 :: v_dual_fmac_f32 v173, v63, v74
	v_fmac_f32_e32 v174, v64, v73
	v_dual_fmac_f32 v172, v62, v75 :: v_dual_fmac_f32 v171, v61, v76
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v157, v56, v69 :: v_dual_fmac_f32 v164, v55, v68
	v_dual_fmac_f32 v170, v53, v70 :: v_dual_fmac_f32 v169, v52, v71
	v_fmac_f32_e32 v162, v43, v78
	v_dual_fmac_f32 v168, v51, v72 :: v_dual_fmac_f32 v167, v50, v65
	v_fmac_f32_e32 v160, v41, v80
	v_dual_fmac_f32 v166, v49, v66 :: v_dual_fmac_f32 v165, v54, v67
	v_dual_fmac_f32 v158, v47, v74 :: v_dual_fmac_f32 v163, v44, v77
	v_fmac_f32_e32 v156, v46, v75
	v_dual_fmac_f32 v161, v42, v79 :: v_dual_fmac_f32 v154, v40, v69
	v_dual_fmac_f32 v159, v48, v73 :: v_dual_fmac_f32 v148, v38, v67
	v_dual_fmac_f32 v155, v45, v76 :: v_dual_fmac_f32 v152, v36, v71
	v_dual_fmac_f32 v153, v37, v70 :: v_dual_fmac_f32 v150, v34, v65
	v_dual_fmac_f32 v151, v35, v72 :: v_dual_fmac_f32 v146, v25, v77
	v_dual_fmac_f32 v149, v33, v66 :: v_dual_fmac_f32 v144, v27, v79
	v_dual_fmac_f32 v147, v39, v68 :: v_dual_fmac_f32 v142, v29, v73
	v_dual_fmac_f32 v145, v26, v78 :: v_dual_fmac_f32 v140, v31, v75
	v_dual_fmac_f32 v143, v28, v80 :: v_dual_fmac_f32 v136, v19, v71
	v_dual_fmac_f32 v141, v30, v74 :: v_dual_fmac_f32 v138, v24, v69
	v_dual_fmac_f32 v139, v32, v76 :: v_dual_fmac_f32 v134, v21, v65
	v_dual_fmac_f32 v137, v18, v70 :: v_dual_fmac_f32 v130, v9, v77
	v_dual_fmac_f32 v135, v20, v72 :: v_dual_fmac_f32 v132, v22, v67
	v_dual_fmac_f32 v133, v17, v66 :: v_dual_fmac_f32 v128, v11, v79
	v_dual_fmac_f32 v131, v23, v68 :: v_dual_fmac_f32 v126, v13, v73
	v_dual_fmac_f32 v129, v10, v78 :: v_dual_fmac_f32 v124, v15, v75
	v_dual_fmac_f32 v127, v12, v80 :: v_dual_fmac_f32 v120, v3, v71
	v_dual_fmac_f32 v125, v14, v74 :: v_dual_fmac_f32 v122, v8, v69
	v_dual_fmac_f32 v123, v16, v76 :: v_dual_fmac_f32 v118, v1, v66
	v_dual_fmac_f32 v121, v2, v70 :: v_dual_fmac_f32 v116, v7, v68
	v_fmac_f32_e32 v119, v4, v72
	v_fmac_f32_e32 v113, v5, v65
	v_fmac_f32_e32 v117, v6, v67
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_mov_b32_e32 v8, v179
.LBB0_7:                                ; %._crit_edge
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v9, 7, v115
	v_and_b32_e32 v7, 63, v0
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v16, |v145|, |v145|
	v_max_f32_e64 v17, |v146|, |v146|
	v_max3_f32 v13, |v172|, |v171|, |v157|
.Ltmp4:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 62, v9
	v_or_b32_e32 v5, 60, v9
	v_or_b32_e32 v10, 58, v9
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v18, |v130|, |v130|
	s_mov_b32 s26, 0x76543210
.Ltmp6:
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v3, s0, s72, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, s73, 0, s0
	v_add_co_u32 v5, s1, s72, v5
	v_add_co_ci_u32_e64 v6, null, s73, 0, s1
	v_add_co_u32 v1, s0, s72, v7
	v_add_co_u32 v10, s1, s72, v10
	v_add_co_ci_u32_e64 v2, null, s73, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[74:75], v[3:4]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v11, null, s73, 0, s1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[76:77], v[3:4]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 56, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[74:75], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[76:77], v[5:6]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v5, 54, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[74:75], v[10:11]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s6, s72, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v4, null, s73, 0, s6
	v_add_co_u32 v5, s6, s72, v5
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, s73, 0, s6
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[76:77], v[10:11]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v10, 52, v9
	v_or_b32_e32 v11, 50, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[76:77], v[3:4]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s9, s[74:75], v[5:6]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s10, s72, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, s73, 0, s10
	v_add_co_u32 v10, s10, s72, v11
	v_add_co_ci_u32_e64 v11, null, s73, 0, s10
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[76:77], v[5:6]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v5, 48, v9
	v_or_b32_e32 v6, 46, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s11, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[76:77], v[3:4]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s13, s[74:75], v[10:11]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s14, s72, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, s73, 0, s14
	v_add_co_u32 v5, s14, s72, v6
	v_add_co_ci_u32_e64 v6, null, s73, 0, s14
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[76:77], v[10:11]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v10, 44, v9
	v_or_b32_e32 v11, 42, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s15, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s16, s[76:77], v[3:4]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s17, s[74:75], v[5:6]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s18, s72, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, s73, 0, s18
	v_add_co_u32 v10, s18, s72, v11
	v_add_co_ci_u32_e64 v11, null, s73, 0, s18
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s18, s[76:77], v[5:6]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v5, 40, v9
	v_or_b32_e32 v6, 38, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s19, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s20, s[76:77], v[3:4]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s21, s[74:75], v[10:11]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s22, s72, v5
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, s73, 0, s22
	v_add_co_u32 v14, s22, s72, v6
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v5, |v177|, |v177|
	v_max_f32_e64 v6, |v178|, |v178|
.Ltmp8:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v15, null, s73, 0, s22
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s22, s[76:77], v[10:11]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s23, s[74:75], v[3:4]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s24, s[76:77], v[3:4]
.Ltmp9:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v6, v5
	v_max3_f32 v4, |v175|, |v174|, |v173|
	v_max3_f32 v5, |v170|, |v169|, |v168|
	v_max3_f32 v6, |v167|, |v166|, |v165|
	v_max_f32_e64 v10, |v162|, |v162|
	v_max_f32_e64 v11, |v163|, |v163|
	v_max3_f32 v3, v3, |v176|, v4
.Ltmp10:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v12, 36, v9
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, v5, v6, |v164|
	v_max3_f32 v6, |v160|, |v159|, |v158|
	v_max_f32_e32 v5, v11, v10
	v_max3_f32 v10, |v153|, |v152|, |v151|
	v_max3_f32 v11, |v150|, |v149|, |v148|
	v_max3_f32 v3, v3, v13, v4
	v_max3_f32 v4, |v156|, |v155|, |v154|
	v_max3_f32 v5, v5, |v161|, v6
	v_max3_f32 v13, |v137|, |v136|, |v135|
	v_max3_f32 v6, v10, v11, |v147|
	v_max_f32_e32 v10, v17, v16
	v_max3_f32 v11, |v143|, |v142|, |v141|
	v_max3_f32 v16, |v134|, |v133|, |v132|
	v_max_f32_e64 v17, |v129|, |v129|
	v_max3_f32 v4, v5, v4, v6
	v_max3_f32 v5, |v140|, |v139|, |v138|
	v_max3_f32 v6, v10, |v144|, v11
	v_max3_f32 v10, v13, v16, |v131|
	v_max3_f32 v13, |v127|, |v126|, |v125|
	v_max3_f32 v16, |v121|, |v120|, |v119|
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v20, 4, v0
	v_and_b32_e32 v21, 8, v0
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v5, v6, v5, v10
	v_max3_f32 v6, |v124|, |v123|, |v122|
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v23, 1, v115
	v_lshrrev_b32_e32 v24, 3, v115
	v_lshl_add_u32 v25, v20, 6, 0
	v_permlanex16_b32 v19, v5, s26, 0xfedcba98 op_sel:[1,0]
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v11, v18, v17
	v_max3_f32 v17, |v113|, |v118|, |v117|
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v18, v3, s26, 0xfedcba98 op_sel:[1,0]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v10, v11, |v128|, v13
	v_max3_f32 v11, v16, v17, |v116|
	v_max_f32_e32 v13, v18, v18
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v18, v4, s26, 0xfedcba98 op_sel:[1,0]
.Ltmp19:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v16, s27, s72, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, v10, v6, v11
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v10, 3, v0
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v12, v18, v18
	v_dual_max_f32 v18, v19, v19 :: v_dual_and_b32 v11, 0x60, v0
.Ltmp23:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v17, null, s73, 0, s27
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v12
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v12, v6, s26, 0xfedcba98 op_sel:[1,0]
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v13
	v_max_f32_e32 v5, v5, v18
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v18, v10, 9, 0
	v_lshlrev_b32_e32 v13, 4, v0
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v12, v12, v12 :: v_dual_lshlrev_b32 v19, 5, v10
.Ltmp29:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s27, s[74:75], v[16:17]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v18, v20, 2, v18
.Ltmp31:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s28, s[76:77], v[16:17]
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v6, v12
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_or_b32 v22, 0x680, v13, v19
	v_xor_b32_e32 v19, v19, v11
	v_lshl_add_u32 v18, v21, 4, v18
.Ltmp34:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v16, 30, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s25, s[74:75], v[14:15]
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v22, v22, v11
.Ltmp36:
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s68, s78, 31
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v12, v18, v23, v19
.Ltmp38:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v18, 34, v9
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s68, s78, s68
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v19, v25, v24, v22
.Ltmp40:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v25.h, 0
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v12, v[3:6]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[3:6], v19
.Ltmp42:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v12, 32, v9
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v18, s26, s72, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v19, null, s73, 0, s26
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s26, s[76:77], v[14:15]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v14, s31, s72, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v15, null, s73, 0, s31
	v_add_co_u32 v16, s31, s72, v16
	v_add_co_ci_u32_e64 v17, null, s73, 0, s31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s31, s[74:75], v[14:15]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s33, s[76:77], v[14:15]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v15, 28, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s34, s[74:75], v[16:17]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s35, s[76:77], v[16:17]
.Ltmp43:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v12, v3
	v_dual_mov_b32 v14, v4 :: v_dual_max_f32 v3, v3, v3
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v4
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v16, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v12, v12 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v5
.Ltmp47:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s29, s[74:75], v[18:19]
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v12, v12, v12 :: v_dual_max_f32 v17, v6, v6
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v14, v14, v14
.Ltmp52:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s30, s[76:77], v[18:19]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v12, v3, v12
.Ltmp54:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s36, s72, v15
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v6, v6
.Ltmp56:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v19, 24, v9
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v15, v12
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v17, v6
	v_max_f32_e32 v16, v16, v16
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp60:
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s69, s65, 0xffff
	s_mov_b32 s71, 0x31027000
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v17, v6 :: v_dual_max_f32 v14, v4, v14
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v16
.Ltmp63:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s73, 0, s36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v14
	s_mov_b32 s70, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp65:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s36, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s37, s[76:77], v[3:4]
.Ltmp66:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v15, v15
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp68:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v15, 26, v9
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v7, s72, v7
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v13, 0x2f0, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v12, v3 :: v_dual_max_f32 v4, v18, v18
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v16, v5
.Ltmp71:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v15, s38, s72, v15
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v14, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v14, v17, v17 :: v_dual_mov_b32 v17, v3
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v6, v14
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v14, v6
.Ltmp76:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v22, v17, v17
.Ltmp77:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v17, s39, s72, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v22 :: v_dual_mov_b32 v18, v4
.Ltmp80:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v22, 1, v11
.Ltmp81:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v11, 5, v11
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp82:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v19, v14, v14
.Ltmp83:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v14, 4, v10
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp84:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v12, v16, v16
.Ltmp85:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v10, 3, v21
	v_add_nc_u32_e32 v21, 0, v115
.Ltmp86:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v16, null, s73, 0, s38
.Ltmp87:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v23, v18, v18
	v_max_f32_e32 v5, v5, v12
.Ltmp88:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v18, null, s73, 0, s39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s38, s[74:75], v[15:16]
.Ltmp89:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp90:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v12, v5
.Ltmp91:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s40, s[74:75], v[17:18]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s41, s[76:77], v[17:18]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp92:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp93:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_max_f32_e32 v5, v5, v12
.Ltmp94:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v12, 5, v20
	v_add_nc_u32_e32 v20, 0, v14
.Ltmp95:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v6, v19
.Ltmp96:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v19, v21, v22, v10
.Ltmp97:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v21, 22, v9
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp98:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v10, v20, v12, v10
.Ltmp99:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v12, 18, v9
.Ltmp100:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v19, v[3:6]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[3:6], v10
.Ltmp101:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v10, 20, v9
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v19, s39, s72, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v20, null, s73, 0, s39
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s39, s[76:77], v[15:16]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v15, s44, s72, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v16, null, s73, 0, s44
	v_add_co_u32 v17, s44, s72, v12
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v10, 16, v9
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v18, null, s73, 0, s44
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s44, s[74:75], v[15:16]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s45, s[76:77], v[15:16]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v15, s48, s72, v10
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v3, v3, v3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s46, s[74:75], v[17:18]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s47, s[76:77], v[17:18]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v16, null, s73, 0, s48
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v12, 0x2b8cbccc, v3
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 14, v9
	v_or_b32_e32 v10, 12, v9
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v5, v5, v5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s42, s[74:75], v[19:20]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v21, null, 0x40e00000, 0x40e00000, v12
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v17, s48, s72, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v18, null, s73, 0, s48
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v3, v21
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s43, s[76:77], v[19:20]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v19, s48, s72, v10
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v10, 10, v9
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v20, null, s73, 0, s48
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s50, s[74:75], v[17:18]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s51, s[76:77], v[17:18]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v5, 0x2b8cbccc, v5
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v17, -v21, v3, 1.0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s48, s[74:75], v[15:16]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s49, s[76:77], v[15:16]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v15, s54, s72, v10
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v10, 8, v9
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s52, s[74:75], v[19:20]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s53, s[76:77], v[19:20]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v3, v17, v3
	v_div_scale_f32 v19, vcc_lo, v12, 0x40e00000, v12
	v_div_scale_f32 v20, null, 0x40e00000, 0x40e00000, v5
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v16, null, s73, 0, s54
	v_add_co_u32 v17, s54, s72, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v18, null, s73, 0, s54
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v10, v19, v3
	v_rcp_f32_e32 v22, v20
	v_max_f32_e32 v4, v4, v4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s54, s[74:75], v[15:16]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s55, s[76:77], v[15:16]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s56, s[74:75], v[17:18]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v15, -v21, v10, v19
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s57, s[76:77], v[17:18]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v17, 0x2b8cbccc, v4
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v16, 6, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v10, v15, v3
	v_fma_f32 v4, -v20, v22, 1.0
	v_max_f32_e32 v15, 0x2b8cbccc, v6
	v_div_scale_f32 v6, null, 0x40e00000, 0x40e00000, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v18, -v21, v10, v19
	v_fmac_f32_e32 v22, v4, v22
	v_div_scale_f32 v19, s60, v5, 0x40e00000, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v21, v6
	v_div_fmas_f32 v10, v18, v3, v10
	v_div_scale_f32 v23, null, 0x40e00000, 0x40e00000, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v18, v19, v22
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s58, s72, v16
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v10, v10, 0x40e00000, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v24, v23
	v_fma_f32 v12, -v20, v18, v19
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v16, -v6, v21, 1.0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s73, 0, s58
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v18, v12, v22
	v_fmac_f32_e32 v21, v16, v21
	v_div_scale_f32 v16, s61, v17, 0x40e00000, v17
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v12.l, v10.h
	v_mov_b16_e32 v12.h, v25.h
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s58, s[74:75], v[3:4]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v26, v16, v21
	v_fma_f32 v27, -v23, v24, 1.0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s59, s[76:77], v[3:4]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v12
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_fma_f32 v3, -v20, v18, v19
	v_fma_f32 v12, -v6, v26, v16
	v_fmac_f32_e32 v24, v27, v24
	v_div_scale_f32 v19, s62, v15, 0x40e00000, v15
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v10, v10, v4, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v3, v3, v22, v18
	v_fmac_f32_e32 v26, v12, v21
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v12, v19, v24
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v4, 4, v9
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v33, 0xffff0000, v10
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v3, v3, 0x40e00000, v5
	v_fma_f32 v5, -v6, v26, v16
	v_fma_f32 v6, -v23, v12, v19
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v18, null, v33, v33, v178
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v16, v5, v21, v26
	v_fmac_f32_e32 v12, v6, v24
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v5, s60, s72, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v20, v18
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v4, -v23, v12, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v19, null, v33, v33, v177
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v25.l, v3.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v16, v16, 0x40e00000, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v4, v4, v24, v12
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v22, v19
	v_div_scale_f32 v44, null, v33, v33, v164
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v17, -v18, v20, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v12, 1, v25
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v4, v4, 0x40e00000, v15
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v21.l, v16.h
	v_mov_b16_e32 v21.h, v25.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v45, v44
	v_fmac_f32_e32 v20, v17, v20
	v_div_scale_f32 v17, vcc_lo, v178, v33, v178
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v3, v3, v12, 0x7fff
	v_mov_b16_e32 v25.l, v4.h
	v_and_b32_e32 v12, 1, v21
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v21, v17, v20
	v_fma_f32 v23, -v19, v22, 1.0
	v_div_scale_f32 v24, null, v33, v33, v176
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v25, 1, v25
	v_add3_u32 v12, v16, v12, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v16, -v18, v21, v17
	v_fmac_f32_e32 v22, v23, v22
	v_rcp_f32_e32 v23, v24
	v_div_scale_f32 v26, null, v33, v33, v175
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v6, null, s73, 0, s60
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v27, s60, v177, v33, v177
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v4, v25, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v21, v16, v20
	v_rcp_f32_e32 v25, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v28, v27, v22
	v_fma_f32 v30, -v24, v23, 1.0
	v_div_scale_f32 v32, null, v33, v33, v174
	v_fma_f32 v17, -v18, v21, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v18, -v19, v28, v27
	v_fmac_f32_e32 v23, v30, v23
	v_div_scale_f32 v30, s61, v176, v33, v176
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v31, -v26, v25, 1.0
	v_div_fmas_f32 v17, v17, v20, v21
	v_rcp_f32_e32 v21, v32
	v_fmac_f32_e32 v28, v18, v22
	v_dual_mul_f32 v20, v30, v23 :: v_dual_fmac_f32 v25, v31, v25
	v_div_scale_f32 v31, s62, v175, v33, v175
	v_div_scale_f32 v34, null, v33, v33, v173
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v18, -v19, v28, v27
	v_fma_f32 v19, -v24, v20, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v27, v31, v25
	v_rcp_f32_e32 v35, v34
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v36, -v32, v21, 1.0
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v20, v19, v23
	v_div_fmas_f32 v18, v18, v22, v28
	v_fma_f32 v19, -v26, v27, v31
	v_fmac_f32_e32 v21, v36, v21
	v_div_scale_f32 v22, s60, v174, v33, v174
	v_fma_f32 v24, -v24, v20, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v28, -v34, v35, 1.0
	v_fmac_f32_e32 v27, v19, v25
	v_mul_f32_e32 v30, v22, v21
	v_div_scale_f32 v36, null, v33, v33, v172
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v35, v28, v35
	v_div_scale_f32 v28, s63, v173, v33, v173
	v_div_fmas_f32 v19, v24, v23, v20
	v_fma_f32 v20, -v26, v27, v31
	v_fma_f32 v23, -v32, v30, v22
	v_rcp_f32_e32 v24, v36
	v_div_scale_f32 v31, null, v33, v33, v171
	v_mul_f32_e32 v26, v28, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v30, v23, v21
	s_mov_b32 vcc_lo, s62
	v_rcp_f32_e32 v23, v31
	v_div_fmas_f32 v20, v20, v25, v27
	v_fma_f32 v25, -v34, v26, v28
	v_fma_f32 v22, -v32, v30, v22
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v27, -v36, v24, 1.0
	v_div_scale_f32 v32, null, v33, v33, v157
	v_fmac_f32_e32 v26, v25, v35
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v24, v27, v24
	v_fma_f32 v27, -v31, v23, 1.0
	v_div_scale_f32 v25, s61, v172, v33, v172
	v_div_fmas_f32 v21, v22, v21, v30
	v_fma_f32 v22, -v34, v26, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v23, v27, v23
	v_rcp_f32_e32 v27, v32
	v_div_scale_f32 v34, null, v33, v33, v170
	v_mul_f32_e32 v28, v25, v24
	v_div_scale_f32 v30, s60, v171, v33, v171
	v_rcp_f32_e32 v38, v34
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v39, null, v33, v33, v169
	v_div_fmas_f32 v22, v22, v35, v26
	v_fma_f32 v26, -v36, v28, v25
	v_mul_f32_e32 v35, v30, v23
	v_fma_f32 v37, -v32, v27, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v41, null, v33, v33, v168
	v_fmac_f32_e32 v28, v26, v24
	v_fma_f32 v26, -v31, v35, v30
	v_fmac_f32_e32 v27, v37, v27
	v_div_scale_f32 v37, s62, v157, v33, v157
	v_fma_f32 v40, -v34, v38, 1.0
	v_fma_f32 v25, -v36, v28, v25
	v_fmac_f32_e32 v35, v26, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v26, v37, v27
	v_rcp_f32_e32 v36, v39
	v_fmac_f32_e32 v38, v40, v38
	v_div_scale_f32 v40, s63, v170, v33, v170
	v_div_fmas_f32 v24, v25, v24, v28
	v_fma_f32 v25, -v31, v35, v30
	v_fma_f32 v28, -v32, v26, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v30, v40, v38
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v43, null, v33, v33, v165
	v_fma_f32 v31, -v39, v36, 1.0
	v_div_fmas_f32 v25, v25, v23, v35
	v_fmac_f32_e32 v26, v28, v27
	v_rcp_f32_e32 v28, v41
	v_fma_f32 v35, -v34, v30, v40
	v_fmac_f32_e32 v36, v31, v36
	v_div_scale_f32 v31, s60, v169, v33, v169
	v_div_fixup_f32 v23, v24, v33, v172
	v_div_fixup_f32 v24, v25, v33, v171
	v_fma_f32 v25, -v32, v26, v37
	v_fmac_f32_e32 v30, v35, v38
	v_div_scale_f32 v37, null, v33, v33, v167
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v32, v31, v36
	v_fma_f32 v35, -v41, v28, 1.0
	v_div_fmas_f32 v25, v25, v27, v26
	v_fma_f32 v26, -v34, v30, v40
	v_rcp_f32_e32 v34, v37
	v_div_scale_f32 v40, null, v33, v33, v166
	s_mov_b32 vcc_lo, s63
	v_fma_f32 v27, -v39, v32, v31
	v_fmac_f32_e32 v28, v35, v28
	v_div_scale_f32 v35, s61, v168, v33, v168
	v_div_fmas_f32 v26, v26, v38, v30
	v_rcp_f32_e32 v30, v40
	v_fmac_f32_e32 v32, v27, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v38, v35, v28
	v_fma_f32 v27, -v37, v34, 1.0
	v_div_scale_f32 v42, s62, v167, v33, v167
	v_fma_f32 v31, -v39, v32, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v41, v38, v35
	v_fmac_f32_e32 v34, v27, v34
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v27, -v40, v30, 1.0
	v_div_fmas_f32 v31, v31, v36, v32
	v_fmac_f32_e32 v38, v39, v28
	v_mul_f32_e32 v32, v42, v34
	v_div_scale_f32 v39, s60, v166, v33, v166
	v_fmac_f32_e32 v30, v27, v30
	v_rcp_f32_e32 v36, v43
	v_div_fixup_f32 v27, v31, v33, v169
	v_fma_f32 v31, -v41, v38, v35
	v_fma_f32 v35, -v37, v32, v42
	v_mul_f32_e32 v41, v39, v30
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v17, v17, v33, v178
	v_div_fmas_f32 v28, v31, v28, v38
	v_fmac_f32_e32 v32, v35, v34
	v_fma_f32 v31, -v40, v41, v39
	v_fma_f32 v38, -v44, v45, 1.0
	v_fma_f32 v46, -v43, v36, 1.0
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v37, -v37, v32, v42
	v_fmac_f32_e32 v41, v31, v30
	v_fmac_f32_e32 v45, v38, v45
	v_div_scale_f32 v38, s63, v164, v33, v164
	v_fmac_f32_e32 v36, v46, v36
	v_div_scale_f32 v35, s61, v165, v33, v165
	v_div_fmas_f32 v31, v37, v34, v32
	v_fma_f32 v32, -v40, v41, v39
	v_mul_f32_e32 v39, v38, v45
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v42, v35, v36
	v_div_fixup_f32 v18, v18, v33, v177
	v_div_fmas_f32 v32, v32, v30, v41
	v_fma_f32 v41, -v44, v39, v38
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v48, 0xffff0000, v12
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v34, -v43, v42, v35
	v_div_fixup_f32 v30, v31, v33, v167
	v_div_fixup_f32 v31, v32, v33, v166
	v_fmac_f32_e32 v39, v41, v45
	v_div_scale_f32 v46, null, v48, v48, v163
	v_div_scale_f32 v40, null, v48, v48, v162
	v_fmac_f32_e32 v42, v34, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v37, v46
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v34, v40
	v_div_fixup_f32 v19, v19, v33, v176
	v_fma_f32 v32, -v43, v42, v35
	v_div_scale_f32 v43, null, v48, v48, v161
	v_div_scale_f32 v35, s60, v163, v48, v163
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v32, v32, v36, v42
	v_fma_f32 v47, -v46, v37, 1.0
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v16, 0xffff0000, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v41, -v40, v34, 1.0
	v_fma_f32 v36, -v44, v39, v38
	v_div_scale_f32 v44, null, v48, v48, v160
	v_dual_fmac_f32 v37, v47, v37 :: v_dual_fmac_f32 v34, v41, v34
	v_rcp_f32_e32 v41, v43
	v_div_scale_f32 v42, s61, v162, v48, v162
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_f32_e32 v38, v35, v37
	v_rcp_f32_e32 v49, v44
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v20, v20, v33, v175
	v_div_fmas_f32 v36, v36, v45, v39
	v_fma_f32 v39, -v46, v38, v35
	v_mul_f32_e32 v45, v42, v34
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v47, -v43, v41, 1.0
	v_div_fixup_f32 v21, v21, v33, v174
	v_div_fixup_f32 v22, v22, v33, v173
	v_div_fixup_f32 v25, v25, v33, v157
	v_div_fixup_f32 v26, v26, v33, v170
	v_div_fixup_f32 v28, v28, v33, v168
	v_div_fixup_f32 v32, v32, v33, v165
	v_div_fixup_f32 v33, v36, v33, v164
	v_fmac_f32_e32 v38, v39, v37
	v_fma_f32 v36, -v40, v45, v42
	v_fmac_f32_e32 v41, v47, v41
	v_div_scale_f32 v39, s62, v161, v48, v161
	v_div_scale_f32 v47, null, v48, v48, v159
	v_fma_f32 v50, -v44, v49, 1.0
	v_fma_f32 v35, -v46, v38, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v45, v36, v34 :: v_dual_mul_f32 v36, v39, v41
	v_rcp_f32_e32 v46, v47
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v49, v50, v49
	v_div_scale_f32 v50, s63, v160, v48, v160
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v51, null, v48, v48, v158
	v_div_fmas_f32 v35, v35, v37, v38
	v_fma_f32 v37, -v40, v45, v42
	v_fma_f32 v38, -v43, v36, v39
	v_mul_f32_e32 v40, v50, v49
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v42, -v47, v46, 1.0
	v_div_fmas_f32 v37, v37, v34, v45
	v_fmac_f32_e32 v36, v38, v41
	v_rcp_f32_e32 v45, v51
	v_fma_f32 v38, -v44, v40, v50
	v_fmac_f32_e32 v46, v42, v46
	v_div_scale_f32 v42, s60, v159, v48, v159
	v_div_fixup_f32 v34, v35, v48, v163
	v_div_fixup_f32 v35, v37, v48, v162
	v_fma_f32 v37, -v43, v36, v39
	v_fmac_f32_e32 v40, v38, v49
	v_div_scale_f32 v43, null, v48, v48, v156
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v38, v42, v46
	v_fma_f32 v39, -v51, v45, 1.0
	v_div_fmas_f32 v36, v37, v41, v36
	v_fma_f32 v37, -v44, v40, v50
	v_rcp_f32_e32 v44, v43
	v_div_scale_f32 v50, null, v48, v48, v155
	s_mov_b32 vcc_lo, s63
	v_fma_f32 v41, -v47, v38, v42
	v_fmac_f32_e32 v45, v39, v45
	v_div_scale_f32 v39, s61, v158, v48, v158
	v_div_fmas_f32 v37, v37, v49, v40
	v_rcp_f32_e32 v40, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_dual_fmac_f32 v38, v41, v46 :: v_dual_mul_f32 v41, v39, v45
	v_fma_f32 v49, -v43, v44, 1.0
	v_div_scale_f32 v53, null, v48, v48, v154
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v47, v38, v42
	v_fma_f32 v47, -v51, v41, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v44, v49, v44
	v_div_scale_f32 v49, s62, v156, v48, v156
	v_fma_f32 v52, -v50, v40, 1.0
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v41, v47, v45
	v_div_fmas_f32 v38, v42, v46, v38
	v_mul_f32_e32 v42, v49, v44
	v_fmac_f32_e32 v40, v52, v40
	v_rcp_f32_e32 v46, v53
	v_div_scale_f32 v52, null, v48, v48, v153
	v_div_scale_f32 v47, s60, v155, v48, v155
	v_fma_f32 v39, -v51, v41, v39
	v_fma_f32 v51, -v43, v42, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v55, v52
	v_mul_f32_e32 v54, v47, v40
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v56, -v53, v46, 1.0
	v_fmac_f32_e32 v42, v51, v44
	v_div_fmas_f32 v39, v39, v45, v41
	v_fma_f32 v41, -v50, v54, v47
	v_div_scale_f32 v45, s61, v154, v48, v154
	v_fmac_f32_e32 v46, v56, v46
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v51, -v52, v55, 1.0
	v_fma_f32 v43, -v43, v42, v49
	v_div_scale_f32 v56, null, v48, v48, v152
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v54, v41, v40
	v_mul_f32_e32 v49, v45, v46
	v_fmac_f32_e32 v55, v51, v55
	v_div_scale_f32 v51, s63, v153, v48, v153
	v_div_fmas_f32 v41, v43, v44, v42
	v_rcp_f32_e32 v44, v56
	v_fma_f32 v42, -v50, v54, v47
	v_fma_f32 v43, -v53, v49, v45
	v_mul_f32_e32 v47, v51, v55
	v_div_scale_f32 v50, null, v48, v48, v151
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v49, v43, v46
	v_div_fmas_f32 v42, v42, v40, v54
	v_rcp_f32_e32 v54, v50
	v_fma_f32 v43, -v52, v47, v51
	v_fma_f32 v57, -v56, v44, 1.0
	v_div_fixup_f32 v40, v41, v48, v156
	v_div_fixup_f32 v41, v42, v48, v155
	v_fma_f32 v42, -v53, v49, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v47, v43, v55 :: v_dual_fmac_f32 v44, v57, v44
	v_div_scale_f32 v45, s60, v152, v48, v152
	v_div_scale_f32 v53, null, v48, v48, v150
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v43, -v50, v54, 1.0
	v_div_fmas_f32 v42, v42, v46, v49
	v_fma_f32 v46, -v52, v47, v51
	v_mul_f32_e32 v49, v45, v44
	v_rcp_f32_e32 v51, v53
	v_div_scale_f32 v57, null, v48, v48, v149
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v54, v43, v54
	v_div_scale_f32 v52, s61, v151, v48, v151
	v_div_fmas_f32 v43, v46, v55, v47
	v_fma_f32 v46, -v56, v49, v45
	v_rcp_f32_e32 v58, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v47, v52, v54
	v_fma_f32 v55, -v53, v51, 1.0
	v_div_scale_f32 v59, null, v48, v48, v148
	v_fmac_f32_e32 v49, v46, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v50, v47, v52
	v_fmac_f32_e32 v51, v55, v51
	v_div_scale_f32 v55, s62, v150, v48, v150
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v60, -v57, v58, 1.0
	v_fma_f32 v45, -v56, v49, v45
	v_rcp_f32_e32 v56, v59
	v_dual_fmac_f32 v47, v46, v54 :: v_dual_mul_f32 v46, v55, v51
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v58, v60, v58
	v_div_scale_f32 v60, s63, v149, v48, v149
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v61, null, v48, v48, v147
	v_div_fmas_f32 v44, v45, v44, v49
	v_fma_f32 v45, -v50, v47, v52
	v_fma_f32 v49, -v53, v46, v55
	v_mul_f32_e32 v50, v60, v58
	v_fma_f32 v52, -v59, v56, 1.0
	v_div_scale_f32 v79, null, v16, v16, v127
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v29, 0xffff0000, v3
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v45, v45, v54, v47
	v_rcp_f32_e32 v54, v61
	v_fma_f32 v47, -v57, v50, v60
	v_fmac_f32_e32 v56, v52, v56
	v_rcp_f32_e32 v81, v79
	v_fmac_f32_e32 v46, v49, v51
	v_div_scale_f32 v49, s60, v148, v48, v148
	v_fmac_f32_e32 v50, v47, v58
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v52, -v53, v46, v55
	v_mul_f32_e32 v53, v49, v56
	v_div_scale_f32 v55, null, v29, v29, v146
	v_fma_f32 v47, -v61, v54, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v46, v52, v51, v46
	v_fma_f32 v51, -v57, v50, v60
	v_fma_f32 v52, -v59, v53, v49
	v_rcp_f32_e32 v57, v55
	v_div_scale_f32 v62, null, v29, v29, v145
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v54, v47, v54
	v_div_scale_f32 v60, s61, v147, v48, v147
	v_div_fmas_f32 v47, v51, v58, v50
	v_fmac_f32_e32 v53, v52, v56
	v_rcp_f32_e32 v50, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v51, v60, v54
	v_fma_f32 v52, -v55, v57, 1.0
	v_div_scale_f32 v63, null, v29, v29, v144
	v_fma_f32 v49, -v59, v53, v49
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v58, -v61, v51, v60
	v_fmac_f32_e32 v57, v52, v57
	v_div_scale_f32 v52, s62, v146, v29, v146
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v59, -v62, v50, 1.0
	v_div_fmas_f32 v49, v49, v56, v53
	v_rcp_f32_e32 v56, v63
	v_fmac_f32_e32 v51, v58, v54
	v_dual_mul_f32 v53, v52, v57 :: v_dual_fmac_f32 v50, v59, v50
	v_div_scale_f32 v58, s60, v145, v29, v145
	v_div_scale_f32 v59, null, v29, v29, v143
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v60, -v61, v51, v60
	v_fma_f32 v61, -v55, v53, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v64, v58, v50
	v_rcp_f32_e32 v65, v59
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v66, -v63, v56, 1.0
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v53, v61, v57
	v_div_fmas_f32 v51, v60, v54, v51
	v_fma_f32 v54, -v62, v64, v58
	v_fmac_f32_e32 v56, v66, v56
	v_div_scale_f32 v60, s61, v144, v29, v144
	v_div_fixup_f32 v36, v36, v48, v161
	v_div_fixup_f32 v37, v37, v48, v160
	v_div_fixup_f32 v38, v38, v48, v159
	v_div_fixup_f32 v39, v39, v48, v158
	v_div_fixup_f32 v42, v42, v48, v154
	v_div_fixup_f32 v43, v43, v48, v153
	v_div_fixup_f32 v44, v44, v48, v152
	v_div_fixup_f32 v45, v45, v48, v151
	v_div_fixup_f32 v46, v46, v48, v150
	v_div_fixup_f32 v47, v47, v48, v149
	v_div_fixup_f32 v49, v49, v48, v148
	v_fma_f32 v61, -v59, v65, 1.0
	v_div_fixup_f32 v48, v51, v48, v147
	v_fma_f32 v51, -v55, v53, v52
	v_fmac_f32_e32 v64, v54, v50
	v_mul_f32_e32 v52, v60, v56
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v65, v61, v65
	v_div_scale_f32 v54, s63, v143, v29, v143
	v_div_scale_f32 v55, null, v29, v29, v142
	v_div_fmas_f32 v51, v51, v57, v53
	v_fma_f32 v53, -v62, v64, v58
	v_fma_f32 v57, -v63, v52, v60
	v_div_scale_f32 v62, null, v29, v29, v141
	v_div_scale_f32 v82, null, v16, v16, v121
	v_rcp_f32_e32 v58, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v61, v54, v65 :: v_dual_fmac_f32 v52, v57, v56
	v_rcp_f32_e32 v57, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v84, v82
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v68, null, v29, v29, v138
	v_div_fmas_f32 v53, v53, v50, v64
	v_fma_f32 v64, -v59, v61, v54
	v_fma_f32 v66, -v55, v58, 1.0
	v_div_fixup_f32 v50, v51, v29, v146
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v51, v53, v29, v145
	v_fma_f32 v53, -v63, v52, v60
	v_fmac_f32_e32 v61, v64, v65
	v_fma_f32 v63, -v62, v57, 1.0
	v_div_scale_f32 v64, null, v29, v29, v140
	v_fma_f32 v86, -v82, v84, 1.0
	v_div_scale_f32 v60, s60, v142, v29, v142
	v_div_fmas_f32 v52, v53, v56, v52
	v_fmac_f32_e32 v57, v63, v57
	v_rcp_f32_e32 v56, v64
	v_div_scale_f32 v63, null, v29, v29, v139
	v_fmac_f32_e32 v84, v86, v84
	v_fmac_f32_e32 v58, v66, v58
	v_fma_f32 v53, -v59, v61, v54
	v_div_scale_f32 v59, s61, v141, v29, v141
	v_rcp_f32_e32 v67, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v54, v60, v58
	s_mov_b32 vcc_lo, s63
	v_fma_f32 v66, -v64, v56, 1.0
	v_div_fmas_f32 v53, v53, v65, v61
	v_mul_f32_e32 v65, v59, v57
	v_fma_f32 v61, -v55, v54, v60
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v56, v66, v56
	v_div_scale_f32 v66, s62, v140, v29, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v54, v61, v58
	v_fma_f32 v61, -v62, v65, v59
	v_fma_f32 v69, -v63, v67, 1.0
	v_div_scale_f32 v70, null, v29, v29, v137
	v_fma_f32 v55, -v55, v54, v60
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v65, v61, v57 :: v_dual_mul_f32 v60, v66, v56
	v_rcp_f32_e32 v61, v68
	v_fmac_f32_e32 v67, v69, v67
	v_div_scale_f32 v69, s63, v139, v29, v139
	v_div_fmas_f32 v54, v55, v58, v54
	v_fma_f32 v55, -v62, v65, v59
	v_fma_f32 v58, -v64, v60, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v59, v69, v67
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v71, null, v29, v29, v135
	v_fma_f32 v62, -v68, v61, 1.0
	v_div_fmas_f32 v55, v55, v57, v65
	v_fmac_f32_e32 v60, v58, v56
	v_rcp_f32_e32 v58, v70
	v_fma_f32 v57, -v63, v59, v69
	v_fmac_f32_e32 v61, v62, v61
	v_div_scale_f32 v62, s60, v138, v29, v138
	v_fma_f32 v64, -v64, v60, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v59, v57, v67
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v65, v62, v61
	v_div_scale_f32 v66, null, v29, v29, v136
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v57, -v70, v58, 1.0
	v_div_fmas_f32 v56, v64, v56, v60
	v_fma_f32 v60, -v63, v59, v69
	s_mov_b32 vcc_lo, s63
	v_fma_f32 v63, -v68, v65, v62
	v_fmac_f32_e32 v58, v57, v58
	v_rcp_f32_e32 v64, v66
	v_div_fmas_f32 v57, v60, v67, v59
	v_rcp_f32_e32 v59, v71
	v_div_scale_f32 v69, s61, v137, v29, v137
	v_fmac_f32_e32 v65, v63, v61
	v_div_scale_f32 v72, null, v29, v29, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v60, v69, v58
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v63, -v66, v64, 1.0
	v_fma_f32 v62, -v68, v65, v62
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v68, -v71, v59, 1.0
	v_fma_f32 v67, -v70, v60, v69
	v_div_fixup_f32 v52, v52, v29, v144
	v_fmac_f32_e32 v64, v63, v64
	v_div_scale_f32 v63, s62, v136, v29, v136
	v_fmac_f32_e32 v59, v68, v59
	v_div_scale_f32 v68, null, v29, v29, v133
	v_div_fmas_f32 v61, v62, v61, v65
	v_fmac_f32_e32 v60, v67, v58
	v_mul_f32_e32 v62, v63, v64
	v_rcp_f32_e32 v65, v72
	v_div_scale_f32 v67, s60, v135, v29, v135
	v_rcp_f32_e32 v74, v68
	v_fma_f32 v69, -v70, v60, v69
	v_fma_f32 v70, -v66, v62, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v73, v67, v59
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v53, v53, v29, v143
	v_div_fmas_f32 v58, v69, v58, v60
	v_fma_f32 v75, -v72, v65, 1.0
	v_fmac_f32_e32 v62, v70, v64
	v_fma_f32 v60, -v71, v73, v67
	v_fma_f32 v70, -v68, v74, 1.0
	v_div_scale_f32 v69, s61, v134, v29, v134
	v_fmac_f32_e32 v65, v75, v65
	v_fma_f32 v63, -v66, v62, v63
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v73, v60, v59 :: v_dual_fmac_f32 v74, v70, v74
	v_div_scale_f32 v70, null, v29, v29, v132
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v60, v69, v65
	v_div_scale_f32 v66, s63, v133, v29, v133
	v_div_fmas_f32 v62, v63, v64, v62
	v_fma_f32 v63, -v71, v73, v67
	v_rcp_f32_e32 v67, v70
	v_fma_f32 v64, -v72, v60, v69
	v_mul_f32_e32 v71, v66, v74
	v_div_scale_f32 v75, null, v29, v29, v131
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v60, v64, v65
	v_div_fmas_f32 v59, v63, v59, v73
	v_rcp_f32_e32 v63, v75
	v_fma_f32 v64, -v68, v71, v66
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v73, -v70, v67, 1.0
	v_fma_f32 v69, -v72, v60, v69
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v54, v54, v29, v142
	v_fmac_f32_e32 v71, v64, v74
	v_fmac_f32_e32 v67, v73, v67
	v_div_scale_f32 v64, s60, v132, v29, v132
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v72, -v75, v63, 1.0
	v_div_fmas_f32 v60, v69, v65, v60
	v_fma_f32 v65, -v68, v71, v66
	v_mul_f32_e32 v66, v64, v67
	v_div_scale_f32 v68, null, v16, v16, v130
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v63, v72, v63
	v_div_fmas_f32 v65, v65, v74, v71
	v_rcp_f32_e32 v71, v68
	v_fma_f32 v72, -v70, v66, v64
	v_div_scale_f32 v69, s61, v131, v29, v131
	v_div_scale_f32 v74, null, v16, v16, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v66, v72, v67
	v_mul_f32_e32 v73, v69, v63
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v76, v74
	v_fma_f32 v77, -v68, v71, 1.0
	v_fma_f32 v64, -v70, v66, v64
	v_div_scale_f32 v70, null, v16, v16, v128
	v_fma_f32 v72, -v75, v73, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v71, v77, v71
	v_div_fmas_f32 v64, v64, v67, v66
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v77, v70
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v73, v72, v63
	v_div_scale_f32 v72, s62, v130, v16, v130
	v_fma_f32 v78, -v74, v76, 1.0
	v_div_fixup_f32 v55, v55, v29, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v66, -v75, v73, v69
	v_mul_f32_e32 v67, v72, v71
	v_div_scale_f32 v69, s60, v129, v16, v129
	v_fmac_f32_e32 v76, v78, v76
	v_fma_f32 v75, -v70, v77, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v68, v67, v72
	v_div_fmas_f32 v63, v66, v63, v73
	v_div_fixup_f32 v56, v56, v29, v140
	v_dual_mul_f32 v80, v69, v76 :: v_dual_fmac_f32 v77, v75, v77
	v_div_scale_f32 v75, s63, v128, v16, v128
	v_fmac_f32_e32 v67, v78, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v66, -v74, v80, v69
	v_div_fixup_f32 v57, v57, v29, v139
	v_mul_f32_e32 v73, v75, v77
	v_div_fixup_f32 v61, v61, v29, v138
	v_div_fixup_f32 v58, v58, v29, v137
	v_div_fixup_f32 v62, v62, v29, v136
	v_div_fixup_f32 v59, v59, v29, v135
	v_div_fixup_f32 v60, v60, v29, v134
	v_div_fixup_f32 v65, v65, v29, v133
	v_div_fixup_f32 v64, v64, v29, v132
	v_div_fixup_f32 v29, v63, v29, v131
	v_fma_f32 v63, -v68, v67, v72
	v_fmac_f32_e32 v80, v66, v76
	v_fma_f32 v66, -v70, v73, v75
	v_div_scale_f32 v72, null, v16, v16, v126
	v_fma_f32 v68, -v79, v81, 1.0
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v73, v66, v77
	v_rcp_f32_e32 v66, v72
	v_div_fmas_f32 v63, v63, v71, v67
	v_fmac_f32_e32 v81, v68, v81
	v_div_scale_f32 v68, s61, v127, v16, v127
	v_fma_f32 v67, -v74, v80, v69
	v_fma_f32 v69, -v70, v73, v75
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v70, v68, v81
	v_div_scale_f32 v71, null, v16, v16, v125
	v_fma_f32 v74, -v72, v66, 1.0
	v_div_fmas_f32 v67, v67, v76, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v75, -v79, v70, v68
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v86, s63, v121, v16, v121
	v_fmac_f32_e32 v66, v74, v66
	v_div_scale_f32 v74, s60, v126, v16, v126
	v_fmac_f32_e32 v70, v75, v81
	v_div_fmas_f32 v69, v69, v77, v73
	v_rcp_f32_e32 v73, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v75, v74, v66
	v_div_scale_f32 v77, null, v16, v16, v124
	v_fma_f32 v68, -v79, v70, v68
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v78, -v72, v75, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v79, v77
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v68, v68, v81, v70
	v_fma_f32 v76, -v71, v73, 1.0
	v_fmac_f32_e32 v75, v78, v66
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v78, null, v16, v16, v123
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v73, v76, v73
	v_fma_f32 v72, -v72, v75, v74
	v_div_scale_f32 v76, s62, v125, v16, v125
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v81, v78
	v_fma_f32 v80, -v77, v79, 1.0
	v_div_fmas_f32 v66, v72, v66, v75
	v_div_scale_f32 v72, null, v16, v16, v122
	v_mul_f32_e32 v70, v76, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v79, v80, v79
	s_mov_b32 vcc_lo, s62
	v_rcp_f32_e32 v75, v72
	v_div_scale_f32 v85, s62, v122, v16, v122
	v_fma_f32 v74, -v71, v70, v76
	v_fma_f32 v80, -v78, v81, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v51, v51
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v70, v74, v73
	v_div_scale_f32 v74, s60, v124, v16, v124
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v72, v75, 1.0
	v_fmac_f32_e32 v81, v80, v81
	v_fma_f32 v71, -v71, v70, v76
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v76, v74, v79
	v_div_scale_f32 v80, s61, v123, v16, v123
	v_fmac_f32_e32 v75, v83, v75
	v_div_scale_f32 v83, null, v16, v16, v120
	v_div_fmas_f32 v70, v71, v73, v70
	v_fma_f32 v71, -v77, v76, v74
	v_mul_f32_e32 v73, v80, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v87, v83
	v_mul_f32_e32 v88, v85, v75
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v76, v71, v79
	v_fma_f32 v71, -v78, v73, v80
	v_div_fixup_f32 v70, v70, v16, v125
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v36, v36
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v74, -v77, v76, v74
	v_fmac_f32_e32 v73, v71, v81
	v_fma_f32 v71, -v72, v88, v85
	v_mul_f32_e32 v77, v86, v84
	v_fma_f32 v89, -v83, v87, 1.0
	v_div_fmas_f32 v74, v74, v79, v76
	v_fma_f32 v76, -v78, v73, v80
	v_fmac_f32_e32 v88, v71, v75
	v_fma_f32 v71, -v82, v77, v86
	v_fmac_f32_e32 v87, v89, v87
	v_div_scale_f32 v78, s60, v120, v16, v120
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v77, v71, v84
	v_div_fmas_f32 v73, v76, v81, v73
	v_mul_f32_e32 v71, v78, v87
	v_div_scale_f32 v76, null, v16, v16, v119
	v_fma_f32 v72, -v72, v88, v85
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v79, -v83, v71, v78
	v_rcp_f32_e32 v80, v76
	v_div_scale_f32 v81, null, v16, v16, v117
	v_div_fmas_f32 v72, v72, v75, v88
	v_fma_f32 v75, -v82, v77, v86
	v_fmac_f32_e32 v71, v79, v87
	s_mov_b32 vcc_lo, s63
	v_rcp_f32_e32 v85, v81
	v_div_fixup_f32 v74, v74, v16, v124
	v_div_fmas_f32 v75, v75, v84, v77
	v_fma_f32 v77, -v83, v71, v78
	v_fma_f32 v79, -v76, v80, 1.0
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v78, null, v16, v16, v113
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v71, v77, v87, v71
	v_fmac_f32_e32 v80, v79, v80
	v_div_scale_f32 v82, vcc_lo, v119, v16, v119
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v77, v78
	v_div_scale_f32 v79, null, v16, v16, v118
	v_mul_f32_e32 v86, v82, v80
	v_div_scale_f32 v87, null, v16, v16, v116
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v83, v79
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v74, v74
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v90, -v76, v86, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v89, v87
	v_fma_f32 v84, -v78, v77, 1.0
	v_fma_f32 v91, -v81, v85, 1.0
	v_div_fixup_f32 v73, v73, v16, v123
	v_fmac_f32_e32 v86, v90, v80
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v70
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v77, v84, v77
	v_div_scale_f32 v84, s60, v113, v16, v113
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v76, -v76, v86, v82
	v_fma_f32 v88, -v79, v83, 1.0
	v_fma_f32 v93, -v87, v89, 1.0
	v_mul_f32_e32 v92, v84, v77
	v_fmac_f32_e32 v85, v91, v85
	v_div_fmas_f32 v76, v76, v80, v86
	s_mov_b32 vcc_lo, s60
	s_mov_b32 s60, 0xc1000000
	v_fmac_f32_e32 v83, v88, v83
	v_div_scale_f32 v88, s61, v118, v16, v118
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v74, v74, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v91, s62, v117, v16, v117
	v_div_fixup_f32 v72, v72, v16, v122
	v_fmac_f32_e32 v89, v93, v89
	v_div_scale_f32 v93, s63, v116, v16, v116
	v_fma_f32 v90, -v78, v92, v84
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v73, v73
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v37, v37, s60, 0x40e00000
	v_med3_f32 v39, v39, s60, 0x40e00000
	v_med3_f32 v70, v70, s60, 0x40e00000
	v_cvt_i32_f32_e32 v104, v74
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v94, v88, v83 :: v_dual_mul_f32 v95, v91, v85
	v_mul_f32_e32 v96, v93, v89
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v72, v72
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v22, v22, s60, 0x40e00000
	v_med3_f32 v51, v51, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v79, v94, v88
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v29, v29, s60, 0x40e00000
	v_med3_f32 v73, v73, s60, 0x40e00000
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v103, v70
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v92, v90, v77
	v_fma_f32 v90, -v81, v95, v91
	v_fma_f32 v80, -v87, v96, v93
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v36, v36, s60, 0x40e00000
	v_med3_f32 v72, v72, s60, 0x40e00000
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v99, v29
	v_cvt_i32_f32_e32 v105, v73
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v94, v82, v83 :: v_dual_and_b32 v29, 15, v37
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v37, 15, v39
	v_and_b32_e32 v39, 15, v103
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v78, v92, v84
	v_fmac_f32_e32 v95, v90, v85
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v84, v36
	v_cvt_i32_f32_e32 v106, v72
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v96, v80, v89
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v36, 15, v22
	v_and_b32_e32 v22, 15, v51
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v51, 64, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v78, v77, v92
	v_fma_f32 v78, -v79, v94, v88
	v_fma_f32 v79, -v81, v95, v91
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v28
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	v_xor_b32_e32 v13, v13, v51
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v51, 15, v106
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v87, v96, v93
	v_div_fmas_f32 v78, v78, v83, v94
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v63, v63, v16, v130
	v_div_fmas_f32 v79, v79, v85, v95
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v69, v69, v16, v128
	v_div_fmas_f32 v80, v80, v89, v96
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v60, v60
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v28, v28, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v67, v67, v16, v129
	v_div_fixup_f32 v68, v68, v16, v127
	v_div_fixup_f32 v66, v66, v16, v126
	v_div_fixup_f32 v75, v75, v16, v121
	v_div_fixup_f32 v71, v71, v16, v120
	v_div_fixup_f32 v76, v76, v16, v119
	v_div_fixup_f32 v77, v77, v16, v113
	v_div_fixup_f32 v78, v78, v16, v118
	v_div_fixup_f32 v79, v79, v16, v117
	v_div_fixup_f32 v16, v80, v16, v116
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v69, v69
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v43, v43, s60, 0x40e00000
	v_med3_f32 v47, v47, s60, 0x40e00000
	v_med3_f32 v60, v60, s60, 0x40e00000
	v_cvt_i32_f32_e32 v82, v28
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v16, v16
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v17, v17, s60, 0x40e00000
	v_med3_f32 v19, v19, s60, 0x40e00000
	v_med3_f32 v34, v34, s60, 0x40e00000
	v_med3_f32 v53, v53, s60, 0x40e00000
	v_med3_f32 v54, v54, s60, 0x40e00000
	v_med3_f32 v58, v58, s60, 0x40e00000
	v_med3_f32 v62, v62, s60, 0x40e00000
	v_med3_f32 v59, v59, s60, 0x40e00000
	v_med3_f32 v63, v63, s60, 0x40e00000
	v_med3_f32 v69, v69, s60, 0x40e00000
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v96, v60
	v_and_b32_e32 v60, 15, v82
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v82, 16, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v50, v50
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v24, v24, s60, 0x40e00000
	v_med3_f32 v16, v16, s60, 0x40e00000
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v92, v53
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v100, v69
	v_and_b32_e32 v53, 15, v43
	v_and_b32_e32 v69, 15, v47
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v43, 13, v0
	v_lshlrev_b32_e32 v47, 8, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v67, v67
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v18, v18, s60, 0x40e00000
	v_med3_f32 v20, v20, s60, 0x40e00000
	v_med3_f32 v50, v50, s60, 0x40e00000
	v_cvt_i32_f32_e32 v81, v24
	v_cvt_i32_f32_e32 v110, v16
	v_and_b32_e32 v16, 15, v17
	v_and_b32_e32 v24, 15, v19
	v_and_b32_e32 v17, 15, v34
	v_and_b32_e32 v34, 15, v54
	v_and_b32_e32 v54, 15, v58
	v_and_b32_e32 v58, 15, v62
	v_and_b32_e32 v62, 15, v59
	v_and_b32_e32 v19, 15, v63
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v59, 3, v115
	v_and_or_b32 v63, 0xe000, v43, v47
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v76, v76
	v_rndne_f32_e32 v77, v77
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v21, v21, s60, 0x40e00000
	v_med3_f32 v33, v33, s60, 0x40e00000
	v_med3_f32 v35, v35, s60, 0x40e00000
	v_med3_f32 v38, v38, s60, 0x40e00000
	v_med3_f32 v66, v66, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v48, v48
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v23, v23, s60, 0x40e00000
	v_med3_f32 v25, v25, s60, 0x40e00000
	v_med3_f32 v42, v42, s60, 0x40e00000
	v_med3_f32 v61, v61, s60, 0x40e00000
	v_med3_f32 v67, v67, s60, 0x40e00000
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v80, v20
	v_cvt_i32_f32_e32 v50, v50
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v13, v63, v59, v13
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v64, v64
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v30, v30, s60, 0x40e00000
	v_med3_f32 v32, v32, s60, 0x40e00000
	v_med3_f32 v46, v46, s60, 0x40e00000
	v_med3_f32 v55, v55, s60, 0x40e00000
	v_med3_f32 v76, v76, s60, 0x40e00000
	v_med3_f32 v77, v77, s60, 0x40e00000
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v102, v66
	v_med3_f32 v40, v40, s60, 0x40e00000
	v_med3_f32 v49, v49, s60, 0x40e00000
	v_med3_f32 v48, v48, s60, 0x40e00000
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v95, v61
	v_cvt_i32_f32_e32 v67, v67
	v_and_b32_e32 v20, 15, v18
	v_and_b32_e32 v28, 15, v80
	v_and_b32_e32 v18, 15, v50
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v80, 0, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v65, v65, s60, 0x40e00000
	v_med3_f32 v64, v64, s60, 0x40e00000
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v83, v32
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v107, v76
	v_cvt_i32_f32_e32 v108, v77
	v_and_b32_e32 v32, 15, v21
	v_and_b32_e32 v76, 15, v33
	v_and_b32_e32 v21, 15, v35
	v_and_b32_e32 v33, 15, v38
	v_and_b32_e32 v35, 15, v102
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v75, v75
	v_rndne_f32_e32 v71, v71
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v85, v40
	v_cvt_i32_f32_e32 v89, v49
	v_cvt_i32_f32_e32 v90, v48
	v_and_b32_e32 v40, 15, v23
	v_and_b32_e32 v48, 15, v25
	v_and_b32_e32 v49, 15, v42
	v_and_b32_e32 v50, 15, v95
	v_and_b32_e32 v23, 15, v67
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v80, v[16:19]
	ds_store_b128 v80, v[32:35] offset:256
	v_xad_u32 v16, v13, 16, 0
	v_lshlrev_b32_e32 v17, 6, v0
	v_cndmask_b32_e64 v18, 0x2010, 0, s2
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v78, v78
	v_rndne_f32_e32 v79, v79
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v97, v65
	v_cvt_i32_f32_e32 v98, v64
	v_and_b32_e32 v64, 15, v30
	v_and_b32_e32 v65, 15, v46
	v_and_b32_e32 v38, 15, v55
	v_and_b32_e32 v66, 15, v96
	v_and_b32_e32 v67, 15, v108
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v57, v57
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v26, v26, s60, 0x40e00000
	v_med3_f32 v27, v27, s60, 0x40e00000
	v_med3_f32 v44, v44, s60, 0x40e00000
	v_med3_f32 v45, v45, s60, 0x40e00000
	v_med3_f32 v52, v52, s60, 0x40e00000
	v_med3_f32 v75, v75, s60, 0x40e00000
	v_med3_f32 v71, v71, s60, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v80, v[48:51] offset:2048
	ds_store_b128 v80, v[64:67] offset:2304
	ds_store_b128 v16, v[20:23]
	ds_store_b128 v16, v[36:39] offset:256
	v_lshlrev_b32_e32 v20, 2, v82
	v_and_or_b32 v11, 0x300, v17, v11
	v_xor_b32_e32 v14, v18, v14
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v31, v31, s60, 0x40e00000
	v_med3_f32 v56, v56, s60, 0x40e00000
	v_med3_f32 v78, v78, s60, 0x40e00000
	v_med3_f32 v79, v79, s60, 0x40e00000
	v_med3_f32 v68, v68, s60, 0x40e00000
	v_med3_f32 v41, v41, s60, 0x40e00000
	v_med3_f32 v57, v57, s60, 0x40e00000
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v87, v44
	v_cvt_i32_f32_e32 v88, v45
	v_cvt_i32_f32_e32 v91, v52
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v71, v71
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v11, v14, v11, v20
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v93, v56
	v_cvt_i32_f32_e32 v109, v78
	v_cvt_i32_f32_e32 v79, v79
	v_cvt_i32_f32_e32 v101, v68
	v_cvt_i32_f32_e32 v86, v41
	v_cvt_i32_f32_e32 v94, v57
	v_and_b32_e32 v52, 15, v26
	v_and_b32_e32 v56, 15, v27
	v_and_b32_e32 v25, 15, v84
	v_and_b32_e32 v57, 15, v87
	v_and_b32_e32 v61, 15, v88
	v_and_b32_e32 v26, 15, v91
	v_and_b32_e32 v27, 15, v100
	v_and_b32_e32 v55, 15, v75
	v_and_b32_e32 v59, 15, v71
	v_and_b32_e32 v63, 15, v107
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v19, v13, 32, 0
	v_xad_u32 v13, v13, 48, 0
	v_add_nc_u32_e32 v14, 0, v11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v68, 15, v31
	v_and_b32_e32 v72, 15, v83
	v_and_b32_e32 v41, 15, v85
	v_and_b32_e32 v73, 15, v89
	v_and_b32_e32 v77, 15, v90
	v_and_b32_e32 v42, 15, v93
	v_and_b32_e32 v70, 15, v97
	v_and_b32_e32 v74, 15, v98
	v_and_b32_e32 v78, 15, v99
	v_and_b32_e32 v43, 15, v104
	v_and_b32_e32 v71, 15, v109
	v_and_b32_e32 v75, 15, v79
	v_and_b32_e32 v79, 15, v110
	v_and_b32_e32 v30, 15, v92
	v_and_b32_e32 v31, 15, v101
	v_and_b32_e32 v44, 15, v81
	v_and_b32_e32 v45, 15, v86
	v_and_b32_e32 v46, 15, v94
	v_and_b32_e32 v47, 15, v105
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v16, v[52:55] offset:2048
	ds_store_b128 v16, v[68:71] offset:2304
	ds_store_b128 v19, v[24:27]
	ds_store_b128 v19, v[40:43] offset:256
	ds_store_b128 v19, v[56:59] offset:2048
	ds_store_b128 v19, v[72:75] offset:2304
	ds_store_b128 v13, v[28:31]
	ds_store_b128 v13, v[44:47] offset:256
	ds_store_b128 v13, v[60:63] offset:2048
	ds_store_b128 v13, v[76:79] offset:2304
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[16:19], v14
	ds_load_b128 v[20:23], v14 offset:128
	ds_load_b128 v[24:27], v14 offset:4096
	ds_load_b128 v[28:31], v14 offset:4224
	v_xad_u32 v14, 0x8040, v11, 0
	v_xad_u32 v13, 0x4020, v11, 0
	v_xad_u32 v11, 0xc060, v11, 0
	ds_load_b128 v[48:51], v14
	ds_load_b128 v[52:55], v14 offset:128
	ds_load_b128 v[56:59], v14 offset:4096
	ds_load_b128 v[60:63], v14 offset:4224
	ds_load_b128 v[64:67], v11 offset:4096
	ds_load_b128 v[68:71], v11
	ds_load_b128 v[72:75], v11 offset:128
	ds_load_b128 v[76:79], v11 offset:4224
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v15, 2, v9
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_load_b128 v[32:35], v13
	ds_load_b128 v[36:39], v13 offset:128
	ds_load_b128 v[40:43], v13 offset:4096
	ds_load_b128 v[44:47], v13 offset:4224
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[5:6]
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v4.l, v12.h
	v_mov_b16_e32 v3.l, v10.h
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v13, s2, s72, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v14, null, s73, 0, s2
	v_add_co_u32 v80, s2, s72, v9
	v_add_co_ci_u32_e64 v81, null, s73, 0, s2
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[76:77], v[5:6]
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v6, s72, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s60, s[74:75], v[13:14]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s61, s[76:77], v[13:14]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_lshl_or_b32 v5, s79, 7, v8
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(13)
	v_lshl_or_b32 v11, v24, 4, v16
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 2, v6
	v_add_nc_u32_e32 v15, 4, v6
	v_add_nc_u32_e32 v16, 6, v6
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(9)
	v_lshl_or_b32 v48, v56, 4, v48
	s_waitcnt lgkmcnt(6)
	v_lshl_or_b32 v56, v64, 4, v68
	v_lshl_or_b32 v68, v25, 4, v17
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s73, s68, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v17, 8, v6
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v49, v57, 4, v49
	v_lshl_or_b32 v57, v65, 4, v69
	v_lshl_or_b32 v69, v26, 4, v18
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v18, 10, v6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v50, v58, 4, v50
	v_lshl_or_b32 v58, v66, 4, v70
	v_lshl_or_b32 v70, v27, 4, v19
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v19, 12, v6
	v_mad_u64_u32 v[13:14], null, v13, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v64, v28, 4, v20
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v20, 14, v6
	v_mad_u64_u32 v[14:15], null, v15, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v65, v29, 4, v21
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v21, 16, v6
	v_mad_u64_u32 v[15:16], null, v16, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v66, v30, 4, v22
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v22, 18, v6
	v_mad_u64_u32 v[16:17], null, v17, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v51, v59, 4, v51
	v_lshl_or_b32 v59, v67, 4, v71
	v_lshl_or_b32 v67, v31, 4, v23
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v23, 20, v6
	v_mad_u64_u32 v[17:18], null, v18, s73, v[5:6]
	v_add_nc_u32_e32 v24, 22, v6
	v_mad_u64_u32 v[18:19], null, v19, s73, v[5:6]
	v_add_nc_u32_e32 v25, 24, v6
	v_mad_u64_u32 v[19:20], null, v20, s73, v[5:6]
	v_add_nc_u32_e32 v26, 26, v6
	v_mad_u64_u32 v[20:21], null, v21, s73, v[5:6]
	v_add_nc_u32_e32 v27, 28, v6
	v_mad_u64_u32 v[21:22], null, v22, s73, v[5:6]
	v_add_nc_u32_e32 v28, 30, v6
	v_mad_u64_u32 v[22:23], null, v23, s73, v[5:6]
	v_add_nc_u32_e32 v29, 32, v6
	v_mad_u64_u32 v[23:24], null, v24, s73, v[5:6]
	v_add_nc_u32_e32 v30, 34, v6
	v_mad_u64_u32 v[24:25], null, v25, s73, v[5:6]
	v_add_nc_u32_e32 v31, 36, v6
	v_mad_u64_u32 v[25:26], null, v26, s73, v[5:6]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s62, s[74:75], v[80:81]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s63, s[76:77], v[80:81]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	s_waitcnt lgkmcnt(1)
	v_lshl_or_b32 v80, v40, 4, v32
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v32, 38, v6
	v_mad_u64_u32 v[26:27], null, v27, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v52, v60, 4, v52
	v_lshl_or_b32 v60, v76, 4, v72
	v_lshl_or_b32 v72, v41, 4, v33
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v33, 40, v6
	v_mad_u64_u32 v[27:28], null, v28, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v53, v61, 4, v53
	v_lshl_or_b32 v61, v77, 4, v73
	v_lshl_or_b32 v73, v42, 4, v34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v34, 42, v6
	v_mad_u64_u32 v[28:29], null, v29, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v54, v62, 4, v54
	v_lshl_or_b32 v62, v78, 4, v74
	v_lshl_or_b32 v74, v43, 4, v35
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v35, 44, v6
	v_mad_u64_u32 v[29:30], null, v30, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v44, v44, 4, v36
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v36, 46, v6
	v_mad_u64_u32 v[30:31], null, v31, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v45, v45, 4, v37
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v37, 48, v6
	v_mad_u64_u32 v[31:32], null, v32, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v46, v46, 4, v38
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v38, 50, v6
	v_mad_u64_u32 v[8:9], null, v6, s73, v[5:6]
	v_mad_u64_u32 v[32:33], null, v33, s73, v[5:6]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v47, v47, 4, v39
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v39, 52, v6
	v_mad_u64_u32 v[33:34], null, v34, s73, v[5:6]
	v_add_nc_u32_e32 v40, 54, v6
	v_mad_u64_u32 v[34:35], null, v35, s73, v[5:6]
	v_add_nc_u32_e32 v41, 56, v6
	v_mad_u64_u32 v[35:36], null, v36, s73, v[5:6]
	v_add_nc_u32_e32 v42, 58, v6
	v_mad_u64_u32 v[36:37], null, v37, s73, v[5:6]
	v_add_nc_u32_e32 v43, 60, v6
	v_add_nc_u32_e32 v71, 62, v6
	v_mad_u64_u32 v[37:38], null, v38, s73, v[5:6]
	v_mad_u64_u32 v[38:39], null, v39, s73, v[5:6]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s62, s62, s63
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[39:40], null, v40, s73, v[5:6]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s60, s60, s61
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[40:41], null, v41, s73, v[5:6]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v8, 0x80000000, v8, s62
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[41:42], null, v42, s73, v[5:6]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v9, 0x80000000, v13, s60
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[42:43], null, v43, s73, v[5:6]
	v_mad_u64_u32 v[5:6], null, v71, s73, v[5:6]
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_mov_b32 s68, s64
	v_cndmask_b32_e32 v6, 0x80000000, v14, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s58, s59
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b8 v11, v8, s[68:71], 0 offen
	buffer_store_b8 v80, v9, s[68:71], 0 offen
	v_cndmask_b32_e32 v8, 0x80000000, v15, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s56, s57
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v55, v63, 4, v55
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s54, s55
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v63, v79, 4, v75
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v11, 0x80000000, v17, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s52, s53
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s78, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v13, 0x80000000, v18, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s50, s51
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v48, v6, s[68:71], 0 offen
	buffer_store_b8 v56, v8, s[68:71], 0 offen
	buffer_store_b8 v64, v9, s[68:71], 0 offen
	buffer_store_b8 v44, v11, s[68:71], 0 offen
	buffer_store_b8 v52, v13, s[68:71], 0 offen
	v_cndmask_b32_e32 v6, 0x80000000, v19, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s48, s49
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s2, s2, 24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v20, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s46, s47
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s78, s78, s2
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v21, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s44, s45
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v11, 0x80000000, v22, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s42, s43
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v13, 0x80000000, v23, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s40, s41
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v60, v6, s[68:71], 0 offen
	buffer_store_b8 v68, v8, s[68:71], 0 offen
	buffer_store_b8 v72, v9, s[68:71], 0 offen
	buffer_store_b8 v49, v11, s[68:71], 0 offen
	buffer_store_b8 v57, v13, s[68:71], 0 offen
	v_cndmask_b32_e32 v6, 0x80000000, v24, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s38, s39
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v25, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s36, s37
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v26, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s34, s35
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v11, 0x80000000, v27, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s31, s33
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v13, 0x80000000, v28, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s29, s30
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v65, v6, s[68:71], 0 offen
	buffer_store_b8 v45, v8, s[68:71], 0 offen
	buffer_store_b8 v53, v9, s[68:71], 0 offen
	buffer_store_b8 v61, v11, s[68:71], 0 offen
	buffer_store_b8 v69, v13, s[68:71], 0 offen
	v_cndmask_b32_e32 v6, 0x80000000, v29, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s27, s28
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v30, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s25, s26
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v31, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s23, s24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v11, 0x80000000, v32, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s21, s22
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v13, 0x80000000, v33, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s19, s20
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v73, v6, s[68:71], 0 offen
	buffer_store_b8 v50, v8, s[68:71], 0 offen
	buffer_store_b8 v58, v9, s[68:71], 0 offen
	buffer_store_b8 v66, v11, s[68:71], 0 offen
	buffer_store_b8 v46, v13, s[68:71], 0 offen
	v_cndmask_b32_e32 v6, 0x80000000, v34, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s17, s18
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v35, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s15, s16
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v36, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s13, s14
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v11, 0x80000000, v37, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s11, s12
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v13, 0x80000000, v38, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s9, s10
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v54, v6, s[68:71], 0 offen
	buffer_store_b8 v62, v8, s[68:71], 0 offen
	buffer_store_b8 v70, v9, s[68:71], 0 offen
	buffer_store_b8 v74, v11, s[68:71], 0 offen
	buffer_store_b8 v51, v13, s[68:71], 0 offen
	v_cndmask_b32_e32 v6, 0x80000000, v39, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v40, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v41, vcc_lo
	s_clause 0x2
	buffer_store_b8 v59, v6, s[68:71], 0 offen
	buffer_store_b8 v67, v8, s[68:71], 0 offen
	buffer_store_b8 v47, v9, s[68:71], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v8, 4, v0
	v_lshrrev_b32_e32 v9, 2, v82
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshlrev_b32_e32 v6, 3, v114
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v11, 0x80000000, v42, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_and_b32 v8, 2, v8
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v9, 0, v9
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v55, v11, s[68:71], 0 offen
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s78, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v63, v5, s[68:71], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v5, 0, v6
	v_add3_u32 v6, v9, v8, v6
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[1:2]
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v5, v[3:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v3, v6
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v4, v7, s0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[76:77], v[1:2]
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_cmp_eq_u32_e64 s1, 0, v0
	s_and_b32 s69, s67, 0xffff
	s_mov_b32 s68, s66
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_lshl_u32 v0, v4, s79, 1
	s_and_b32 vcc_lo, s1, s0
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v3, v0, s[68:71], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp102:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 120
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
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 230
		.amdhsa_next_free_sgpr 80
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 230
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 80
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16412
; TotalNumSgprs: 82
; NumVgprs: 230
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 28
; NumSGPRsForWavesPerEU: 82
; NumVGPRsForWavesPerEU: 230
; Occupancy: 6
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
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
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
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
	.byte	1                               ; Abbrev [1] 0xb:0x67 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x41 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x15 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x56:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1237                            ; DW_AT_call_line
	.byte	20                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x63:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
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
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
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
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         104
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         112
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 120
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     82
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     230
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
