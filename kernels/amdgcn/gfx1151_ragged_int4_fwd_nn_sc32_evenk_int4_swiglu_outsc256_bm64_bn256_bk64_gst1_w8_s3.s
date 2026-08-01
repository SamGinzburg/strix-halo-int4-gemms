	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s78, s[0:1], 0x54
	s_load_b64 s[34:35], s[0:1], 0x5c
	v_mov_b32_e32 v217, v0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_lshlrev_b32_e32 v18, 4, v217
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s78, 0xff
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s4, s3, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s4, s4, 24
	s_add_i32 s3, s3, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s3, s3, 8
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_rcp_iflag_f32_e32 v0, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v0
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s6, s5
	s_mul_hi_u32 s6, s5, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
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
	v_rcp_iflag_f32_e32 v0, s7
	v_readfirstlane_b32 s7, v0
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
	s_ashr_i32 s28, s7, 31
	s_sub_i32 s7, s8, s9
	s_add_i32 s12, s3, 1
	s_sub_i32 s13, s7, s6
	s_cmp_ge_u32 s7, s6
	s_load_b128 s[8:11], s[0:1], 0x28
	s_cselect_b32 s3, s12, s3
	s_cselect_b32 s7, s13, s7
	s_add_i32 s12, s3, 1
	s_cmp_ge_u32 s7, s6
	s_load_b64 s[6:7], s[0:1], 0x38
	s_cselect_b32 s3, s12, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s29, s3, s28
	s_sub_i32 s79, s29, s28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s79, s5
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s2, s2, s4
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[4:5], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s8, s4
	s_addc_u32 s3, s9, s5
	s_mov_b32 s8, 0
	s_load_b64 s[72:73], s[2:3], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s2, s10, s4
	s_addc_u32 s3, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s6, s6, s4
	s_addc_u32 s7, s7, s5
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s34, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v5, 8, v217
	v_lshlrev_b32_e32 v8, 4, v217
	s_branch .LBB0_3
.Ltmp4:
.LBB0_2:
	.loc	2 0 16 is_stmt 0                ; standard.py:0:16
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr8
.LBB0_3:                                ; %Flow626
	s_load_b128 s[64:67], s[0:1], 0x40
	s_load_b64 s[74:75], s[2:3], 0x0
	s_load_b64 s[76:77], s[6:7], 0x0
	v_dual_mov_b32 v162, 0 :: v_dual_and_b32 v215, 0x80, v217
	v_lshrrev_b32_e32 v154, 7, v217
	v_dual_mov_b32 v72, 0 :: v_dual_and_b32 v159, 15, v217
	v_dual_mov_b32 v67, 0 :: v_dual_and_b32 v212, 0x7f, v217
	v_lshrrev_b32_e32 v210, 4, v217
	v_cmp_eq_u32_e64 s2, 0, v215
	v_or_b32_e32 v66, 14, v154
	v_or_b32_e32 v68, 12, v154
	v_or_b32_e32 v60, 10, v154
	v_or_b32_e32 v59, 8, v154
	v_or_b32_e32 v57, 6, v154
	v_or_b32_e32 v58, 4, v154
	v_or_b32_e32 v157, 2, v154
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v238, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v239, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v222, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v226, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v230, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v225, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v219, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v164, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v172, 0
	v_mov_b32_e32 v171, 0
	v_mov_b32_e32 v211, 0
	v_mov_b32_e32 v213, 0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x2
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[16:23], s[0:1], 0x0
	s_load_b32 s30, s[0:1], 0x58
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v0, s0, s72, v210
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s73, 0, s0
	v_add_co_u32 v2, s0, s72, v159
	v_add_co_ci_u32_e64 v3, null, s73, 0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v4, vcc_lo, v0, 16
	v_add_co_ci_u32_e64 v5, null, 0, v1, vcc_lo
	v_add_co_u32 v6, vcc_lo, v0, 32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, 0, v1, vcc_lo
	v_add_co_u32 v8, vcc_lo, v0, 48
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_add_u32 s0, s6, s4
	s_addc_u32 s1, s7, s5
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v9, null, 0, v1, vcc_lo
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[24:25], s[0:1], 0x0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v10, vcc_lo, v2, 16
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v11, null, 0, v3, vcc_lo
	v_add_co_u32 v12, vcc_lo, v2, 32
	v_dual_mov_b32 v51, 0 :: v_dual_and_b32 v16, 0xf0, v217
	v_add_co_ci_u32_e64 v13, null, 0, v3, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[74:75], v[8:9]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s11, s[76:77], v[8:9]
	v_dual_mov_b32 v216, 0 :: v_dual_lshlrev_b32 v9, 5, v217
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v14, vcc_lo, v2, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v15, null, 0, v3, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[74:75], v[10:11]
	v_cmp_le_i64_e64 s6, s[74:75], v[12:13]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s13, s[76:77], v[10:11]
	v_cmp_gt_i64_e64 s14, s[76:77], v[12:13]
	v_dual_mov_b32 v166, 0 :: v_dual_lshlrev_b32 v11, 2, v16
	v_dual_mov_b32 v158, 0 :: v_dual_and_b32 v9, 32, v9
	v_dual_mov_b32 v153, 0 :: v_dual_add_nc_u32 v12, s72, v210
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[74:75], v[4:5]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s9, s[76:77], v[4:5]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[74:75], v[2:3]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[76:77], v[2:3]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[74:75], v[6:7]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[76:77], v[6:7]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[0:1]
	v_cmp_le_i64_e64 s7, s[74:75], v[14:15]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[76:77], v[0:1]
	v_cmp_gt_i64_e64 s15, s[76:77], v[14:15]
	v_dual_mov_b32 v221, 0 :: v_dual_add_nc_u32 v0, s72, v159
	v_add3_u32 v9, 0, v11, v9
	v_dual_mov_b32 v172, 0 :: v_dual_add_nc_u32 v11, 16, v12
	v_dual_mov_b32 v97, 0 :: v_dual_lshlrev_b32 v14, 1, v16
	v_dual_mov_b32 v211, 0 :: v_dual_lshlrev_b32 v16, 1, v154
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s9
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s9, s34, s24
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s4, s4, s12
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_mul_i32 s12, s30, s24
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s10
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_lshl_b32 s10, s9, 1
	v_dual_mov_b32 v218, 0 :: v_dual_add_nc_u32 v3, 48, v0
	v_mul_lo_u32 v176, v11, s30
	v_dual_mov_b32 v170, 0 :: v_dual_add_nc_u32 v11, 32, v12
	v_lshl_add_u32 v16, s12, 1, v16
	s_or_b32 s10, s10, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s3, s3, s11
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_mul_i32 s10, s78, s10
	s_lshl_b32 s11, s29, 8
	v_dual_mov_b32 v52, 0 :: v_dual_add_nc_u32 v1, 16, v0
	v_dual_mov_b32 v209, 0 :: v_dual_add_nc_u32 v2, 32, v0
	v_add3_u32 v15, s10, s11, v217
	v_mul_lo_u32 v177, v11, s30
	v_dual_mov_b32 v164, 0 :: v_dual_add_nc_u32 v11, 29, v16
	v_mul_lo_u32 v3, s34, v3
	s_lshl_b32 s10, s28, 8
	v_mul_lo_u32 v2, s34, v2
	v_subrev_nc_u32_e32 v15, s10, v15
	v_mul_lo_u32 v11, s78, v11
	v_mul_lo_u32 v1, s34, v1
	v_dual_mov_b32 v220, 0 :: v_dual_lshlrev_b32 v17, 1, v212
	v_dual_mov_b32 v156, 0 :: v_dual_lshlrev_b32 v3, 1, v3
	v_dual_mov_b32 v82, 0 :: v_dual_lshlrev_b32 v179, 1, v15
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v15, 25, v16
	v_mul_lo_u32 v0, s34, v0
	v_dual_mov_b32 v169, 0 :: v_dual_lshlrev_b32 v2, 1, v2
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:116
	scratch_store_b32 off, v159, off offset:112
	v_add3_u32 v3, v11, s11, v17
	v_dual_mov_b32 v152, 0 :: v_dual_lshlrev_b32 v1, 1, v1
	v_mul_lo_u32 v15, s78, v15
	scratch_store_b32 off, v2, off offset:120 ; 4-byte Folded Spill
	v_dual_mov_b32 v83, 0 :: v_dual_lshlrev_b32 v0, 1, v0
	scratch_store_b32 off, v1, off offset:124 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v1, s10, v3
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v75, 0
	v_mov_b32_e32 v56, 0
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v2, 21, v16
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v1, 1, v1
	scratch_store_b32 off, v0, off offset:128 ; 4-byte Folded Spill
	v_add3_u32 v0, v15, s11, v17
	v_add_nc_u32_e32 v15, 13, v16
	v_mul_lo_u32 v11, s78, v66
	s_mul_i32 s9, s9, s78
	scratch_store_b32 off, v18, off offset:292 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s10, v0
	s_lshl_b32 s9, s9, 1
	v_dual_mov_b32 v219, 0 :: v_dual_and_b32 v4, 0x70, v18
	v_mul_lo_u32 v229, v12, s30
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v0, 1, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:132
	scratch_store_b32 off, v217, off offset:244
	v_dual_mov_b32 v213, 0 :: v_dual_add_nc_u32 v12, 48, v12
	scratch_store_b32 off, v0, off offset:140 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s78, v15
	v_add3_u32 v18, s9, s11, v217
	v_dual_mov_b32 v214, 0 :: v_dual_add_nc_u32 v3, 17, v16
	v_mul_lo_u32 v2, s78, v2
	v_mov_b32_e32 v55, 0
	v_dual_mov_b32 v74, 0 :: v_dual_lshlrev_b32 v1, 1, v11
	v_add3_u32 v0, v0, s11, v17
	v_mul_lo_u32 v178, v12, s30
	v_subrev_nc_u32_e32 v12, s10, v18
	v_mul_lo_u32 v3, s78, v3
	v_mov_b32_e32 v225, 0
	v_subrev_nc_u32_e32 v0, s10, v0
	v_mul_lo_u32 v11, s78, v60
	v_dual_mov_b32 v171, 0 :: v_dual_lshlrev_b32 v180, 1, v12
	v_mul_lo_u32 v12, s78, v68
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v0, 1, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:164
	scratch_store_b32 off, v57, off offset:272
	v_mul_lo_u32 v0, s78, v57
	v_mul_lo_u32 v15, s78, v59
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v226, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v151, 0
	v_mov_b32_e32 v100, 0
	v_mov_b32_e32 v78, 0
	v_lshlrev_b32_e32 v0, 1, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:136
	scratch_store_b32 off, v68, off offset:284
	v_add3_u32 v1, v2, s11, v17
	v_add3_u32 v2, v3, s11, v17
	v_lshlrev_b32_e32 v3, 1, v12
	v_add_nc_u32_e32 v12, 5, v16
	v_mov_b32_e32 v160, 0
	v_subrev_nc_u32_e32 v1, s10, v1
	v_subrev_nc_u32_e32 v2, s10, v2
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v105, 0
	v_mov_b32_e32 v99, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v1, 1, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:144
	scratch_store_b32 off, v60, off offset:280
	v_add_nc_u32_e32 v2, 1, v2
	v_add_nc_u32_e32 v3, 9, v16
	scratch_store_b32 off, v1, off offset:148 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v1, 1, v11
	v_dual_mov_b32 v124, 0 :: v_dual_lshlrev_b32 v11, 1, v15
	v_mul_lo_u32 v3, s78, v3
	v_mul_lo_u32 v15, s78, v154
	scratch_store_b32 off, v1, off offset:152 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s78, v12
	v_mul_lo_u32 v12, s78, v157
	v_cndmask_b32_e64 v7, 0x88, 0, s2
	v_bfe_i32 v5, v217, 3, 1
	v_mov_b32_e32 v77, 0
	v_dual_mov_b32 v79, 0 :: v_dual_lshlrev_b32 v10, 1, v217
	v_mov_b32_e32 v53, 0
	v_add3_u32 v1, v1, s11, v17
	v_xor_b32_e32 v7, v7, v212
	v_and_or_b32 v4, 0x88, v5, v4
	v_mov_b32_e32 v123, 0
	v_lshrrev_b32_e32 v5, 1, v217
	v_subrev_nc_u32_e32 v1, s10, v1
	v_dual_mov_b32 v92, 0 :: v_dual_and_b32 v13, 28, v10
	v_xor_b32_e32 v8, 8, v4
	v_mov_b32_e32 v103, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v1, 1, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:156
	scratch_store_b32 off, v210, off offset:248
	v_add3_u32 v2, v3, s11, v17
	v_mul_lo_u32 v3, s78, v16
	s_add_i32 s11, s11, s78
	scratch_store_b32 off, v1, off offset:180 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v1, 1, v12
	v_subrev_nc_u32_e32 v2, s10, v2
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s8
	.loc	1 1049 17                       ; ragged.py:1049:17
	s_lshl_b32 s8, s78, 1
	v_dual_mov_b32 v167, 0 :: v_dual_add_nc_u32 v6, 0, v159
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v2, 1, v2
	scratch_store_b32 off, v11, off offset:160 ; 4-byte Folded Spill
	v_mul_lo_u32 v11, s78, v58
	v_add3_u32 v3, s11, v3, v17
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s8, s8, s30
	.loc	1 1135 19                       ; ragged.py:1135:19
	scratch_store_b32 off, v2, off offset:172 ; 4-byte Folded Spill
	v_dual_mov_b32 v54, 0 :: v_dual_and_b32 v5, 0x70, v5
	v_mov_b32_e32 v101, 0
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s33, s8, s24
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_lshlrev_b32_e32 v2, 1, v11
	scratch_store_b32 off, v0, off offset:168 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s10, v3
	.loc	1 1180 33                       ; ragged.py:1180:33
	s_mov_b32 s8, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s5, s5, s13
	s_and_b32 s6, s6, s14
	s_and_b32 s7, s7, s15
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v0, 1, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:176
	scratch_store_b32 off, v212, off offset:252
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	scratch_store_b32 off, v0, off offset:188 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v0, 1, v15
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v1, off offset:184
	scratch_store_b32 off, v66, off offset:288
	scratch_store_b32 off, v154, off offset:256
	s_mov_b32 s11, s8
	scratch_store_b32 off, v0, off offset:192 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v7
	scratch_store_b32 off, v157, off offset:260 ; 4-byte Folded Spill
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	scratch_store_b32 off, v0, off offset:196 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v4
	scratch_store_b32 off, v215, off offset:264 ; 4-byte Folded Spill
	s_mov_b32 s15, s8
	v_dual_mov_b32 v104, 0 :: v_dual_add_nc_u32 v205, v6, v5
	scratch_store_b32 off, v0, off offset:200 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v8
	scratch_store_b32 off, v58, off offset:268 ; 4-byte Folded Spill
	v_mov_b32_e32 v143, 0
	v_mov_b32_e32 v73, 0
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_lshl_or_b32 v174, s79, 8, v17
	scratch_store_b32 off, v0, off offset:204 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, v9, v13
	scratch_store_b32 off, v59, off offset:276 ; 4-byte Folded Spill
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v204, 0, v10
	v_dual_mov_b32 v102, 0 :: v_dual_add_nc_u32 v207, 0, v14
	scratch_store_b32 off, v0, off offset:208 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, s8
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v239, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v2, s10
	v_dual_mov_b32 v1, s9 :: v_dual_mov_b32 v4, s12
	v_dual_mov_b32 v3, s11 :: v_dual_mov_b32 v6, s14
	v_mov_b32_e32 v5, s13
	v_mov_b32_e32 v7, s15
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s19, s19, 0xffff
	s_and_b32 s21, s21, 0xffff
	s_and_b32 s23, s23, 0xffff
	s_add_u32 s35, s33, s78
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_lshl_b32 s36, s78, 2
	s_lshl_b32 s37, s78, 5
	s_mov_b32 s24, s16
	s_mov_b32 s25, s17
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	s_mov_b32 s18, s26
	s_mov_b32 s19, s27
	s_mov_b32 s28, s20
	s_mov_b32 s29, s21
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s20, s22
	s_mov_b32 s21, s23
	s_mov_b32 s22, s26
	s_mov_b32 s23, s27
	s_mov_b32 s38, s8
	s_mov_b32 s39, s8
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[0:3], off offset:212
	scratch_store_b128 off, v[4:7], off offset:228
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v4, off, off offset:192
	scratch_load_b32 v5, off, off offset:184
	scratch_load_b32 v6, off, off offset:176
	scratch_load_b32 v7, off, off offset:168
	scratch_load_b32 v8, off, off offset:160
	scratch_load_b32 v9, off, off offset:152
	scratch_load_b32 v10, off, off offset:144
	scratch_load_b32 v11, off, off offset:136
	v_add_nc_u32_e32 v0, v159, v229
	s_clause 0xf                            ; 64-byte Folded Spill
	scratch_store_b32 off, v221, off offset:60
	scratch_store_b32 off, v219, off offset:56
	scratch_store_b32 off, v218, off offset:52
	scratch_store_b32 off, v133, off offset:48
	scratch_store_b32 off, v214, off offset:44
	scratch_store_b32 off, v95, off offset:40
	scratch_store_b32 off, v230, off offset:36
	scratch_store_b32 off, v94, off offset:32
	scratch_store_b32 off, v121, off offset:28
	scratch_store_b32 off, v128, off offset:24
	scratch_store_b32 off, v147, off offset:20
	scratch_store_b32 off, v222, off offset:16
	scratch_store_b32 off, v163, off offset:12
	scratch_store_b32 off, v162, off offset:8
	scratch_store_b32 off, v161, off offset:4
	scratch_store_b32 off, v84, off
	v_dual_mov_b32 v94, v181 :: v_dual_add_nc_u32 v1, v159, v176
	v_dual_mov_b32 v147, v165 :: v_dual_add_nc_u32 v2, v159, v177
	v_add_nc_u32_e32 v3, v159, v178
	v_dual_mov_b32 v121, v160 :: v_dual_cndmask_b32 v0, 0x80000000, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	v_cndmask_b32_e64 v2, 0x80000000, v2, s1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1155 34 is_stmt 1             ; ragged.py:1155:34
	s_clause 0x3
	buffer_load_u8 v0, v0, s[24:27], 0 offen
	buffer_load_u8 v1, v1, s[24:27], 0 offen
	buffer_load_u8 v2, v2, s[24:27], 0 offen
	buffer_load_u8 v3, v3, s[24:27], 0 offen
	v_mov_b32_e32 v175, v153
	v_mov_b32_e32 v153, v137
	v_dual_mov_b32 v137, v124 :: v_dual_mov_b32 v206, v77
	v_dual_mov_b32 v217, v116 :: v_dual_mov_b32 v162, v117
	v_dual_mov_b32 v161, v143 :: v_dual_mov_b32 v160, v140
	v_mov_b32_e32 v143, v112
	v_mov_b32_e32 v163, v149
	v_mov_b32_e32 v149, v118
	v_mov_b32_e32 v118, v106
	v_dual_mov_b32 v106, v80 :: v_dual_mov_b32 v117, v105
	v_mov_b32_e32 v105, v79
	v_mov_b32_e32 v201, v131
	v_mov_b32_e32 v131, v103
	v_mov_b32_e32 v215, v115
	v_mov_b32_e32 v115, v107
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_add_i32 s34, s34, -1
	v_dual_mov_b32 v208, v167 :: v_dual_mov_b32 v167, v166
	v_dual_mov_b32 v166, v97 :: v_dual_mov_b32 v97, v92
	v_mov_b32_e32 v92, v51
	v_mov_b32_e32 v168, v52
	v_dual_mov_b32 v203, v72 :: v_dual_mov_b32 v154, v141
	v_mov_b32_e32 v141, v123
	v_dual_mov_b32 v123, v88 :: v_dual_mov_b32 v112, v78
	v_mov_b32_e32 v165, v155
	v_dual_mov_b32 v155, v120 :: v_dual_mov_b32 v120, v86
	v_dual_mov_b32 v86, v73 :: v_dual_mov_b32 v157, v104
	v_mov_b32_e32 v104, v62
	v_mov_b32_e32 v88, v71
	v_mov_b32_e32 v210, v54
	v_mov_b32_e32 v124, v96
	v_mov_b32_e32 v96, v55
	v_mov_b32_e32 v116, v108
	v_mov_b32_e32 v108, v100
	v_dual_mov_b32 v100, v89 :: v_dual_mov_b32 v89, v56
	v_dual_mov_b32 v140, v125 :: v_dual_mov_b32 v125, v114
	v_mov_b32_e32 v212, v171
	v_dual_mov_b32 v114, v113 :: v_dual_mov_b32 v113, v87
	v_dual_mov_b32 v87, v74 :: v_dual_mov_b32 v214, v111
	v_mov_b32_e32 v103, v61
	v_mov_b32_e32 v171, v151
	v_mov_b32_e32 v151, v119
	v_mov_b32_e32 v119, v85
	v_mov_b32_e32 v85, v67
	v_add_nc_u32_e32 v177, 16, v177
	v_add_nc_u32_e32 v229, 16, v229
	v_add_nc_u32_e32 v178, 16, v178
	v_add_nc_u32_e32 v176, 16, v176
	s_waitcnt vmcnt(11)
	v_add3_u32 v241, v4, s38, v174
	s_waitcnt vmcnt(10)
	v_add3_u32 v231, v5, s38, v174
	s_waitcnt vmcnt(9)
	v_add3_u32 v227, v6, s38, v174
	s_waitcnt vmcnt(8)
	v_add3_u32 v224, v7, s38, v174
	s_waitcnt vmcnt(7)
	v_add3_u32 v223, v8, s38, v174
	s_waitcnt vmcnt(6)
	v_add3_u32 v221, v9, s38, v174
	s_waitcnt vmcnt(5)
	v_add3_u32 v219, v10, s38, v174
	s_waitcnt vmcnt(4)
	v_add3_u32 v218, v11, s38, v174
	v_add_nc_u32_e32 v4, s33, v241
	v_add_nc_u32_e32 v5, s33, v231
	v_add_nc_u32_e32 v6, s33, v227
	v_add_nc_u32_e32 v7, s33, v224
	v_add_nc_u32_e32 v8, s33, v223
	v_add_nc_u32_e32 v9, s33, v221
	v_add_nc_u32_e32 v10, s33, v219
	v_add_nc_u32_e32 v11, s33, v218
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x7
	buffer_load_u16 v4, v4, s[16:19], 0 offen
	buffer_load_u16 v5, v5, s[16:19], 0 offen
	buffer_load_u16 v6, v6, s[16:19], 0 offen
	buffer_load_u16 v7, v7, s[16:19], 0 offen
	buffer_load_u16 v8, v8, s[16:19], 0 offen
	buffer_load_u16 v9, v9, s[16:19], 0 offen
	buffer_load_u16 v10, v10, s[16:19], 0 offen
	buffer_load_u16 v11, v11, s[16:19], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v12, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v12, v0
	ds_store_b8 v12, v1 offset:256
	ds_store_b8 v12, v2 offset:512
	ds_store_b8 v12, v3 offset:768
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_b64 v[25:28], v0 offset1:32
	ds_load_2addr_b64 v[17:20], v0 offset0:64 offset1:96
	scratch_load_b32 v0, off, off offset:204 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_b64 v[29:32], v0 offset1:32
	ds_load_2addr_b64 v[21:24], v0 offset0:64 offset1:96
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v204, v4
	ds_store_b16 v204, v5 offset:512
	ds_store_b16 v204, v6 offset:1024
	ds_store_b16 v204, v7 offset:1536
	ds_store_b16 v204, v8 offset:2048
	ds_store_b16 v204, v9 offset:2560
	ds_store_b16 v204, v10 offset:3072
	ds_store_b16 v204, v11 offset:3584
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[182:185], off, off offset:212
	scratch_load_b128 v[186:189], off, off offset:228
	ds_load_u8 v0, v205 offset:1280
	ds_load_u8 v1, v205 offset:1024
	ds_load_u8 v8, v205 offset:1920
	ds_load_u8 v9, v205 offset:1664
	ds_load_u8 v10, v205 offset:1408
	ds_load_u8 v11, v205 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v205 offset:1792
	ds_load_u8 v2, v205 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v205 offset:256
	ds_load_u8 v3, v205
	ds_load_u8 v12, v205 offset:896
	ds_load_u8 v13, v205 offset:640
	ds_load_u8 v14, v205 offset:384
	ds_load_u8 v15, v205 offset:128
	v_lshl_or_b32 v43, v1, 16, v0
	ds_load_u8 v0, v205 offset:3328
	ds_load_u8 v1, v205 offset:3072
	ds_load_u8 v16, v205 offset:3968
	ds_load_u8 v33, v205 offset:3712
	ds_load_u8 v34, v205 offset:3456
	ds_load_u8 v35, v205 offset:3200
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v205 offset:768
	ds_load_u8 v4, v205 offset:512
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v3, 16, v2
	ds_load_u8 v1, v205 offset:3840
	ds_load_u8 v2, v205 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v205 offset:2304
	ds_load_u8 v3, v205 offset:2048
	ds_load_u8 v36, v205 offset:2944
	ds_load_u8 v37, v205 offset:2688
	ds_load_u8 v38, v205 offset:2432
	ds_load_u8 v39, v205 offset:2176
	v_lshl_or_b32 v45, v1, 16, v0
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v205 offset:2816
	ds_load_u8 v4, v205 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v44, v3, 16, v2
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[42:43], v[25:26], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[44:45], v[29:30], v[0:7] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v159, v2
	v_cvt_f32_i32_e32 v84, v3
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v2, v15, v14, 0xc0c0004
	v_perm_b32 v3, v13, v12, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v188, v0
	v_cvt_f32_i32_e32 v240, v1
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v0, v11, v10, 0xc0c0004
	v_perm_b32 v1, v9, v8, 0xc0c0004
	v_lshl_or_b32 v46, v3, 16, v2
	v_perm_b32 v3, v37, v36, 0xc0c0004
	scratch_load_b32 v37, off, off offset:188 ; 4-byte Folded Reload
	v_perm_b32 v2, v39, v38, 0xc0c0004
	v_lshl_or_b32 v47, v1, 16, v0
	v_perm_b32 v1, v33, v16, 0xc0c0004
	v_mov_b32_e32 v16, s15
	v_perm_b32 v0, v35, v34, 0xc0c0004
	v_dual_mov_b32 v15, s14 :: v_dual_mov_b32 v14, s13
	v_dual_mov_b32 v13, s12 :: v_dual_mov_b32 v12, s11
	v_dual_mov_b32 v11, s10 :: v_dual_mov_b32 v10, s9
	v_mov_b32_e32 v9, s8
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v230, v4
	v_cvt_f32_i32_e32 v128, v5
	v_cvt_f32_i32_e32 v133, v6
	v_cvt_f32_i32_e32 v222, v7
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v49, v1, 16, v0
	v_lshl_or_b32 v48, v3, 16, v2
	v_wmma_i32_16x16x16_iu4 v[0:7], v[46:47], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[48:49], v[29:30], v[0:7] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v0
	scratch_store_b32 off, v0, off offset:108 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v5
	scratch_store_b32 off, v0, off offset:64 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v6
	scratch_store_b32 off, v0, off offset:68 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v7
	scratch_store_b32 off, v0, off offset:72 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v1
	scratch_store_b32 off, v0, off offset:96 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v2
	scratch_store_b32 off, v0, off offset:80 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v3
	scratch_store_b32 off, v0, off offset:84 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v4
	.loc	1 1161 31                       ; ragged.py:1161:31
	scratch_store_b32 off, v0, off offset:76 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu4 v[0:7], v[42:43], v[27:28], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[44:45], v[31:32], v[0:7] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v41, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v40, v1
	v_cvt_f32_i32_e32 v39, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v35, v3
	v_cvt_f32_i32_e32 v253, v4
	v_cvt_f32_i32_e32 v252, v5
	v_cvt_f32_i32_e32 v251, v6
	v_cvt_f32_i32_e32 v250, v7
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[0:7], v[46:47], v[27:28], v[9:16] neg_lo:[1,1,0]
	v_mov_b32_e32 v107, v99
	v_mov_b32_e32 v99, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[48:49], v[31:32], v[0:7] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v95, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v0, v5
	v_cvt_f32_i32_e32 v236, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v234, v2
	v_cvt_f32_i32_e32 v232, v3
	scratch_store_b32 off, v0, off offset:100 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v6
	scratch_store_b32 off, v0, off offset:92 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v7
	scratch_store_b32 off, v0, off offset:88 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v4
	.loc	1 1161 31                       ; ragged.py:1161:31
	scratch_store_b32 off, v0, off offset:104 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu4 v[0:7], v[42:43], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[44:45], v[21:22], v[0:7] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v184, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v183, v1
	v_cvt_f32_i32_e32 v182, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v181, v3
	v_cvt_f32_i32_e32 v0, v4
	v_cvt_f32_i32_e32 v34, v5
	v_cvt_f32_i32_e32 v36, v6
	v_cvt_f32_i32_e32 v38, v7
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[1:8], v[46:47], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[48:49], v[21:22], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v243, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v237, v6
	v_cvt_f32_i32_e32 v235, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v233, v8
	v_cvt_f32_i32_e32 v249, v2
	v_cvt_f32_i32_e32 v248, v3
	v_cvt_f32_i32_e32 v246, v4
	v_cvt_f32_i32_e32 v242, v5
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[1:8], v[42:43], v[19:20], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[44:45], v[23:24], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v195, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v193, v2
	v_cvt_f32_i32_e32 v192, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v191, v4
	v_cvt_f32_i32_e32 v189, v5
	v_cvt_f32_i32_e32 v187, v6
	v_cvt_f32_i32_e32 v186, v7
	v_cvt_f32_i32_e32 v185, v8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[1:8], v[46:47], v[19:20], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[48:49], v[23:24], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v42, v1
	v_add_nc_u32_e32 v1, s35, v241
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v244, v8
	v_add_nc_u32_e32 v8, s35, v218
	v_cvt_f32_i32_e32 v173, v2
	v_add_nc_u32_e32 v2, s35, v231
	v_cvt_f32_i32_e32 v44, v3
	v_add_nc_u32_e32 v3, s35, v227
	v_cvt_f32_i32_e32 v43, v4
	v_add_nc_u32_e32 v4, s35, v224
	v_cvt_f32_i32_e32 v33, v5
	v_add_nc_u32_e32 v5, s35, v223
	v_cvt_f32_i32_e32 v247, v6
	v_add_nc_u32_e32 v6, s35, v221
	v_cvt_f32_i32_e32 v245, v7
	v_add_nc_u32_e32 v7, s35, v219
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, s38, v37
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x1
	buffer_load_u8 v37, v37, s[16:19], 0 offen
	buffer_load_u8 v45, v1, s[16:19], 0 offen
	scratch_load_b32 v1, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s38, v1
	buffer_load_u8 v46, v1, s[16:19], 0 offen
	scratch_load_b32 v1, off, off offset:172 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s38, v1
	s_clause 0x2
	buffer_load_u8 v47, v1, s[16:19], 0 offen
	buffer_load_u8 v2, v2, s[16:19], 0 offen
	buffer_load_u8 v3, v3, s[16:19], 0 offen
	scratch_load_b32 v1, off, off offset:164 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s38, v1
	buffer_load_u8 v48, v1, s[16:19], 0 offen
	scratch_load_b32 v1, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v2.h, 8, v48.l
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s38, v1
	s_clause 0x2
	buffer_load_u8 v49, v1, s[16:19], 0 offen
	buffer_load_u8 v4, v4, s[16:19], 0 offen
	buffer_load_u8 v5, v5, s[16:19], 0 offen
	scratch_load_b32 v1, off, off offset:148 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_or_b16 v2.h, v4.l, v2.h
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s38, v1
	buffer_load_u8 v50, v1, s[16:19], 0 offen
	scratch_load_b32 v1, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v3.h, 8, v50.l
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s38, v1
	s_clause 0x2
	buffer_load_u8 v51, v1, s[16:19], 0 offen
	buffer_load_u8 v6, v6, s[16:19], 0 offen
	buffer_load_u8 v7, v7, s[16:19], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	scratch_load_b32 v1, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v4.l, 8, v51.l
	s_waitcnt vmcnt(2)
	v_or_b16 v3.h, v6.l, v3.h
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s38, v1
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x1
	buffer_load_u8 v52, v1, s[16:19], 0 offen
	buffer_load_u8 v8, v8, s[16:19], 0 offen
	v_lshlrev_b16 v1.h, 8, v46.l
	v_lshlrev_b16 v1.l, 8, v37.l
	v_or_b16 v4.l, v7.l, v4.l
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_or_b16 v1.h, v2.l, v1.h
	v_lshlrev_b16 v2.l, 8, v47.l
	v_or_b16 v1.l, v45.l, v1.l
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_add_i32 s38, s38, s37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_or_b16 v2.l, v3.l, v2.l
	v_lshlrev_b16 v3.l, 8, v49.l
	v_or_b16 v3.l, v5.l, v3.l
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v4.h, 8, v52.l
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v4.h, v8.l, v4.h
	ds_store_b16 v204, v1
	ds_store_b16_d16_hi v204, v1 offset:512
	ds_store_b16 v204, v2 offset:1024
	ds_store_b16_d16_hi v204, v2 offset:1536
	ds_store_b16 v204, v3 offset:2048
	ds_store_b16_d16_hi v204, v3 offset:2560
	ds_store_b16 v204, v4 offset:3072
	ds_store_b16_d16_hi v204, v4 offset:3584
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v1, v205 offset:1280
	ds_load_u8 v2, v205 offset:1024
	ds_load_u8 v37, v205 offset:1920
	ds_load_u8 v45, v205 offset:1664
	ds_load_u8 v46, v205 offset:1408
	ds_load_u8 v47, v205 offset:1152
	ds_load_u8 v54, v205 offset:3712
	ds_load_u8 v55, v205 offset:3456
	ds_load_u8 v56, v205 offset:3200
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v205 offset:1792
	ds_load_u8 v3, v205 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v205 offset:256
	ds_load_u8 v4, v205
	ds_load_u8 v48, v205 offset:896
	ds_load_u8 v49, v205 offset:640
	ds_load_u8 v50, v205 offset:384
	ds_load_u8 v51, v205 offset:128
	v_lshl_or_b32 v72, v2, 16, v1
	ds_load_u8 v1, v205 offset:3328
	ds_load_u8 v2, v205 offset:3072
	ds_load_u8 v52, v205 offset:3968
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v205 offset:768
	ds_load_u8 v5, v205 offset:512
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v71, v4, 16, v3
	ds_load_u8 v2, v205 offset:3840
	ds_load_u8 v3, v205 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	ds_load_u8 v3, v205 offset:2304
	ds_load_u8 v4, v205 offset:2048
	ds_load_u8 v57, v205 offset:2944
	ds_load_u8 v58, v205 offset:2688
	ds_load_u8 v59, v205 offset:2432
	ds_load_u8 v60, v205 offset:2176
	v_lshl_or_b32 v78, v2, 16, v1
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	ds_load_u8 v4, v205 offset:2816
	ds_load_u8 v5, v205 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v77, v4, 16, v3
	v_wmma_i32_16x16x16_iu4 v[1:8], v[71:72], v[25:26], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[77:78], v[29:30], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v228, v1
	v_cvt_f32_i32_e32 v1, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v200, v3
	v_cvt_f32_i32_e32 v199, v4
	v_cvt_f32_i32_e32 v198, v5
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_perm_b32 v2, v47, v46, 0xc0c0004
	v_perm_b32 v3, v45, v37, 0xc0c0004
	v_perm_b32 v4, v51, v50, 0xc0c0004
	v_perm_b32 v5, v49, v48, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v197, v6
	v_cvt_f32_i32_e32 v196, v7
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v80, v3, 16, v2
	v_perm_b32 v2, v56, v55, 0xc0c0004
	v_lshl_or_b32 v79, v5, 16, v4
	v_perm_b32 v3, v54, v52, 0xc0c0004
	v_perm_b32 v4, v60, v59, 0xc0c0004
	v_perm_b32 v5, v58, v57, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[55:62], v[71:72], v[27:28], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v74, v3, 16, v2
	v_wmma_i32_16x16x16_iu4 v[45:52], v[79:80], v[25:26], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v73, v5, 16, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[55:62], v[77:78], v[31:32], v[55:62] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v194, v8
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[45:52], v[73:74], v[29:30], v[45:52] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v54, v55
	v_cvt_f32_i32_e32 v5, v59
	v_cvt_f32_i32_e32 v4, v60
	v_cvt_f32_i32_e32 v3, v61
	v_cvt_f32_i32_e32 v219, v47
	v_cvt_f32_i32_e32 v218, v48
	v_cvt_f32_i32_e32 v30, v49
	v_cvt_f32_i32_e32 v49, v56
	v_cvt_f32_i32_e32 v48, v57
	v_cvt_f32_i32_e32 v47, v58
	v_cvt_f32_i32_e32 v2, v62
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[55:62], v[79:80], v[27:28], v[9:16] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v190, v45
	v_cvt_f32_i32_e32 v25, v50
	v_cvt_f32_i32_e32 v26, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[55:62], v[73:74], v[31:32], v[55:62] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v29, v52
	v_cvt_f32_i32_e32 v221, v46
	v_cvt_f32_i32_e32 v227, v57
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v224, v58
	v_cvt_f32_i32_e32 v32, v59
	v_mov_b32_e32 v57, v65
	v_dual_mov_b32 v58, v69 :: v_dual_mov_b32 v59, v70
	v_dual_mov_b32 v111, v98 :: v_dual_mov_b32 v98, v64
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[63:70], v[71:72], v[17:18], v[9:16] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v223, v55
	v_cvt_f32_i32_e32 v28, v61
	v_cvt_f32_i32_e32 v31, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[63:70], v[77:78], v[21:22], v[63:70] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v231, v56
	v_cvt_f32_i32_e32 v27, v60
	v_cvt_f32_i32_e32 v62, v63
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v61, v64
	v_cvt_f32_i32_e32 v56, v65
	v_cvt_f32_i32_e32 v55, v66
	v_cvt_f32_i32_e32 v202, v67
	v_cvt_f32_i32_e32 v8, v68
	v_cvt_f32_i32_e32 v7, v69
	v_cvt_f32_i32_e32 v6, v70
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[63:70], v[79:80], v[17:18], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[63:70], v[73:74], v[21:22], v[63:70] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v241, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v17, v68
	v_cvt_f32_i32_e32 v18, v69
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v21, v70
	v_cvt_f32_i32_e32 v37, v64
	v_cvt_f32_i32_e32 v255, v65
	v_cvt_f32_i32_e32 v254, v66
	v_cvt_f32_i32_e32 v22, v67
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[63:70], v[71:72], v[19:20], v[9:16] neg_lo:[1,1,0]
	v_mov_b32_e32 v72, v203
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[63:70], v[77:78], v[23:24], v[63:70] neg_lo:[1,1,0]
	v_dual_mov_b32 v77, v206 :: v_dual_mov_b32 v78, v112
	v_dual_mov_b32 v112, v143 :: v_dual_mov_b32 v143, v161
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v50, v63
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v51, v64
	v_cvt_f32_i32_e32 v52, v65
	v_cvt_f32_i32_e32 v71, v66
	v_cvt_f32_i32_e32 v46, v67
	v_cvt_f32_i32_e32 v45, v68
	v_cvt_f32_i32_e32 v206, v69
	v_cvt_f32_i32_e32 v203, v70
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[63:70], v[79:80], v[19:20], v[9:16] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v19, off, off offset:128
	scratch_load_b32 v20, off, off offset:124
	v_mov_b32_e32 v80, v106
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[63:70], v[73:74], v[23:24], v[63:70] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v23, off, off offset:120
	scratch_load_b32 v24, off, off offset:116
	v_dual_mov_b32 v73, v86 :: v_dual_mov_b32 v86, v120
	v_dual_mov_b32 v120, v155 :: v_dual_mov_b32 v161, v57
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v9, v68
	v_mov_b32_e32 v106, v118
	v_mov_b32_e32 v118, v149
	v_cvt_f32_i32_e32 v13, v63
	v_cvt_f32_i32_e32 v10, v69
	v_mov_b32_e32 v69, v58
	v_cvt_f32_i32_e32 v11, v70
	v_cvt_f32_i32_e32 v16, v64
	v_cvt_f32_i32_e32 v15, v65
	v_cvt_f32_i32_e32 v14, v66
	v_cvt_f32_i32_e32 v12, v67
	s_waitcnt vmcnt(3)
	v_dual_mov_b32 v74, v87 :: v_dual_add_nc_u32 v19, s39, v19
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v20, s39, v20
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v70, v59 :: v_dual_add_nc_u32 v23, s39, v23
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v24, s39, v24
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	v_cndmask_b32_e64 v20, 0x80000000, v20, s5
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_add_i32 s39, s39, 2
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v23, 0x80000000, v23, s6
	v_cndmask_b32_e64 v24, 0x80000000, v24, s7
	s_clause 0x3
	buffer_load_u16 v19, v19, s[28:31], 0 offen
	buffer_load_u16 v20, v20, s[28:31], 0 offen
	buffer_load_u16 v23, v23, s[28:31], 0 offen
	buffer_load_u16 v24, v24, s[28:31], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v57, v180, s[20:23], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v68, off, off offset:208 ; 4-byte Folded Reload
	v_dual_mov_b32 v149, v163 :: v_dual_add_nc_u32 v180, s36, v180
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s34, 0
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v20, 16, v20
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v23, 16, v23
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v57, 16, v57
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v40, v20, v40
	v_mul_f32_e32 v0, v23, v0
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v68, v57
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[57:60], v207
	ds_load_b128 v[63:66], v207 offset:16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v67, v19, v188
	v_mov_b32_e32 v155, v165
	v_mov_b32_e32 v87, v113
	v_dual_mov_b32 v113, v114 :: v_dual_mov_b32 v114, v125
	v_mov_b32_e32 v125, v140
	v_mov_b32_e32 v140, v160
	v_mov_b32_e32 v160, v121
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v9, v24
	v_mul_f32_e32 v10, v10, v24
	v_mul_f32_e32 v11, v11, v24
	v_mul_f32_e32 v12, v24, v12
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v148, v67, v57
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v67, v19, v240 :: v_dual_fmac_f32 v136, v40, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v149, v67, v58
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v67, v19, v159
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v155, v67, v59
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v67, v19, v84
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v150, v67, v60 :: v_dual_fmac_f32 v77, v0, v63
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v0, v23, v34 :: v_dual_mov_b32 v67, v85
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v78, v0, v64
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v0, v23, v36 :: v_dual_mul_f32 v39, v20, v39
	v_mov_b32_e32 v79, v105
	v_mul_f32_e32 v35, v20, v35
	v_mov_b32_e32 v105, v117
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v41, v20, v41 :: v_dual_fmac_f32 v112, v39, v59
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v79, v0, v65 :: v_dual_mul_f32 v0, v23, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v138, v35, v60
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v35, v23, v184
	v_dual_mov_b32 v165, v147 :: v_dual_fmac_f32 v80, v0, v66
	v_mul_f32_e32 v0, v24, v189
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v74, v0, v63
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v24, v187
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v225, v0, v64
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v0, v24, v186 :: v_dual_mov_b32 v85, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v119, v151 :: v_dual_fmac_f32 v226, v0, v65
	v_dual_mul_f32 v0, v24, v185 :: v_dual_mov_b32 v151, v171
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v85, v35, v57
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v35, v23, v183
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v117, v162 :: v_dual_fmac_f32 v160, v0, v66
	scratch_load_b32 v0, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v135, v41, v57 :: v_dual_fmac_f32 v86, v35, v58
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v35, v23, v182
	v_mov_b32_e32 v171, v212
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v113, v35, v59
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v35, v23, v181
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v87, v35, v60
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v35, v24, v195
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v238, v35, v57
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v35, v24, v193
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v90, v35, v58 :: v_dual_mul_f32 v35, v24, v192
	v_fmac_f32_e32 v91, v35, v59
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v35, v24, v191
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v239, v35, v60
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[38:41], v207 offset:512
	ds_load_b128 v[57:60], v207 offset:528
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v35, v19, v230
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v125, v35, v63
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v35, v19, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v139, v35, v64
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v35, v19, v133
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v140, v35, v65
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v35, v19, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v142, v35, v66 :: v_dual_mul_f32 v35, v20, v253
	v_fmac_f32_e32 v101, v35, v63
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v19
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v213, v0, v38
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v19, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v117, v0, v39
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v19, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v118, v0, v40
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:84 ; 4-byte Folded Reload
	v_mul_f32_e32 v35, v20, v252
	v_dual_mov_b32 v181, v94 :: v_dual_fmac_f32 v102, v35, v64
	v_mov_b32_e32 v64, v98
	v_dual_mov_b32 v98, v111 :: v_dual_mov_b32 v111, v214
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v214, off, off offset:44
	scratch_load_b32 v94, off, off offset:32
	scratch_load_b32 v121, off, off offset:28
	scratch_load_b32 v128, off, off offset:24
	scratch_load_b32 v147, off, off offset:20
	v_mul_f32_e32 v35, v20, v251
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v122, v35, v65 :: v_dual_mul_f32 v35, v20, v250
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(5)
	v_mul_f32_e32 v0, v19, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v119, v0, v41 :: v_dual_mul_f32 v0, v95, v20
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v133, off, off offset:48
	scratch_load_b32 v95, off, off offset:40
	scratch_load_b32 v230, off, off offset:36
	v_fmac_f32_e32 v170, v0, v38
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v20, v236
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v93, v0, v39
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v20, v234
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(6)
	v_fmac_f32_e32 v94, v0, v40
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v20, v232
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(5)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v121, v0, v41 :: v_dual_mul_f32 v0, v243, v23
	v_fmac_f32_e32 v82, v0, v38
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v23, v249
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v69, v0, v39 :: v_dual_mul_f32 v0, v23, v248
	v_fmac_f32_e32 v70, v0, v40
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v23, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v64, v0, v41
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v42, v24
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v156, v0, v38
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v24, v173
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v161, v0, v39
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v24, v44
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v72, v0, v40
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v24, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v73, v0, v41
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:76 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v19, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v120, v0, v57
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v211, v0, v58
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v63, v99 :: v_dual_mul_f32 v0, v0, v19
	v_dual_mov_b32 v99, v107 :: v_dual_fmac_f32 v172, v0, v59
	scratch_load_b32 v0, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v107, v115 :: v_dual_mul_f32 v0, v0, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v171, v0, v60
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v20, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v127, v0, v57
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v115, v215 :: v_dual_mul_f32 v0, v0, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v169, v0, v58
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v20
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v83, v0, v59
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:88 ; 4-byte Folded Reload
	v_mov_b32_e32 v65, v161
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v222, off, off offset:16
	scratch_load_b32 v163, off, off offset:12
	scratch_load_b32 v162, off, off offset:8
	scratch_load_b32 v161, off, off offset:4
	scratch_load_b32 v84, off, off
	scratch_load_b32 v159, off, off offset:112
	s_waitcnt vmcnt(6)
	v_mul_f32_e32 v0, v0, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v164, v0, v60
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v23, v242
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v63, v0, v57 :: v_dual_mul_f32 v0, v237, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v81, v0, v58 :: v_dual_mul_f32 v0, v235, v23
	v_dual_fmac_f32 v129, v35, v66 :: v_dual_fmac_f32 v76, v0, v59
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v233, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v75, v0, v60
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v24, v33
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v67, v0, v57 :: v_dual_mul_f32 v0, v247, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v152, v0, v58
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v245, v24
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v151, v0, v59
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v244, v24
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v147, v0, v60
	.loc	1 1218 45                       ; ragged.py:1218:45
	buffer_load_u16 v0, v179, s[20:23], 0 offen
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v179, s36, v179
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v68, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v207
	ds_load_b128 v[38:41], v207 offset:16
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v19, v228
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v146, v0, v33
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v19, v1
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v145, v0, v34 :: v_dual_mul_f32 v0, v19, v200
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v144, v0, v35
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v19, v199
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v133, v0, v36
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v20, v54
	v_mov_b32_e32 v54, v210
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v128, v0, v33
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v20, v49
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v111, v0, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v20, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v109, v0, v35
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v20, v47
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v110, v0, v36
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v23, v62
	v_mov_b32_e32 v62, v104
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v104, v157 :: v_dual_fmac_f32 v115, v0, v33
	v_mul_f32_e32 v0, v23, v61
	v_mov_b32_e32 v61, v103
	v_mov_b32_e32 v103, v131
	v_dual_mov_b32 v131, v201 :: v_dual_fmac_f32 v114, v0, v34
	v_mul_f32_e32 v0, v23, v56
	v_dual_mov_b32 v56, v89 :: v_dual_mov_b32 v89, v100
	v_mov_b32_e32 v100, v108
	v_mov_b32_e32 v108, v116
	v_mov_b32_e32 v116, v217
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v108, v0, v35
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v23, v55 :: v_dual_mov_b32 v55, v96
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v107, v0, v36
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v24, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v165, v0, v33
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v24, v51
	v_dual_mov_b32 v51, v92 :: v_dual_mov_b32 v92, v97
	v_dual_mov_b32 v97, v166 :: v_dual_mov_b32 v96, v124
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v61, v0, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v24, v52
	v_mov_b32_e32 v124, v137
	v_dual_mov_b32 v137, v153 :: v_dual_mov_b32 v166, v167
	v_mov_b32_e32 v167, v208
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v62, v0, v35
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v24, v71
	v_dual_mov_b32 v71, v88 :: v_dual_mov_b32 v88, v123
	v_mov_b32_e32 v123, v141
	v_mov_b32_e32 v141, v154
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v163, v0, v36 :: v_dual_mul_f32 v0, v19, v198
	v_dual_mov_b32 v52, v168 :: v_dual_mov_b32 v153, v175
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v143, v0, v38 :: v_dual_mul_f32 v0, v19, v197
	v_dual_fmac_f32 v141, v0, v39 :: v_dual_mul_f32 v0, v19, v196
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v137, v0, v40 :: v_dual_mul_f32 v0, v19, v194
	v_fmac_f32_e32 v126, v0, v41
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v20, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v124, v0, v38
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v20, v4
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v123, v0, v39
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v20, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v103, v0, v40
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v20, v2
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v104, v0, v41
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v23, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v106, v0, v38
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v23, v8
	v_mul_f32_e32 v8, v190, v19
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v105, v0, v39
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v23, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v100, v0, v40
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v23, v6
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v99, v0, v41
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v24, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v214, v0, v38
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v24, v45
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v56, v0, v39
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v24, v206
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v55, v0, v40
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v24, v203
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v230, v0, v41
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[0:3], v207 offset:512
	ds_load_b128 v[4:7], v207 offset:528
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v51, v8, v0 :: v_dual_mul_f32 v8, v19, v221
	scratch_load_b32 v221, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v97, v10, v6 :: v_dual_fmac_f32 v162, v12, v4
	v_fmac_f32_e32 v153, v9, v5
	v_fmac_f32_e32 v134, v8, v1
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v19, v219
	scratch_load_b32 v219, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v92, v11, v7
	v_fmac_f32_e32 v132, v8, v2
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v19, v218
	scratch_load_b32 v218, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v130, v8, v3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v223, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v52, v8, v0
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v20, v231
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v116, v8, v1
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v20, v227
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v96, v8, v2
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v20, v224
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v95, v8, v3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v241, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v167, v8, v0 :: v_dual_mul_f32 v8, v23, v37
	v_fmac_f32_e32 v98, v8, v1
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v23, v255
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v181, v8, v2
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v23, v254
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v89, v8, v3 :: v_dual_mul_f32 v8, v13, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v158, v8, v0
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v24, v16
	v_mul_f32_e32 v16, v17, v23
	v_dual_mul_f32 v17, v18, v23 :: v_dual_mul_f32 v8, v27, v20
	v_dual_mul_f32 v18, v21, v23 :: v_dual_fmac_f32 v71, v0, v1
	v_mul_f32_e32 v0, v24, v15
	v_mul_f32_e32 v1, v26, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v13, v28, v20 :: v_dual_fmac_f32 v166, v18, v7
	v_mul_f32_e32 v15, v20, v32
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v84, v0, v2
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v24, v14
	v_mul_f32_e32 v2, v29, v19
	v_dual_mul_f32 v14, v31, v20 :: v_dual_fmac_f32 v209, v1, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v88, v15, v4 :: v_dual_fmac_f32 v161, v0, v3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v25, v19 :: v_dual_mul_f32 v3, v19, v30
	v_dual_mul_f32 v19, v23, v22 :: v_dual_fmac_f32 v220, v2, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v216, v14, v7 :: v_dual_fmac_f32 v53, v16, v5
	v_fmac_f32_e32 v131, v3, v4
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v222, v19, v4
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v54, v17, v6 :: v_dual_fmac_f32 v221, v0, v5
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v219, v8, v5 :: v_dual_fmac_f32 v218, v13, v6
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0xc                            ; 52-byte Folded Reload
	scratch_load_b32 v8, off, off offset:292
	scratch_load_b32 v210, off, off offset:248
	scratch_load_b32 v212, off, off offset:252
	scratch_load_b32 v154, off, off offset:256
	scratch_load_b32 v157, off, off offset:260
	scratch_load_b32 v215, off, off offset:264
	scratch_load_b32 v58, off, off offset:268
	scratch_load_b32 v57, off, off offset:272
	scratch_load_b32 v59, off, off offset:276
	scratch_load_b32 v60, off, off offset:280
	scratch_load_b32 v68, off, off offset:284
	scratch_load_b32 v66, off, off offset:288
	scratch_load_b32 v217, off, off offset:244
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v5, 8, v217
.LBB0_7:                                ; %._crit_edge
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v0, 62, v154
	v_and_b32_e32 v7, 63, v217
	v_or_b32_e32 v6, 58, v154
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v13, 0xbfb8aa3b, v221 :: v_dual_mul_f32 v16, 0xbfb8aa3b, v220
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v3, s0, s72, v0
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v0, 60, v154
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s73, 0, s0
	v_add_co_u32 v1, s0, s72, v7
	s_delay_alu instid0(VALU_DEP_3)
	v_add_co_u32 v9, s1, s72, v0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 56, v154
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v10, null, s73, 0, s1
	v_add_co_u32 v11, s1, s72, v6
	v_add_co_ci_u32_e64 v2, null, s73, 0, s0
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[74:75], v[3:4]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v12, null, s73, 0, s1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[76:77], v[3:4]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s6, s72, v0
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v6, 54, v154
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s73, 0, s6
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 52, v154
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[74:75], v[9:10]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[76:77], v[9:10]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v9, s6, s72, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[76:77], v[3:4]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v6, 50, v154
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v3, s10, s72, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, s73, 0, s10
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 48, v154
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[74:75], v[11:12]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v10, null, s73, 0, s6
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[76:77], v[11:12]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v11, s10, s72, v6
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v6, 46, v154
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v12, null, s73, 0, s10
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s11, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[76:77], v[3:4]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s14, s72, v0
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v0, 44, v154
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s9, s[74:75], v[9:10]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[76:77], v[9:10]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s73, 0, s14
	v_add_co_u32 v9, s14, s72, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s13, s[74:75], v[11:12]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v10, null, s73, 0, s14
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[76:77], v[11:12]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v11, s18, s72, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v51
	v_cmp_gt_f32_e64 s23, 0xc2fc0000, v16
	v_mul_f32_e32 v208, 0xbfb8aa3b, v143
	v_dual_mul_f32 v30, 0xbfb8aa3b, v131 :: v_dual_mul_f32 v207, 0xbfb8aa3b, v134
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v19, 0, 0x42800000, s23
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s23
	v_mul_f32_e32 v204, 0xbfb8aa3b, v111
	v_mul_f32_e32 v20, 0xbfb8aa3b, v216
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v15, 0xbfb8aa3b, v209
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v19, 0xbfb8aa3b, v220 :: v_dual_fmac_f32 v14, 0xbfb8aa3b, v51
	v_cmp_gt_f32_e64 s22, 0xc2fc0000, v15
	v_cmp_gt_f32_e64 s23, 0xc2fc0000, v20
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v28, 0xbfb8aa3b, v126
	v_exp_f32_e32 v14, v14
	v_cndmask_b32_e64 v17, 0, 0x42800000, s22
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v221
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s22
	v_exp_f32_e32 v19, v19
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v209
	v_cndmask_b32_e64 v23, 0, 0x42800000, s23
	v_exp_f32_e32 v15, v15
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, s23
	v_ldexp_f32 v0, v14, v0
	v_exp_f32_e32 v17, v17
	v_mul_f32_e32 v14, 0xbfb8aa3b, v52
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v216
	v_dual_mul_f32 v197, 0xbfb8aa3b, v116 :: v_dual_mul_f32 v24, 0xbfb8aa3b, v166
	v_mul_f32_e32 v180, 0xbfb8aa3b, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	v_ldexp_f32 v13, v15, v13
	v_dual_mul_f32 v183, 0xbfb8aa3b, v89 :: v_dual_mul_f32 v186, 0xbfb8aa3b, v99
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v15, v17, v16
	v_mul_f32_e32 v17, 0xbfb8aa3b, v219
	v_ldexp_f32 v16, v19, v18
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v19, 0xbfb8aa3b, v218
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	v_cmp_gt_f32_e64 s23, 0xc2fc0000, v24
	v_mul_f32_e32 v185, 0xbfb8aa3b, v98
	v_dual_mul_f32 v177, 0xbfb8aa3b, v214 :: v_dual_add_f32 v16, 1.0, v16
	v_cmp_gt_f32_e64 s22, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v52
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0x42800000, s23
	v_cndmask_b32_e64 v21, 0, 0x42800000, s22
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v219
	v_exp_f32_e32 v18, v18
	v_mul_f32_e32 v198, 0xbfb8aa3b, v104
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s22
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v218
	v_exp_f32_e32 v19, v19
	v_dual_fmac_f32 v27, 0xbfb8aa3b, v166 :: v_dual_mul_f32 v184, 0xbfb8aa3b, v181
	v_mul_f32_e32 v182, 0xbfb8aa3b, v222
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v21, v21
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, s23
	v_ldexp_f32 v14, v18, v14
	v_mul_f32_e32 v18, 0xbfb8aa3b, v167
	v_exp_f32_e32 v23, v23
	v_exp_f32_e32 v27, v27
	v_ldexp_f32 v17, v19, v17
	v_mul_f32_e32 v176, 0xbfb8aa3b, v56
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v12, null, s73, 0, s18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v19, v21, v20
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s15, s[74:75], v[3:4]
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_ldexp_f32 v20, v23, v22
	v_mul_f32_e32 v23, 0xbfb8aa3b, v54
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_dual_mul_f32 v21, 0xbfb8aa3b, v53 :: v_dual_add_f32 v0, 1.0, v0
	v_dual_mul_f32 v173, 0xbfb8aa3b, v71 :: v_dual_add_f32 v20, 1.0, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s22, 0xc2fc0000, v23
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v167
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_div_scale_f32 v37, null, v0, v0, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v25, 0, 0x42800000, s22
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v22, v22
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, s22
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v40, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v53
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s19, s[74:75], v[11:12]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s20, s[76:77], v[11:12]
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_exp_f32_e32 v25, v25
	v_ldexp_f32 v18, v22, v18
	v_exp_f32_e32 v23, v23
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_dual_add_f32 v13, 1.0, v13 :: v_dual_add_f32 v14, 1.0, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v11, 0xbfb8aa3b, v145 :: v_dual_mul_f32 v12, 0xbfb8aa3b, v146
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s16, s[76:77], v[3:4]
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v50, null, v14, v14, v52
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_ldexp_f32 v22, v25, v24
	v_mul_f32_e32 v24, 0xbfb8aa3b, v158
	v_ldexp_f32 v21, v23, v21
	v_ldexp_f32 v23, v27, v26
	v_mul_f32_e32 v25, 0xbfb8aa3b, v153
	v_mul_f32_e32 v26, 0xbfb8aa3b, v97
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v15, 1.0, v15 :: v_dual_add_f32 v22, 1.0, v22
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s22, 0xc2fc0000, v25
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v3, 42, v154
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s22
	v_cndmask_b32_e64 v34, 0, 0x42800000, s22
	v_mul_f32_e32 v175, 0xbfb8aa3b, v55
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v158
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v27, 0xbfb8aa3b, v92 :: v_dual_fmac_f32 v34, 0xbfb8aa3b, v153
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v97
	v_cmp_gt_f32_e64 s22, 0xc2fc0000, v27
	v_exp_f32_e32 v34, v34
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_div_scale_f32 v41, vcc_lo, v51, v0, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v38, v26
	v_cndmask_b32_e64 v27, 0, 0x42800000, s22
	v_mul_f32_e32 v26, 0xbfb8aa3b, v161
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s22
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v24, v25, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v47, s23, v209, v15, v209
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v92
	v_ldexp_f32 v33, v34, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v19, 1.0, v19 :: v_dual_add_f32 v24, 1.0, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v38, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v39, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, null, v13, v13, v221
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v27, 0xbfb8aa3b, v84
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v21, 1.0, v21 :: v_dual_add_f32 v34, 1.0, v34
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s18, s72, v3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s17, s[74:75], v[9:10]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s73, 0, s18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v35, v39, v36
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_div_scale_f32 v39, null, v15, v15, v209
	v_fma_f32 v36, -v37, v40, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v25, 0xbfb8aa3b, v162
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s18, s[76:77], v[9:10]
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v42, v39
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_dual_mul_f32 v9, 0xbfb8aa3b, v144 :: v_dual_mul_f32 v10, 0xbfb8aa3b, v133
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v40, v36, v40
	v_rcp_f32_e32 v36, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v31, 0xbfb8aa3b, v141 :: v_dual_mul_f32 v206, 0xbfb8aa3b, v132
	v_dual_mul_f32 v29, 0xbfb8aa3b, v137 :: v_dual_mul_f32 v32, 0xbfb8aa3b, v130
	v_dual_mul_f32 v205, 0xbfb8aa3b, v128 :: v_dual_mul_f32 v200, 0xbfb8aa3b, v123
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v39, v42, 1.0
	v_dual_mul_f32 v43, v41, v40 :: v_dual_mul_f32 v202, 0xbfb8aa3b, v109
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v203, 0xbfb8aa3b, v110
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v38, v36, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v42, v46, v42
	v_fma_f32 v45, -v37, v43, v41
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v46, null, v16, v16, v220
	v_fmac_f32_e32 v36, v44, v36
	v_div_scale_f32 v44, s22, v221, v13, v221
	v_fmac_f32_e32 v43, v45, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v48, v46
	v_mul_f32_e32 v49, v47, v42
	v_mul_f32_e32 v45, v44, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v201, 0xbfb8aa3b, v124 :: v_dual_mul_f32 v192, 0xbfb8aa3b, v114
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v37, v43, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v199, 0xbfb8aa3b, v103 :: v_dual_mul_f32 v194, 0xbfb8aa3b, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v38, v45, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v195, 0xbfb8aa3b, v95 :: v_dual_mul_f32 v196, 0xbfb8aa3b, v96
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v37, v37, v40, v43
	v_rcp_f32_e32 v40, v50
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v45, v41, v36
	v_fma_f32 v41, -v39, v49, v47
	v_fma_f32 v43, -v46, v48, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v37, v0, v51
	v_fma_f32 v37, -v38, v45, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v49, v41, v42 :: v_dual_fmac_f32 v48, v43, v48
	v_div_scale_f32 v38, s24, v220, v16, v220
	v_fma_f32 v41, -v50, v40, 1.0
	s_mov_b32 vcc_lo, s22
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v36, v37, v36, v45
	v_fma_f32 v37, -v39, v49, v47
	v_mul_f32_e32 v39, v38, v48
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, null, v17, v17, v219
	s_mov_b32 vcc_lo, s23
	v_fma_f32 v44, -v46, v39, v38
	v_div_fmas_f32 v37, v37, v42, v49
	v_rcp_f32_e32 v42, v41
	v_div_scale_f32 v43, s22, v52, v14, v52
	v_div_scale_f32 v47, null, v19, v19, v218
	v_fmac_f32_e32 v39, v44, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v45, v43, v40
	v_div_fixup_f32 v15, v37, v15, v209
	v_rcp_f32_e32 v37, v47
	v_div_fixup_f32 v13, v36, v13, v221
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v41, v42, 1.0
	v_fma_f32 v38, -v46, v39, v38
	v_div_scale_f32 v46, null, v20, v20, v216
	v_fma_f32 v36, -v50, v45, v43
	v_fmac_f32_e32 v42, v44, v42
	s_mov_b32 vcc_lo, s24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v44, v46
	v_fma_f32 v49, -v47, v37, 1.0
	v_fmac_f32_e32 v45, v36, v40
	v_div_scale_f32 v36, s23, v219, v17, v219
	v_div_fmas_f32 v38, v38, v48, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v37, v49, v37
	v_fma_f32 v39, -v50, v45, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v43, v36, v42
	v_div_scale_f32 v50, null, v18, v18, v167
	v_fma_f32 v49, -v46, v44, 1.0
	s_mov_b32 vcc_lo, s22
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v48, s24, v218, v19, v218
	v_div_fmas_f32 v39, v39, v40, v45
	v_fma_f32 v40, -v41, v43, v36
	v_fmac_f32_e32 v44, v49, v44
	v_rcp_f32_e32 v49, v50
	v_mul_f32_e32 v45, v48, v37
	v_div_scale_f32 v51, s22, v216, v20, v216
	v_fmac_f32_e32 v43, v40, v42
	v_div_scale_f32 v40, null, v21, v21, v53
	v_div_fixup_f32 v16, v38, v16, v220
	v_div_fixup_f32 v14, v39, v14, v52
	v_fma_f32 v38, -v47, v45, v48
	v_mul_f32_e32 v39, v51, v44
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v52, -v50, v49, 1.0
	v_fma_f32 v36, -v41, v43, v36
	v_rcp_f32_e32 v41, v40
	v_fmac_f32_e32 v45, v38, v37
	v_fma_f32 v38, -v46, v39, v51
	v_fmac_f32_e32 v49, v52, v49
	v_div_scale_f32 v52, s25, v167, v18, v167
	s_mov_b32 vcc_lo, s23
	v_fmac_f32_e32 v39, v38, v44
	v_div_fmas_f32 v36, v36, v42, v43
	v_fma_f32 v42, -v47, v45, v48
	v_mul_f32_e32 v38, v52, v49
	v_fma_f32 v43, -v40, v41, 1.0
	s_mov_b32 vcc_lo, s24
	v_div_fixup_f32 v17, v36, v17, v219
	v_div_fmas_f32 v37, v42, v37, v45
	v_fma_f32 v42, -v46, v39, v51
	v_fma_f32 v45, -v50, v38, v52
	v_fmac_f32_e32 v41, v43, v41
	v_div_scale_f32 v43, null, v22, v22, v54
	s_mov_b32 vcc_lo, s22
	v_div_scale_f32 v46, s23, v53, v21, v53
	v_div_fmas_f32 v39, v42, v44, v39
	v_rcp_f32_e32 v42, v43
	v_fmac_f32_e32 v38, v45, v49
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v44, v46, v41
	v_div_fixup_f32 v36, v37, v19, v218
	v_div_fixup_f32 v37, v39, v20, v216
	v_div_scale_f32 v39, null, v23, v23, v166
	v_fma_f32 v19, -v50, v38, v52
	s_mov_b32 vcc_lo, s25
	v_fma_f32 v20, -v40, v44, v46
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v45, -v43, v42, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v193, 0xbfb8aa3b, v115 :: v_dual_mul_f32 v188, 0xbfb8aa3b, v105
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v19, v19, v49, v38
	v_rcp_f32_e32 v38, v39
	v_fmac_f32_e32 v44, v20, v41
	v_fmac_f32_e32 v42, v45, v42
	v_div_scale_f32 v45, null, v24, v24, v158
	v_div_scale_f32 v20, s22, v54, v22, v54
	v_div_fixup_f32 v47, v19, v18, v167
	v_fma_f32 v18, -v40, v44, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v46, v45
	v_fma_f32 v40, -v39, v38, 1.0
	s_mov_b32 vcc_lo, s23
	v_mul_f32_e32 v19, v20, v42
	v_div_fmas_f32 v18, v18, v41, v44
	v_div_scale_f32 v44, s23, v166, v23, v166
	v_fmac_f32_e32 v38, v40, v38
	v_div_scale_f32 v40, null, v33, v33, v153
	v_fma_f32 v41, -v43, v19, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v48, -v45, v46, 1.0
	v_div_fixup_f32 v49, v18, v21, v53
	v_rcp_f32_e32 v18, v40
	v_mul_f32_e32 v21, v44, v38
	v_fmac_f32_e32 v19, v41, v42
	v_fmac_f32_e32 v46, v48, v46
	v_div_scale_f32 v41, s24, v158, v24, v158
	v_div_scale_f32 v48, null, v34, v34, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v20, -v43, v19, v20
	v_fma_f32 v43, -v39, v21, v44
	v_mul_f32_e32 v50, v41, v46
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v51, -v40, v18, 1.0
	v_rcp_f32_e32 v52, v48
	v_div_scale_f32 v53, null, v35, v35, v92
	s_mov_b32 vcc_lo, s22
	v_fmac_f32_e32 v21, v43, v38
	v_div_fmas_f32 v19, v20, v42, v19
	v_fma_f32 v20, -v45, v50, v41
	v_fmac_f32_e32 v18, v51, v18
	v_rcp_f32_e32 v42, v53
	v_div_scale_f32 v43, s22, v153, v33, v153
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v51, -v48, v52, 1.0
	v_div_fixup_f32 v54, v19, v22, v54
	v_fma_f32 v19, -v39, v21, v44
	v_fmac_f32_e32 v50, v20, v46
	v_mul_f32_e32 v20, v43, v18
	s_mov_b32 vcc_lo, s23
	v_fmac_f32_e32 v52, v51, v52
	v_div_scale_f32 v22, s25, v97, v34, v97
	v_fma_f32 v39, -v53, v42, 1.0
	v_div_fmas_f32 v19, v19, v38, v21
	v_fma_f32 v38, -v40, v20, v43
	v_fma_f32 v21, -v45, v50, v41
	s_mov_b32 vcc_lo, s24
	v_fmac_f32_e32 v42, v39, v42
	v_div_scale_f32 v39, s23, v92, v35, v92
	v_mul_f32_e32 v41, v22, v52
	v_fmac_f32_e32 v20, v38, v18
	v_div_fmas_f32 v21, v21, v46, v50
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v44, v39, v42
	v_div_fixup_f32 v45, v19, v23, v166
	v_fma_f32 v38, -v48, v41, v22
	v_fma_f32 v19, -v40, v20, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s24, 0xc2fc0000, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s22
	v_div_fixup_f32 v46, v21, v24, v158
	v_fma_f32 v21, -v53, v44, v39
	v_div_fmas_f32 v12, v19, v18, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v20, 0, 0x42800000, s24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v41, v38, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s22, 0xc2fc0000, v11
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v44, v21, v42
	s_mov_b32 vcc_lo, s25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v146
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v18, -v48, v41, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v22, 0, 0x42800000, s22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v21, -v53, v44, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, s24
	v_exp_f32_e32 v20, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v18, v18, v52, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v145
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v11, v21, v42, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	v_exp_f32_e32 v10, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v33, v12, v33, v153
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v24, v213, v0 :: v_dual_mul_f32 v23, v211, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v20, v19
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v34, v18, v34, v97
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v9, v10, v38
	v_dual_fmac_f32 v13, 0xbfb8aa3b, v133 :: v_dual_mul_f32 v18, v83, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v11, v11, v35, v92
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v19, v169, v17
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v36, 1.0, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, null, v0, v0, v146
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v10, v13
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v17, v164, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v37, null, v36, v36, v145
	v_rcp_f32_e32 v39, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v20, v170, v14
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v41, v37
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v14, v75, v45
	v_mul_f32_e32 v22, v171, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v144
	v_ldexp_f32 v9, v10, v12
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v21, v172, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v10, -v35, v39, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v40, v13
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v42, 1.0, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v9, -v37, v41, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v16, v82, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v43, vcc_lo, v146, v0, v146
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v44, null, v42, v42, v133
	v_fmac_f32_e32 v41, v9, v41
	v_div_scale_f32 v47, s22, v145, v36, v145
	v_fmac_f32_e32 v39, v10, v39
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v38, v40, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v40, v44
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v10, v151, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v34, v47, v41
	v_dual_mul_f32 v45, v43, v39 :: v_dual_mul_f32 v12, v156, v46
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v9, v152, v33
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v33, 1.0, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s24, 0xc2fc0000, v208
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v35, v45, v43
	v_div_scale_f32 v48, s23, v133, v42, v133
	v_fma_f32 v38, -v44, v40, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v15, v81, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v45, v46, v39
	v_div_scale_f32 v46, null, v33, v33, v144
	v_fmac_f32_e32 v40, v38, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s25, 0xc2fc0000, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v35, v45, v43
	v_fma_f32 v43, -v37, v34, v47
	v_rcp_f32_e32 v38, v46
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v13, v76, v54 :: v_dual_mul_f32 v190, 0xbfb8aa3b, v108
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v191, 0xbfb8aa3b, v107 :: v_dual_fmac_f32 v34, v43, v41
	v_cndmask_b32_e64 v43, 0, 0x42800000, s24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v35, v35, v39, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, s24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v45, v48, v40
	s_mov_b32 vcc_lo, s22
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v49, -v46, v38, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v143
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v35, v0, v146
	v_fma_f32 v35, -v37, v34, v47
	v_div_scale_f32 v47, s24, v144, v33, v144
	v_fmac_f32_e32 v38, v49, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v43, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v44, v45, v48
	v_div_fmas_f32 v31, v35, v41, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0x42800000, s25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v34, v47, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v45, v37, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, s25
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v141
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v46, v34, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v37, v43, v39
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v44, v45, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v34, v29, v38 :: v_dual_add_f32 v37, 1.0, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v29, v41
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v137
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s23
	v_div_fixup_f32 v31, v31, v36, v145
	v_div_scale_f32 v41, null, v37, v37, v143
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v43, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v40, v44, v40, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v44, v41
	v_fma_f32 v28, -v46, v34, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v29, v29, v35
	v_cmp_gt_f32_e64 s25, 0xc2fc0000, v196
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v189, 0xbfb8aa3b, v106 :: v_dual_mul_f32 v168, 0xbfb8aa3b, v165
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v28, v28, v38, v34
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v29, v43, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v41, v44, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v11, v147, v11
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v28, v28, v33, v144
	v_div_scale_f32 v39, null, v34, v34, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v43, 1.0, v29 :: v_dual_fmac_f32 v44, v38, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, vcc_lo, v143, v37, v143
	v_rcp_f32_e32 v46, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v47, null, v43, v43, v137
	v_mul_f32_e32 v48, v38, v44
	v_div_fixup_f32 v29, v40, v42, v133
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v133, v148, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v33, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v187, 0xbfb8aa3b, v100 :: v_dual_mul_f32 v178, 0xbfb8aa3b, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v41, v48, v38
	v_fma_f32 v40, -v39, v46, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v179, 0xbfb8aa3b, v163 :: v_dual_mul_f32 v174, 0xbfb8aa3b, v230
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v28, v155, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v48, v36, v44
	v_fmac_f32_e32 v46, v40, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v47, v33, 1.0
	v_div_scale_f32 v36, s22, v141, v34, v141
	v_fma_f32 v38, -v41, v48, v38
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v6, 40, v154
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v33, v40, v33
	v_div_scale_f32 v40, s23, v137, v43, v137
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v126
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v38, v38, v44, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v207
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v48, v40, v33
	v_mul_f32_e32 v41, v36, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v45, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v38, v37, v143
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v50, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v47, v48, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v206
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v125, v125, v0 :: v_dual_fmac_f32 v50, 0xbfb8aa3b, v134
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v48, v37, v33
.Ltmp5:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(TRANS32_DEP_1)
.Ltmp6:
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v35, v45, v35
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_fma_f32 v45, -v39, v41, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v37, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v40, -v47, v48, v40
.Ltmp7:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
.Ltmp8:
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_fmac_f32_e32 v41, v45, v46
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s21, s[74:75], v[3:4]
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s68, s78, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s69, s65, 0xffff
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v42, null, v35, v35, v126
	v_fma_f32 v36, -v39, v41, v36
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v45, s24, v126, v35, v126
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v44, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v37, v37, v49
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v132
	.loc	1 1249 38 is_stmt 1             ; ragged.py:1249:38
	s_add_i32 s68, s78, s68
	s_mov_b32 s71, 0x31027000
	s_mov_b32 s70, 0x7ffffffe
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v7, s72, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v42, v44, 1.0
	v_div_scale_f32 v49, null, v37, v37, v134
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v44, v38, v44
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s22
	v_div_fmas_f32 v36, v36, v46, v41
	v_mul_f32_e32 v41, v45, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	v_exp_f32_e32 v32, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v34, v36, v34, v141
	v_fma_f32 v39, -v42, v41, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s23
	v_div_fmas_f32 v33, v40, v33, v48
	v_fmac_f32_e32 v41, v39, v44
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v32, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v38, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v130
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s24, 0xc2fc0000, v204
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v36, 1.0, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v32, v33, v43, v137
	v_fma_f32 v33, -v42, v41, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v39, v47
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v29, v150, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v40, null, v36, v36, v132
	v_fma_f32 v42, -v49, v38, 1.0
	v_div_fmas_f32 v33, v33, v44, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v41, v40
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v32, v140, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v38, v42, v38
	v_div_scale_f32 v42, s22, v134, v37, v134
	v_div_fixup_f32 v30, v33, v35, v126
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v39, v39, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v43, v42, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v40, v41, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v131
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v39, 1.0, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v45, -v49, v43, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v126, v139, v34 :: v_dual_fmac_f32 v41, v44, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v44, s23, v132, v36, v132
	v_div_scale_f32 v46, null, v39, v39, v130
	v_fmac_f32_e32 v43, v45, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v45, v44, v41
	s_mov_b32 vcc_lo, s22
	v_rcp_f32_e32 v34, v46
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v31, v149, v31 :: v_dual_mul_f32 v30, v142, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v42, -v49, v43, v42
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v35, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v47, -v40, v45, v44
	v_div_fmas_f32 v35, v42, v38, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v205
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v45, v47, v41
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v33, -v46, v34, 1.0
	v_div_fixup_f32 v35, v35, v37, v134
	v_div_scale_f32 v38, null, v0, v0, v131
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v40, v45, v44
	v_fmac_f32_e32 v34, v33, v34
	v_div_scale_f32 v33, s22, v130, v39, v130
	v_rcp_f32_e32 v40, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v128
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v44, 0, 0x42800000, s24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v37, v37, v41, v45
	v_mul_f32_e32 v45, v33, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v43, v43
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v203
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v111
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v47, -v38, v40, 1.0
	v_div_fixup_f32 v36, v37, v36, v132
	v_fma_f32 v37, -v46, v45, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s24
	v_exp_f32_e32 v44, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v40, v47, v40
	v_div_scale_f32 v47, s23, v131, v0, v131
	v_fmac_f32_e32 v45, v37, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v37, v43, v42
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v42, v47, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s24, 0xc2fc0000, v202
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v46, v45, v33
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v41, v44, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v38, v42, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v110
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v44, null, v37, v37, v128
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v42, v46, v40 :: v_dual_add_f32 v41, 1.0, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v46, v48
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v48, v44
	s_mov_b32 vcc_lo, s22
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v117, v117, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v49, null, v41, v41, v111
	v_div_fmas_f32 v33, v33, v34, v45
	v_fma_f32 v34, -v38, v42, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v45, 0, 0x42800000, s24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v47, v49
	s_mov_b32 vcc_lo, s23
	v_fma_f32 v50, -v44, v48, 1.0
	v_div_fmas_f32 v34, v34, v40, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v40, v46, v43
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v109
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v42, vcc_lo, v128, v37, v128
	v_fmac_f32_e32 v48, v50, v48
	v_div_fixup_f32 v0, v34, v0, v131
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v43, -v49, v47, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v34, v45
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v40, 1.0, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v45, v42, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v47, v43, v47
	v_div_scale_f32 v43, s22, v111, v41, v111
	v_div_scale_f32 v46, null, v40, v40, v110
	v_div_fixup_f32 v33, v33, v39, v130
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v120, v120, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v44, v45, v42
	v_mul_f32_e32 v39, v43, v47
	v_rcp_f32_e32 v50, v46
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v119, v119, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v34, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v45, v0, v48
	v_fma_f32 v0, -v49, v39, v43
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v118, v118, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, s23, v110, v40, v110
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v44, v45, v42
	v_fmac_f32_e32 v39, v0, v47
	v_fma_f32 v0, -v46, v50, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s24, 0xc2fc0000, v197
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, null, v33, v33, v109
	v_div_fmas_f32 v34, v34, v48, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v201
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v49, v39, v43
	v_fmac_f32_e32 v50, v0, v50
	v_rcp_f32_e32 v0, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s22
	v_div_scale_f32 v45, s22, v109, v33, v109
	v_div_fmas_f32 v36, v36, v47, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v124
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v200
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v35, v0, 1.0
	v_div_fixup_f32 v36, v36, v41, v111
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v41, v43
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v0, v39, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v199
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v123
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v41, v41, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v42, v45, v0
	v_div_fixup_f32 v34, v34, v37, v128
	v_mul_f32_e32 v37, v38, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v44, v44
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v41, 1.0, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v35, v42, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v103
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v46, v37, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v48, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v47, v47
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v37, v43, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v198
	v_ldexp_f32 v39, v44, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v35, v42, v45
	v_fma_f32 v38, -v46, v37, v38
	v_div_scale_f32 v46, null, v41, v41, v124
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v49, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s23
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v44, v46
	v_div_fmas_f32 v37, v38, v50, v37
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v38, 1.0, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v39, v47, v43
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v104
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v35, v0, v42
	v_div_scale_f32 v45, null, v38, v38, v123
	v_div_fixup_f32 v37, v37, v40, v110
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v46, v44, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v42, v45
	v_div_fixup_f32 v0, v0, v33, v109
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v110, v136, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v44, v43, v44
	v_div_scale_f32 v43, vcc_lo, v124, v41, v124
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v112, v112, v0 :: v_dual_mul_f32 v109, v135, v34
	v_dual_mul_f32 v111, v138, v37 :: v_dual_mul_f32 v40, v43, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v47, -v45, v42, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v35, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v46, v40, v43
	v_fmac_f32_e32 v42, v47, v42
	v_div_scale_f32 v47, s22, v123, v38, v123
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v40, v48, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v36, v47, v42
	v_div_scale_f32 v48, null, v0, v0, v104
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v46, v40, v43
	v_fma_f32 v43, -v45, v36, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v34, v34, v44, v40
	v_fmac_f32_e32 v36, v43, v42
	s_mov_b32 vcc_lo, s22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v43, 0, 0x42800000, s24
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, s24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v34, v34, v41, v124
	v_fma_f32 v41, -v45, v36, v47
	v_div_scale_f32 v47, s24, v104, v0, v104
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v101, v101, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v36, v41, v42, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v195
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, s25
	v_exp_f32_e32 v43, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v36, v36, v38, v123
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v39, 1.0, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v50, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v102, v102, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v33, null, v39, v39, v103
	v_div_scale_f32 v46, s23, v103, v39, v103
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v40, v43, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v35, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v95
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s23
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v40, 1.0, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v33, v35, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, v37, v35
	v_rcp_f32_e32 v37, v48
	v_mul_f32_e32 v44, v46, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v45, -v33, v44, v46
	v_fma_f32 v49, -v48, v37, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v44, v45, v35
	v_fmac_f32_e32 v37, v49, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v49, 0, 0x42800000, s25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v33, v44, v46
	v_mul_f32_e32 v41, v47, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v96
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v46, null, v40, v40, v116
	v_div_fmas_f32 v33, v33, v35, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v48, v41, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v44, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v194
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v33, v33, v39, v103
	v_fmac_f32_e32 v41, v45, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v45, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v103, v122, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v47, -v48, v41, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v35, v35, v43
	v_ldexp_f32 v42, v45, v42
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s24
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v37, v47, v37, v41
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v41, 1.0, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v42, -v46, v44, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v88
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v49, null, v35, v35, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v43, null, v41, v41, v96
	v_fmac_f32_e32 v44, v42, v44
	v_div_scale_f32 v42, vcc_lo, v116, v40, v116
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v47, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v48, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v37, v0, v104
	v_mul_f32_e32 v50, v42, v44
	v_rcp_f32_e32 v37, v49
	v_div_scale_f32 v33, s22, v96, v41, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v104, v129, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v46, v50, v42
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v39, -v43, v47, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v48, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v50, v38, v44
	v_fma_f32 v38, -v49, v37, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v47, v39, v47 :: v_dual_add_f32 v0, 1.0, v0
	v_fma_f32 v36, -v46, v50, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v37, v38, v37
	v_div_scale_f32 v38, s23, v95, v35, v95
	v_mul_f32_e32 v39, v33, v47
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v36, v36, v44, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v193
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v42, null, v0, v0, v88
	v_mul_f32_e32 v46, v38, v37
	v_fma_f32 v45, -v43, v39, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v50, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v44, v42
	v_div_fixup_f32 v34, v36, v40, v116
	v_fma_f32 v36, -v49, v46, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v115
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v39, v45, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v192
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v46, v36, v37
	v_div_scale_f32 v45, s24, v88, v0, v88
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v36, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v40, -v42, v44, 1.0
	v_fma_f32 v33, -v43, v39, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v49, v46, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v93, v93, v34 :: v_dual_fmac_f32 v44, v40, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v114
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s22
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v36, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v33, v33, v47, v39
	v_mul_f32_e32 v39, v45, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v43, v43
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v191
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v33, v33, v41, v96
	v_fma_f32 v47, -v42, v39, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v50, null, v36, v36, v115
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v49, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s23
	v_fmac_f32_e32 v39, v47, v44
	v_div_fmas_f32 v37, v38, v37, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v38, v43, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v40, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v107
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s24
	v_div_fixup_f32 v35, v37, v35, v95
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v38, 1.0, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v42, v39, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v41, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v94, v94, v33 :: v_dual_mul_f32 v95, v121, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v42, null, v38, v38, v114
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v50, v40, 1.0
	v_div_fmas_f32 v37, v37, v44, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v190
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v39, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s24, 0xc2fc0000, v188
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v40, v43, v40
	v_div_scale_f32 v43, s22, v115, v36, v115
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v37, v0, v88
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v41, v41, v48
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v45, v43, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v108
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v42, v39, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v96, v127, v0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v50, v45, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v44, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v39, v46, v39
	v_div_scale_f32 v46, s23, v114, v38, v114
	v_div_scale_f32 v47, null, v0, v0, v107
	v_fmac_f32_e32 v45, v41, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v41, v46, v39
	s_mov_b32 vcc_lo, s22
	v_rcp_f32_e32 v33, v47
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v37, v44, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v50, v45, v43
	v_fma_f32 v43, -v42, v41, v46
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v35, v35, v40, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v189
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v41, v43, v39
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v37, -v47, v33, 1.0
	v_div_scale_f32 v40, null, v34, v34, v108
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v35, v35, v36, v115
	v_fma_f32 v36, -v42, v41, v46
	v_fmac_f32_e32 v33, v37, v33
	v_div_scale_f32 v37, s22, v107, v0, v107
	v_rcp_f32_e32 v42, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v106
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s23
	v_mul_f32_e32 v45, v37, v33
	v_div_fmas_f32 v36, v36, v39, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0x42800000, s24
	v_exp_f32_e32 v44, v44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v187
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, s24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v40, v42, 1.0
	v_div_fixup_f32 v36, v36, v38, v114
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v105
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v47, v45, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v42, v46, v42
	v_div_scale_f32 v46, s23, v108, v34, v108
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v41, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v45, v38, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v38, v44, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v43, v46, v42 :: v_dual_fmac_f32 v48, 0xbfb8aa3b, v100
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s24, 0xc2fc0000, v186
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v47, v45, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v38, 1.0, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v47, -v40, v43, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v39, v41, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s22
	v_div_scale_f32 v41, null, v38, v38, v106
	v_fmac_f32_e32 v43, v47, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v47, v48
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v39, 1.0, v39
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v48, v41
	v_div_fmas_f32 v33, v37, v33, v45
	v_fma_f32 v37, -v40, v43, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v45, 0, 0x42800000, s24
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s23
	v_div_scale_f32 v49, null, v39, v39, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v37, v37, v42, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v99
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v43, vcc_lo, v106, v38, v106
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v50, -v41, v48, 1.0
	v_rcp_f32_e32 v46, v49
	v_div_fixup_f32 v34, v37, v34, v108
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v37, v45
	v_ldexp_f32 v42, v47, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v48, v50, v48
	v_div_fixup_f32 v0, v33, v0, v107
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, s24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v85, v85, v35 :: v_dual_add_f32 v42, 1.0, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v45, v43, v48
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v49, v46, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v88, v113, v34 :: v_dual_mul_f32 v87, v87, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v47, null, v42, v42, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v41, v45, v43
	v_fmac_f32_e32 v46, v44, v46
	v_div_scale_f32 v44, s22, v105, v39, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v50, v47
	v_fmac_f32_e32 v45, v33, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v37, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v34, v44, v46
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v86, v86, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v40, s23, v100, v42, v100
	v_fma_f32 v35, -v41, v45, v43
	v_fma_f32 v33, -v49, v34, v44
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v35, v35, v48, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v185
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v34, v33, v46
	v_fma_f32 v33, -v47, v50, 1.0
	v_div_scale_f32 v36, null, v0, v0, v99
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v49, v34, v44
	v_fmac_f32_e32 v50, v33, v50
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v33, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v98
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s22
	v_div_fixup_f32 v35, v35, v38, v106
	v_div_fmas_f32 v34, v37, v46, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v184
	v_exp_f32_e32 v43, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v37, v40, v50
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v77, v77, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v36, v33, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v183
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v34, v34, v39, v105
	v_fma_f32 v39, -v47, v37, v40
	v_fmac_f32_e32 v33, v38, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v41, v43, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, s22, v99, v0, v99
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v181
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v41, 1.0, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v37, v39, v50
	v_mul_f32_e32 v39, v38, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v45, v45
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v89
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v48, null, v41, v41, v98
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v40, -v47, v37, v40
	v_fma_f32 v47, -v36, v39, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v182
	v_exp_f32_e32 v46, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v49, v48
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v44, v45, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v39, v47, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s23
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v78, v78, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v37, v40, v50, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v222
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v36, v39, v38
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v38, 1.0, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v40, v46, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v48, v49, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v44, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s22
	v_div_scale_f32 v45, null, v38, v38, v181
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v40, 1.0, v40 :: v_dual_fmac_f32 v49, v43, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v43, s23, v98, v41, v98
	v_rcp_f32_e32 v46, v45
	v_div_fmas_f32 v33, v36, v33, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v36, null, v40, v40, v89
	v_mul_f32_e32 v39, v43, v49
	v_div_fixup_f32 v37, v37, v42, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v0, v33, v0, v99
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v44, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v42, v36
	v_fma_f32 v44, -v48, v39, v43
	v_fma_f32 v47, -v45, v46, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v80, v80, v0 :: v_dual_mul_f32 v79, v79, v37
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v39, v44, v49 :: v_dual_fmac_f32 v46, v47, v46
	v_div_scale_f32 v33, s22, v181, v38, v181
	v_fma_f32 v37, -v36, v42, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v43, -v48, v39, v43
	s_mov_b32 vcc_lo, s23
	v_div_scale_f32 v44, null, v0, v0, v222
	v_mul_f32_e32 v47, v33, v46
	v_fmac_f32_e32 v42, v37, v42
	v_div_scale_f32 v37, s24, v89, v40, v89
	v_div_fmas_f32 v39, v43, v49, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v168
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v48, v44
	v_fma_f32 v34, -v45, v47, v33
	v_mul_f32_e32 v35, v37, v42
	v_div_fixup_f32 v39, v39, v41, v98
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v49, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v180
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v47, v34, v46
	v_fma_f32 v34, -v36, v35, v37
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v69, v69, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v165
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v44, v48, 1.0
	v_fmac_f32_e32 v35, v34, v42
	v_fma_f32 v33, -v45, v47, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v34, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v51, 0xbfb8aa3b, v61 :: v_dual_fmac_f32 v48, v41, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v41, s23, v222, v0, v222
	v_fma_f32 v36, -v36, v35, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v37, v51
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s22
	v_mul_f32_e32 v45, v41, v48
	v_div_fmas_f32 v33, v33, v46, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v179
	v_ldexp_f32 v34, v34, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v44, v45, v41
	v_div_fixup_f32 v33, v33, v38, v181
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s24
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v35, v36, v42, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v37, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v45, v46, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v163
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v37, null, v34, v34, v165
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v178
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v44, v45, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v42, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v44, v37
	v_div_scale_f32 v49, null, v36, v36, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s23
	v_div_fixup_f32 v35, v35, v40, v89
	v_div_fmas_f32 v41, v41, v48, v45
	v_rcp_f32_e32 v45, v49
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v42, v42, v43
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v37, v44, 1.0
	v_div_fixup_f32 v0, v41, v0, v222
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v64, v64, v35
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v38, 1.0, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v41, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v44, v43, v44
	v_div_scale_f32 v43, vcc_lo, v165, v34, v165
	v_fma_f32 v47, -v49, v45, 1.0
	v_div_scale_f32 v42, null, v38, v38, v163
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v40, v43, v44
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v63, v63, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v45, v47, v45
	v_div_scale_f32 v47, s22, v61, v36, v61
	v_rcp_f32_e32 v0, v42
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v70, v70, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v41, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v37, v40, v43
	v_mul_f32_e32 v41, v47, v45
	v_div_scale_f32 v39, s23, v163, v38, v163
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v33, 1.0, v33 :: v_dual_fmac_f32 v40, v35, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v49, v41, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v42, v0, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s24, 0xc2fc0000, v177
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v37, v40, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v41, v35, v45 :: v_dual_fmac_f32 v0, v46, v0
	v_div_scale_f32 v46, null, v33, v33, v62
	v_div_fmas_f32 v37, v37, v44, v40
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v40, -v49, v41, v47
	s_mov_b32 vcc_lo, s22
	v_mul_f32_e32 v35, v39, v0
	v_rcp_f32_e32 v43, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v50, 0, 0x42800000, s24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v40, v40, v45, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v176
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v42, v35, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v48, 0, 0xffffffc0, s24
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v214
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v34, v37, v34, v165
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v35, v44, v0
	v_fma_f32 v41, -v46, v43, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v44, v50
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v56
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v175
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v43, v41, v43
	v_div_scale_f32 v41, s22, v62, v33, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v47, v47
	v_cndmask_b32_e64 v50, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v42, v35, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v44, v44, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v42, v41, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v49, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v55
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v44, 1.0, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v39, v0, v35
	v_fma_f32 v35, -v46, v42, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v45, v47, v45
	v_exp_f32_e32 v39, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v48, null, v44, v44, v214
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v42, v35, v43 :: v_dual_add_f32 v37, 1.0, v45
	v_div_fixup_f32 v0, v0, v38, v163
	v_rcp_f32_e32 v35, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v174
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v46, v42, v41
	v_div_scale_f32 v41, null, v37, v37, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v39, v39, v49
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v49, v41
	s_mov_b32 vcc_lo, s22
	v_fma_f32 v47, -v48, v35, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v39, 1.0, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v38, v38, v43, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v230
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v43, vcc_lo, v214, v44, v214
	v_fmac_f32_e32 v35, v47, v35
	v_div_scale_f32 v42, null, v39, v39, v55
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v47, -v41, v49, 1.0
	v_div_fixup_f32 v33, v38, v33, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v38, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v50, v43, v35
	v_rcp_f32_e32 v46, v42
	v_fmac_f32_e32 v49, v47, v49
	v_div_scale_f32 v47, s22, v56, v37, v56
	v_div_fixup_f32 v36, v40, v36, v61
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v83, v91, v33
	v_mul_f32_e32 v82, v239, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v48, v50, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_mul_f32 v33, v47, v49 :: v_dual_mul_f32 v62, v90, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v38, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v40, -v42, v46, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v50, v0, v35
	v_fma_f32 v0, -v41, v33, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v61, v238, v34 :: v_dual_add_f32 v34, 1.0, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v46, v40, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v48, v50, v43
	v_fmac_f32_e32 v33, v0, v49
	v_div_scale_f32 v38, s23, v55, v39, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s24, 0xc2fc0000, v173
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v35, v36, v35, v50
	v_fma_f32 v36, -v41, v33, v47
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v0, v38, v46
	s_mov_b32 vcc_lo, s22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0x42800000, s24
	v_cmp_gt_f32_e64 s22, 0xc2fc0000, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v33, v36, v49, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v40, -v42, v0, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v71
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, null, v34, v34, v230
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v0, v40, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_exp_f32_e32 v41, v41
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v84
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v42, v0, v38
	v_div_fixup_f32 v33, v33, v37, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v26, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v25, v43
	v_cndmask_b32_e64 v43, 0, 0x42800000, s22
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v161
	v_ldexp_f32 v36, v41, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v162
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v38, v46, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v41, v45
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s22
	v_ldexp_f32 v25, v25, v40
	v_exp_f32_e32 v37, v43
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v27, v26, 1.0
	v_div_fixup_f32 v0, v0, v39, v55
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v35, v35, v44, v214
	v_div_scale_f32 v39, null, v36, v36, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v40, v41, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v43, null, v25, v25, v84
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v37, v37, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v26, v46, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v40, 1.0, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v41, vcc_lo, v230, v34, v230
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v42, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_scale_f32 v38, null, v40, v40, v161
	v_rcp_f32_e32 v46, v43
	v_div_scale_f32 v50, null, v37, v37, v162
	v_mul_f32_e32 v45, v41, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v48, v38
	v_rcp_f32_e32 v52, v50
	v_fma_f32 v47, -v39, v42, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_fma_f32 v49, -v27, v45, v41
	v_fma_f32 v51, -v43, v46, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v42, v47, v42
	v_div_scale_f32 v47, s22, v71, v36, v71
	v_fmac_f32_e32 v45, v49, v26
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v38, v48, 1.0
	v_fmac_f32_e32 v46, v51, v46
	v_div_scale_f32 v51, s23, v84, v25, v84
	v_fma_f32 v54, -v50, v52, 1.0
	v_dual_mul_f32 v53, v47, v42 :: v_dual_fmac_f32 v48, v49, v48
	v_div_scale_f32 v49, s24, v161, v40, v161
	v_fma_f32 v27, -v27, v45, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v55, v51, v46 :: v_dual_fmac_f32 v52, v54, v52
	v_div_scale_f32 v54, s25, v162, v37, v162
	v_fma_f32 v41, -v39, v53, v47
	v_mul_f32_e32 v56, v49, v48
	v_div_fmas_f32 v26, v27, v26, v45
	v_fma_f32 v27, -v43, v55, v51
	v_mul_f32_e32 v45, v54, v52
	v_fmac_f32_e32 v53, v41, v42
	v_fma_f32 v41, -v38, v56, v49
	v_div_fixup_f32 v26, v26, v34, v230
	v_fmac_f32_e32 v55, v27, v46
	v_fma_f32 v27, -v50, v45, v54
	v_fma_f32 v34, -v39, v53, v47
	v_fmac_f32_e32 v56, v41, v48
	s_mov_b32 vcc_lo, s22
	v_fma_f32 v39, -v43, v55, v51
	v_fmac_f32_e32 v45, v27, v52
	v_div_fmas_f32 v34, v34, v42, v53
	v_fma_f32 v27, -v38, v56, v49
	s_mov_b32 vcc_lo, s23
	s_mov_b32 s22, 0x76543210
	v_div_fmas_f32 v38, v39, v46, v55
	v_fma_f32 v39, -v50, v45, v54
	s_mov_b32 vcc_lo, s24
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v55, v226, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v27, v27, v48, v56
	s_mov_b32 vcc_lo, s25
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v56, v160, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v39, v39, v52, v45
	v_div_fixup_f32 v25, v38, v25, v84
	v_div_fixup_f32 v26, v27, v40, v161
	v_div_fixup_f32 v27, v34, v36, v71
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v54, v225, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v39, v37, v162
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v50, v74, v35 :: v_dual_mul_f32 v47, v72, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v46, v65, v27
.Ltmp9:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, |v29|, |v125|, |v126|
.Ltmp10:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v49, v67, v0
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v0, |v133|, |v31|
	v_max3_f32 v27, |v117|, |v118|, |v119|
	v_max3_f32 v33, |v120|, |v23|, |v21|
	v_max_f32_e64 v34, |v109|, |v110|
	v_max3_f32 v35, |v111|, |v101|, |v102|
	v_max3_f32 v36, |v93|, |v94|, |v95|
	v_max3_f32 v37, |v96|, |v19|, |v18|
.Ltmp12:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v48, v73, v26
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v26, |v32|, |v30|, |v24|
	v_max3_f32 v0, v0, |v28|, v25
	v_max3_f32 v25, v27, v33, |v22|
	v_max3_f32 v27, |v103|, |v104|, |v20|
	v_max3_f32 v33, v34, |v112|, v35
	v_max3_f32 v34, v36, v37, |v17|
	v_max_f32_e64 v35, |v85|, |v86|
	v_max3_f32 v36, |v87|, |v77|, |v78|
	v_max3_f32 v37, |v69|, |v70|, |v64|
	v_max3_f32 v38, |v63|, |v15|, |v13|
	v_max3_f32 v0, v0, v26, v25
	v_max3_f32 v25, v33, v27, v34
	v_max3_f32 v26, |v79|, |v80|, |v16|
	v_max3_f32 v27, v35, |v88|, v36
	v_max3_f32 v33, v37, v38, |v14|
	v_max_f32_e64 v34, |v61|, |v62|
	v_max3_f32 v35, |v82|, |v50|, |v54|
	v_max3_f32 v36, |v46|, |v47|, |v48|
	v_max3_f32 v37, |v49|, |v9|, |v10|
	v_max3_f32 v26, v27, v26, v33
	v_max3_f32 v27, |v55|, |v56|, |v12|
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v40, 1, v215
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v33, v34, |v83|, v35
	v_max3_f32 v34, v36, v37, |v11|
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v35, v0, s22, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v25, s22, 0xfedcba98 op_sel:[1,0]
.Ltmp17:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v37, s23, s72, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v27, v33, v27, v34
	v_dual_max_f32 v6, v35, v35 :: v_dual_max_f32 v35, v36, v36
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v36, v26, s22, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v41, 3, v217
	v_lshrrev_b32_e32 v42, 3, v215
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v33, v0, v6 :: v_dual_max_f32 v34, v25, v35
	v_max_f32_e32 v0, v36, v36
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v6, 4, v217
	v_lshl_add_u32 v25, v41, 9, 0
	v_permlanex16_b32 v36, v27, s22, 0xfedcba98 op_sel:[1,0]
	v_lshlrev_b32_e32 v39, 5, v41
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v35, v26, v0 :: v_dual_and_b32 v26, 0x60, v217
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v0, v6, 2, v25
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v25, v36, v36
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_or_b32 v36, 0x680, v8, v39
	v_lshl_add_u32 v44, v6, 6, 0
	v_xor_b32_e32 v39, v39, v26
	v_lshl_add_u32 v0, v5, 4, v0
.Ltmp26:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v38, null, s73, 0, s23
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v43, v36, v26
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v36, v27, v25
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v0, v0, v40, v39
.Ltmp30:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v25, 38, v154
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s23, s[74:75], v[37:38]
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v27, v44, v42, v43
.Ltmp32:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s24, s[76:77], v[37:38]
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v0, v[33:36]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v27
.Ltmp34:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 36, v154
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v39, s22, s72, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v40, null, s73, 0, s22
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s22, s[76:77], v[3:4]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v25, 34, v154
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v3, s27, s72, v0
	v_add_co_ci_u32_e64 v4, null, s73, 0, s27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v37, s27, s72, v25
	v_add_co_ci_u32_e64 v38, null, s73, 0, s27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s27, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s28, s[76:77], v[3:4]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v4, 32, v154
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s29, s[74:75], v[37:38]
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v0, v33 :: v_dual_mov_b32 v3, v34
	v_mov_b32_e32 v25, v35
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v27, v33, v33
	v_max_f32_e32 v33, v34, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v0, v0 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v25, v25 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v34, v36, v36
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v36, v36 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v0, v0, v0 :: v_dual_max_f32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_max_f32_e32 v25, v25, v25
.Ltmp41:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s30, s[76:77], v[37:38]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s25, s[74:75], v[39:40]
.Ltmp42:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v0, v27, v0 :: v_dual_max_f32 v27, v33, v3
	v_max_f32_e32 v33, v35, v35
	v_max_f32_e32 v35, v36, v36
.Ltmp43:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s31, s72, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v36, v0 :: v_dual_max_f32 v25, v33, v25
.Ltmp45:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s73, 0, s31
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v37, v27
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v35, v34, v35
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v36, v36 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v33, v25
.Ltmp49:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s31, s[74:75], v[3:4]
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v37, v37 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v34, v35
.Ltmp51:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s33, s[76:77], v[3:4]
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v36, v36
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v33, v33 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v37, v37
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v34, v34 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp56:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v36, 30, v154
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v0, v0, v3 :: v_dual_max_f32 v3, v33, v33
	v_dual_max_f32 v4, v27, v4 :: v_dual_max_f32 v27, v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp58:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v33, s34, s72, v36
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v36, v0 :: v_dual_max_f32 v25, v25, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v37, v4
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v27, v35, v27
.Ltmp61:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s26, s[76:77], v[39:40]
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v36, v36 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v38, v25
	v_mov_b32_dpp v37, v37 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v39, v27
.Ltmp63:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 28, v154
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v40, v36, v36
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v38, v38 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v37, v37, v37
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v39, v39 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp68:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v35, s35, s72, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v0, v40 :: v_dual_max_f32 v0, v38, v38
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v45, 4, v41
.Ltmp71:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v4, v37 :: v_dual_max_f32 v37, v39, v39
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v38, 1, v26
	v_lshlrev_b32_e32 v39, 3, v5
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v5, v25, v0 :: v_dual_add_nc_u32 v40, 0, v215
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v0, 5, v6
	v_add_nc_u32_e32 v25, 0, v45
.Ltmp75:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v6, v27, v37
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v27, v40, v38, v39
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v0, v25, v0, v39
.Ltmp77:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v37, 26, v154
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v27, v[3:6]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[3:6], v0
.Ltmp79:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v34, null, s73, 0, s34
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v0, 24, v154
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v36, null, s73, 0, s35
	v_add_co_u32 v37, s35, s72, v37
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s34, s[74:75], v[33:34]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v38, null, s73, 0, s35
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s35, s[76:77], v[33:34]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v33, s40, s72, v0
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v25, 22, v154
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v34, null, s73, 0, s40
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s36, s[74:75], v[35:36]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s37, s[76:77], v[35:36]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v35, s40, s72, v25
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v0, v3, v3
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 20, v154
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v36, null, s73, 0, s40
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s40, s[74:75], v[33:34]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v0, 0x2b8cbccc, v0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s41, s[76:77], v[33:34]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v33, s44, s72, v3
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v3, 18, v154
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_scale_f32 v27, null, 0x40e00000, 0x40e00000, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s42, s[74:75], v[35:36]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s43, s[76:77], v[35:36]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v34, null, s73, 0, s44
	v_add_co_u32 v35, s44, s72, v3
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v3, v27
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v25, 16, v154
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s38, s[74:75], v[37:38]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s39, s[76:77], v[37:38]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v36, null, s73, 0, s44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_add_co_u32 v37, s44, s72, v25
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v5, v5, v5
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v38, null, s73, 0, s44
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v25, -v27, v3, 1.0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s44, s[74:75], v[33:34]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v5, 0x2b8cbccc, v5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s48, s[74:75], v[37:38]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s49, s[76:77], v[37:38]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v3, v25, v3
	v_div_scale_f32 v25, vcc_lo, v0, 0x40e00000, v0
	v_div_scale_f32 v38, null, 0x40e00000, 0x40e00000, v5
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s45, s[76:77], v[33:34]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v37, v25, v3
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v33, s50, s72, v66
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s46, s[74:75], v[35:36]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s47, s[76:77], v[35:36]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v34, null, s73, 0, s50
	v_add_co_u32 v35, s50, s72, v68
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v36, null, s73, 0, s50
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v39, -v27, v37, v25
	v_rcp_f32_e32 v40, v38
	v_max_f32_e32 v4, v4, v4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s50, s[74:75], v[33:34]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s51, s[76:77], v[33:34]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v33, s53, s72, v60
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s52, s[74:75], v[35:36]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v34, null, s73, 0, s53
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v37, v39, v3
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s53, s[76:77], v[35:36]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v35, 0x2b8cbccc, v4
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v42.h, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v4, -v27, v37, v25
	v_fma_f32 v25, -v38, v40, 1.0
	v_max_f32_e32 v6, 0x2b8cbccc, v6
	v_div_scale_f32 v36, null, 0x40e00000, 0x40e00000, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v27, v4, v3, v37
	v_fmac_f32_e32 v40, v25, v40
	v_div_scale_f32 v25, vcc_lo, v5, 0x40e00000, v5
	v_div_scale_f32 v37, null, 0x40e00000, 0x40e00000, v6
	v_rcp_f32_e32 v39, v36
	v_div_fixup_f32 v0, v27, 0x40e00000, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v27, v25, v40
	v_rcp_f32_e32 v41, v37
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s55, s72, v59
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s54, s[74:75], v[33:34]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s73, 0, s55
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s55, s[76:77], v[33:34]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v33, -v38, v27, v25
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v34.l, v0.h
	v_mov_b16_e32 v34.h, v42.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v43, -v36, v39, 1.0
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s56, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s57, s[76:77], v[3:4]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v27, v33, v40
	v_fma_f32 v3, -v37, v41, 1.0
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v33, 1, v34
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v39, v43, v39
	v_div_scale_f32 v34, s60, v35, 0x40e00000, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v41, v3, v41
	v_div_scale_f32 v43, s61, v6, 0x40e00000, v6
	v_fma_f32 v38, -v38, v27, v25
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v25, v0, v33, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v0, v34, v39
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s58, s72, v57
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v33, v43, v41
	v_div_fmas_f32 v27, v38, v40, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v36, v0, v34
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v57, 0xffff0000, v25
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s73, 0, s58
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v40, -v37, v33, v43
	v_fmac_f32_e32 v0, v38, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v38, null, v57, v57, v133
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s58, s[74:75], v[3:4]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v33, v40, v41
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s59, s[76:77], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v3, -v36, v0, v34
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v34, v38
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v27, v27, 0x40e00000, v5
	v_fma_f32 v4, -v37, v33, v43
	v_div_fmas_f32 v0, v3, v39, v0
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v43, null, v57, v57, v29
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v42.l, v27.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fmas_f32 v4, v4, v41, v33
	v_div_fixup_f32 v0, v0, 0x40e00000, v35
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fma_f32 v5, -v38, v34, 1.0
	v_div_scale_f32 v33, null, v57, v57, v31
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v3, 1, v42
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v4, v4, 0x40e00000, v6
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v35.l, v0.h
	v_mov_b16_e32 v35.h, v42.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fmac_f32_e32 v34, v5, v34
	v_rcp_f32_e32 v36, v33
	v_div_scale_f32 v37, vcc_lo, v133, v57, v133
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v3, v27, v3, 0x7fff
	v_mov_b16_e32 v42.l, v4.h
	v_and_b32_e32 v27, 1, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v35, v37, v34
	v_div_scale_f32 v41, null, v57, v57, v28
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v40, 1, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v39, -v33, v36, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v27, v0, v27, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v38, v35, v37
	v_rcp_f32_e32 v42, v41
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v5, s60, s72, v58
	v_add_co_ci_u32_e64 v6, null, s73, 0, s60
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v36, v39, v36
	v_div_scale_f32 v44, s60, v31, v57, v31
	v_fmac_f32_e32 v35, v0, v34
	v_rcp_f32_e32 v0, v43
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v4, v40, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v51, v44, v36
	v_fma_f32 v40, -v41, v42, 1.0
	v_fma_f32 v37, -v38, v35, v37
	v_div_scale_f32 v53, s61, v28, v57, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v33, v51, v44
	v_fmac_f32_e32 v42, v40, v42
	v_div_scale_f32 v58, null, v57, v57, v125
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v43, v0, 1.0
	v_div_scale_f32 v59, null, v57, v57, v126
	v_div_fmas_f32 v34, v37, v34, v35
	v_fmac_f32_e32 v51, v38, v36
	v_dual_mul_f32 v35, v53, v42 :: v_dual_fmac_f32 v0, v40, v0
	v_rcp_f32_e32 v37, v58
	v_div_scale_f32 v38, s62, v29, v57, v29
	v_rcp_f32_e32 v60, v59
	v_div_fixup_f32 v40, v34, v57, v133
	v_fma_f32 v33, -v33, v51, v44
	v_fma_f32 v34, -v41, v35, v53
	v_mul_f32_e32 v44, v38, v0
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v67, null, v57, v57, v119
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v65, -v58, v37, 1.0
	v_div_fmas_f32 v33, v33, v36, v51
	v_fmac_f32_e32 v35, v34, v42
	v_fma_f32 v34, -v43, v44, v38
	v_fma_f32 v51, -v59, v60, 1.0
	v_fmac_f32_e32 v37, v65, v37
	v_div_scale_f32 v36, s60, v125, v57, v125
	v_div_fixup_f32 v31, v33, v57, v31
	v_fma_f32 v33, -v41, v35, v53
	v_fmac_f32_e32 v44, v34, v0
	v_fmac_f32_e32 v60, v51, v60
	v_div_scale_f32 v51, null, v57, v57, v32
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v34, v36, v37
	v_div_scale_f32 v41, s63, v126, v57, v126
	v_div_fmas_f32 v33, v33, v42, v35
	v_fma_f32 v35, -v43, v44, v38
	v_rcp_f32_e32 v43, v51
	v_div_scale_f32 v53, null, v57, v57, v30
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v38, -v58, v34, v36
	v_mul_f32_e32 v42, v41, v60
	v_div_fmas_f32 v0, v35, v0, v44
	v_rcp_f32_e32 v35, v53
	v_div_fixup_f32 v28, v33, v57, v28
	v_fmac_f32_e32 v34, v38, v37
	v_fma_f32 v38, -v59, v42, v41
	v_fma_f32 v44, -v51, v43, 1.0
	v_div_fixup_f32 v29, v0, v57, v29
	v_div_scale_f32 v33, s61, v32, v57, v32
	v_fma_f32 v0, -v58, v34, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v42, v38, v60 :: v_dual_fmac_f32 v43, v44, v43
	v_fma_f32 v36, -v53, v35, 1.0
	v_div_scale_f32 v38, null, v57, v57, v24
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v44, s60, v30, v57, v30
	v_div_fmas_f32 v0, v0, v37, v34
	v_fma_f32 v34, -v59, v42, v41
	v_mul_f32_e32 v37, v33, v43
	v_fmac_f32_e32 v35, v36, v35
	v_rcp_f32_e32 v36, v38
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v58, null, v57, v57, v117
	v_div_fmas_f32 v34, v34, v60, v42
	v_fma_f32 v59, -v51, v37, v33
	v_mul_f32_e32 v60, v44, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v66, v58
	v_div_fixup_f32 v41, v0, v57, v125
	v_div_fixup_f32 v42, v34, v57, v126
	v_fma_f32 v65, -v38, v36, 1.0
	v_fmac_f32_e32 v37, v59, v43
	v_fma_f32 v0, -v53, v60, v44
	v_div_scale_f32 v59, null, v57, v57, v118
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v36, v65, v36
	v_div_scale_f32 v34, s62, v24, v57, v24
	v_fma_f32 v33, -v51, v37, v33
	v_fmac_f32_e32 v60, v0, v35
	v_rcp_f32_e32 v51, v59
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v65, -v58, v66, 1.0
	v_mul_f32_e32 v0, v34, v36
	v_div_fmas_f32 v33, v33, v43, v37
	v_fma_f32 v37, -v53, v60, v44
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v66, v65, v66
	v_div_scale_f32 v65, s63, v117, v57, v117
	v_fma_f32 v43, -v38, v0, v34
	v_fma_f32 v53, -v59, v51, 1.0
	v_div_fmas_f32 v35, v37, v35, v60
	v_rcp_f32_e32 v37, v67
	v_mul_f32_e32 v44, v65, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v0, v43, v36 :: v_dual_fmac_f32 v51, v53, v51
	v_div_scale_f32 v53, s60, v118, v57, v118
	v_fma_f32 v43, -v58, v44, v65
	v_div_fixup_f32 v32, v33, v57, v32
	v_div_fixup_f32 v30, v35, v57, v30
	v_fma_f32 v33, -v38, v0, v34
	v_mul_f32_e32 v34, v53, v51
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v35, -v67, v37, 1.0
	v_div_scale_f32 v38, null, v57, v57, v120
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v44, v43, v66
	v_div_fmas_f32 v0, v33, v36, v0
	v_fma_f32 v36, -v59, v34, v53
	v_fmac_f32_e32 v37, v35, v37
	v_rcp_f32_e32 v35, v38
	v_div_scale_f32 v60, null, v57, v57, v23
	v_fma_f32 v33, -v58, v44, v65
	v_div_scale_f32 v58, s61, v119, v57, v119
	v_fmac_f32_e32 v34, v36, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v36, v60
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v65, v58, v37
	v_div_fmas_f32 v33, v33, v66, v44
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v44, -v38, v35, 1.0
	v_div_fixup_f32 v24, v0, v57, v24
	v_fma_f32 v0, -v59, v34, v53
	v_div_scale_f32 v59, null, v57, v57, v21
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v43, v33, v57, v117
	v_fma_f32 v33, -v67, v65, v58
	v_fmac_f32_e32 v35, v44, v35
	v_div_scale_f32 v53, s62, v120, v57, v120
	v_fma_f32 v44, -v60, v36, 1.0
	v_div_fmas_f32 v0, v0, v51, v34
	v_rcp_f32_e32 v34, v59
	v_fmac_f32_e32 v65, v33, v37
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v33, v53, v35 :: v_dual_fmac_f32 v36, v44, v36
	v_div_scale_f32 v66, s60, v23, v57, v23
	v_div_scale_f32 v68, null, v57, v57, v22
	v_div_fixup_f32 v44, v0, v57, v118
	v_fma_f32 v0, -v67, v65, v58
	v_fma_f32 v51, -v38, v33, v53
	v_mul_f32_e32 v58, v66, v36
	v_rcp_f32_e32 v67, v68
	v_fma_f32 v71, -v59, v34, 1.0
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v33, v51, v35
	v_div_fmas_f32 v0, v0, v37, v65
	v_fma_f32 v37, -v60, v58, v66
	v_fmac_f32_e32 v34, v71, v34
	v_div_scale_f32 v65, s61, v21, v57, v21
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v81, 0xffff0000, v27
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v71, -v68, v67, 1.0
	v_div_fixup_f32 v51, v0, v57, v119
	v_fma_f32 v0, -v38, v33, v53
	v_fmac_f32_e32 v58, v37, v36
	v_mul_f32_e32 v37, v65, v34
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v67, v71, v67
	v_div_scale_f32 v38, s63, v22, v57, v22
	v_div_scale_f32 v71, null, v81, v81, v109
	v_div_fmas_f32 v0, v0, v35, v33
	v_fma_f32 v35, -v59, v37, v65
	v_div_scale_f32 v72, null, v81, v81, v110
	v_fma_f32 v33, -v60, v58, v66
	v_rcp_f32_e32 v60, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v66, v38, v67 :: v_dual_fmac_f32 v37, v35, v34
	v_rcp_f32_e32 v35, v72
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v53, v0, v57, v120
	v_div_fmas_f32 v33, v33, v36, v58
	v_fma_f32 v36, -v68, v66, v38
	v_fma_f32 v0, -v59, v37, v65
	v_div_scale_f32 v59, null, v81, v81, v112
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v58, -v71, v60, 1.0
	v_fmac_f32_e32 v66, v36, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v72, v35, 1.0
	v_div_fixup_f32 v23, v33, v57, v23
	v_div_scale_f32 v33, s60, v109, v81, v109
	v_dual_fmac_f32 v60, v58, v60 :: v_dual_fmac_f32 v35, v36, v35
	v_rcp_f32_e32 v36, v59
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v65, null, v81, v81, v111
	v_div_fmas_f32 v0, v0, v34, v37
	v_fma_f32 v34, -v68, v66, v38
	v_mul_f32_e32 v37, v33, v60
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v38, s61, v110, v81, v110
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v34, v34, v67, v66
	v_fma_f32 v58, -v71, v37, v33
	v_fma_f32 v67, -v59, v36, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v66, v38, v35
	v_rcp_f32_e32 v68, v65
	v_div_fixup_f32 v21, v0, v57, v21
	v_fmac_f32_e32 v37, v58, v60
	v_fmac_f32_e32 v36, v67, v36
	v_div_scale_f32 v67, null, v81, v81, v101
	v_div_fixup_f32 v22, v34, v57, v22
	v_fma_f32 v0, -v72, v66, v38
	v_div_scale_f32 v34, s62, v112, v81, v112
	v_fma_f32 v33, -v71, v37, v33
	v_rcp_f32_e32 v71, v67
	v_fma_f32 v57, -v65, v68, 1.0
	v_fmac_f32_e32 v66, v0, v35
	v_mul_f32_e32 v0, v34, v36
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v73, s63, v111, v81, v111
	v_fmac_f32_e32 v68, v57, v68
	v_div_fmas_f32 v33, v33, v60, v37
	v_fma_f32 v37, -v72, v66, v38
	v_fma_f32 v38, -v59, v0, v34
	v_fma_f32 v57, -v67, v71, 1.0
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v60, v73, v68
	v_div_fmas_f32 v35, v37, v35, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v0, v38, v36 :: v_dual_fmac_f32 v71, v57, v71
	v_div_scale_f32 v66, s60, v101, v81, v101
	v_div_fixup_f32 v57, v33, v81, v109
	v_fma_f32 v33, -v59, v0, v34
	v_fma_f32 v38, -v65, v60, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v34, v66, v71
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v75, null, v81, v81, v20
	v_div_fmas_f32 v0, v33, v36, v0
	v_fma_f32 v36, -v67, v34, v66
	v_fmac_f32_e32 v60, v38, v68
	s_mov_b32 vcc_lo, s63
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v52, 0xffff0000, v3
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v59, v0, v81, v112
	v_fmac_f32_e32 v34, v36, v71
	v_fma_f32 v33, -v65, v60, v73
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v31, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v67, v34, v66
	v_div_fmas_f32 v33, v33, v68, v60
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v29, v29
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v71, v34
	v_rcp_f32_e32 v34, v75
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v22, v22
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v3.l, v25.h
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v8, 0x2f0, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v75, v34, 1.0
	v_fmac_f32_e32 v34, v84, v34
	v_div_scale_f32 v72, null, v81, v81, v102
	v_div_fixup_f32 v58, v35, v81, v110
	v_div_scale_f32 v38, null, v81, v81, v103
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v37, v72
	v_div_scale_f32 v74, null, v81, v81, v104
	v_div_scale_f32 v73, s61, v102, v81, v102
	v_div_fixup_f32 v60, v33, v81, v111
	v_rcp_f32_e32 v36, v74
	v_div_scale_f32 v67, s62, v103, v81, v103
	v_div_scale_f32 v71, s60, v104, v81, v104
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v35, -v72, v37, 1.0
	v_div_scale_f32 v76, null, v81, v81, v93
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v84, s61, v20, v81, v20
	v_fmac_f32_e32 v37, v35, v37
	v_rcp_f32_e32 v35, v38
	v_div_scale_f32 v89, null, v81, v81, v94
	v_div_scale_f32 v90, null, v81, v81, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v68, v73, v37
	v_fma_f32 v65, -v38, v35, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v72, v68, v73
	v_fmac_f32_e32 v35, v65, v35
	v_fma_f32 v65, -v74, v36, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v68, v33, v37 :: v_dual_mul_f32 v33, v67, v35
	v_fmac_f32_e32 v36, v65, v36
	v_div_fixup_f32 v65, v0, v81, v101
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v0, -v72, v68, v73
	v_rcp_f32_e32 v73, v76
	v_fma_f32 v66, -v38, v33, v67
	v_mul_f32_e32 v72, v71, v36
	v_div_fmas_f32 v0, v0, v37, v68
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v66, v35
	v_fma_f32 v37, -v74, v72, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v66, v0, v81, v102
	v_fma_f32 v68, -v76, v73, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v0, -v38, v33, v67
	v_dual_fmac_f32 v72, v37, v36 :: v_dual_mul_f32 v37, v84, v34
	v_div_scale_f32 v38, s63, v93, v81, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v73, v68, v73
	v_div_fmas_f32 v0, v0, v35, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v33, -v74, v72, v71
	v_fma_f32 v35, -v75, v37, v84
	v_rcp_f32_e32 v71, v89
	v_mul_f32_e32 v74, v38, v73
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v67, v0, v81, v103
	v_fmac_f32_e32 v37, v35, v34
	v_rcp_f32_e32 v35, v90
	v_div_fmas_f32 v33, v33, v36, v72
	v_fma_f32 v36, -v76, v74, v38
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v39, 0xffff0000, v4
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v75, v37, v84
	v_fma_f32 v72, -v89, v71, 1.0
	v_div_fixup_f32 v68, v33, v81, v104
	v_fmac_f32_e32 v74, v36, v73
	v_div_scale_f32 v33, s60, v94, v81, v94
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v71, v72, v71
	v_fma_f32 v36, -v90, v35, 1.0
	v_div_scale_f32 v72, null, v81, v81, v96
	s_mov_b32 vcc_lo, s61
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	v_mov_b16_e32 v4.l, v27.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v35, v36, v35
	v_rcp_f32_e32 v36, v72
	v_div_fmas_f32 v0, v0, v34, v37
	v_fma_f32 v34, -v76, v74, v38
	v_mul_f32_e32 v37, v33, v71
	v_div_scale_f32 v38, s61, v95, v81, v95
	v_div_scale_f32 v76, null, v81, v81, v19
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v75, v38, v35
	v_div_fmas_f32 v34, v34, v73, v74
	v_fma_f32 v74, -v89, v37, v33
	v_fma_f32 v84, -v72, v36, 1.0
	v_rcp_f32_e32 v91, v76
	v_div_fixup_f32 v20, v0, v81, v20
	v_fma_f32 v0, -v90, v75, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v37, v74, v71 :: v_dual_fmac_f32 v36, v84, v36
	v_div_scale_f32 v84, null, v81, v81, v18
	v_div_fixup_f32 v73, v34, v81, v93
	v_div_scale_f32 v34, s62, v96, v81, v96
	v_fma_f32 v74, -v76, v91, 1.0
	v_fma_f32 v33, -v89, v37, v33
	v_fmac_f32_e32 v75, v0, v35
	v_rcp_f32_e32 v89, v84
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v0, v34, v36
	v_fmac_f32_e32 v91, v74, v91
	v_div_scale_f32 v92, s63, v19, v81, v19
	v_div_fmas_f32 v33, v33, v71, v37
	v_fma_f32 v37, -v90, v75, v38
	v_div_scale_f32 v90, null, v81, v81, v17
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v38, -v72, v0, v34
	v_mul_f32_e32 v71, v92, v91
	v_fma_f32 v74, -v84, v89, 1.0
	v_div_fmas_f32 v35, v37, v35, v75
	v_rcp_f32_e32 v37, v90
	v_fmac_f32_e32 v0, v38, v36
	v_fma_f32 v38, -v76, v71, v92
	v_fmac_f32_e32 v89, v74, v89
	v_div_scale_f32 v93, s60, v18, v81, v18
	v_div_fixup_f32 v74, v33, v81, v94
	v_div_fixup_f32 v75, v35, v81, v95
	v_fma_f32 v33, -v72, v0, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v71, v38, v91 :: v_dual_mul_f32 v34, v93, v89
	v_fma_f32 v35, -v90, v37, 1.0
	v_div_scale_f32 v38, null, v52, v52, v85
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v72, s61, v17, v81, v17
	v_div_fmas_f32 v0, v33, v36, v0
	v_fma_f32 v33, -v76, v71, v92
	v_fma_f32 v36, -v84, v34, v93
	v_fmac_f32_e32 v37, v35, v37
	v_rcp_f32_e32 v35, v38
	v_div_scale_f32 v92, null, v52, v52, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v36, v89
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v76, v0, v81, v96
	v_rcp_f32_e32 v36, v92
	v_div_fmas_f32 v33, v33, v91, v71
	v_mul_f32_e32 v71, v72, v37
	v_fma_f32 v0, -v84, v34, v93
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_fma_f32 v91, -v38, v35, 1.0
	v_div_scale_f32 v93, null, v52, v52, v88
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v19, v33, v81, v19
	v_fmac_f32_e32 v35, v91, v35
	v_fma_f32 v91, -v92, v36, 1.0
	v_fma_f32 v33, -v90, v71, v72
	v_div_scale_f32 v84, s62, v85, v52, v85
	v_div_fmas_f32 v0, v0, v89, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v36, v91, v36
	v_rcp_f32_e32 v34, v93
	v_div_scale_f32 v91, null, v52, v52, v87
	v_fmac_f32_e32 v71, v33, v37
	v_mul_f32_e32 v33, v84, v35
	v_div_scale_f32 v89, s60, v86, v52, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v94, v91
	v_div_fixup_f32 v18, v0, v81, v18
	v_fma_f32 v0, -v90, v71, v72
	v_fma_f32 v72, -v38, v33, v84
	v_mul_f32_e32 v90, v89, v36
	v_fma_f32 v95, -v93, v34, 1.0
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v37, v71
	v_fmac_f32_e32 v33, v72, v35
	v_fma_f32 v37, -v92, v90, v89
	v_fmac_f32_e32 v34, v95, v34
	v_div_scale_f32 v71, s61, v88, v52, v88
	v_fma_f32 v72, -v91, v94, 1.0
	v_div_fixup_f32 v17, v0, v81, v17
	v_fma_f32 v0, -v38, v33, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v90, v37, v36 :: v_dual_mul_f32 v37, v71, v34
	v_fmac_f32_e32 v94, v72, v94
	v_div_scale_f32 v38, s63, v87, v52, v87
	v_div_scale_f32 v72, null, v52, v52, v77
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v84, v38, v94
	v_div_fmas_f32 v0, v0, v35, v33
	v_fma_f32 v33, -v92, v90, v89
	v_fma_f32 v35, -v93, v37, v71
	v_rcp_f32_e32 v81, v72
	v_div_scale_f32 v89, null, v52, v52, v78
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v37, v35, v34
	v_div_fmas_f32 v36, v33, v36, v90
	v_rcp_f32_e32 v90, v89
	v_fma_f32 v92, -v91, v84, v38
	v_div_fixup_f32 v33, v0, v52, v85
	v_fma_f32 v0, -v93, v37, v71
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v72, v81, 1.0
	v_div_scale_f32 v85, null, v52, v52, v79
	v_fmac_f32_e32 v84, v92, v94
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v35, v36, v52, v86
	v_fmac_f32_e32 v81, v95, v81
	v_div_scale_f32 v36, s60, v77, v52, v77
	v_fma_f32 v71, -v89, v90, 1.0
	v_div_fmas_f32 v0, v0, v34, v37
	v_fma_f32 v34, -v91, v84, v38
	v_rcp_f32_e32 v38, v85
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v37, v36, v81 :: v_dual_fmac_f32 v90, v71, v90
	v_div_scale_f32 v71, s61, v78, v52, v78
	v_div_scale_f32 v86, null, v52, v52, v80
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v91, v71, v90
	v_div_fmas_f32 v34, v34, v94, v84
	v_fma_f32 v84, -v72, v37, v36
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v85, v38, 1.0
	v_rcp_f32_e32 v93, v86
	v_div_fixup_f32 v0, v0, v52, v88
	v_div_fixup_f32 v34, v34, v52, v87
	v_fmac_f32_e32 v37, v84, v81
	v_fma_f32 v84, -v89, v91, v71
	v_fmac_f32_e32 v38, v92, v38
	v_div_scale_f32 v87, s62, v79, v52, v79
	v_div_scale_f32 v88, null, v52, v52, v16
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v86, v93, 1.0
	v_fma_f32 v36, -v72, v37, v36
	v_fmac_f32_e32 v91, v84, v90
	v_mul_f32_e32 v72, v87, v38
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v84, v88
	v_fmac_f32_e32 v93, v92, v93
	v_div_scale_f32 v92, s63, v80, v52, v80
	v_div_fmas_f32 v36, v36, v81, v37
	v_fma_f32 v37, -v89, v91, v71
	v_fma_f32 v71, -v85, v72, v87
	v_div_scale_f32 v94, null, v52, v52, v69
	v_mul_f32_e32 v81, v92, v93
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v72, v71, v38
	v_rcp_f32_e32 v71, v94
	v_fma_f32 v89, -v88, v84, 1.0
	v_div_fmas_f32 v37, v37, v90, v91
	v_fma_f32 v90, -v86, v81, v92
	v_div_fixup_f32 v36, v36, v52, v77
	v_fma_f32 v77, -v85, v72, v87
	v_fmac_f32_e32 v84, v89, v84
	v_div_scale_f32 v89, s60, v16, v52, v16
	v_fmac_f32_e32 v81, v90, v93
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v85, -v94, v71, 1.0
	v_div_scale_f32 v87, null, v52, v52, v70
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v37, v37, v52, v78
	v_mul_f32_e32 v78, v89, v84
	v_div_fmas_f32 v38, v77, v38, v72
	v_fma_f32 v72, -v86, v81, v92
	v_fmac_f32_e32 v71, v85, v71
	v_rcp_f32_e32 v85, v87
	v_div_scale_f32 v90, null, v52, v52, v64
	s_mov_b32 vcc_lo, s63
	v_fma_f32 v77, -v88, v78, v89
	v_div_scale_f32 v86, s61, v69, v52, v69
	v_div_fmas_f32 v72, v72, v93, v81
	v_rcp_f32_e32 v81, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_dual_fmac_f32 v78, v77, v84 :: v_dual_mul_f32 v91, v86, v71
	v_fma_f32 v92, -v87, v85, 1.0
	v_div_fixup_f32 v38, v38, v52, v79
	v_div_fixup_f32 v77, v72, v52, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fma_f32 v72, -v88, v78, v89
	v_fma_f32 v79, -v94, v91, v86
	v_fmac_f32_e32 v85, v92, v85
	v_div_scale_f32 v80, s62, v70, v52, v70
	v_fma_f32 v88, -v90, v81, 1.0
	v_div_scale_f32 v89, null, v52, v52, v63
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v91, v79, v71
	v_div_fmas_f32 v72, v72, v84, v78
	v_mul_f32_e32 v78, v80, v85
	v_fmac_f32_e32 v81, v88, v81
	v_rcp_f32_e32 v79, v89
	v_div_scale_f32 v88, null, v52, v52, v15
	v_div_scale_f32 v84, s60, v64, v52, v64
	v_div_fixup_f32 v16, v72, v52, v16
	v_fma_f32 v72, -v94, v91, v86
	v_fma_f32 v86, -v87, v78, v80
	v_rcp_f32_e32 v93, v88
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v92, v84, v81
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v89, v79, 1.0
	v_div_fmas_f32 v71, v72, v71, v91
	v_fmac_f32_e32 v78, v86, v85
	v_div_scale_f32 v86, s61, v63, v52, v63
	v_fma_f32 v72, -v90, v92, v84
	v_fmac_f32_e32 v79, v94, v79
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v88, v93, 1.0
	v_div_fixup_f32 v69, v71, v52, v69
	v_fma_f32 v71, -v87, v78, v80
	v_div_scale_f32 v87, null, v52, v52, v13
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v92, v72, v81
	v_dual_mul_f32 v72, v86, v79 :: v_dual_fmac_f32 v93, v91, v93
	v_div_scale_f32 v80, s63, v15, v52, v15
	v_div_fmas_f32 v71, v71, v85, v78
	v_rcp_f32_e32 v85, v87
	v_fma_f32 v78, -v90, v92, v84
	v_fma_f32 v84, -v89, v72, v86
	v_mul_f32_e32 v90, v80, v93
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v91, null, v52, v52, v14
	v_div_fmas_f32 v78, v78, v81, v92
	v_fmac_f32_e32 v72, v84, v79
	v_fma_f32 v84, -v88, v90, v80
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v87, v85, 1.0
	v_rcp_f32_e32 v81, v91
	v_div_fixup_f32 v70, v71, v52, v70
	v_div_fixup_f32 v64, v78, v52, v64
	v_fma_f32 v71, -v89, v72, v86
	v_fmac_f32_e32 v90, v84, v93
	v_fmac_f32_e32 v85, v92, v85
	v_div_scale_f32 v78, s60, v13, v52, v13
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v71, v71, v79, v72
	v_fma_f32 v72, -v88, v90, v80
	v_mul_f32_e32 v79, v78, v85
	v_div_scale_f32 v80, null, v39, v39, v61
	v_fma_f32 v84, -v91, v81, 1.0
	s_mov_b32 vcc_lo, s63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v88, -v87, v79, v78
	v_rcp_f32_e32 v86, v80
	v_div_fmas_f32 v72, v72, v93, v90
	v_fmac_f32_e32 v81, v84, v81
	v_div_scale_f32 v84, s61, v14, v52, v14
	v_fmac_f32_e32 v79, v88, v85
	v_div_scale_f32 v90, null, v39, v39, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v89, v84, v81
	v_div_fixup_f32 v63, v71, v52, v63
	v_fma_f32 v88, -v80, v86, 1.0
	v_fma_f32 v78, -v87, v79, v78
	v_div_scale_f32 v87, null, v39, v39, v83
	v_div_fixup_f32 v15, v72, v52, v15
	v_fma_f32 v71, -v91, v89, v84
	v_rcp_f32_e32 v72, v90
	v_fmac_f32_e32 v86, v88, v86
	v_rcp_f32_e32 v88, v87
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v89, v71, v81
	v_div_scale_f32 v71, s62, v61, v39, v61
	v_div_fmas_f32 v78, v78, v85, v79
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v79, -v91, v89, v84
	v_fma_f32 v92, -v90, v72, 1.0
	v_mul_f32_e32 v84, v71, v86
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v91, -v87, v88, 1.0
	v_div_scale_f32 v85, s60, v62, v39, v62
	v_fmac_f32_e32 v72, v92, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v92, -v80, v84, v71
	v_fmac_f32_e32 v88, v91, v88
	v_div_scale_f32 v91, s63, v83, v39, v83
	v_div_scale_f32 v93, null, v39, v39, v82
	v_div_fmas_f32 v79, v79, v81, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v84, v92, v86 :: v_dual_mul_f32 v89, v91, v88
	v_mul_f32_e32 v94, v85, v72
	v_rcp_f32_e32 v95, v93
	v_div_fixup_f32 v13, v78, v52, v13
	v_div_fixup_f32 v14, v79, v52, v14
	v_fma_f32 v52, -v80, v84, v71
	v_fma_f32 v71, -v87, v89, v91
	v_div_scale_f32 v79, null, v39, v39, v50
	v_fma_f32 v81, -v90, v94, v85
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v89, v71, v88
	v_rcp_f32_e32 v71, v79
	v_fma_f32 v78, -v93, v95, 1.0
	v_fmac_f32_e32 v94, v81, v72
	v_div_fmas_f32 v52, v52, v86, v84
	v_div_scale_f32 v84, null, v39, v39, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v95, v78, v95
	v_fma_f32 v80, -v90, v94, v85
	v_div_scale_f32 v78, s61, v82, v39, v82
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v85, -v79, v71, 1.0
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v86, v84
	v_div_fmas_f32 v72, v80, v72, v94
	v_fma_f32 v80, -v87, v89, v91
	v_mul_f32_e32 v81, v78, v95
	v_fmac_f32_e32 v71, v85, v71
	v_div_scale_f32 v85, s60, v50, v39, v50
	s_mov_b32 vcc_lo, s63
	v_fma_f32 v87, -v93, v81, v78
	v_div_fmas_f32 v80, v80, v88, v89
	v_div_fixup_f32 v52, v52, v39, v61
	v_div_fixup_f32 v61, v72, v39, v62
	v_mul_f32_e32 v72, v85, v71
	v_fmac_f32_e32 v81, v87, v95
	v_div_fixup_f32 v62, v80, v39, v83
	v_fma_f32 v80, -v84, v86, 1.0
	v_div_scale_f32 v83, null, v39, v39, v55
	v_fma_f32 v87, -v79, v72, v85
	v_fma_f32 v78, -v93, v81, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v86, v80, v86
	v_div_scale_f32 v80, s62, v54, v39, v54
	v_fmac_f32_e32 v72, v87, v71
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v88, v83
	v_div_fmas_f32 v78, v78, v95, v81
	v_mul_f32_e32 v81, v80, v86
	v_fma_f32 v79, -v79, v72, v85
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v87, null, v39, v39, v56
	v_div_fixup_f32 v78, v78, v39, v82
	v_fma_f32 v82, -v84, v81, v80
	v_div_fmas_f32 v71, v79, v71, v72
	v_div_scale_f32 v72, null, v39, v39, v12
	v_fma_f32 v85, -v83, v88, 1.0
	v_rcp_f32_e32 v89, v87
	v_fmac_f32_e32 v81, v82, v86
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v82, v72
	v_div_scale_f32 v79, s60, v55, v39, v55
	v_fmac_f32_e32 v88, v85, v88
	v_div_scale_f32 v85, null, v39, v39, v46
	v_div_fixup_f32 v50, v71, v39, v50
	v_fma_f32 v80, -v84, v81, v80
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v71, -v87, v89, 1.0
	v_rcp_f32_e32 v91, v85
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v72, v82, 1.0
	v_mul_f32_e32 v84, v79, v88
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v89, v71, v89
	v_div_scale_f32 v71, s61, v56, v39, v56
	v_fmac_f32_e32 v82, v90, v82
	v_div_scale_f32 v90, null, v39, v39, v47
	v_div_fmas_f32 v80, v80, v86, v81
	v_fma_f32 v81, -v83, v84, v79
	v_mul_f32_e32 v86, v71, v89
	v_div_scale_f32 v92, s62, v12, v39, v12
	v_fma_f32 v93, -v85, v91, 1.0
	v_rcp_f32_e32 v94, v90
	v_fmac_f32_e32 v84, v81, v88
	v_fma_f32 v81, -v87, v86, v71
	v_mul_f32_e32 v95, v92, v82
	v_fmac_f32_e32 v91, v93, v91
	v_div_scale_f32 v93, s63, v46, v39, v46
	v_div_fixup_f32 v54, v80, v39, v54
	v_fma_f32 v79, -v83, v84, v79
	v_fmac_f32_e32 v86, v81, v89
	v_fma_f32 v80, -v72, v95, v92
	v_mul_f32_e32 v81, v93, v91
	v_fma_f32 v83, -v90, v94, 1.0
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v71, -v87, v86, v71
	v_fmac_f32_e32 v95, v80, v82
	v_fma_f32 v80, -v85, v81, v93
	v_fmac_f32_e32 v94, v83, v94
	v_div_scale_f32 v83, s60, v47, v39, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v72, -v72, v95, v92
	v_fmac_f32_e32 v81, v80, v91
	v_div_fmas_f32 v79, v79, v88, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v80, v83, v94
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v84, null, v39, v39, v48
	v_div_fmas_f32 v71, v71, v89, v86
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v55, v79, v39, v55
	v_div_fmas_f32 v72, v72, v82, v95
	v_fma_f32 v82, -v85, v81, v93
	v_fma_f32 v85, -v90, v80, v83
	v_rcp_f32_e32 v86, v84
	v_div_fixup_f32 v56, v71, v39, v56
	v_div_fixup_f32 v12, v72, v39, v12
	v_div_scale_f32 v72, null, v39, v39, v49
	v_fmac_f32_e32 v80, v85, v94
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v88, null, v39, v39, v11
	v_div_fmas_f32 v81, v82, v91, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v71, -v90, v80, v83
	v_fma_f32 v79, -v84, v86, 1.0
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v90, v88
	v_div_fixup_f32 v46, v81, v39, v46
	v_div_fmas_f32 v71, v71, v94, v80
	v_rcp_f32_e32 v80, v72
	v_fmac_f32_e32 v86, v79, v86
	v_div_scale_f32 v79, null, v39, v39, v9
	v_div_scale_f32 v81, null, v39, v39, v10
	v_div_scale_f32 v82, vcc_lo, v48, v39, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v83, v79
	v_rcp_f32_e32 v85, v81
	v_div_fixup_f32 v47, v71, v39, v47
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v71, -v72, v80, 1.0
	v_mul_f32_e32 v87, v82, v86
	v_fma_f32 v94, -v88, v90, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	v_rndne_f32_e32 v55, v55
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v80, v71, v80
	v_div_scale_f32 v71, s60, v49, v39, v49
	v_fma_f32 v89, -v79, v83, 1.0
	v_fma_f32 v92, -v81, v85, 1.0
	v_fma_f32 v91, -v84, v87, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v93, v71, v80 :: v_dual_fmac_f32 v90, v94, v90
	v_fmac_f32_e32 v83, v89, v83
	v_div_scale_f32 v89, s61, v9, v39, v9
	v_fmac_f32_e32 v85, v92, v85
	v_div_scale_f32 v92, s62, v10, v39, v10
	v_fmac_f32_e32 v87, v91, v86
	v_fma_f32 v91, -v72, v93, v71
	v_div_scale_f32 v94, s63, v11, v39, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v95, v89, v83 :: v_dual_mul_f32 v96, v92, v85
	v_fmac_f32_e32 v93, v91, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v97, v94, v90
	v_fma_f32 v82, -v84, v87, v82
	v_fma_f32 v84, -v79, v95, v89
	v_fma_f32 v91, -v81, v96, v92
	v_fma_f32 v71, -v72, v93, v71
	v_fma_f32 v72, -v88, v97, v94
	v_div_fmas_f32 v82, v82, v86, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v95, v84, v83 :: v_dual_fmac_f32 v96, v91, v85
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v97, v72, v90
	v_div_fmas_f32 v71, v71, v80, v93
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v79, -v79, v95, v89
	v_fma_f32 v72, -v81, v96, v92
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v80, -v88, v97, v94
	v_div_fixup_f32 v49, v71, v39, v49
	v_div_fmas_f32 v79, v79, v83, v95
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v71, v74
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v72, v72, v85, v96
	s_mov_b32 vcc_lo, s63
	s_mov_b32 s60, 0xc1000000
	v_div_fmas_f32 v80, v80, v90, v97
	v_div_fixup_f32 v48, v82, v39, v48
	v_div_fixup_f32 v9, v79, v39, v9
	v_div_fixup_f32 v10, v72, v39, v10
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v71, v71, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v11, v80, v39, v11
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v40
	v_rndne_f32_e32 v40, v41
	v_rndne_f32_e32 v41, v42
	v_rndne_f32_e32 v42, v43
	v_rndne_f32_e32 v43, v44
	v_rndne_f32_e32 v44, v51
	v_rndne_f32_e32 v51, v53
	v_rndne_f32_e32 v53, v57
	v_rndne_f32_e32 v57, v58
	v_rndne_f32_e32 v58, v59
	v_rndne_f32_e32 v59, v60
	v_rndne_f32_e32 v60, v65
	v_rndne_f32_e32 v65, v66
	v_rndne_f32_e32 v66, v67
	v_rndne_f32_e32 v67, v68
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v18, v18, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v9, v9
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v39, v39, s60, 0x40e00000
	v_med3_f32 v41, v41, s60, 0x40e00000
	v_med3_f32 v43, v43, s60, 0x40e00000
	v_med3_f32 v67, v67, s60, 0x40e00000
	v_med3_f32 v19, v19, s60, 0x40e00000
	v_med3_f32 v0, v0, s60, 0x40e00000
	v_med3_f32 v55, v55, s60, 0x40e00000
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v80, v18
	v_med3_f32 v32, v32, s60, 0x40e00000
	v_med3_f32 v44, v44, s60, 0x40e00000
	v_med3_f32 v54, v54, s60, 0x40e00000
	v_med3_f32 v9, v9, s60, 0x40e00000
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v0, v0
	v_cvt_i32_f32_e32 v96, v55
	v_and_b32_e32 v55, 15, v71
	v_and_b32_e32 v71, 15, v80
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v80, 16, v217
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v68, v73
	v_rndne_f32_e32 v73, v76
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v12, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v58, v58, s60, 0x40e00000
	v_cvt_i32_f32_e32 v76, v32
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v95, v54
	v_cvt_i32_f32_e32 v103, v9
	v_and_b32_e32 v9, 15, v39
	v_and_b32_e32 v32, 15, v41
	v_and_b32_e32 v54, 15, v43
	v_and_b32_e32 v41, 15, v67
	v_and_b32_e32 v67, 15, v19
	v_and_b32_e32 v19, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 13, v217
	v_lshlrev_b32_e32 v39, 8, v80
	v_and_b32_e32 v43, 64, v217
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v72, v75
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v75, v78
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v11, v11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v24, v24, s60, 0x40e00000
	v_med3_f32 v53, v53, s60, 0x40e00000
	v_med3_f32 v20, v20, s60, 0x40e00000
	v_med3_f32 v33, v33, s60, 0x40e00000
	v_med3_f32 v16, v16, s60, 0x40e00000
	v_med3_f32 v52, v52, s60, 0x40e00000
	v_med3_f32 v12, v12, s60, 0x40e00000
	v_cvt_i32_f32_e32 v78, v58
	v_and_b32_e32 v58, 15, v44
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v44, 3, v215
	v_and_or_b32 v0, 0xe000, v0, v39
	v_xor_b32_e32 v8, v8, v43
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v62, v62
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v31, v31, s60, 0x40e00000
	v_med3_f32 v28, v28, s60, 0x40e00000
	v_med3_f32 v29, v29, s60, 0x40e00000
	v_med3_f32 v40, v40, s60, 0x40e00000
	v_med3_f32 v30, v30, s60, 0x40e00000
	v_med3_f32 v51, v51, s60, 0x40e00000
	v_med3_f32 v60, v60, s60, 0x40e00000
	v_med3_f32 v65, v65, s60, 0x40e00000
	v_med3_f32 v73, v73, s60, 0x40e00000
	v_med3_f32 v36, v36, s60, 0x40e00000
	v_med3_f32 v64, v64, s60, 0x40e00000
	v_med3_f32 v63, v63, s60, 0x40e00000
	v_med3_f32 v50, v50, s60, 0x40e00000
	v_med3_f32 v49, v49, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v14, v14
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v57, v57, s60, 0x40e00000
	v_med3_f32 v35, v35, s60, 0x40e00000
	v_med3_f32 v61, v61, s60, 0x40e00000
	v_med3_f32 v46, v46, s60, 0x40e00000
	v_med3_f32 v47, v47, s60, 0x40e00000
	v_med3_f32 v48, v48, s60, 0x40e00000
	v_med3_f32 v10, v10, s60, 0x40e00000
	v_med3_f32 v11, v11, s60, 0x40e00000
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v82, v33
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v91, v52
	v_cvt_i32_f32_e32 v98, v12
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v0, v0, v44, v8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v23, v23, s60, 0x40e00000
	v_med3_f32 v21, v21, s60, 0x40e00000
	v_med3_f32 v17, v17, s60, 0x40e00000
	v_med3_f32 v34, v34, s60, 0x40e00000
	v_med3_f32 v37, v37, s60, 0x40e00000
	v_med3_f32 v13, v13, s60, 0x40e00000
	v_med3_f32 v62, v62, s60, 0x40e00000
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v83, v36
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v87, v63
	v_cvt_i32_f32_e32 v94, v50
	v_cvt_i32_f32_e32 v102, v49
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v70, v70
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v15, v15, s60, 0x40e00000
	v_med3_f32 v14, v14, s60, 0x40e00000
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v99, v46
	v_cvt_i32_f32_e32 v100, v47
	v_cvt_i32_f32_e32 v101, v48
	v_cvt_i32_f32_e32 v104, v10
	v_cvt_i32_f32_e32 v105, v11
	v_and_b32_e32 v46, 15, v24
	v_and_b32_e32 v10, 15, v53
	v_and_b32_e32 v47, 15, v20
	v_and_b32_e32 v11, 15, v82
	v_and_b32_e32 v48, 15, v16
	v_and_b32_e32 v12, 15, v91
	v_and_b32_e32 v49, 15, v98
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v8, 0, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v74, v77
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v66, v66, s60, 0x40e00000
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v77, v21
	v_cvt_i32_f32_e32 v81, v17
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v84, v37
	v_cvt_i32_f32_e32 v89, v13
	v_cvt_i32_f32_e32 v92, v62
	v_and_b32_e32 v13, 15, v31
	v_and_b32_e32 v17, 15, v28
	v_and_b32_e32 v21, 15, v29
	v_and_b32_e32 v28, 15, v40
	v_and_b32_e32 v40, 15, v30
	v_and_b32_e32 v62, 15, v51
	v_and_b32_e32 v29, 15, v60
	v_and_b32_e32 v33, 15, v65
	v_and_b32_e32 v63, 15, v73
	v_and_b32_e32 v30, 15, v83
	v_and_b32_e32 v60, 15, v64
	v_and_b32_e32 v64, 15, v87
	v_and_b32_e32 v31, 15, v94
	v_and_b32_e32 v65, 15, v102
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v56
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v42, v42, s60, 0x40e00000
	v_med3_f32 v22, v22, s60, 0x40e00000
	v_med3_f32 v59, v59, s60, 0x40e00000
	v_med3_f32 v68, v68, s60, 0x40e00000
	v_med3_f32 v72, v72, s60, 0x40e00000
	v_med3_f32 v69, v69, s60, 0x40e00000
	v_med3_f32 v70, v70, s60, 0x40e00000
	v_cvt_i32_f32_e32 v88, v15
	v_cvt_i32_f32_e32 v90, v14
	v_and_b32_e32 v14, 15, v57
	v_and_b32_e32 v15, 15, v35
	v_and_b32_e32 v16, 15, v61
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v8, v[9:12]
	ds_store_b128 v8, v[28:31] offset:256
	v_xad_u32 v9, v0, 16, 0
	ds_store_b128 v8, v[46:49] offset:2048
	ds_store_b128 v8, v[62:65] offset:2304
	v_lshlrev_b32_e32 v8, 6, v217
	v_lshlrev_b32_e32 v10, 5, v26
	v_cndmask_b32_e64 v11, 0x2010, 0, s2
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v38, v38, s60, 0x40e00000
	v_cvt_i32_f32_e32 v79, v66
	v_and_b32_e32 v66, 15, v23
	v_and_b32_e32 v23, 15, v34
	v_and_b32_e32 v34, 15, v84
	v_and_b32_e32 v35, 15, v95
	v_med3_f32 v75, v75, s60, 0x40e00000
	v_med3_f32 v74, v74, s60, 0x40e00000
	v_med3_f32 v56, v56, s60, 0x40e00000
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v86, v70
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v9, v[13:16]
	ds_store_b128 v9, v[32:35] offset:256
	v_lshlrev_b32_e32 v13, 2, v80
	v_and_or_b32 v8, 0x300, v8, v10
	v_xor_b32_e32 v10, v11, v45
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v93, v75
	v_cvt_i32_f32_e32 v85, v74
	v_cvt_i32_f32_e32 v97, v56
	v_and_b32_e32 v50, 15, v42
	v_and_b32_e32 v74, 15, v22
	v_and_b32_e32 v18, 15, v78
	v_and_b32_e32 v22, 15, v59
	v_and_b32_e32 v51, 15, v68
	v_and_b32_e32 v59, 15, v72
	v_and_b32_e32 v52, 15, v69
	v_and_b32_e32 v56, 15, v86
	v_and_b32_e32 v20, 15, v92
	v_and_b32_e32 v53, 15, v99
	v_and_b32_e32 v57, 15, v100
	v_and_b32_e32 v61, 15, v101
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v12, v0, 32, 0
	v_xad_u32 v0, v0, 48, 0
	v_or3_b32 v26, v10, v8, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v36, 15, v76
	v_and_b32_e32 v70, 15, v77
	v_and_b32_e32 v37, 15, v79
	v_and_b32_e32 v75, 15, v81
	v_and_b32_e32 v38, 15, v38
	v_and_b32_e32 v68, 15, v88
	v_and_b32_e32 v72, 15, v89
	v_and_b32_e32 v76, 15, v90
	v_and_b32_e32 v39, 15, v96
	v_and_b32_e32 v69, 15, v103
	v_and_b32_e32 v73, 15, v104
	v_and_b32_e32 v77, 15, v105
	v_and_b32_e32 v24, 15, v93
	v_and_b32_e32 v42, 15, v85
	v_and_b32_e32 v43, 15, v97
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v9, v[50:53] offset:2048
	ds_store_b128 v9, v[66:69] offset:2304
	ds_store_b128 v12, v[17:20]
	ds_store_b128 v12, v[36:39] offset:256
	ds_store_b128 v12, v[54:57] offset:2048
	ds_store_b128 v12, v[70:73] offset:2304
	ds_store_b128 v0, v[21:24]
	ds_store_b128 v0, v[40:43] offset:256
	ds_store_b128 v0, v[58:61] offset:2048
	ds_store_b128 v0, v[74:77] offset:2304
	v_xad_u32 v0, 0x4020, v26, 0
	v_xad_u32 v24, 0x8040, v26, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[28:31], v0
	ds_load_b128 v[32:35], v0 offset:128
	ds_load_b128 v[36:39], v0 offset:4096
	ds_load_b128 v[40:43], v0 offset:4224
	v_xad_u32 v0, 0xc060, v26, 0
	ds_load_b128 v[44:47], v24
	ds_load_b128 v[48:51], v24 offset:128
	ds_load_b128 v[52:55], v24 offset:4096
	ds_load_b128 v[56:59], v24 offset:4224
	ds_load_b128 v[60:63], v0 offset:4096
	ds_load_b128 v[64:67], v0
	ds_load_b128 v[68:71], v0 offset:128
	ds_load_b128 v[72:75], v0 offset:4224
	v_add_nc_u32_e32 v20, 0, v26
	ds_load_b128 v[8:11], v20
	ds_load_b128 v[12:15], v20 offset:128
	ds_load_b128 v[16:19], v20 offset:4096
	ds_load_b128 v[20:23], v20 offset:4224
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v76, s2, s72, v157
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v77, null, s73, 0, s2
	v_add_co_u32 v78, s2, s72, v154
	v_add_co_ci_u32_e64 v79, null, s73, 0, s2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[76:77], v[5:6]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v5, s72, v154
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s60, s[74:75], v[76:77]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s61, s[76:77], v[76:77]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	s_waitcnt lgkmcnt(13)
	v_lshl_or_b32 v76, v36, 4, v28
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v0, s79, 7, v212
	v_add_nc_u32_e32 v28, 34, v5
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(8)
	v_lshl_or_b32 v49, v57, 4, v49
	s_waitcnt lgkmcnt(4)
	v_lshl_or_b32 v57, v73, 4, v69
	v_lshl_or_b32 v73, v38, 4, v30
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v30, 36, v5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v50, v58, 4, v50
	v_lshl_or_b32 v58, v74, 4, v70
	v_lshl_or_b32 v74, v39, 4, v31
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v31, 38, v5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v44, v52, 4, v44
	v_lshl_or_b32 v52, v60, 4, v64
	v_lshl_or_b32 v64, v40, 4, v32
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s73, s68, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v32, 40, v5
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v45, v53, 4, v45
	v_lshl_or_b32 v53, v61, 4, v65
	v_lshl_or_b32 v65, v41, 4, v33
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v33, 42, v5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v48, v56, 4, v48
	v_lshl_or_b32 v56, v72, 4, v68
	v_lshl_or_b32 v72, v37, 4, v29
	v_lshl_or_b32 v46, v54, 4, v46
	v_lshl_or_b32 v54, v62, 4, v66
	v_lshl_or_b32 v66, v42, 4, v34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v34, 44, v5
	v_mad_u64_u32 v[28:29], null, v28, s73, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(1)
	v_lshl_or_b32 v26, v16, 4, v8
	v_lshl_or_b32 v43, v43, 4, v35
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, 2, v5
	v_add_nc_u32_e32 v35, 46, v5
	v_mad_u64_u32 v[29:30], null, v30, s73, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v69, v18, 4, v10
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 4, v5
	v_add_nc_u32_e32 v36, 48, v5
	v_mad_u64_u32 v[30:31], null, v31, s73, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v70, v19, 4, v11
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 6, v5
	v_add_nc_u32_e32 v37, 50, v5
	v_mad_u64_u32 v[31:32], null, v32, s73, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v60, v20, 4, v12
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 8, v5
	v_add_nc_u32_e32 v38, 52, v5
	v_mad_u64_u32 v[32:33], null, v33, s73, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v61, v21, 4, v13
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 10, v5
	v_add_nc_u32_e32 v39, 54, v5
	v_mad_u64_u32 v[33:34], null, v34, s73, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v68, v17, 4, v9
	v_lshl_or_b32 v62, v22, 4, v14
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 12, v5
	v_add_nc_u32_e32 v40, 56, v5
	v_mad_u64_u32 v[8:9], null, v8, s73, v[0:1]
	v_mad_u64_u32 v[34:35], null, v35, s73, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v47, v55, 4, v47
	v_lshl_or_b32 v55, v63, 4, v67
	v_lshl_or_b32 v63, v23, 4, v15
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v15, 14, v5
	v_add_nc_u32_e32 v41, 58, v5
	v_mad_u64_u32 v[9:10], null, v10, s73, v[0:1]
	v_mad_u64_u32 v[35:36], null, v36, s73, v[0:1]
	v_add_nc_u32_e32 v16, 16, v5
	v_mad_u64_u32 v[10:11], null, v11, s73, v[0:1]
	v_mad_u64_u32 v[36:37], null, v37, s73, v[0:1]
	v_add_nc_u32_e32 v17, 18, v5
	v_mad_u64_u32 v[11:12], null, v12, s73, v[0:1]
	v_mad_u64_u32 v[37:38], null, v38, s73, v[0:1]
	v_add_nc_u32_e32 v18, 20, v5
	v_mad_u64_u32 v[12:13], null, v13, s73, v[0:1]
	v_mad_u64_u32 v[38:39], null, v39, s73, v[0:1]
	v_add_nc_u32_e32 v19, 22, v5
	v_mad_u64_u32 v[13:14], null, v14, s73, v[0:1]
	v_mad_u64_u32 v[39:40], null, v40, s73, v[0:1]
	v_mad_u64_u32 v[14:15], null, v15, s73, v[0:1]
	v_mad_u64_u32 v[40:41], null, v41, s73, v[0:1]
	v_add_nc_u32_e32 v20, 24, v5
	v_add_nc_u32_e32 v21, 26, v5
	v_mad_u64_u32 v[15:16], null, v16, s73, v[0:1]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s62, s[74:75], v[78:79]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s63, s[76:77], v[78:79]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v22, 28, v5
	v_add_nc_u32_e32 v23, 30, v5
	v_add_nc_u32_e32 v24, 32, v5
	v_add_nc_u32_e32 v42, 60, v5
	v_add_nc_u32_e32 v67, 62, v5
	v_mad_u64_u32 v[5:6], null, v5, s73, v[0:1]
	v_mad_u64_u32 v[16:17], null, v17, s73, v[0:1]
	v_mad_u64_u32 v[17:18], null, v18, s73, v[0:1]
	v_mad_u64_u32 v[18:19], null, v19, s73, v[0:1]
	v_mad_u64_u32 v[19:20], null, v20, s73, v[0:1]
	v_mad_u64_u32 v[20:21], null, v21, s73, v[0:1]
	v_mad_u64_u32 v[21:22], null, v22, s73, v[0:1]
	v_mad_u64_u32 v[22:23], null, v23, s73, v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s62, s62, s63
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[23:24], null, v24, s73, v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v24, 0x80000000, v5, s62
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[5:6], null, v67, s73, v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s60, s60, s61
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v9, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s58, s59
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[41:42], null, v42, s73, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v0, 0x80000000, v8, s60
	v_cndmask_b32_e32 v8, 0x80000000, v10, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s56, s57
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_mov_b32 s68, s64
	v_cndmask_b32_e32 v9, 0x80000000, v11, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s54, s55
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v26, v24, s[68:71], 0 offen
	v_cndmask_b32_e32 v10, 0x80000000, v12, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s52, s53
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v76, v0, s[68:71], 0 offen
	buffer_store_b8 v44, v6, s[68:71], 0 offen
	buffer_store_b8 v52, v8, s[68:71], 0 offen
	buffer_store_b8 v60, v9, s[68:71], 0 offen
	buffer_store_b8 v64, v10, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v13, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s50, s51
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v51, v59, 4, v51
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v14, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s48, s49
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v59, v75, 4, v71
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v15, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s46, s47
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s78, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s44, s45
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v17, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s42, s43
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v48, v0, s[68:71], 0 offen
	buffer_store_b8 v56, v6, s[68:71], 0 offen
	buffer_store_b8 v68, v8, s[68:71], 0 offen
	buffer_store_b8 v72, v9, s[68:71], 0 offen
	buffer_store_b8 v45, v10, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v18, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s40, s41
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v19, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s38, s39
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v20, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s36, s37
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v21, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s34, s35
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v22, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s31, s33
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v53, v0, s[68:71], 0 offen
	buffer_store_b8 v61, v6, s[68:71], 0 offen
	buffer_store_b8 v65, v8, s[68:71], 0 offen
	buffer_store_b8 v49, v9, s[68:71], 0 offen
	buffer_store_b8 v57, v10, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v23, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s29, s30
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v28, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s27, s28
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v29, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s25, s26
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v30, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s23, s24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v31, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s21, s22
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v69, v0, s[68:71], 0 offen
	buffer_store_b8 v73, v6, s[68:71], 0 offen
	buffer_store_b8 v46, v8, s[68:71], 0 offen
	buffer_store_b8 v54, v9, s[68:71], 0 offen
	buffer_store_b8 v62, v10, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v32, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s19, s20
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v33, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s17, s18
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v34, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s15, s16
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v35, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s13, s14
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v36, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s11, s12
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v66, v0, s[68:71], 0 offen
	buffer_store_b8 v50, v6, s[68:71], 0 offen
	buffer_store_b8 v58, v8, s[68:71], 0 offen
	buffer_store_b8 v70, v9, s[68:71], 0 offen
	buffer_store_b8 v74, v10, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v37, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s9, s10
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v38, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v39, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v40, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v41, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v47, v0, s[68:71], 0 offen
	buffer_store_b8 v55, v6, s[68:71], 0 offen
	buffer_store_b8 v63, v8, s[68:71], 0 offen
	buffer_store_b8 v43, v9, s[68:71], 0 offen
	buffer_store_b8 v51, v10, s[68:71], 0 offen
	v_dual_cndmask_b32 v0, 0x80000000, v5 :: v_dual_lshlrev_b32 v5, 3, v159
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s2, 24
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[1:2]
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s78, s78, s0
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v59, v0, s[68:71], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v5
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s78, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_lshrrev_b32_e32 v6, 2, v80
	ds_store_b64 v0, v[3:4]
	v_and_b32_e32 v4, 0xc0, v217
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v3, v7, s0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[76:77], v[1:2]
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v8, 2, v210
	s_waitcnt lgkmcnt(0)
	v_cmp_eq_u32_e64 s1, 0, v4
	s_barrier
	s_and_b32 s69, s67, 0xffff
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_lshl_u32 v1, v3, s79, 1
	s_and_b32 vcc_lo, s1, s0
	v_add_nc_u32_e32 v6, 0, v6
	s_mov_b32 s68, s66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	v_add3_u32 v5, v6, v8, v5
	ds_load_u16 v0, v5
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[68:71], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp80:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 300
		.amdhsa_kernarg_size 120
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
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 80
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 300
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 30344
; TotalNumSgprs: 82
; NumVgprs: 256
; ScratchSize: 300
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 82
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
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
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 300
    .sgpr_count:     82
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 74
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
