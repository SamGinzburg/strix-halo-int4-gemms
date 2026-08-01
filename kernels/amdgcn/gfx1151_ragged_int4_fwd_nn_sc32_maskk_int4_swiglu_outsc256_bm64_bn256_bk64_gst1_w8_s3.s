	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[56:57], s[0:1], 0x5c
	v_dual_mov_b32 v198, v0 :: v_dual_mov_b32 v153, 0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v199, 4, v198
	v_lshlrev_b32_e32 v11, 4, v198
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
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
	s_sub_i32 s8, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s4, s57, s8
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s8, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s9, s4, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s2, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s10, s9
	s_cvt_f32_u32 s4, s10
	s_sub_i32 s5, 0, s10
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s4
	v_readfirstlane_b32 s4, v0
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s4, s4
	s_mul_i32 s5, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s3, s4, s5
	s_abs_i32 s5, s2
	s_add_i32 s4, s4, s3
	s_mul_hi_u32 s3, s5, s4
	s_xor_b32 s4, s2, s9
	s_mul_i32 s6, s3, s10
	s_ashr_i32 s21, s4, 31
	s_sub_i32 s11, s5, s6
	s_add_i32 s12, s3, 1
	s_sub_i32 s13, s11, s10
	s_cmp_ge_u32 s11, s10
	s_load_b128 s[4:7], s[0:1], 0x28
	s_cselect_b32 s3, s12, s3
	s_cselect_b32 s11, s13, s11
	s_add_i32 s12, s3, 1
	s_cmp_ge_u32 s11, s10
	s_cselect_b32 s3, s12, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s24, s3, s21
	s_sub_i32 s57, s24, s21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s57, s9
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s2, s2, s8
	s_load_b64 s[8:9], s[0:1], 0x38
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s3, s2, 31
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[10:11], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s4, s10
	s_addc_u32 s3, s5, s11
	s_load_b64 s[54:55], s[2:3], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s2, s6, s10
	s_addc_u32 s3, s7, s11
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s4, s8, s10
	s_addc_u32 s5, s9, s11
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[34:35], s[2:3], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[52:53], s[4:5], 0x0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v0, s2, s54, v199
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s55, 0, s2
	v_add_nc_u32_e32 v21, s54, v199
	v_add_co_u32 v2, vcc_lo, v0, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, 0, v1, vcc_lo
	v_add_co_u32 v4, vcc_lo, v0, 32
	v_add_co_ci_u32_e64 v5, null, 0, v1, vcc_lo
	v_add_co_u32 v6, vcc_lo, v0, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, 0, v1, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[34:35], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[52:53], v[0:1]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[34:35], v[2:3]
	v_cmp_le_i64_e64 s6, s[34:35], v[4:5]
	v_cmp_le_i64_e64 s7, s[34:35], v[6:7]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[52:53], v[2:3]
	v_cmp_gt_i64_e64 s8, s[52:53], v[4:5]
	v_cmp_gt_i64_e64 s9, s[52:53], v[6:7]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s5, vcc_lo, s2
	s_and_b32 s4, s3, s4
	s_and_b32 s3, s6, s8
	s_and_b32 s2, s7, s9
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cmp_gt_i32 s56, 0
	s_mov_b32 s6, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v5, s54, v199
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v1, 8, v198
	v_lshlrev_b32_e32 v2, 4, v198
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp4:
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v200, 16, v5
	v_add_nc_u32_e32 v201, 32, v5
	v_add_nc_u32_e32 v203, 48, v5
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr200
                                        ; implicit-def: $vgpr201
                                        ; implicit-def: $vgpr203
.LBB0_3:                                ; %Flow626
	s_load_b128 s[28:31], s[0:1], 0x40
	v_dual_mov_b32 v65, 0 :: v_dual_and_b32 v204, 0xf0, v198
	v_dual_mov_b32 v57, 0 :: v_dual_and_b32 v56, 0x80, v198
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v225, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v157, 0
	v_mov_b32_e32 v148, 0
	v_mov_b32_e32 v150, 0
	v_mov_b32_e32 v152, 0
	v_mov_b32_e32 v154, 0
	v_mov_b32_e32 v156, 0
	v_and_b32_e32 v202, 15, v198
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x2
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[12:19], s[0:1], 0x0
	s_load_b32 s58, s[0:1], 0x58
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s0, s54, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s55, 0, s0
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v22, 7, v56
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v2, vcc_lo, v0, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, 0, v1, vcc_lo
	v_add_co_u32 v4, vcc_lo, v0, 32
	v_add_co_ci_u32_e64 v5, null, 0, v1, vcc_lo
	v_add_co_u32 v6, vcc_lo, v0, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, 0, v1, vcc_lo
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s6, s10
	s_addc_u32 s1, s7, s11
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[34:35], v[0:1]
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[22:23], s[0:1], 0x0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[52:53], v[0:1]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[34:35], v[2:3]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[52:53], v[2:3]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[34:35], v[4:5]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[52:53], v[4:5]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s9, s[34:35], v[6:7]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[52:53], v[6:7]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s1, s6
	.loc	1 1049 17 is_stmt 1             ; ragged.py:1049:17
	s_lshl_b32 s6, s33, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s7, s8
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s7, s6, s58
	v_dual_mov_b32 v156, 0 :: v_dual_lshlrev_b32 v15, 1, v22
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v48, 0 :: v_dual_add_nc_u32 v9, s54, v202
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s6, s9, s10
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_lshl_b32 s9, s24, 8
	v_dual_mov_b32 v211, 0 :: v_dual_and_b32 v8, 0x7f, v198
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s59, s7, s22
	v_cmp_eq_u32_e64 s7, 0, v56
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_mul_i32 s10, s58, s22
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v0, 16, v9
	v_lshl_add_u32 v15, s10, 1, v15
	v_cndmask_b32_e64 v6, 0x88, 0, s7
	s_mul_i32 s7, s56, s22
	v_dual_mov_b32 v210, 0 :: v_dual_add_nc_u32 v1, 32, v9
	s_lshl_b32 s8, s7, 1
	v_dual_mov_b32 v163, 0 :: v_dual_add_nc_u32 v2, 48, v9
	s_or_b32 s8, s8, 1
	v_mul_lo_u32 v9, s56, v9
	s_mul_i32 s8, s33, s8
	v_dual_mov_b32 v152, 0 :: v_dual_add_nc_u32 v17, 29, v15
	v_add3_u32 v14, s8, s9, v198
	s_lshl_b32 s8, s21, 8
	v_mul_lo_u32 v2, s56, v2
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v17, s33, v17
	v_dual_mov_b32 v138, 0 :: v_dual_lshlrev_b32 v173, 1, v9
	v_subrev_nc_u32_e32 v14, s8, v14
	v_dual_mov_b32 v136, 0 :: v_dual_add_nc_u32 v9, 25, v15
	s_mul_i32 s7, s7, s33
	v_mul_lo_u32 v1, s56, v1
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v154, 0 :: v_dual_lshlrev_b32 v217, 1, v14
	v_mul_lo_u32 v14, s33, v15
	v_dual_mov_b32 v205, 0 :: v_dual_lshlrev_b32 v10, 1, v8
	s_lshl_b32 s7, s7, 1
	v_mul_lo_u32 v0, s56, v0
	v_mul_lo_u32 v9, s33, v9
	v_add3_u32 v16, s7, s9, v198
	s_add_i32 s7, s9, s33
	v_dual_mov_b32 v151, 0 :: v_dual_lshlrev_b32 v170, 1, v2
	v_add3_u32 v14, s7, v14, v10
	v_add3_u32 v2, v17, s9, v10
	v_dual_mov_b32 v148, 0 :: v_dual_lshlrev_b32 v171, 1, v1
	v_mul_lo_u32 v1, s33, v22
	v_dual_mov_b32 v149, 0 :: v_dual_lshlrev_b32 v172, 1, v0
	v_subrev_nc_u32_e32 v0, s8, v14
	v_subrev_nc_u32_e32 v2, s8, v2
	v_add3_u32 v9, v9, s9, v10
	v_or_b32_e32 v14, 14, v22
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v147, 0 :: v_dual_add_nc_u32 v0, 1, v0
	v_dual_mov_b32 v160, 0 :: v_dual_lshlrev_b32 v1, 1, v1
	v_dual_mov_b32 v141, 0 :: v_dual_add_nc_u32 v2, 1, v2
	v_subrev_nc_u32_e32 v9, s8, v9
	s_clause 0x3                            ; 20-byte Folded Spill
	scratch_store_b32 off, v0, off offset:140
	scratch_store_b32 off, v1, off offset:144
	scratch_store_b32 off, v22, off offset:136
	scratch_store_b64 off, v[202:203], off offset:128
	v_or_b32_e32 v1, 12, v22
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v9, 1, v9
	scratch_store_b32 off, v2, off offset:148 ; 4-byte Folded Spill
	v_mul_lo_u32 v2, s33, v14
	v_subrev_nc_u32_e32 v16, s8, v16
	v_dual_mov_b32 v145, 0 :: v_dual_add_nc_u32 v0, 21, v15
	v_mul_lo_u32 v1, s33, v1
	v_dual_mov_b32 v137, 0 :: v_dual_add_nc_u32 v14, 17, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v150, 0 :: v_dual_lshlrev_b32 v169, 1, v16
	v_mul_lo_u32 v0, s33, v0
	v_or_b32_e32 v16, 10, v22
	v_dual_mov_b32 v135, 0 :: v_dual_lshlrev_b32 v2, 1, v2
	v_mul_lo_u32 v14, s33, v14
	v_dual_mov_b32 v74, 0 :: v_dual_lshlrev_b32 v1, 1, v1
	scratch_store_b32 off, v2, off offset:152 ; 4-byte Folded Spill
	v_mul_lo_u32 v2, s33, v16
	v_add3_u32 v0, v0, s9, v10
	v_mov_b32_e32 v213, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v218, 0
	v_mov_b32_e32 v67, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_subrev_nc_u32_e32 v0, s8, v0
	v_dual_mov_b32 v207, 0 :: v_dual_add_nc_u32 v16, 13, v15
	v_lshlrev_b32_e32 v2, 1, v2
	scratch_store_b32 off, v1, off offset:160 ; 4-byte Folded Spill
	v_add3_u32 v1, v14, s9, v10
	v_add_nc_u32_e32 v0, 1, v0
	scratch_store_b32 off, v9, off offset:156 ; 4-byte Folded Spill
	v_mul_lo_u32 v9, s33, v16
	v_mov_b32_e32 v95, 0
	v_subrev_nc_u32_e32 v1, s8, v1
	v_mov_b32_e32 v73, 0
	v_or_b32_e32 v14, 8, v22
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_lshl_or_b32 v167, s57, 8, v10
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_or_b32_e32 v16, 2, v22
	v_add_nc_u32_e32 v1, 1, v1
	scratch_store_b32 off, v0, off offset:164 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 9, v15
	v_add3_u32 v9, v9, s9, v10
	v_dual_mov_b32 v161, 0 :: v_dual_and_b32 v4, 0x70, v11
	scratch_store_b32 off, v1, off offset:172 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s33, v0
	v_subrev_nc_u32_e32 v9, s8, v9
	v_mov_b32_e32 v91, 0
	v_bfe_i32 v5, v198, 3, 1
	v_xor_b32_e32 v6, v6, v8
	v_dual_mov_b32 v155, 0 :: v_dual_add_nc_u32 v20, 48, v21
	v_dual_mov_b32 v159, 0 :: v_dual_lshlrev_b32 v8, 1, v198
	v_add3_u32 v0, v0, s9, v10
	v_mov_b32_e32 v113, 0
	v_mov_b32_e32 v97, 0
	v_and_or_b32 v4, 0x88, v5, v4
	v_mov_b32_e32 v93, 0
	v_subrev_nc_u32_e32 v0, s8, v0
	v_dual_mov_b32 v99, 0 :: v_dual_lshlrev_b32 v12, 2, v204
	v_mov_b32_e32 v51, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v131, 0 :: v_dual_add_nc_u32 v0, 1, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:168
	scratch_store_b32 off, v198, off offset:252
	v_add_nc_u32_e32 v2, 5, v15
	v_or_b32_e32 v15, 4, v22
	scratch_store_b32 off, v0, off offset:188 ; 4-byte Folded Spill
	v_mov_b32_e32 v119, 0
	v_xor_b32_e32 v7, 8, v4
	v_mul_lo_u32 v1, s33, v2
	v_mul_lo_u32 v2, s33, v14
	v_or_b32_e32 v14, 6, v22
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v130, 0 :: v_dual_and_b32 v13, 28, v8
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v14, s33, v14
	v_add3_u32 v1, v1, s9, v10
	v_mul_lo_u32 v10, s33, v15
	v_lshlrev_b32_e32 v2, 1, v2
	v_mul_lo_u32 v15, s33, v16
	v_mov_b32_e32 v140, 0
	v_subrev_nc_u32_e32 v1, s8, v1
	v_mov_b32_e32 v129, 0
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v19, 32, v21
	v_lshlrev_b32_e32 v0, 1, v10
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:176
	scratch_store_b32 off, v199, off offset:256
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v2, 1, v9
	scratch_store_b32 off, v0, off offset:192 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 1, v1
	v_dual_mov_b32 v157, 0 :: v_dual_add_nc_u32 v18, 16, v21
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v2, off offset:180
	scratch_store_b32 off, v20, off offset:268
	scratch_store_b32 off, v0, off offset:196
	v_lshlrev_b32_e32 v2, 1, v14
	v_lshlrev_b32_e32 v0, 1, v15
	v_lshrrev_b32_e32 v5, 1, v198
	v_dual_mov_b32 v162, 0 :: v_dual_add_nc_u32 v3, 0, v202
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v2, off offset:184
	scratch_store_b32 off, v204, off offset:272
	scratch_store_b32 off, v0, off offset:200
	v_add_nc_u32_e32 v0, 0, v6
	scratch_store_b32 off, v56, off offset:276 ; 4-byte Folded Spill
	v_dual_mov_b32 v158, 0 :: v_dual_and_b32 v5, 0x70, v5
	.loc	1 1180 33                       ; ragged.py:1180:33
	s_mov_b32 s20, 0
	scratch_store_b32 off, v0, off offset:204 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v4
	scratch_store_b32 off, v11, off offset:284 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v11, 5, v198
	s_mov_b32 s21, s20
	s_mov_b32 s22, s20
	scratch_store_b32 off, v0, off offset:208 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v7
	v_and_b32_e32 v11, 32, v11
	s_mov_b32 s23, s20
	s_mov_b32 s24, s20
	s_mov_b32 s25, s20
	scratch_store_b32 off, v0, off offset:212 ; 4-byte Folded Spill
	v_add3_u32 v11, 0, v12, v11
	v_dual_mov_b32 v139, 0 :: v_dual_lshlrev_b32 v12, 1, v204
	s_mov_b32 s26, s20
	s_mov_b32 s27, s20
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v0, v11, v13
	v_dual_mov_b32 v98, 0 :: v_dual_add_nc_u32 v193, 0, v8
	v_dual_mov_b32 v133, 0 :: v_dual_add_nc_u32 v194, v3, v5
	scratch_store_b32 off, v0, off offset:216 ; 4-byte Folded Spill
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mad_u64_u32 v[0:1], null, v20, s58, v[202:203]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[0:1], off offset:220
	scratch_store_b32 off, v19, off offset:264
	v_mad_u64_u32 v[0:1], null, v19, s58, v[202:203]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[0:1], off offset:228
	scratch_store_b32 off, v18, off offset:260
	v_mad_u64_u32 v[0:1], null, v18, s58, v[202:203]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[0:1], off offset:236
	scratch_store_b32 off, v21, off offset:280
	v_mad_u64_u32 v[0:1], null, v21, s58, v[202:203]
	v_mov_b32_e32 v112, 0
	v_dual_mov_b32 v143, 0 :: v_dual_add_nc_u32 v196, 0, v12
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v115, 0
	scratch_store_b64 off, v[0:1], off offset:244 ; 8-byte Folded Spill
	v_dual_mov_b32 v1, s20 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v225, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v226, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v3, s22 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v5, s24 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v7, s26 :: v_dual_mov_b32 v90, 0
	v_mov_b32_e32 v88, 0
	v_mov_b32_e32 v60, 0
	v_mov_b32_e32 v62, 0
	v_mov_b32_e32 v54, 0
	v_mov_b32_e32 v52, 0
	v_mov_b32_e32 v224, 0
	v_mov_b32_e32 v80, 0
	v_mov_b32_e32 v82, 0
	v_mov_b32_e32 v64, 0
	v_mov_b32_e32 v58, 0
	v_mov_b32_e32 v206, 0
	v_mov_b32_e32 v66, 0
	v_mov_b32_e32 v2, s21
	v_mov_b32_e32 v4, s23
	v_mov_b32_e32 v6, s25
	v_mov_b32_e32 v8, s27
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_and_b32 s15, s15, 0xffff
	s_and_b32 s17, s17, 0xffff
	s_add_u32 s60, s59, s33
	s_and_b32 s49, s19, 0xffff
	s_lshl_b32 s61, s33, 2
	s_lshl_b32 s62, s33, 5
	s_mov_b32 s36, s12
	s_mov_b32 s37, s13
	s_mov_b32 s40, s14
	s_mov_b32 s41, s15
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_mov_b32 s44, s16
	s_mov_b32 s45, s17
	s_mov_b32 s46, s38
	s_mov_b32 s47, s39
	s_mov_b32 s48, s18
	s_mov_b32 s50, s38
	s_mov_b32 s51, s39
	s_mov_b32 s17, s20
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_delay_alu instid0(SALU_CYCLE_1)
	v_add_nc_u32_e32 v0, s17, v202
	s_clause 0x15                           ; 88-byte Folded Spill
	scratch_store_b32 off, v119, off offset:84
	scratch_store_b32 off, v209, off offset:80
	scratch_store_b32 off, v210, off offset:76
	scratch_store_b32 off, v49, off offset:72
	scratch_store_b32 off, v207, off offset:68
	scratch_store_b32 off, v117, off offset:64
	scratch_store_b32 off, v86, off offset:60
	scratch_store_b32 off, v160, off offset:56
	scratch_store_b32 off, v79, off offset:52
	scratch_store_b32 off, v64, off offset:48
	scratch_store_b32 off, v153, off offset:44
	scratch_store_b32 off, v87, off offset:40
	scratch_store_b32 off, v54, off offset:36
	scratch_store_b32 off, v48, off offset:32
	scratch_store_b32 off, v94, off offset:28
	scratch_store_b32 off, v95, off offset:24
	scratch_store_b32 off, v120, off offset:20
	scratch_store_b32 off, v55, off offset:16
	scratch_store_b32 off, v53, off offset:12
	scratch_store_b32 off, v52, off offset:8
	scratch_store_b32 off, v57, off offset:4
	scratch_store_b32 off, v67, off
	v_mov_b32_e32 v207, v163
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:200
	scratch_load_b32 v16, off, off offset:152
	v_cmp_gt_i32_e64 s15, s58, v0
	scratch_load_b32 v0, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_add_i32 s56, s56, -1
	v_mov_b32_e32 v163, v147
	v_mov_b32_e32 v147, v144
	s_and_b32 s16, s5, s15
	v_dual_mov_b32 v198, v130 :: v_dual_mov_b32 v199, v89
	v_mov_b32_e32 v130, v69
	v_mov_b32_e32 v168, v84
	v_mov_b32_e32 v84, v68
	v_mov_b32_e32 v144, v143
	v_mov_b32_e32 v160, v110
	v_mov_b32_e32 v110, v98
	v_dual_mov_b32 v98, v70 :: v_dual_mov_b32 v197, v88
	scratch_load_b64 v[17:18], off, off offset:244 ; 8-byte Folded Reload
	v_dual_mov_b32 v200, v139 :: v_dual_mov_b32 v139, v114
	v_dual_mov_b32 v114, v77 :: v_dual_mov_b32 v77, v58
	v_mov_b32_e32 v190, v78
	v_dual_mov_b32 v78, v59 :: v_dual_mov_b32 v89, v61
	v_mov_b32_e32 v88, v60
	v_dual_mov_b32 v143, v144 :: v_dual_mov_b32 v144, v147
	v_dual_mov_b32 v204, v62 :: v_dual_mov_b32 v153, v63
	v_mov_b32_e32 v147, v163
	v_mov_b32_e32 v163, v207
	s_waitcnt vmcnt(3)
	v_add3_u32 v228, v9, s20, v167
	s_waitcnt vmcnt(2)
	v_add3_u32 v203, v16, s20, v167
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v0, s17, v0
	v_add_nc_u32_e32 v10, s59, v228
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v16, s59, v203
	v_add_nc_u32_e32 v9, 2, v0
	v_cmp_gt_i32_e64 s14, s58, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_gt_i32_e64 s13, s58, v9
	scratch_load_b32 v9, off, off offset:192 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v10, 0x80000000, v10, s13
	s_waitcnt vmcnt(0)
	v_add3_u32 v229, v9, s20, v167
	v_add_nc_u32_e32 v9, 4, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v11, s59, v229
	v_cmp_gt_i32_e64 s12, s58, v9
	scratch_load_b32 v9, off, off offset:184 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v11, 0x80000000, v11, s12
	s_waitcnt vmcnt(0)
	v_add3_u32 v231, v9, s20, v167
	v_add_nc_u32_e32 v9, 6, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v12, s59, v231
	v_cmp_gt_i32_e64 s11, s58, v9
	scratch_load_b32 v9, off, off offset:176 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v12, 0x80000000, v12, s11
	s_waitcnt vmcnt(0)
	v_add3_u32 v210, v9, s20, v167
	v_add_nc_u32_e32 v9, 8, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v13, s59, v210
	v_cmp_gt_i32_e64 s10, s58, v9
	scratch_load_b32 v9, off, off offset:168 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v13, 0x80000000, v13, s10
	s_waitcnt vmcnt(0)
	v_add3_u32 v201, v9, s20, v167
	v_add_nc_u32_e32 v9, 10, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v14, s59, v201
	v_cmp_gt_i32_e64 s9, s58, v9
	scratch_load_b32 v9, off, off offset:160 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v14, 0x80000000, v14, s9
	s_waitcnt vmcnt(0)
	v_add3_u32 v202, v9, s20, v167
	v_add_nc_u32_e32 v9, 12, v0
	v_add_nc_u32_e32 v0, 14, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v15, s59, v202
	v_cmp_gt_i32_e64 s7, s58, v9
	scratch_load_b32 v9, off, off offset:144 ; 4-byte Folded Reload
	v_cmp_gt_i32_e64 s8, s58, v0
	v_cndmask_b32_e64 v15, 0x80000000, v15, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v16, 0x80000000, v16, s8
	s_waitcnt vmcnt(0)
	v_add3_u32 v248, v9, s20, v167
	v_add_nc_u32_e32 v9, s59, v248
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v9, s14
	v_add_nc_u32_e32 v9, s17, v17
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[17:18], off, off offset:236
	scratch_load_b64 v[18:19], off, off offset:228
	scratch_load_b64 v[19:20], off, off offset:220
	v_cndmask_b32_e64 v9, 0x80000000, v9, s16
	s_and_b32 s16, s4, s15
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v17, s17, v17
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v18, s17, v18
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v19, s17, v19
	s_add_i32 s17, s17, 16
	v_cndmask_b32_e64 v17, 0x80000000, v17, s16
	s_and_b32 s16, s3, s15
	s_and_b32 s15, s2, s15
	v_cndmask_b32_e64 v18, 0x80000000, v18, s16
	v_cndmask_b32_e64 v19, 0x80000000, v19, s15
	.loc	1 1155 34 is_stmt 1             ; ragged.py:1155:34
	s_clause 0x3
	buffer_load_u8 v9, v9, s[36:39], 0 offen
	buffer_load_u8 v17, v17, s[36:39], 0 offen
	buffer_load_u8 v18, v18, s[36:39], 0 offen
	buffer_load_u8 v19, v19, s[36:39], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x7
	buffer_load_u16 v0, v0, s[40:43], 0 offen
	buffer_load_u16 v25, v10, s[40:43], 0 offen
	buffer_load_u16 v26, v11, s[40:43], 0 offen
	buffer_load_u16 v27, v12, s[40:43], 0 offen
	buffer_load_u16 v28, v13, s[40:43], 0 offen
	buffer_load_u16 v29, v14, s[40:43], 0 offen
	buffer_load_u16 v30, v15, s[40:43], 0 offen
	buffer_load_u16 v31, v16, s[40:43], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v10, off, off offset:204 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v10, v9
	ds_store_b8 v10, v17 offset:256
	ds_store_b8 v10, v18 offset:512
	ds_store_b8 v10, v19 offset:768
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:208
	scratch_load_b32 v13, off, off offset:212
	s_waitcnt vmcnt(1)
	ds_load_2addr_b64 v[17:20], v9 offset1:32
	ds_load_2addr_b64 v[9:12], v9 offset0:64 offset1:96
	s_waitcnt vmcnt(0)
	ds_load_2addr_b64 v[21:24], v13 offset1:32
	ds_load_2addr_b64 v[13:16], v13 offset0:64 offset1:96
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v193, v0
	ds_store_b16 v193, v25 offset:512
	ds_store_b16 v193, v26 offset:1024
	ds_store_b16 v193, v27 offset:1536
	ds_store_b16 v193, v28 offset:2048
	ds_store_b16 v193, v29 offset:2560
	ds_store_b16 v193, v30 offset:3072
	ds_store_b16 v193, v31 offset:3584
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v0, v194 offset:1280
	ds_load_u8 v25, v194 offset:1024
	ds_load_u8 v33, v194 offset:1920
	ds_load_u8 v34, v194 offset:1664
	ds_load_u8 v35, v194 offset:1408
	ds_load_u8 v36, v194 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v25, v0, 0xc0c0004
	ds_load_u8 v25, v194 offset:1792
	ds_load_u8 v26, v194 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v194 offset:256
	ds_load_u8 v27, v194
	ds_load_u8 v37, v194 offset:896
	ds_load_u8 v38, v194 offset:640
	ds_load_u8 v39, v194 offset:384
	ds_load_u8 v40, v194 offset:128
	v_lshl_or_b32 v42, v25, 16, v0
	ds_load_u8 v0, v194 offset:3328
	ds_load_u8 v25, v194 offset:3072
	ds_load_u8 v48, v194 offset:3968
	ds_load_u8 v49, v194 offset:3712
	ds_load_u8 v52, v194 offset:3456
	ds_load_u8 v53, v194 offset:3200
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v194 offset:768
	ds_load_u8 v28, v194 offset:512
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v0, v25, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v27, 16, v26
	ds_load_u8 v25, v194 offset:3840
	ds_load_u8 v26, v194 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v194 offset:2304
	ds_load_u8 v27, v194 offset:2048
	ds_load_u8 v54, v194 offset:2944
	ds_load_u8 v55, v194 offset:2688
	ds_load_u8 v56, v194 offset:2432
	ds_load_u8 v57, v194 offset:2176
	v_lshl_or_b32 v45, v25, 16, v0
	v_perm_b32 v0, v36, v35, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v194 offset:2816
	ds_load_u8 v28, v194 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v44, v27, 16, v26
	v_wmma_i32_16x16x16_iu4 v[25:32], v[41:42], v[17:18], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[44:45], v[21:22], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v67, v26
	v_cvt_f32_i32_e32 v94, v27
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v95, v28
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v26, v34, v33, 0xc0c0004
	v_perm_b32 v27, v40, v39, 0xc0c0004
	v_perm_b32 v28, v38, v37, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v79, v29
	v_cvt_f32_i32_e32 v86, v30
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v47, v26, 16, v0
	v_perm_b32 v0, v53, v52, 0xc0c0004
	v_lshl_or_b32 v46, v28, 16, v27
	v_perm_b32 v26, v49, v48, 0xc0c0004
	v_perm_b32 v27, v57, v56, 0xc0c0004
	v_perm_b32 v28, v55, v54, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v87, v31
	v_cvt_f32_i32_e32 v120, v32
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v53, v26, 16, v0
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v25, v25
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v52, v28, 16, v27
	v_wmma_i32_16x16x16_iu4 v[26:33], v[46:47], v[17:18], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[174:181], v[46:47], v[9:10], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[26:33], v[52:53], v[21:22], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[174:181], v[52:53], v[13:14], v[174:181] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v31
	v_cvt_f32_i32_e32 v209, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v223, v179
	v_cvt_f32_i32_e32 v221, v180
	v_cvt_f32_i32_e32 v219, v181
	scratch_store_b32 off, v0, off offset:96 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v32
	v_cvt_f32_i32_e32 v237, v175
	v_cvt_f32_i32_e32 v236, v176
	v_cvt_f32_i32_e32 v234, v177
	v_cvt_f32_i32_e32 v227, v178
	scratch_store_b32 off, v0, off offset:92 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v33
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[175:182], v[41:42], v[11:12], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v230, v174
	scratch_store_b32 off, v0, off offset:88 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v27
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[175:182], v[44:45], v[15:16], v[175:182] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:108 ; 4-byte Folded Spill
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v28
	v_cvt_f32_i32_e32 v174, v176
	v_cvt_f32_i32_e32 v166, v178
	v_cvt_f32_i32_e32 v164, v179
	v_cvt_f32_i32_e32 v165, v181
	scratch_store_b32 off, v0, off offset:112 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v29
	v_cvt_f32_i32_e32 v175, v175
	scratch_store_b32 off, v0, off offset:104 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v30
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[26:33], v[41:42], v[19:20], v[1:8] neg_lo:[1,1,0]
	scratch_store_b32 off, v0, off offset:100 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu4 v[26:33], v[44:45], v[23:24], v[26:33] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v246, v26
	v_cvt_f32_i32_e32 v245, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v244, v28
	v_cvt_f32_i32_e32 v243, v29
	v_cvt_f32_i32_e32 v241, v30
	v_cvt_f32_i32_e32 v240, v31
	v_cvt_f32_i32_e32 v239, v32
	v_cvt_f32_i32_e32 v238, v33
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[26:33], v[46:47], v[19:20], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[26:33], v[52:53], v[23:24], v[26:33] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v119, v30
	scratch_load_b32 v30, off, off offset:140 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v0, v31
	v_cvt_f32_i32_e32 v64, v29
	v_add_nc_u32_e32 v29, s60, v231
	v_cvt_f32_i32_e32 v220, v28
	v_add_nc_u32_e32 v28, s60, v229
	scratch_store_b32 off, v0, off offset:120 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v32
	v_cvt_f32_i32_e32 v222, v27
	v_add_nc_u32_e32 v27, s60, v228
	v_cvt_f32_i32_e32 v117, v26
	v_add_nc_u32_e32 v26, s60, v248
	scratch_store_b32 off, v0, off offset:116 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v33
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[33:40], v[41:42], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_cndmask_b32_e64 v29, 0x80000000, v29, s11
	v_cndmask_b32_e64 v28, 0x80000000, v28, s12
	v_cndmask_b32_e64 v27, 0x80000000, v27, s13
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[44:45], v[13:14], v[33:40] neg_lo:[1,1,0]
	v_cndmask_b32_e64 v26, 0x80000000, v26, s14
	.loc	1 1201 27                       ; ragged.py:1201:27
	scratch_store_b32 off, v0, off offset:124 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v177
	v_cvt_f32_i32_e32 v254, v38
	scratch_load_b32 v38, off, off offset:172 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v255, v37
	v_cvt_f32_i32_e32 v253, v39
	v_cvt_f32_i32_e32 v32, v34
	v_cvt_f32_i32_e32 v31, v35
	v_cvt_f32_i32_e32 v35, v36
	v_cvt_f32_i32_e32 v252, v40
	v_cvt_f32_i32_e32 v36, v180
	v_cvt_f32_i32_e32 v34, v182
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[176:183], v[46:47], v[11:12], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[176:183], v[52:53], v[15:16], v[176:183] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v247, v176
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v235, v181
	v_cvt_f32_i32_e32 v233, v182
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v232, v183
	v_cvt_f32_i32_e32 v251, v177
	v_cvt_f32_i32_e32 v250, v178
	v_cvt_f32_i32_e32 v249, v179
	v_cvt_f32_i32_e32 v242, v180
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v30, s20, v30
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v30, 0x80000000, v30, s14
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x4
	buffer_load_u8 v30, v30, s[40:43], 0 offen
	buffer_load_u8 v29, v29, s[40:43], 0 offen
	buffer_load_u8 v28, v28, s[40:43], 0 offen
	buffer_load_u8 v27, v27, s[40:43], 0 offen
	buffer_load_u8 v37, v26, s[40:43], 0 offen
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v38, s20, v38
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v38, 0x80000000, v38, s10
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v26.l, 8, v30.l
	scratch_load_b32 v30, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_or_b16 v26.l, v37.l, v26.l
	v_add_nc_u32_e32 v37, s60, v203
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v37, 0x80000000, v37, s8
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v30, s20, v30
	v_cndmask_b32_e64 v30, 0x80000000, v30, s13
	buffer_load_u8 v30, v30, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v26.h, 8, v30.l
	v_add_nc_u32_e32 v30, s60, v202
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_or_b16 v26.h, v27.l, v26.h
	scratch_load_b32 v27, off, off offset:188 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v30, 0x80000000, v30, s7
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v27, s20, v27
	v_cndmask_b32_e64 v27, 0x80000000, v27, s12
	buffer_load_u8 v27, v27, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v27.l, 8, v27.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v27.l, v28.l, v27.l
	scratch_load_b32 v28, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v28, s20, v28
	v_cndmask_b32_e64 v28, 0x80000000, v28, s11
	buffer_load_u8 v28, v28, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v27.h, 8, v28.l
	v_add_nc_u32_e32 v28, s60, v210
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v27.h, v29.l, v27.h
	v_add_nc_u32_e32 v29, s60, v201
	v_cndmask_b32_e64 v28, 0x80000000, v28, s10
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v29, 0x80000000, v29, s9
	s_clause 0x4
	buffer_load_u8 v38, v38, s[40:43], 0 offen
	buffer_load_u8 v37, v37, s[40:43], 0 offen
	buffer_load_u8 v30, v30, s[40:43], 0 offen
	buffer_load_u8 v29, v29, s[40:43], 0 offen
	buffer_load_u8 v39, v28, s[40:43], 0 offen
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v28.l, 8, v38.l
	scratch_load_b32 v38, off, off offset:164 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_or_b16 v28.l, v39.l, v28.l
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, s20, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v38, 0x80000000, v38, s9
	buffer_load_u8 v38, v38, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v28.h, 8, v38.l
	v_or_b16 v28.h, v29.l, v28.h
	scratch_load_b32 v29, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v29, s20, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v29, 0x80000000, v29, s7
	buffer_load_u8 v29, v29, s[40:43], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v29.l, 8, v29.l
	v_or_b16 v29.l, v30.l, v29.l
	scratch_load_b32 v30, off, off offset:148 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v30, s20, v30
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_add_i32 s20, s20, s62
	s_cmp_lg_u32 s56, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v30, 0x80000000, v30, s8
	.loc	1 1185 39                       ; ragged.py:1185:39
	buffer_load_u8 v30, v30, s[40:43], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	v_lshlrev_b16 v29.h, 8, v30.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v29.h, v37.l, v29.h
	ds_store_b16 v193, v26
	ds_store_b16_d16_hi v193, v26 offset:512
	ds_store_b16 v193, v27 offset:1024
	ds_store_b16_d16_hi v193, v27 offset:1536
	ds_store_b16 v193, v28 offset:2048
	ds_store_b16_d16_hi v193, v28 offset:2560
	ds_store_b16 v193, v29 offset:3072
	ds_store_b16_d16_hi v193, v29 offset:3584
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v26, v194 offset:1280
	ds_load_u8 v27, v194 offset:1024
	ds_load_u8 v28, v194 offset:1920
	ds_load_u8 v29, v194 offset:1664
	ds_load_u8 v30, v194 offset:1408
	ds_load_u8 v37, v194 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v194 offset:1792
	ds_load_u8 v38, v194 offset:1536
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v30, v37, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v69, v28, 16, v30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v38, v27, 0xc0c0004
	ds_load_u8 v38, v194 offset:256
	ds_load_u8 v39, v194
	ds_load_u8 v40, v194 offset:896
	ds_load_u8 v41, v194 offset:640
	ds_load_u8 v42, v194 offset:384
	ds_load_u8 v46, v194 offset:128
	v_lshl_or_b32 v45, v27, 16, v26
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	ds_load_u8 v39, v194 offset:768
	ds_load_u8 v44, v194 offset:512
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v37, v41, v40, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v29, v46, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v68, v37, 16, v29
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v44, v39, 0xc0c0004
	v_lshl_or_b32 v44, v39, 16, v38
	ds_load_u8 v26, v194 offset:3328
	ds_load_u8 v27, v194 offset:3072
	ds_load_u8 v38, v194 offset:3968
	ds_load_u8 v39, v194 offset:3712
	ds_load_u8 v47, v194 offset:3456
	ds_load_u8 v52, v194 offset:3200
	v_wmma_i32_16x16x16_iu4 v[176:183], v[44:45], v[17:18], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v194 offset:3840
	ds_load_u8 v48, v194 offset:3584
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v29, v39, v38, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v28, v52, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v71, v29, 16, v28
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v48, v27, 0xc0c0004
	ds_load_u8 v48, v194 offset:2304
	ds_load_u8 v49, v194 offset:2048
	ds_load_u8 v53, v194 offset:2944
	ds_load_u8 v54, v194 offset:2688
	ds_load_u8 v55, v194 offset:2432
	ds_load_u8 v56, v194 offset:2176
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	ds_load_u8 v49, v194 offset:2816
	ds_load_u8 v57, v194 offset:2560
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v37, v54, v53, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v30, v56, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v70, v37, 16, v30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v57, v49, 0xc0c0004
	v_lshl_or_b32 v49, v27, 16, v26
	v_lshl_or_b32 v48, v57, 16, v48
	v_wmma_i32_16x16x16_iu4 v[56:63], v[68:69], v[9:10], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[176:183], v[48:49], v[21:22], v[176:183] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[70:71], v[13:14], v[56:63] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v208, v176
	v_cvt_f32_i32_e32 v27, v177
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v26, v178
	v_cvt_f32_i32_e32 v189, v179
	v_cvt_f32_i32_e32 v188, v180
	v_cvt_f32_i32_e32 v187, v181
	v_cvt_f32_i32_e32 v186, v182
	v_cvt_f32_i32_e32 v185, v183
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[176:183], v[68:69], v[17:18], v[1:8] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v248, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[176:183], v[70:71], v[21:22], v[176:183] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v184, v176
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v17, v181
	v_cvt_f32_i32_e32 v18, v182
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v21, v183
	v_cvt_f32_i32_e32 v203, v177
	v_cvt_f32_i32_e32 v202, v178
	v_cvt_f32_i32_e32 v201, v179
	v_cvt_f32_i32_e32 v22, v180
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[176:183], v[44:45], v[19:20], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[176:183], v[48:49], v[23:24], v[176:183] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v54, v176
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v53, v177
	v_cvt_f32_i32_e32 v52, v178
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v47, v179
	v_cvt_f32_i32_e32 v192, v180
	v_cvt_f32_i32_e32 v191, v181
	v_cvt_f32_i32_e32 v29, v182
	v_cvt_f32_i32_e32 v28, v183
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[176:183], v[68:69], v[19:20], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[176:183], v[70:71], v[23:24], v[176:183] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v210, v176
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v19, v181
	v_cvt_f32_i32_e32 v20, v182
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v23, v183
	v_cvt_f32_i32_e32 v231, v177
	v_cvt_f32_i32_e32 v229, v178
	v_cvt_f32_i32_e32 v228, v179
	v_cvt_f32_i32_e32 v24, v180
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[176:183], v[44:45], v[9:10], v[1:8] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v9, v61
	v_cvt_f32_i32_e32 v10, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[176:183], v[48:49], v[13:14], v[176:183] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v13, v63
	v_cvt_f32_i32_e32 v14, v60
	v_cvt_f32_i32_e32 v42, v176
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v41, v177
	v_cvt_f32_i32_e32 v40, v178
	v_cvt_f32_i32_e32 v178, v57
	v_cvt_f32_i32_e32 v177, v58
	v_cvt_f32_i32_e32 v176, v59
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[56:63], v[44:45], v[11:12], v[1:8] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v55, v179
	v_cvt_f32_i32_e32 v30, v182
	v_cvt_f32_i32_e32 v38, v180
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[56:63], v[48:49], v[15:16], v[56:63] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v37, v181
	v_cvt_f32_i32_e32 v195, v183
	v_cvt_f32_i32_e32 v48, v56
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v49, v57
	v_cvt_f32_i32_e32 v43, v58
	v_cvt_f32_i32_e32 v215, v59
	v_cvt_f32_i32_e32 v46, v60
	v_cvt_f32_i32_e32 v45, v61
	v_cvt_f32_i32_e32 v44, v62
	v_cvt_f32_i32_e32 v39, v63
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[56:63], v[68:69], v[11:12], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[56:63], v[70:71], v[15:16], v[56:63] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v179, v56
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v182, v57
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e32 v56, 0x80000000, v173, vcc_lo
	v_cndmask_b32_e64 v57, 0x80000000, v172, s0
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v11, v61
	v_cvt_f32_i32_e32 v12, v62
	v_cvt_f32_i32_e32 v15, v63
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x1
	buffer_load_u16 v56, v56, s[44:47], 0 offen
	buffer_load_u16 v68, v57, s[44:47], 0 offen
	v_cndmask_b32_e64 v57, 0x80000000, v171, s1
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v181, v58
	v_cvt_f32_i32_e32 v180, v59
	v_cvt_f32_i32_e32 v16, v60
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v172, 2, v172
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v69, v57, s[44:47], 0 offen
	v_cndmask_b32_e64 v57, 0x80000000, v170, s6
	buffer_load_u16 v70, v57, s[44:47], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v57, v169, s[48:51], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v71, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v170, 2, v170
	v_add_nc_u32_e32 v171, 2, v171
	v_add_nc_u32_e32 v173, 2, v173
	v_add_nc_u32_e32 v169, s61, v169
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v183, 16, v56
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v25, v183, v25
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v57, 16, v57
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v71, v57
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[56:59], v196
	ds_load_b128 v[60:63], v196 offset:16
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v68, 16, v68
	v_lshlrev_b32_e32 v69, 16, v69
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v143, v25, v56
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v25, v183, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v144, v25, v57 :: v_dual_mul_f32 v25, v183, v94
	v_dual_fmac_f32 v146, v25, v58 :: v_dual_mul_f32 v25, v183, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v142, v25, v59 :: v_dual_mul_f32 v25, v68, v246
	v_dual_fmac_f32 v226, v25, v56 :: v_dual_mul_f32 v25, v68, v245
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v101, v25, v57
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v25, v68, v244
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v127, v25, v58
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v25, v68, v243
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v19, v19, v68
	v_mul_f32_e32 v20, v20, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v122, v25, v59
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v25, v69, v33
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v225, v25, v56
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v25, v69, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v104, v25, v57
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v25, v69, v31
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v106, v25, v58
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v25, v69, v35
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v35, 16, v70
	v_mov_b32_e32 v70, v98
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v69, v14
	v_mul_f32_e32 v10, v10, v69
	v_mov_b32_e32 v98, v110
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v35, v0
	v_dual_mov_b32 v110, v160 :: v_dual_mul_f32 v13, v13, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v9, v9, v69 :: v_dual_fmac_f32 v82, v0, v58
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v35, v166
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v81, v0, v59
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v183, v79
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v129, v0, v60 :: v_dual_mul_f32 v0, v183, v86
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v86, off, off offset:60
	scratch_load_b32 v160, off, off offset:56
	v_fmac_f32_e32 v128, v0, v61
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v183, v87
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v105, v25, v59
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v25, v35, v175
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v207, off, off offset:68
	scratch_load_b32 v87, off, off offset:40
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v118, v0, v62
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v183, v120
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v132, v0, v63
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v68, v241
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v224, v25, v56 :: v_dual_mul_f32 v25, v35, v174
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v16, v35, v16
	v_mul_f32_e32 v11, v11, v35
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v113, v0, v60
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v0, v68, v240 :: v_dual_mul_f32 v15, v15, v35
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v12, v12, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v92, v0, v61
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v68, v239
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v80, v25, v57 :: v_dual_fmac_f32 v93, v0, v62
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v68, v238
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v216, v0, v63
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v69, v255
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v214, v0, v60
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v69, v254
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v96, v0, v61
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v69, v253
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v70, v0, v62
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v69, v252
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v99, v0, v63 :: v_dual_mul_f32 v0, v35, v164
	v_fmac_f32_e32 v213, v0, v60
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v35, v36
	v_mov_b32_e32 v60, v88
	v_mov_b32_e32 v88, v197
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v72, v0, v61
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v0, v35, v165 :: v_dual_mov_b32 v61, v89
	v_mov_b32_e32 v89, v199
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v73, v0, v62
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v35, v34
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[31:34], v196 offset:512
	ds_load_b128 v[56:59], v196 offset:528
	v_mov_b32_e32 v62, v204
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v74, v0, v63
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v209, v183
	v_mov_b32_e32 v63, v153
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v157, v0, v31
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v183, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v108, v0, v32
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v183, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v109, v0, v33
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v183, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v110, v0, v34
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v117, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v152, v0, v31
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v68, v222
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v212, v0, v32
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v68, v220
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v85, v0, v33
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v68, v64
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v117, off, off offset:64
	scratch_load_b32 v79, off, off offset:52
	scratch_load_b32 v64, off, off offset:48
	scratch_load_b32 v153, off, off offset:44
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v112, v0, v34
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v230, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v148, v0, v31
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v69, v237
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v60, v0, v32
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v69, v236
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v61, v0, v33 :: v_dual_mul_f32 v0, v69, v234
	v_fmac_f32_e32 v62, v0, v34
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v247, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v138, v0, v31
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v35, v251
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v206, v0, v32
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v35, v250
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v65, v0, v33
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v35, v249
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v66, v0, v34
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v183, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v111, v0, v56
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v183
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v156, v0, v57
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v155, v0, v58
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:88 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v183
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v154, v0, v59
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v68, v119
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v119, off, off offset:84
	scratch_load_b32 v209, off, off offset:80
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v87, v0, v56
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v151, v0, v57
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v68
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v150, v0, v58
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v0, off, off offset:124 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v0, v0, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v149, v0, v59
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v69, v227
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v63, v0, v56 :: v_dual_mul_f32 v0, v223, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v147, v0, v57
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v221, v69
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v145, v0, v58 :: v_dual_mul_f32 v0, v219, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v141, v0, v59 :: v_dual_mul_f32 v0, v35, v242
	v_dual_fmac_f32 v153, v0, v56 :: v_dual_mul_f32 v0, v235, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v137, v0, v57 :: v_dual_mul_f32 v0, v233, v35
	v_fmac_f32_e32 v136, v0, v58
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v232, v35
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v135, v0, v59
	.loc	1 1218 45                       ; ragged.py:1218:45
	buffer_load_u16 v0, v217, s[48:51], 0 offen
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v217, s61, v217
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v71, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[31:34], v196
	ds_load_b128 v[56:59], v196 offset:16
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v183, v208
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v134, v0, v31
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v183, v27
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v133, v0, v32 :: v_dual_mul_f32 v0, v183, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v124, v0, v33
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v183, v189
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v125, v0, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v68, v54
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v54, off, off offset:36
	scratch_load_b32 v94, off, off offset:28
	scratch_load_b32 v95, off, off offset:24
	scratch_load_b32 v120, off, off offset:20
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v121, v0, v31
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v68, v53
	scratch_load_b32 v53, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v103, v0, v32
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v68, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v102, v0, v33
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v68, v47
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v100, v0, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v69, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v209, v0, v31 :: v_dual_mul_f32 v0, v69, v41
	v_fmac_f32_e32 v107, v0, v32
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v69, v40
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v76, v0, v33
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v69, v55
	scratch_load_b32 v55, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v79, v0, v34 :: v_dual_mul_f32 v0, v35, v48
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v48, off, off offset:32
	scratch_load_b32 v52, off, off offset:8
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v55, v0, v31 :: v_dual_mul_f32 v0, v35, v49
	scratch_load_b32 v49, off, off offset:72 ; 4-byte Folded Reload
	v_fmac_f32_e32 v54, v0, v32
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v35, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v53, v0, v33 :: v_dual_mul_f32 v0, v35, v215
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v52, v0, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v183, v188
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v131, v0, v56 :: v_dual_mul_f32 v0, v183, v187
	v_dual_fmac_f32 v119, v0, v57 :: v_dual_mul_f32 v0, v183, v186
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v116, v0, v58
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v183, v185
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v117, v0, v59
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v68, v192
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v126, v0, v56
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v68, v191
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v120, v0, v57
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v68, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v95, v0, v58
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v68, v28
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v94, v0, v59
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v69, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v218, v0, v56
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v69, v37
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v98, v0, v57
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v69, v30
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[25:28], v196 offset:512
	ds_load_b128 v[29:32], v196 offset:528
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v91, v0, v58 :: v_dual_mul_f32 v0, v69, v195
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v97, v0, v59 :: v_dual_mul_f32 v0, v35, v46
	v_dual_fmac_f32 v207, v0, v56 :: v_dual_mul_f32 v0, v35, v45
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v163, v19, v30 :: v_dual_fmac_f32 v162, v20, v31
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v160, v0, v57
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v57, off, off offset:4
	scratch_load_b32 v67, off, off
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v35, v44 :: v_dual_fmac_f32 v83, v14, v29
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v50, v9, v30 :: v_dual_fmac_f32 v51, v10, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v158, v13, v32 :: v_dual_fmac_f32 v75, v0, v58
	v_mov_b32_e32 v58, v77
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v35, v39 :: v_dual_mov_b32 v77, v114
	v_dual_mov_b32 v114, v139 :: v_dual_mov_b32 v139, v200
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v139, v11, v30
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v57, v16, v29
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v67, v0, v59
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v184, v183 :: v_dual_mov_b32 v59, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v48, v0, v25
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v183, v203
	v_dual_mov_b32 v78, v190 :: v_dual_fmac_f32 v123, v0, v26
	v_mul_f32_e32 v0, v183, v202
	scratch_load_b64 v[202:203], off, off offset:128 ; 8-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v115, v0, v27 :: v_dual_mul_f32 v0, v183, v201
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v114, v0, v28
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v210, v68
	scratch_load_b32 v210, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v49, v0, v25
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v68, v231
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v86, v0, v26
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v68, v229
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v78, v0, v27
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v68, v228
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v77, v0, v28
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v248, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v159, v0, v25 :: v_dual_mul_f32 v0, v69, v178
	v_fmac_f32_e32 v90, v0, v26
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v69, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v89, v0, v27 :: v_dual_mul_f32 v0, v69, v176
	v_mov_b32_e32 v69, v130
	v_mov_b32_e32 v130, v198
	v_fmac_f32_e32 v88, v0, v28
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v179, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v130, v12, v31
	v_fmac_f32_e32 v140, v0, v25
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v35, v182
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v64, v0, v26
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v35, v181
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v59, v0, v27 :: v_dual_mul_f32 v0, v35, v180
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v58, v0, v28
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v17, v183
	v_mul_f32_e32 v17, v18, v183
	v_dual_mul_f32 v18, v21, v183 :: v_dual_mul_f32 v21, v183, v22
	v_mul_f32_e32 v22, v23, v68
	v_mul_f32_e32 v23, v68, v24
	v_mov_b32_e32 v68, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v84, v168 :: v_dual_fmac_f32 v69, v21, v29
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v211, v0, v30
	v_dual_fmac_f32 v205, v18, v32 :: v_dual_fmac_f32 v68, v23, v29
	v_fmac_f32_e32 v161, v22, v32
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v84, v15, v32
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v210, v17, v31
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x8                            ; 36-byte Folded Reload
	scratch_load_b32 v2, off, off offset:284
	scratch_load_b32 v5, off, off offset:280
	scratch_load_b32 v199, off, off offset:256
	scratch_load_b32 v200, off, off offset:260
	scratch_load_b32 v201, off, off offset:264
	scratch_load_b32 v203, off, off offset:268
	scratch_load_b32 v204, off, off offset:272
	scratch_load_b32 v56, off, off offset:276
	scratch_load_b32 v198, off, off offset:252
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v1, 8, v198
.LBB0_7:                                ; %._crit_edge
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_dual_mul_f32 v3, 0xbfb8aa3b, v48 :: v_dual_mul_f32 v0, 0xbfb8aa3b, v133
	v_dual_mul_f32 v9, 0xbfb8aa3b, v134 :: v_dual_mul_f32 v8, 0xbfb8aa3b, v205
	v_mul_f32_e32 v194, 0xbfb8aa3b, v114
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_dual_mul_f32 v3, 0xbfb8aa3b, v211 :: v_dual_mul_f32 v4, 0xbfb8aa3b, v210
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v8
	v_mul_f32_e32 v177, 0xbfb8aa3b, v76
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v4
	v_cndmask_b32_e64 v14, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v24, 0xbfb8aa3b, v117 :: v_dual_fmac_f32 v11, 0xbfb8aa3b, v48
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v8, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v14, 0xbfb8aa3b, v205 :: v_dual_mul_f32 v195, 0xbfb8aa3b, v115
	v_exp_f32_e32 v11, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v4, 0xbfb8aa3b, v211 :: v_dual_mul_f32 v27, 0xbfb8aa3b, v116
	v_dual_fmac_f32 v8, 0xbfb8aa3b, v210 :: v_dual_mul_f32 v197, 0xbfb8aa3b, v119
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v4, v4
	v_exp_f32_e32 v14, v14
	v_exp_f32_e32 v15, v8
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s0
	v_ldexp_f32 v10, v11, v10
	v_mul_f32_e32 v11, 0xbfb8aa3b, v49
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, s1
	v_dual_mul_f32 v167, 0xbfb8aa3b, v54 :: v_dual_mul_f32 v26, 0xbfb8aa3b, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v16, v4, v3
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	v_mul_f32_e32 v4, 0xbfb8aa3b, v163
	v_ldexp_f32 v12, v15, v12
	v_ldexp_f32 v13, v14, v13
	v_mul_f32_e32 v15, 0xbfb8aa3b, v161
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v14, 0xbfb8aa3b, v162
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v15
	v_dual_mul_f32 v6, 0xbfb8aa3b, v124 :: v_dual_mul_f32 v7, 0xbfb8aa3b, v125
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v49
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v14
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0x42800000, s1
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v11, v11
	v_cndmask_b32_e64 v17, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v14, 0xbfb8aa3b, v163 :: v_dual_fmac_f32 v19, 0xbfb8aa3b, v161
	v_mul_f32_e32 v186, 0xbfb8aa3b, v95
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v162
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v14, v14
	v_exp_f32_e32 v19, v19
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s1
	v_ldexp_f32 v11, v11, v3
	v_exp_f32_e32 v17, v17
	v_dual_mul_f32 v3, 0xbfb8aa3b, v159 :: v_dual_mul_f32 v184, 0xbfb8aa3b, v86
	v_dual_mul_f32 v8, 0xbfb8aa3b, v131 :: v_dual_mul_f32 v193, 0xbfb8aa3b, v69
	v_mul_f32_e32 v20, 0xbfb8aa3b, v158
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v14, v14, v4
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_mul_f32_e32 v4, 0xbfb8aa3b, v50
	v_dual_mul_f32 v196, 0xbfb8aa3b, v123 :: v_dual_mul_f32 v189, 0xbfb8aa3b, v102
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v15, v17, v15
	v_ldexp_f32 v17, v19, v18
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v19, 0xbfb8aa3b, v51
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v20
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v12, 1.0, v12 :: v_dual_add_f32 v17, 1.0, v17
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v159
	v_cndmask_b32_e64 v23, 0, 0x42800000, s1
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0x42800000, s0
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v50
	v_exp_f32_e32 v18, v18
	v_dual_fmac_f32 v23, 0xbfb8aa3b, v158 :: v_dual_mul_f32 v174, 0xbfb8aa3b, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v21, 0xbfb8aa3b, v51 :: v_dual_mul_f32 v176, 0xbfb8aa3b, v218
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v23, v23
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s0
	v_exp_f32_e32 v21, v21
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, s1
	v_ldexp_f32 v18, v18, v3
	v_dual_mul_f32 v3, 0xbfb8aa3b, v140 :: v_dual_mul_f32 v168, 0xbfb8aa3b, v55
	v_dual_mul_f32 v165, 0xbfb8aa3b, v207 :: v_dual_add_f32 v16, 1.0, v16
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v15, 1.0, v15
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v19, v19, v4
	v_mul_f32_e32 v4, 0xbfb8aa3b, v139
	v_ldexp_f32 v20, v21, v20
	v_ldexp_f32 v21, v23, v22
	v_mul_f32_e32 v23, 0xbfb8aa3b, v84
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v44, s1, v210, v12, v210
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v14, 1.0, v14 :: v_dual_add_f32 v19, 1.0, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v30, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v23
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v13, 1.0, v13 :: v_dual_fmac_f32 v30, 0xbfb8aa3b, v139
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v23, 0, 0x42800000, s0
	v_mul_f32_e32 v22, 0xbfb8aa3b, v130
	v_fmac_f32_e32 v4, 0xbfb8aa3b, v140
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v84
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_exp_f32_e32 v4, v4
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v18, 1.0, v18 :: v_dual_add_f32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v23
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v23, 0xbfb8aa3b, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v33, null, v10, v10, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v130
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v36, v4, v3
	v_mul_f32_e32 v3, 0xbfb8aa3b, v57
	v_exp_f32_e32 v30, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v37, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v34, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, vcc_lo, v48, v10, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v4, 0xbfb8aa3b, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v47, null, v11, v11, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v192, 0xbfb8aa3b, v121 :: v_dual_mul_f32 v185, 0xbfb8aa3b, v94
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v25, v30, v25
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v30, v34, v31
	v_ldexp_f32 v31, v35, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, null, v12, v12, v210
	v_fma_f32 v32, -v33, v37, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v22, 0xbfb8aa3b, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v34, null, v16, v16, v211
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v39, v35
	v_fmac_f32_e32 v37, v32, v37
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v31, 1.0, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v32, v34
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v25, 1.0, v25 :: v_dual_mul_f32 v190, 0xbfb8aa3b, v100
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v191, 0xbfb8aa3b, v103
	v_dual_mul_f32 v187, 0xbfb8aa3b, v120 :: v_dual_mul_f32 v188, 0xbfb8aa3b, v126
	v_dual_mul_f32 v183, 0xbfb8aa3b, v78 :: v_dual_mul_f32 v178, 0xbfb8aa3b, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v35, v39, 1.0
	v_mul_f32_e32 v40, v38, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v34, v32, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v181, 0xbfb8aa3b, v68 :: v_dual_mul_f32 v182, 0xbfb8aa3b, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v39, v43, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v33, v40, v38
	v_div_scale_f32 v43, null, v13, v13, v205
	v_fmac_f32_e32 v32, v41, v32
	v_div_scale_f32 v41, s0, v211, v16, v211
	v_fmac_f32_e32 v40, v42, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v45, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v179, 0xbfb8aa3b, v107 :: v_dual_mul_f32 v180, 0xbfb8aa3b, v209
	v_dual_mul_f32 v175, 0xbfb8aa3b, v98 :: v_dual_mul_f32 v164, 0xbfb8aa3b, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v33, v40, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v173, 0xbfb8aa3b, v97 :: v_dual_mul_f32 v170, 0xbfb8aa3b, v88
	v_dual_mul_f32 v169, 0xbfb8aa3b, v83 :: v_dual_mul_f32 v172, 0xbfb8aa3b, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v33, v33, v37, v40
	v_fma_f32 v40, -v43, v45, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v37, v47
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v10, v33, v10, v48
	v_dual_fmac_f32 v45, v40, v45 :: v_dual_mul_f32 v42, v41, v32
	v_mul_f32_e32 v46, v44, v39
	v_div_scale_f32 v40, s0, v49, v11, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v171, 0xbfb8aa3b, v89 :: v_dual_mul_f32 v166, 0xbfb8aa3b, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v34, v42, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v28, 0xbfb8aa3b, v75 :: v_dual_mul_f32 v29, 0xbfb8aa3b, v160
.Ltmp5:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp6:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v42, v38, v32
	v_fma_f32 v38, -v35, v46, v44
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s9, s29, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v34, v42, v41
	v_fmac_f32_e32 v46, v38, v39
	v_div_scale_f32 v34, s6, v205, v13, v205
	v_fma_f32 v38, -v47, v37, 1.0
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v32, v33, v32, v42
	v_fma_f32 v33, -v35, v46, v44
	v_mul_f32_e32 v35, v34, v45
	v_fmac_f32_e32 v37, v38, v37
	v_div_scale_f32 v38, null, v14, v14, v163
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v41, -v43, v35, v34
	v_div_fmas_f32 v33, v33, v39, v46
	v_rcp_f32_e32 v39, v38
	v_mul_f32_e32 v42, v40, v37
	v_div_scale_f32 v44, null, v15, v15, v162
	v_fmac_f32_e32 v35, v41, v45
	v_div_fixup_f32 v16, v32, v16, v211
	v_div_fixup_f32 v12, v33, v12, v210
	v_fma_f32 v32, -v47, v42, v40
	v_rcp_f32_e32 v33, v44
	v_fma_f32 v34, -v43, v35, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v38, v39, 1.0
	v_div_scale_f32 v43, null, v17, v17, v161
	v_fmac_f32_e32 v42, v32, v37
	v_div_scale_f32 v32, s1, v163, v14, v163
	v_fmac_f32_e32 v39, v41, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v41, v43
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v46, -v44, v33, 1.0
	v_div_fmas_f32 v34, v34, v45, v35
	v_fma_f32 v35, -v47, v42, v40
	v_mul_f32_e32 v40, v32, v39
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v33, v46, v33
	v_div_scale_f32 v45, s6, v162, v15, v162
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v46, -v43, v41, 1.0
	v_div_scale_f32 v47, null, v18, v18, v159
	v_div_fmas_f32 v35, v35, v37, v42
	v_fma_f32 v37, -v38, v40, v32
	v_mul_f32_e32 v42, v45, v33
	v_fmac_f32_e32 v41, v46, v41
	v_rcp_f32_e32 v46, v47
	v_div_scale_f32 v48, s0, v161, v17, v161
	v_fmac_f32_e32 v40, v37, v39
	v_div_scale_f32 v37, null, v19, v19, v50
	v_div_fixup_f32 v13, v34, v13, v205
	v_div_fixup_f32 v11, v35, v11, v49
	v_fma_f32 v34, -v44, v42, v45
	v_mul_f32_e32 v35, v48, v41
	v_fma_f32 v32, -v38, v40, v32
	v_rcp_f32_e32 v38, v37
	v_fma_f32 v49, -v47, v46, 1.0
	v_fmac_f32_e32 v42, v34, v33
	v_fma_f32 v34, -v43, v35, v48
	s_mov_b32 vcc_lo, s1
	.loc	1 1248 9 is_stmt 1              ; ragged.py:1248:9
	s_mov_b32 s8, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v46, v49, v46
	v_div_fmas_f32 v32, v32, v39, v40
	v_fma_f32 v39, -v44, v42, v45
	v_fmac_f32_e32 v35, v34, v41
	v_fma_f32 v40, -v37, v38, 1.0
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v49, s7, v159, v18, v159
	v_div_fmas_f32 v33, v39, v33, v42
	v_fma_f32 v39, -v43, v35, v48
	v_fmac_f32_e32 v38, v40, v38
	v_div_scale_f32 v40, null, v20, v20, v51
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v43, s1, v50, v19, v50
	v_div_fmas_f32 v35, v39, v41, v35
	v_rcp_f32_e32 v39, v40
	v_mul_f32_e32 v34, v49, v46
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v41, v43, v38
	v_div_fixup_f32 v14, v32, v14, v163
	v_div_fixup_f32 v15, v33, v15, v162
	v_div_fixup_f32 v32, v35, v17, v161
	v_fma_f32 v42, -v47, v34, v49
	v_fma_f32 v33, -v37, v41, v43
	s_mov_b32 vcc_lo, s7
	v_div_scale_f32 v35, null, v21, v21, v158
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v34, v42, v46
	v_fma_f32 v42, -v40, v39, 1.0
	v_fmac_f32_e32 v41, v33, v38
	v_div_scale_f32 v33, s0, v51, v20, v51
	v_fma_f32 v17, -v47, v34, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v39, v42, v39
	v_div_scale_f32 v42, null, v36, v36, v140
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v15, v150, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v17, v17, v46, v34
	v_rcp_f32_e32 v34, v35
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v44, v17, v18, v159
	v_fma_f32 v17, -v37, v41, v43
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v37, -v35, v34, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v17, v17, v38, v41
	v_div_scale_f32 v41, s1, v158, v21, v158
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v45, -v42, v43, 1.0
	v_div_fixup_f32 v46, v17, v19, v50
	v_div_scale_f32 v50, null, v31, v31, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v45, v43
	v_div_scale_f32 v45, null, v30, v30, v130
	v_rcp_f32_e32 v49, v45
	v_fmac_f32_e32 v34, v37, v34
	v_div_scale_f32 v37, null, v25, v25, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v17, v37
	v_fma_f32 v48, -v37, v17, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v17, v48, v17
	v_fma_f32 v48, -v45, v49, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v49, v48, v49
	v_mul_f32_e32 v19, v41, v34
	v_mul_f32_e32 v18, v33, v39
	v_fma_f32 v38, -v40, v18, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v18, v38, v39
	v_div_scale_f32 v38, s6, v140, v36, v140
	v_fma_f32 v33, -v40, v18, v33
	v_fma_f32 v40, -v35, v19, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v47, v38, v43
	v_div_fmas_f32 v18, v33, v39, v18
	v_rcp_f32_e32 v39, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v19, v40, v34
	v_fma_f32 v33, -v42, v47, v38
	v_div_scale_f32 v40, s0, v139, v25, v139
	v_div_fixup_f32 v51, v18, v20, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v18, -v35, v19, v41
	v_fmac_f32_e32 v47, v33, v43
	v_div_scale_f32 v33, s7, v130, v30, v130
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v35, -v50, v39, 1.0
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v20, v40, v17
	v_div_fmas_f32 v18, v18, v34, v19
	v_fma_f32 v19, -v42, v47, v38
	v_fmac_f32_e32 v39, v35, v39
	v_div_scale_f32 v35, s1, v84, v31, v84
	v_mul_f32_e32 v38, v33, v49
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v34, -v37, v20, v40
	v_div_fmas_f32 v19, v19, v43, v47
	v_div_fixup_f32 v41, v18, v21, v158
	v_mul_f32_e32 v21, v35, v39
	v_fma_f32 v18, -v45, v38, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v20, v34, v17
	v_div_fixup_f32 v34, v19, v36, v140
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v38, v18, v49
	v_fma_f32 v18, -v50, v21, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v9, -v37, v20, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v21, v18, v39 :: v_dual_fmac_f32 v36, 0xbfb8aa3b, v134
	v_div_fmas_f32 v9, v9, v17, v20
	v_fma_f32 v17, -v45, v38, v33
	s_mov_b32 vcc_lo, s7
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v18, -v50, v21, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v20, v36
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v17, v17, v49, v38
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v25, v9, v25, v139
	v_div_fmas_f32 v0, v18, v39, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v30, v17, v30, v130
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v17, 0, 0x42800000, s0
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, s0
	v_ldexp_f32 v7, v20, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v31, v84
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_dual_fmac_f32 v17, 0xbfb8aa3b, v133 :: v_dual_mul_f32 v20, v156, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v33, 1.0, v7 :: v_dual_mul_f32 v18, v155, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v31, 0xbfb8aa3b, v125
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v7, v17
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v17, v152, v11
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, null, v33, v33, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v11, v31
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v21, v157, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v31, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v19, v154, v13 :: v_dual_mul_f32 v16, v151, v14
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v6, v7, v9
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v14, v149, v32
	v_mul_f32_e32 v13, v148, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v6
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v6, v11, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v10, -v35, v31, 1.0
	v_div_scale_f32 v38, vcc_lo, v134, v33, v134
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v9, 0xbfb8aa3b, v124 :: v_dual_mul_f32 v12, v147, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v31, v10, v31
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v37, 1.0, v6 :: v_dual_mul_f32 v10, v145, v51
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v6, v137, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v40, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v43, v38, v31
	v_div_scale_f32 v42, null, v37, v37, v125
	v_div_scale_f32 v36, null, v32, v32, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v44, -v35, v43, v38
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v9, v138, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v34, s0, v133, v32, v133
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v25, v40, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v43, v44, v31
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v7, v136, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v39, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v187
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v35, v43, v38
	v_div_scale_f32 v38, s1, v125, v37, v125
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v30, v30, v31, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v45, -v36, v39, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v8, v135, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v30, v33, v134
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v11, v141, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v41, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v131
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v40, -v42, v41, 1.0
	v_fmac_f32_e32 v41, v40, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v44, v38, v41
	v_fma_f32 v30, -v42, v44, v38
	v_fmac_f32_e32 v39, v45, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v197
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v44, v30, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v30, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v35, v34, v39
	v_fma_f32 v38, -v42, v44, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v43, -v36, v35, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v30, v30, v45
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v35, v43, v39 :: v_dual_add_f32 v30, 1.0, v30
	v_div_scale_f32 v40, null, v25, v25, v124
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v36, v35, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v43, s6, v124, v25, v124
	v_rcp_f32_e32 v31, v40
	v_div_scale_f32 v45, null, v30, v30, v131
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v119
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v40, v31, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v31, v33, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v34, v34, v39, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_exp_f32_e32 v27, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v32, v34, v32, v133
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v116
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ldexp_f32 v27, v27, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v33, v45
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v38, v38, v41, v44
	s_mov_b32 vcc_lo, s6
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v195
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v27, v38, v37, v125
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v37, v42
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v125, v144, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, null, v34, v34, v119
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v37, v37, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v42, null, v37, v37, v116
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v32, v42
	v_mul_f32_e32 v35, v43, v31
	v_fma_f32 v36, -v40, v35, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, v36, v31
	v_fma_f32 v36, -v40, v35, v43
	v_fma_f32 v40, -v45, v33, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v31, v36, v31, v35
	v_rcp_f32_e32 v35, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v33, v40, v33
	v_div_scale_f32 v36, s0, v131, v30, v131
	v_div_fixup_f32 v24, v31, v25, v124
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v31, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v39, v36, v33
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v40, -v38, v35, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v31, 0xbfb8aa3b, v117 :: v_dual_mul_f32 v124, v143, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v45, v39, v36
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v24, v146, v24 :: v_dual_fmac_f32 v35, v40, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v40, s1, v119, v34, v119
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v39, v41, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v41, v40, v35
	v_fma_f32 v36, -v45, v39, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v43, -v38, v41, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v25, v31, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v31, v36, v33, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v196
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v41, v43, v35 :: v_dual_add_f32 v0, 1.0, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v30, v31, v30, v131
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v38, v41, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v25, -v42, v32, 1.0
	v_div_scale_f32 v33, null, v0, v0, v117
	v_div_fmas_f32 v31, v31, v35, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v194
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v32, v25, v32
	v_rcp_f32_e32 v36, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v123
	v_cndmask_b32_e64 v40, 0, 0x42800000, s6
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v31, v31, v34, v119
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, s6
	v_exp_f32_e32 v39, v39
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v115
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v114
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, s0, v116, v37, v116
	v_fma_f32 v43, -v33, v36, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v40, v40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v193
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v41, v25, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v27, v142, v27 :: v_dual_fmac_f32 v36, v43, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v43, s1, v117, v0, v117
	v_fma_f32 v34, -v42, v41, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v35, v40, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v41, v34, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v39, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v38, v43, v36 :: v_dual_add_f32 v35, 1.0, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v42, v41, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v42, -v33, v38, v43
	v_div_scale_f32 v45, null, v35, v35, v115
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v40, null, v34, v34, v123
	v_fmac_f32_e32 v38, v42, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v42, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v25, v32, v41
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v44, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0x42800000, s6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v33, v38, v43
	v_rcp_f32_e32 v43, v45
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s6
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v32, v32, v36, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v42, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, vcc_lo, v123, v34, v123
	v_fma_f32 v46, -v40, v44, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v0, v32, v0, v117
	v_fma_f32 v39, -v45, v43, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v41
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v44, v46, v44
	v_div_fixup_f32 v25, v25, v37, v116
	v_fmac_f32_e32 v43, v39, v43
	v_div_scale_f32 v39, s0, v115, v35, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v41, v38, v44
	v_div_scale_f32 v42, null, v36, v36, v114
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v119, v132, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v37, v39, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v0, -v40, v41, v38
	v_rcp_f32_e32 v46, v42
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v118, v118, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v25, v32, v33
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v117, v128, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v41, v0, v44
	v_fma_f32 v0, -v45, v37, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v116, v129, v30 :: v_dual_add_f32 v25, 1.0, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v33, s1, v114, v36, v114
	v_fma_f32 v30, -v40, v41, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v37, v0, v43
	v_fma_f32 v0, -v42, v46, 1.0
	v_div_scale_f32 v31, null, v25, v25, v69
	v_div_fmas_f32 v30, v30, v44, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v192
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v46, v0, v46
	v_rcp_f32_e32 v0, v31
	v_fma_f32 v32, -v45, v37, v39
	v_div_fixup_f32 v30, v30, v34, v123
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v34, v33, v46
	v_div_fmas_f32 v32, v32, v43, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v121
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v191
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v31, v0, 1.0
	v_div_scale_f32 v41, s0, v69, v25, v69
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v108, v108, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v0, v37, v0
	v_div_fixup_f32 v32, v32, v35, v115
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v42, v34, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v103
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v190
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v109, v109, v32 :: v_dual_fmac_f32 v34, v39, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v40, v40
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v188
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v35, v35, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v38, v41, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v189
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v42, v34, v33
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v31, v38, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v100
	v_ldexp_f32 v37, v40, v37
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v42, null, v35, v35, v121
	v_fmac_f32_e32 v38, v44, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v43, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v40, v42
	v_div_fmas_f32 v33, v33, v46, v34
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v31, v38, v41
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v102
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v33, v33, v36, v114
	v_div_scale_f32 v41, null, v34, v34, v103
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v37, v43, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v42, v40, 1.0
	v_div_fmas_f32 v0, v31, v0, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v38, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v45
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v37, 1.0, v37 :: v_dual_fmac_f32 v40, v39, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v39, vcc_lo, v121, v35, v121
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v110, v110, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v36, v39, v40
	v_div_fixup_f32 v0, v0, v25, v69
	v_fma_f32 v43, -v41, v38, 1.0
	v_div_scale_f32 v25, null, v37, v37, v100
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v111, v111, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v31, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v42, v36, v39
	v_fmac_f32_e32 v38, v43, v38
	v_div_scale_f32 v43, s0, v103, v34, v103
	v_rcp_f32_e32 v31, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v36, v44, v40
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v32, v43, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v30, -v42, v36, v39
	v_div_scale_f32 v44, null, v0, v0, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v39, -v41, v32, v43
	v_fma_f32 v33, -v25, v31, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v30, v30, v40, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v42, s1, v100, v37, v100
	v_fmac_f32_e32 v32, v39, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0x42800000, s6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v30, v30, v35, v121
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v41, v32, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v126
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v43, s6, v102, v0, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v32, v35, v38, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v39, v39
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v186
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v32, v32, v34, v103
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v101, v101, v32
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v39, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v31, v33, v31
	v_rcp_f32_e32 v33, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v40, v42, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v25, v40, v42
	v_fma_f32 v45, -v44, v33, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v40, v41, v31
	v_fmac_f32_e32 v33, v45, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v45, 0, 0x42800000, s7
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v171
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v25, v40, v42
	v_mul_f32_e32 v35, v43, v33
	v_div_scale_f32 v42, null, v36, v36, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v25, v25, v31, v40
	v_fma_f32 v41, -v44, v35, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v40, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v185
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v25, v25, v37, v100
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v120
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v35, v41, v33 :: v_dual_mul_f32 v100, v226, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v41, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v44, v35, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v31, v31, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v44, 0xbfb8aa3b, v94 :: v_dual_add_f32 v31, 1.0, v31
	v_ldexp_f32 v38, v41, v38
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_div_scale_f32 v45, null, v31, v31, v95
	v_div_fmas_f32 v33, v43, v33, v35
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v35, 1.0, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v42, v40, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v44, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v33, v0, v102
	v_rcp_f32_e32 v33, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v40, v38, v40
	v_div_scale_f32 v38, vcc_lo, v126, v36, v126
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v102, v122, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v46, v38, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v42, v46, v38
	v_fmac_f32_e32 v46, v34, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v34, -v45, v33, 1.0
	v_fma_f32 v32, -v42, v46, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, s1, v95, v31, v95
	v_div_fmas_f32 v32, v32, v40, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v184
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v42, v34, v33
	v_div_scale_f32 v39, null, v35, v35, v120
	v_div_scale_f32 v25, s0, v120, v35, v120
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v103, v127, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v44, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v43, v39
	v_div_fixup_f32 v30, v32, v36, v126
	v_fma_f32 v32, -v45, v42, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v183
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v86
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v42, v32, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v38, null, v0, v0, v94
	v_fma_f32 v37, -v39, v43, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v45, v42, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v40, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v43, v37, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v32, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v38, v40, 1.0
	v_dual_mul_f32 v37, v25, v43 :: v_dual_add_f32 v32, 1.0, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v40, v36, v40
	v_fma_f32 v41, -v39, v37, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v46, null, v32, v32, v86
	v_fmac_f32_e32 v37, v41, v43
	v_div_scale_f32 v41, s6, v94, v0, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v25, -v39, v37, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v25, v25, v43, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v182
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v25, v25, v35, v120
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v33, v34, v33, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s6
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v179
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v31, v33, v31, v95
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ldexp_f32 v35, v35, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v37, v41, v40
	v_fma_f32 v43, -v38, v37, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, v43, v40
	v_fma_f32 v33, -v38, v37, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v33, v33, v40, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v181
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v33, v0, v94
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v78
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v94, v93, v31 :: v_dual_mul_f32 v95, v216, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v39, v39
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v35 :: v_dual_mul_f32 v93, v92, v25
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v92, v113, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v43, null, v0, v0, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v39, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v36, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v25, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v40, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	v_add_f32_e32 v30, 1.0, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, null, v34, v34, v78
	v_fma_f32 v39, -v46, v36, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v43, v25, 1.0
	v_rcp_f32_e32 v37, v38
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v36, v39, v36
	v_div_scale_f32 v39, s0, v86, v32, v86
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v25, v33, v25
	v_div_scale_f32 v33, s0, v77, v0, v77
	v_mul_f32_e32 v41, v39, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v42, -v38, v37, 1.0
	v_fma_f32 v35, -v46, v41, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v37, v42, v37
	v_div_scale_f32 v42, s1, v78, v34, v78
	v_fmac_f32_e32 v41, v35, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v35, v42, v37
	v_fma_f32 v31, -v46, v41, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v39, -v38, v35, v42
	v_div_fmas_f32 v31, v31, v36, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v180
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v35, v39, v37
	v_mul_f32_e32 v41, v33, v25
	v_div_scale_f32 v36, null, v30, v30, v68
	v_div_fixup_f32 v31, v31, v32, v86
	v_fma_f32 v32, -v38, v35, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v38, v36
	v_div_fmas_f32 v32, v32, v37, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v178
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v209
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v84, v212, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v37, 0, 0x42800000, s6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v32, v32, v34, v78
	v_fma_f32 v34, -v43, v41, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v40, v40
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v42, -v36, v38, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, s6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v41, v34, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v177
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v38, v42, v38
	v_div_scale_f32 v42, s1, v68, v30, v68
	v_fma_f32 v33, -v43, v41, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v40, v39
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v39, v42, v38
	v_div_fmas_f32 v25, v33, v25, v41
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0x42800000, s6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v36, v39, v42
	v_div_fixup_f32 v0, v25, v0, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v107
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v85, v85, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v39, v43, v38 :: v_dual_mul_f32 v86, v112, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v43, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v36, v39, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s6
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v172
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v33, v33, v38, v39
	v_div_scale_f32 v39, vcc_lo, v209, v34, v209
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v35, v37, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v37, null, v34, v34, v209
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v38, v43, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v30, v33, v30, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v44, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v38, 1.0, v38
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v87, v87, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v45, null, v35, v35, v107
	v_div_scale_f32 v43, null, v38, v38, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v42, v45
	v_fma_f32 v46, -v37, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v44, v46, v44
	v_rcp_f32_e32 v46, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v76
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v40, -v45, v42, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v33, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v41, v39, v44 :: v_dual_fmac_f32 v42, v40, v42
	v_div_scale_f32 v40, s0, v107, v35, v107
	v_fma_f32 v25, -v37, v41, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v30, v40, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v33, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v41, v25, v44
	v_div_scale_f32 v36, s1, v79, v38, v79
	v_fma_f32 v25, -v45, v30, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v37, v41, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v30, v25, v42
	v_fma_f32 v25, -v43, v46, 1.0
	v_div_fmas_f32 v31, v31, v44, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v176
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v32, null, v0, v0, v76
	v_fma_f32 v33, -v45, v30, v40
	v_fmac_f32_e32 v46, v25, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v25, v32
	v_div_fmas_f32 v30, v33, v42, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v175
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v218
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v31, v31, v34, v209
	v_div_scale_f32 v41, s0, v76, v0, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v30, v30, v35, v107
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v39
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v32, v25, 1.0
	v_mul_f32_e32 v33, v36, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v98
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v77, v104, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v25, v34, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v40, v40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v174
	v_ldexp_f32 v35, v35, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v37, v41, v25
	v_fma_f32 v39, -v43, v33, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v32, v37, v41
	v_fmac_f32_e32 v33, v39, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v40, v34
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v91
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v37, v44, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v173
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v43, v33, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v42, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v32, v37, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v41, null, v34, v34, v98
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v33, v36, v46, v33
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v42, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v32, v25, v37
	v_rcp_f32_e32 v37, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v97
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v33, v33, v38, v79
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v25, v0, v76
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v76, v225, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v45
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v78, v105, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v36, v36, v91
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v41, v37, 1.0
	v_fmac_f32_e32 v37, v42, v37
	v_div_scale_f32 v42, s0, v98, v34, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v30, v42, v37
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v79, v106, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v32, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v32, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v25, v32, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v35, 1.0, v35 :: v_dual_fmac_f32 v32, v33, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v43, null, v35, v35, v218
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v43
	v_fma_f32 v39, -v43, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v39, v40
	v_div_scale_f32 v39, vcc_lo, v218, v35, v218
	v_mul_f32_e32 v38, v39, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v43, v38, v39
	v_fmac_f32_e32 v38, v44, v40
	v_div_scale_f32 v44, null, v0, v0, v97
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v31, -v43, v38, v39
	v_fma_f32 v39, -v41, v30, v42
	v_div_scale_f32 v43, s1, v91, v36, v91
	v_rcp_f32_e32 v33, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v31, v31, v40, v38
	v_fmac_f32_e32 v30, v39, v37
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v40, v43, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0x42800000, s6
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v31, v31, v35, v218
	v_fma_f32 v35, -v41, v30, v42
	v_fma_f32 v41, -v25, v40, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v90
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v45, -v44, v33, 1.0
	v_div_scale_f32 v42, s6, v97, v0, v97
	v_fmac_f32_e32 v40, v41, v32
	v_div_fmas_f32 v30, v35, v37, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v170
	v_exp_f32_e32 v39, v39
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, s7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v25, v40, v43
	v_div_fixup_f32 v30, v30, v34, v98
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v88
	v_ldexp_f32 v38, v39, v38
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v33, v45, v33
	v_div_fmas_f32 v25, v25, v32, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v46
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v38, 1.0, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v45, 0, 0x42800000, s7
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v169
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v25, v25, v36, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v43, null, v38, v38, v90
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v70, v70, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v32, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v35, v42, v33
	v_rcp_f32_e32 v40, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v45, 0xbfb8aa3b, v89 :: v_dual_add_f32 v32, 1.0, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v44, v35, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v35, v41, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v41, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v45, null, v32, v32, v88
	v_fma_f32 v42, -v44, v35, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v37, v41, v37
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s6
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v83
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v33, v42, v33, v35
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v35, 1.0, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v43, v40, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v44, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v33, v0, v97
	v_rcp_f32_e32 v33, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v37, v40
	v_div_scale_f32 v37, vcc_lo, v90, v38, v90
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v71, v99, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v46, v37, v40
	v_div_scale_f32 v39, null, v35, v35, v89
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v44, v41
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v69, v96, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v43, v46, v37
	v_rcp_f32_e32 v42, v39
	v_div_scale_f32 v25, s0, v89, v35, v89
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v46, v34, v40
	v_fma_f32 v34, -v45, v33, 1.0
	v_fma_f32 v30, -v43, v46, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v39, v42, 1.0
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, s1, v88, v32, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v30, v30, v40, v46
	v_fmac_f32_e32 v42, v36, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v168
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v43, v34, v33
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v68, v214, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v37, null, v0, v0, v83
	v_mul_f32_e32 v36, v25, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v45, v43, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v167
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v39, v36, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v46, 0xbfb8aa3b, v55 :: v_dual_fmac_f32 v43, v31, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v40, v37
	v_div_fixup_f32 v30, v30, v38, v90
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v45, v43, v34
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v60, v60, v30
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v37, v40, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v31, v31, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v36, v41, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v40, v38, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v41, s6, v83, v0, v83
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v39, v36, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v46, null, v31, v31, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v25, v42, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v166
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v39, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v25, v25, v35, v89
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v33, v34, v33, v43
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v61, v61, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s6
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_ldexp_f32 v34, v39, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v38, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v32, v33, v32, v88
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v45
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v62, v62, v32
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v46, v38, 1.0
	v_fmac_f32_e32 v38, v39, v38
	v_mul_f32_e32 v36, v41, v40
	v_div_scale_f32 v39, s0, v55, v31, v55
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v35, v35, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v42, -v37, v36, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, v42, v40
	v_fma_f32 v33, -v37, v36, v41
	v_div_scale_f32 v37, null, v34, v34, v54
	v_mul_f32_e32 v41, v39, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v40, v36
	v_rcp_f32_e32 v36, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v164
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v33, v0, v83
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v63, v63, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v42, -v37, v36, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v36, v42, v36
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v46, v41, v39
	v_div_scale_f32 v42, s1, v54, v34, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v41, v35, v38
	v_mul_f32_e32 v35, v42, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v32, -v46, v41, v39
	v_fma_f32 v39, -v37, v35, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v40, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v32, v32, v38, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v39, v36
	v_div_scale_f32 v43, null, v0, v0, v52
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v30, 1.0, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v165
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v31, v32, v31, v55
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v25, v43
	v_fma_f32 v32, -v37, v35, v42
	v_div_scale_f32 v37, null, v30, v30, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v38, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v207
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v43, v25, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v25, v33, v25
	v_div_fmas_f32 v29, v32, v36, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0x42800000, s6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v33, s0, v52, v0, v52
	v_fma_f32 v41, -v37, v38, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v35, 0xbfb8aa3b, v160 :: v_dual_mul_f32 v36, v33, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v29, v29, v34, v54
	v_fmac_f32_e32 v38, v41, v38
	v_div_scale_f32 v41, s1, v53, v30, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v43, v36, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	v_ldexp_f32 v28, v40, v39
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v36, v34, v25
	v_mul_f32_e32 v34, v41, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v28, 1.0, v28
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v35, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v43, v36, v33
	v_fma_f32 v42, -v37, v34, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, null, v28, v28, v207
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v34, v42, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v26, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v42, null, v32, v32, v160
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v25, v33, v25, v36
	v_fma_f32 v33, -v37, v34, v41
	v_rcp_f32_e32 v41, v42
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v37, 0, 0x42800000, s6
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v35, v26, 1.0
	v_div_fmas_f32 v33, v33, v38, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v40, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, vcc_lo, v207, v28, v207
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v37, 0xbfb8aa3b, v67 :: v_dual_fmac_f32 v26, v43, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v42, v41, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v30, v33, v30, v53
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v33, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v37, v38, v26
	v_fmac_f32_e32 v41, v39, v41
	v_div_scale_f32 v39, s0, v160, v32, v160
	v_div_scale_f32 v40, null, v34, v34, v75
	v_div_fixup_f32 v0, v25, v0, v52
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v55, v82, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v35, v37, v38
	v_mul_f32_e32 v30, v39, v41
	v_rcp_f32_e32 v43, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s6
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v53, v80, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v37, v25, v26
	v_fma_f32 v25, -v42, v30, v39
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v54, v81, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v33, v36
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v35, v37, v38
	v_fmac_f32_e32 v30, v25, v41
	v_fma_f32 v25, -v40, v43, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v52, v224, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v26, v29, v26, v37
	v_fma_f32 v29, -v42, v30, v39
	v_fmac_f32_e32 v43, v25, v43
	v_div_scale_f32 v25, s1, v75, v34, v75
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v31, null, v0, v0, v67
	v_div_fmas_f32 v23, v29, v41, v30
	v_mul_f32_e32 v29, v25, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0x42800000, s6
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v30, v31
	v_div_fixup_f32 v26, v26, v28, v207
	v_fma_f32 v22, -v40, v29, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v64
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v37, s0, v67, v0, v67
	v_fmac_f32_e32 v29, v22, v43
	v_div_fixup_f32 v23, v23, v32, v160
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_exp_f32_e32 v22, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v4, -v31, v30, 1.0
	v_fma_f32 v25, -v40, v29, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v59
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v30, v4, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v3, v32
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v45, v72, v23 :: v_dual_fmac_f32 v36, 0xbfb8aa3b, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v22, v22, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v33, v36
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v25, v43, v29
	v_mul_f32_e32 v29, v37, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v3, v3, v28
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v28, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v36, -v31, v29, v37
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v3, 1.0, v3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v32, null, v22, v22, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v33, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v29, v36, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v4, v28, v4
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v25, v25, v34, v75
	v_rcp_f32_e32 v34, v32
	v_div_scale_f32 v28, null, v3, v3, v59
	v_fma_f32 v31, -v31, v29, v37
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v4, 1.0, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, null, v33, v33, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v37, v28
	v_div_fmas_f32 v29, v31, v30, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_scale_f32 v30, null, v4, v4, v57
	v_fma_f32 v36, -v32, v34, 1.0
	v_rcp_f32_e32 v38, v35
	v_div_scale_f32 v31, vcc_lo, v64, v22, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v39, v30
	v_fmac_f32_e32 v34, v36, v34
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v28, v37, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v46, v73, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v40, v31, v34 :: v_dual_fmac_f32 v37, v36, v37
	v_div_fixup_f32 v0, v29, v0, v67
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v29, -v35, v38, 1.0
	v_div_scale_f32 v36, s0, v59, v3, v59
	v_fma_f32 v41, -v30, v39, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v47, v74, v0 :: v_dual_fmac_f32 v38, v29, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v29, s1, v58, v33, v58
	v_fma_f32 v0, -v32, v40, v31
	v_dual_mul_f32 v42, v36, v37 :: v_dual_fmac_f32 v39, v41, v39
	v_div_scale_f32 v41, s6, v57, v4, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v43, v29, v38
	v_fmac_f32_e32 v40, v0, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v0, -v28, v42, v36
	v_mul_f32_e32 v44, v41, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v25, -v35, v43, v29
	v_fma_f32 v23, -v32, v40, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v42, v0, v37
	v_fma_f32 v0, -v30, v44, v41
.Ltmp7:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v31, |v76|, |v77|
.Ltmp8:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v43, v25, v38
	v_div_fmas_f32 v23, v23, v34, v40
	v_fma_f32 v25, -v28, v42, v36
	v_fmac_f32_e32 v44, v0, v39
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v0, -v35, v43, v29
	v_div_fixup_f32 v22, v23, v22, v64
	v_div_fmas_f32 v25, v25, v37, v42
	v_fma_f32 v28, -v30, v44, v41
	s_mov_b32 vcc_lo, s1
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v23, |v124|, |v125|
.Ltmp10:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v0, v38, v43
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v3, v25, v3, v59
	v_div_fmas_f32 v28, v28, v39, v44
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v44, v213, v26
.Ltmp11:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, |v27|, |v116|, |v117|
	v_max3_f32 v26, |v108|, |v109|, |v110|
.Ltmp12:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v33, v58
	v_div_fixup_f32 v4, v28, v4, v57
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v28, |v111|, |v20|, |v18|
	v_max3_f32 v29, |v84|, |v85|, |v86|
	v_max3_f32 v30, |v87|, |v16|, |v15|
.Ltmp14:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v39, v66, v0
	v_mul_f32_e32 v40, v153, v4
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, v23, |v24|, v25
	v_max3_f32 v23, v26, v28, |v19|
	v_max_f32_e64 v25, |v100|, |v101|
	v_max3_f32 v26, |v102|, |v92|, |v93|
	v_max3_f32 v0, |v118|, |v119|, |v21|
	v_max3_f32 v28, |v94|, |v95|, |v17|
	v_max3_f32 v32, |v78|, |v68|, |v69|
	v_max3_f32 v33, |v60|, |v61|, |v62|
	v_max3_f32 v34, |v63|, |v12|, |v10|
	v_max3_f32 v25, v25, |v103|, v26
	v_max3_f32 v26, v29, v30, |v14|
.Ltmp16:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v38, v65, v3 :: v_dual_mul_f32 v37, v206, v22
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v29, |v70|, |v71|, |v13|
	v_max3_f32 v30, v31, |v79|, v32
	v_max3_f32 v31, v33, v34, |v11|
	v_max3_f32 v0, v4, v0, v23
	v_max3_f32 v3, v25, v28, v26
	v_max_f32_e64 v22, |v52|, |v53|
	v_max3_f32 v23, |v54|, |v44|, |v45|
	v_max3_f32 v25, |v37|, |v38|, |v39|
	v_max3_f32 v26, |v40|, |v6|, |v7|
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v4, v30, v29, v31
	v_max3_f32 v28, |v46|, |v47|, |v9|
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v29, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v3, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v22, v22, |v55|, v23
	v_max3_f32 v23, v25, v26, |v8|
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v25, v29, v29 :: v_dual_max_f32 v26, v30, v30
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v29, v4, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v22, v22, v28, v23
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v23, 3, v198
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v31, v0, v25 :: v_dual_max_f32 v32, v3, v26
	v_dual_max_f32 v0, v29, v29 :: v_dual_and_b32 v3, 4, v198
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v25, v23, 9, 0
	v_lshlrev_b32_e32 v26, 5, v23
	v_permlanex16_b32 v28, v22, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v33, v4, v0 :: v_dual_and_b32 v30, 0x60, v198
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v0, v3, 2, v25
	v_and_or_b32 v2, 0x680, v2, v26
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v28, v28
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v28, 1, v56
	v_xor_b32_e32 v25, v26, v30
	v_lshl_add_u32 v0, v1, 4, v0
	v_lshrrev_b32_e32 v29, 3, v56
	v_xor_b32_e32 v2, v2, v30
	v_lshl_add_u32 v35, v3, 6, 0
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v34, v22, v4 :: v_dual_lshlrev_b32 v1, 3, v1
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v0, v0, v28, v25
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v2, v35, v29, v2
.Ltmp31:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v35.h, 0
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v0, v[31:34]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[31:34], v2
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp33:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v36.h, v35.h
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v0, v31
	v_mov_b32_e32 v2, v32
	v_mov_b32_e32 v4, v33
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v22, v31, v31 :: v_dual_max_f32 v25, v32, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v0, v0 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v29, v34, v34
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v34, v34 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v0, v0
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v0, v22, v0
	v_max_f32_e32 v22, v33, v33
	v_max_f32_e32 v2, v25, v2
	v_max_f32_e32 v25, v34, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v31, v0 :: v_dual_max_f32 v4, v22, v4
	v_mov_b32_e32 v32, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v22, v29, v25
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v31, v31 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v25, v4
	v_mov_b32_dpp v32, v32 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v29, v22
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v31, v31, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v25, v25 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v32, v32, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v29, v29 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v0, v0, v31 :: v_dual_max_f32 v25, v25, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v2, v2, v32 :: v_dual_max_f32 v29, v29, v29
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v31, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v25
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v32, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v22, v22, v29
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v31, v31 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v25, v4
	v_mov_b32_dpp v32, v32 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v29, v22
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v31, v31, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v25, v25 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v32, v32, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v29, v29 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v31, v0, v31 :: v_dual_max_f32 v0, v25, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v32, v2, v32
	v_max_f32_e32 v2, v29, v29
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v25, 1, v30
	v_add_nc_u32_e32 v29, 0, v56
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v33, v4, v0 :: v_dual_lshlrev_b32 v0, 5, v3
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v3, v23, 4, 0
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v34, v22, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v2, v29, v25, v1
	v_add3_u32 v0, v3, v0, v1
	ds_store_b128 v2, v[31:34]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v0
.Ltmp63:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v0, v0, v0
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v0, 0x2b8cbccc, v0
	v_dual_max_f32 v2, 0x2b8cbccc, v2 :: v_dual_max_f32 v1, 0x2b8cbccc, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v3, 0x2b8cbccc, v3
	v_div_scale_f32 v4, null, 0x40e00000, 0x40e00000, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v29, null, 0x40e00000, 0x40e00000, v2
	v_div_scale_f32 v42, s1, v3, 0x40e00000, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v22, v4
	v_rcp_f32_e32 v32, v29
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v4, v22, 1.0
	v_fmac_f32_e32 v22, v23, v22
	v_div_scale_f32 v23, vcc_lo, v0, 0x40e00000, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v25, v23, v22
	v_fma_f32 v31, -v4, v25, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v25, v31, v22
	v_div_scale_f32 v31, null, 0x40e00000, 0x40e00000, v3
	v_fma_f32 v4, -v4, v25, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v23, -v29, v32, 1.0
	v_rcp_f32_e32 v34, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v4, v4, v22, v25
	v_div_scale_f32 v25, null, 0x40e00000, 0x40e00000, v1
	v_fmac_f32_e32 v32, v23, v32
	v_div_scale_f32 v22, vcc_lo, v2, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v33, v25
	v_div_fixup_f32 v0, v4, 0x40e00000, v0
	v_mul_f32_e32 v4, v22, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v36.l, v0.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v23, -v29, v4, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v25, v33, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v36, 1, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v4, v23, v32
	v_fma_f32 v23, -v31, v34, 1.0
	v_fmac_f32_e32 v33, v41, v33
	v_div_scale_f32 v41, s0, v1, 0x40e00000, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v23, v34
	v_fma_f32 v23, -v29, v4, v22
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v22, v0, v36, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_mul_f32 v0, v41, v33 :: v_dual_mul_f32 v29, v42, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v4, v23, v32, v4
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v32, 0xffff0000, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v23, -v25, v0, v41
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v36, -v31, v29, v42
	v_div_fixup_f32 v4, v4, 0x40e00000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v43, null, v32, v32, v124
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_fmac_f32 v0, v23, v33 :: v_dual_fmac_f32 v29, v36, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v35.l, v4.h
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_and_b32_e32 v23, 63, v198
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v48, null, v32, v32, v24
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v2, -v25, v0, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v25, v43
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v31, -v31, v29, v42
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v49, v48
	v_div_scale_f32 v50, null, v32, v32, v27
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v0, v2, v33, v0
	s_mov_b32 vcc_lo, s1
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v33, 1, v35
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v2, v31, v34, v29
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v31, null, v32, v32, v125
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v0, v0, 0x40e00000, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v1, -v43, v25, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v34, v2, 0x40e00000, v3
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v42, v31
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v29.h, v35.h
	v_mov_b16_e32 v29.l, v0.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v25, v1, v25
	v_div_scale_f32 v41, vcc_lo, v124, v32, v124
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v3, v4, v33, 0x7fff
	v_mov_b16_e32 v35.l, v34.h
	v_and_b32_e32 v4, 1, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v33, v41, v25
	v_fma_f32 v36, -v31, v42, 1.0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s54, v23
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s55, 0, s0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v35, 1, v35
	v_add3_u32 v29, v0, v4, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v43, v33, v41
	v_fmac_f32_e32 v42, v36, v42
	v_div_scale_f32 v51, s0, v125, v32, v125
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v34, v35, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v33, v0, v25
	v_rcp_f32_e32 v0, v50
	v_mul_f32_e32 v34, v51, v42
	v_fma_f32 v35, -v48, v49, 1.0
	v_div_scale_f32 v57, null, v32, v32, v116
	v_fma_f32 v41, -v43, v33, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v31, v34, v51
	v_fmac_f32_e32 v49, v35, v49
	v_div_scale_f32 v35, s1, v24, v32, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v56, -v50, v0, 1.0
	v_fmac_f32_e32 v34, v43, v42
	v_rcp_f32_e32 v43, v57
	v_div_scale_f32 v59, null, v32, v32, v117
	v_div_fmas_f32 v25, v41, v25, v33
	v_dual_mul_f32 v33, v35, v49 :: v_dual_fmac_f32 v0, v56, v0
	v_div_scale_f32 v56, s6, v27, v32, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v64, v59
	v_div_fixup_f32 v41, v25, v32, v124
	v_fma_f32 v25, -v31, v34, v51
	v_fma_f32 v31, -v48, v33, v35
	v_mul_f32_e32 v51, v56, v0
	v_fma_f32 v65, -v57, v43, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v25, v25, v42, v34
	v_fmac_f32_e32 v33, v31, v49
	v_fma_f32 v31, -v50, v51, v56
	v_fmac_f32_e32 v43, v65, v43
	v_fma_f32 v65, -v59, v64, 1.0
	v_div_scale_f32 v34, s0, v116, v32, v116
	v_div_fixup_f32 v42, v25, v32, v125
	v_fma_f32 v25, -v48, v33, v35
	v_fmac_f32_e32 v51, v31, v0
	v_fmac_f32_e32 v64, v65, v64
	v_div_scale_f32 v65, null, v32, v32, v118
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v31, v34, v43
	v_div_scale_f32 v35, s7, v117, v32, v117
	v_div_fmas_f32 v25, v25, v49, v33
	v_fma_f32 v33, -v50, v51, v56
	v_rcp_f32_e32 v49, v65
	v_div_scale_f32 v56, null, v32, v32, v119
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v48, -v57, v31, v34
	v_mul_f32_e32 v50, v35, v64
	v_div_fmas_f32 v0, v33, v0, v51
	v_rcp_f32_e32 v33, v56
	v_div_fixup_f32 v24, v25, v32, v24
	v_fmac_f32_e32 v31, v48, v43
	v_fma_f32 v48, -v59, v50, v35
	v_fma_f32 v51, -v65, v49, 1.0
	v_div_fixup_f32 v27, v0, v32, v27
	v_div_scale_f32 v25, s1, v118, v32, v118
	v_fma_f32 v0, -v57, v31, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v50, v48, v64 :: v_dual_fmac_f32 v49, v51, v49
	v_fma_f32 v34, -v56, v33, 1.0
	v_div_scale_f32 v51, null, v32, v32, v21
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v57, s0, v119, v32, v119
	v_div_fmas_f32 v0, v0, v43, v31
	v_fma_f32 v31, -v59, v50, v35
	v_mul_f32_e32 v35, v25, v49
	v_fmac_f32_e32 v33, v34, v33
	v_rcp_f32_e32 v34, v51
	v_div_scale_f32 v59, null, v32, v32, v108
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v43, v0, v32, v116
	v_div_fmas_f32 v31, v31, v64, v50
	v_fma_f32 v50, -v65, v35, v25
	v_mul_f32_e32 v64, v57, v33
	v_rcp_f32_e32 v67, v59
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v66, -v51, v34, 1.0
	v_fmac_f32_e32 v35, v50, v49
	v_fma_f32 v0, -v56, v64, v57
	v_div_fixup_f32 v48, v31, v32, v117
	v_div_scale_f32 v31, s6, v21, v32, v21
	v_fmac_f32_e32 v34, v66, v34
	v_div_scale_f32 v66, null, v32, v32, v109
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v50, -v59, v67, 1.0
	v_fma_f32 v25, -v65, v35, v25
	v_fmac_f32_e32 v64, v0, v33
	v_rcp_f32_e32 v65, v66
	v_div_scale_f32 v72, s7, v108, v32, v108
	v_fmac_f32_e32 v67, v50, v67
	v_div_fmas_f32 v25, v25, v49, v35
	v_fma_f32 v35, -v56, v64, v57
	v_div_scale_f32 v57, null, v32, v32, v110
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v0, v31, v34
	v_mul_f32_e32 v56, v72, v67
	v_div_fmas_f32 v33, v35, v33, v64
	v_rcp_f32_e32 v35, v57
	v_fma_f32 v50, -v66, v65, 1.0
	v_fma_f32 v49, -v51, v0, v31
	v_fma_f32 v64, -v59, v56, v72
	v_div_scale_f32 v73, s0, v109, v32, v109
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v65, v50, v65 :: v_dual_fmac_f32 v0, v49, v34
	v_div_fixup_f32 v50, v33, v32, v119
	v_fmac_f32_e32 v56, v64, v67
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v33, -v57, v35, 1.0
	v_div_scale_f32 v64, null, v32, v32, v111
	v_div_fixup_f32 v49, v25, v32, v118
	v_fma_f32 v25, -v51, v0, v31
	v_mul_f32_e32 v31, v73, v65
	v_fmac_f32_e32 v35, v33, v35
	v_rcp_f32_e32 v33, v64
	s_mov_b32 vcc_lo, s6
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v25, v34, v0
	v_fma_f32 v25, -v59, v56, v72
	v_fma_f32 v34, -v66, v31, v73
	v_div_scale_f32 v59, s1, v110, v32, v110
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v21, v0, v32, v21
	v_div_fmas_f32 v25, v25, v67, v56
	v_fmac_f32_e32 v31, v34, v65
	v_mul_f32_e32 v67, v59, v35
	v_fma_f32 v56, -v64, v33, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v51, v25, v32, v108
	v_fma_f32 v0, -v66, v31, v73
	v_fma_f32 v25, -v57, v67, v59
	v_fmac_f32_e32 v33, v56, v33
	v_div_scale_f32 v66, s6, v111, v32, v111
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v0, v0, v65, v31
	v_fmac_f32_e32 v67, v25, v35
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v25, v66, v33
	v_div_scale_f32 v72, null, v32, v32, v20
	v_div_scale_f32 v73, null, v32, v32, v18
	v_div_scale_f32 v65, s0, v20, v32, v20
	v_rcp_f32_e32 v34, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v31, v73
	v_div_scale_f32 v74, null, v32, v32, v19
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v21, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v75, v74
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v56, -v72, v34, 1.0
	v_fma_f32 v80, -v73, v31, 1.0
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v34, v56, v34
	v_div_fixup_f32 v56, v0, v32, v109
	v_fma_f32 v0, -v57, v67, v59
	v_fma_f32 v57, -v64, v25, v66
	v_fmac_f32_e32 v31, v80, v31
	v_mul_f32_e32 v59, v65, v34
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v80, -v74, v75, 1.0
	v_div_fmas_f32 v0, v0, v35, v67
	v_fmac_f32_e32 v25, v57, v33
	v_div_scale_f32 v67, s1, v18, v32, v18
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v88, 0xffff0000, v29
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v35, -v72, v59, v65
	v_div_fixup_f32 v57, v0, v32, v110
	v_fma_f32 v0, -v64, v25, v66
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v75, v80, v75
	v_fmac_f32_e32 v59, v35, v34
	v_mul_f32_e32 v35, v67, v31
	v_div_scale_f32 v66, null, v88, v88, v100
	v_div_scale_f32 v64, s7, v19, v32, v19
	v_div_fmas_f32 v0, v0, v33, v25
	v_fma_f32 v25, -v72, v59, v65
	v_fma_f32 v33, -v73, v35, v67
	v_rcp_f32_e32 v65, v66
	v_div_scale_f32 v80, null, v88, v88, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v35, v33, v31 :: v_dual_and_b32 v36, 0xffff0000, v4
	v_mul_f32_e32 v72, v64, v75
	v_rcp_f32_e32 v33, v80
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v83, null, v88, v88, v95
	v_div_fmas_f32 v25, v25, v34, v59
	v_fma_f32 v34, -v74, v72, v64
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v81, -v66, v65, 1.0
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v58, 0xffff0000, v3
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v59, v0, v32, v111
	v_div_fixup_f32 v20, v25, v32, v20
	v_fma_f32 v0, -v73, v35, v67
	v_dual_fmac_f32 v72, v34, v75 :: v_dual_fmac_f32 v65, v81, v65
	v_div_scale_f32 v25, s0, v100, v88, v100
	v_fma_f32 v34, -v80, v33, 1.0
	v_div_scale_f32 v67, null, v88, v88, v103
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v73, null, v88, v88, v102
	v_div_fmas_f32 v0, v0, v31, v35
	v_fma_f32 v31, -v74, v72, v64
	v_mul_f32_e32 v35, v25, v65
	v_fmac_f32_e32 v33, v34, v33
	v_rcp_f32_e32 v34, v67
	v_div_scale_f32 v64, s1, v101, v88, v101
	s_mov_b32 vcc_lo, s7
	v_rcp_f32_e32 v81, v73
	v_div_fmas_f32 v31, v31, v75, v72
	v_fma_f32 v72, -v66, v35, v25
	v_mul_f32_e32 v74, v64, v33
	v_div_fixup_f32 v18, v0, v32, v18
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v75, -v67, v34, 1.0
	v_div_fixup_f32 v19, v31, v32, v19
	v_fmac_f32_e32 v35, v72, v65
	v_fma_f32 v0, -v80, v74, v64
	v_div_scale_f32 v32, null, v88, v88, v92
	v_fmac_f32_e32 v34, v75, v34
	v_div_scale_f32 v31, s6, v103, v88, v103
	v_fma_f32 v72, -v73, v81, 1.0
	v_fma_f32 v25, -v66, v35, v25
	v_fmac_f32_e32 v74, v0, v33
	v_rcp_f32_e32 v75, v32
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v0, v31, v34 :: v_dual_fmac_f32 v81, v72, v81
	v_div_scale_f32 v66, s7, v102, v88, v102
	v_div_fmas_f32 v25, v25, v65, v35
	v_fma_f32 v35, -v80, v74, v64
	v_div_scale_f32 v80, null, v88, v88, v93
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v64, -v67, v0, v31
	v_mul_f32_e32 v72, v66, v81
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v65, -v32, v75, 1.0
	v_div_fmas_f32 v33, v35, v33, v74
	v_rcp_f32_e32 v35, v80
	v_fmac_f32_e32 v0, v64, v34
	v_fma_f32 v74, -v73, v72, v66
	v_fmac_f32_e32 v75, v65, v75
	v_div_scale_f32 v82, s0, v92, v88, v92
	v_div_fixup_f32 v64, v25, v88, v100
	v_div_fixup_f32 v65, v33, v88, v101
	v_fma_f32 v25, -v67, v0, v31
	v_fmac_f32_e32 v72, v74, v81
	v_mul_f32_e32 v31, v82, v75
	v_fma_f32 v33, -v80, v35, 1.0
	v_div_scale_f32 v74, null, v88, v88, v94
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v89, null, v88, v88, v84
	v_div_fmas_f32 v0, v25, v34, v0
	v_fma_f32 v34, -v32, v31, v82
	v_fmac_f32_e32 v35, v33, v35
	v_rcp_f32_e32 v33, v74
	v_fma_f32 v25, -v73, v72, v66
	v_div_scale_f32 v73, s1, v93, v88, v93
	v_fmac_f32_e32 v31, v34, v75
	v_rcp_f32_e32 v34, v83
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v66, v0, v88, v103
	v_div_fmas_f32 v25, v25, v81, v72
	v_mul_f32_e32 v81, v73, v35
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v72, -v74, v33, 1.0
	v_fma_f32 v0, -v32, v31, v82
	v_div_scale_f32 v82, null, v88, v88, v17
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v67, v25, v88, v102
	v_fma_f32 v25, -v80, v81, v73
	v_fmac_f32_e32 v33, v72, v33
	v_div_scale_f32 v32, s6, v94, v88, v94
	v_fma_f32 v72, -v83, v34, 1.0
	v_div_fmas_f32 v0, v0, v75, v31
	v_rcp_f32_e32 v31, v82
	v_fmac_f32_e32 v81, v25, v35
	v_mul_f32_e32 v25, v32, v33
	v_fmac_f32_e32 v34, v72, v34
	v_div_scale_f32 v75, s0, v95, v88, v95
	v_rcp_f32_e32 v90, v89
	v_div_fixup_f32 v72, v0, v88, v92
	v_fma_f32 v0, -v80, v81, v73
	v_fma_f32 v73, -v74, v25, v32
	v_mul_f32_e32 v80, v75, v34
	v_fma_f32 v91, -v82, v31, 1.0
	s_mov_b32 vcc_lo, s1
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v35, v81
	v_fmac_f32_e32 v25, v73, v33
	v_fma_f32 v35, -v83, v80, v75
	v_fmac_f32_e32 v31, v91, v31
	v_div_scale_f32 v81, s1, v17, v88, v17
	v_fma_f32 v91, -v89, v90, 1.0
	v_div_fixup_f32 v73, v0, v88, v93
	v_fma_f32 v0, -v74, v25, v32
	v_fmac_f32_e32 v80, v35, v34
	v_mul_f32_e32 v32, v81, v31
	v_fmac_f32_e32 v90, v91, v90
	v_div_scale_f32 v91, null, v88, v88, v85
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v35, s7, v84, v88, v84
	v_div_fmas_f32 v0, v0, v33, v25
	v_fma_f32 v25, -v83, v80, v75
	v_fma_f32 v33, -v82, v32, v81
	v_rcp_f32_e32 v83, v91
	v_div_scale_f32 v93, null, v88, v88, v86
	v_mul_f32_e32 v92, v35, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v32, v33, v31
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v33, v93
	v_div_fmas_f32 v25, v25, v34, v80
	v_fma_f32 v34, -v89, v92, v35
	v_div_fixup_f32 v74, v0, v88, v94
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v80, -v91, v83, 1.0
	v_fma_f32 v0, -v82, v32, v81
	v_div_fixup_f32 v75, v25, v88, v95
	v_fmac_f32_e32 v92, v34, v90
	v_div_scale_f32 v25, s0, v85, v88, v85
	v_fmac_f32_e32 v83, v80, v83
	v_fma_f32 v34, -v93, v33, 1.0
	v_div_scale_f32 v94, null, v88, v88, v87
	s_mov_b32 vcc_lo, s1
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v31, v32
	v_fma_f32 v31, -v89, v92, v35
	v_dual_mul_f32 v32, v25, v83 :: v_dual_fmac_f32 v33, v34, v33
	v_rcp_f32_e32 v34, v94
	v_div_scale_f32 v35, s1, v86, v88, v86
	v_div_scale_f32 v89, null, v88, v88, v16
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v81, -v91, v32, v25
	v_div_fmas_f32 v31, v31, v90, v92
	v_mul_f32_e32 v82, v35, v33
	v_rcp_f32_e32 v92, v89
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v94, v34, 1.0
	v_div_fixup_f32 v17, v0, v88, v17
	v_fmac_f32_e32 v32, v81, v83
	v_fma_f32 v0, -v93, v82, v35
	v_div_fixup_f32 v80, v31, v88, v84
	v_fmac_f32_e32 v34, v90, v34
	v_div_scale_f32 v31, s6, v87, v88, v87
	v_div_scale_f32 v84, null, v88, v88, v15
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v81, -v89, v92, 1.0
	v_fma_f32 v25, -v91, v32, v25
	v_fmac_f32_e32 v82, v0, v33
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v0, v31, v34
	v_rcp_f32_e32 v90, v84
	v_fmac_f32_e32 v92, v81, v92
	v_div_scale_f32 v91, s7, v16, v88, v16
	v_div_fmas_f32 v25, v25, v83, v32
	v_fma_f32 v32, -v93, v82, v35
	v_div_scale_f32 v93, null, v88, v88, v14
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v35, -v94, v0, v31
	v_mul_f32_e32 v83, v91, v92
	v_div_fmas_f32 v32, v32, v33, v82
	v_rcp_f32_e32 v33, v93
	v_fma_f32 v81, -v84, v90, 1.0
	v_fmac_f32_e32 v0, v35, v34
	v_fma_f32 v35, -v89, v83, v91
	v_div_scale_f32 v95, s0, v15, v88, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v90, v81, v90
	v_div_fixup_f32 v82, v32, v88, v86
	v_fmac_f32_e32 v83, v35, v92
	v_div_scale_f32 v35, null, v58, v58, v76
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v32, -v93, v33, 1.0
	v_div_fixup_f32 v81, v25, v88, v85
	v_fma_f32 v25, -v94, v0, v31
	v_mul_f32_e32 v31, v95, v90
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v33, v32, v33
	v_rcp_f32_e32 v32, v35
	v_div_fmas_f32 v0, v25, v34, v0
	v_fma_f32 v34, -v84, v31, v95
	v_div_scale_f32 v86, null, v58, v58, v77
	v_fma_f32 v25, -v89, v83, v91
	v_div_scale_f32 v85, s1, v14, v88, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v31, v34, v90
	v_rcp_f32_e32 v34, v86
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v35, v32, 1.0
	s_mov_b32 vcc_lo, s7
	v_mul_f32_e32 v89, v85, v33
	v_div_fmas_f32 v25, v25, v92, v83
	v_div_fixup_f32 v83, v0, v88, v87
	v_fma_f32 v0, -v84, v31, v95
	v_fmac_f32_e32 v32, v91, v32
	v_div_scale_f32 v91, null, v58, v58, v79
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v16, v25, v88, v16
	v_fma_f32 v25, -v93, v89, v85
	v_div_scale_f32 v84, s6, v76, v58, v76
	v_fma_f32 v87, -v86, v34, 1.0
	v_div_fmas_f32 v0, v0, v90, v31
	v_rcp_f32_e32 v31, v91
	v_fmac_f32_e32 v89, v25, v33
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v25, v84, v32 :: v_dual_fmac_f32 v34, v87, v34
	v_div_scale_f32 v87, s0, v77, v58, v77
	v_div_scale_f32 v90, null, v58, v58, v78
	v_div_fixup_f32 v15, v0, v88, v15
	v_fma_f32 v0, -v93, v89, v85
	v_fma_f32 v85, -v35, v25, v84
	v_mul_f32_e32 v92, v87, v34
	v_rcp_f32_e32 v93, v90
	v_fma_f32 v94, -v91, v31, 1.0
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v25, v85, v32
	v_div_fmas_f32 v0, v0, v33, v89
	v_fma_f32 v33, -v86, v92, v87
	v_fmac_f32_e32 v31, v94, v31
	v_div_scale_f32 v85, s1, v79, v58, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v14, v0, v88, v14
	v_fma_f32 v89, -v90, v93, 1.0
	v_fma_f32 v0, -v35, v25, v84
	v_fmac_f32_e32 v92, v33, v34
	v_mul_f32_e32 v33, v85, v31
	v_div_scale_f32 v84, null, v58, v58, v68
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v93, v89, v93
	v_div_scale_f32 v35, s7, v78, v58, v78
	v_div_fmas_f32 v0, v0, v32, v25
	v_fma_f32 v25, -v86, v92, v87
	v_fma_f32 v32, -v91, v33, v85
	v_rcp_f32_e32 v86, v84
	v_div_scale_f32 v88, null, v58, v58, v69
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v87, v35, v93
	v_div_fmas_f32 v25, v25, v34, v92
	v_fmac_f32_e32 v33, v32, v31
	v_rcp_f32_e32 v34, v88
	v_div_fixup_f32 v0, v0, v58, v76
	v_fma_f32 v32, -v90, v87, v35
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v84, v86, 1.0
	v_fma_f32 v76, -v91, v33, v85
	v_div_scale_f32 v85, null, v58, v58, v70
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v25, v25, v58, v77
	v_dual_fmac_f32 v87, v32, v93 :: v_dual_fmac_f32 v86, v89, v86
	v_div_scale_f32 v77, s0, v68, v58, v68
	v_fma_f32 v32, -v88, v34, 1.0
	v_div_fmas_f32 v31, v76, v31, v33
	v_rcp_f32_e32 v76, v85
	v_fma_f32 v33, -v90, v87, v35
	v_mul_f32_e32 v35, v77, v86
	v_fmac_f32_e32 v34, v32, v34
	v_div_scale_f32 v89, s1, v69, v58, v69
	v_div_scale_f32 v90, null, v58, v58, v71
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v31, v31, v58, v79
	v_div_fmas_f32 v32, v33, v93, v87
	v_fma_f32 v33, -v84, v35, v77
	v_mul_f32_e32 v87, v89, v34
	v_fma_f32 v91, -v85, v76, 1.0
	v_rcp_f32_e32 v92, v90
	v_div_fixup_f32 v32, v32, v58, v78
	v_fmac_f32_e32 v35, v33, v86
	v_fma_f32 v33, -v88, v87, v89
	v_fmac_f32_e32 v76, v91, v76
	v_div_scale_f32 v78, s6, v70, v58, v70
	v_div_scale_f32 v79, null, v58, v58, v13
	v_fma_f32 v77, -v84, v35, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v91, -v90, v92, 1.0
	v_dual_fmac_f32 v87, v33, v34 :: v_dual_mul_f32 v84, v78, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v93, v79
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v92, v91, v92
	v_div_scale_f32 v91, s7, v71, v58, v71
	v_div_fmas_f32 v33, v77, v86, v35
	v_fma_f32 v35, -v88, v87, v89
	v_fma_f32 v77, -v85, v84, v78
	v_div_scale_f32 v89, null, v58, v58, v60
	v_mul_f32_e32 v86, v91, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v88, -v79, v93, 1.0
	v_fmac_f32_e32 v84, v77, v76
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v77, v89
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v33, v33, v58, v68
	v_div_fmas_f32 v34, v35, v34, v87
	v_fma_f32 v35, -v90, v86, v91
	v_fmac_f32_e32 v93, v88, v93
	v_div_scale_f32 v87, s0, v13, v58, v13
	v_fma_f32 v68, -v85, v84, v78
	v_div_scale_f32 v78, null, v58, v58, v61
	v_div_fixup_f32 v34, v34, v58, v69
	v_fmac_f32_e32 v86, v35, v92
	v_mul_f32_e32 v69, v87, v93
	v_fma_f32 v35, -v89, v77, 1.0
	v_rcp_f32_e32 v85, v78
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v88, s1, v60, v58, v60
	v_div_fmas_f32 v68, v68, v76, v84
	v_fma_f32 v76, -v90, v86, v91
	v_fma_f32 v84, -v79, v69, v87
	v_fmac_f32_e32 v77, v35, v77
	v_div_scale_f32 v90, null, v58, v58, v62
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v69, v84, v93
	v_div_fmas_f32 v76, v76, v92, v86
	v_rcp_f32_e32 v84, v90
	v_mul_f32_e32 v86, v88, v77
	v_fma_f32 v91, -v78, v85, 1.0
	v_div_fixup_f32 v35, v68, v58, v70
	v_div_fixup_f32 v68, v76, v58, v71
	v_fma_f32 v70, -v79, v69, v87
	v_fma_f32 v71, -v89, v86, v88
	v_fmac_f32_e32 v85, v91, v85
	v_div_scale_f32 v76, s6, v61, v58, v61
	v_div_scale_f32 v87, null, v58, v58, v63
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v79, -v90, v84, 1.0
	v_div_fmas_f32 v69, v70, v93, v69
	v_fmac_f32_e32 v86, v71, v77
	v_mul_f32_e32 v70, v76, v85
	v_rcp_f32_e32 v71, v87
	v_div_scale_f32 v91, null, v58, v58, v12
	v_fmac_f32_e32 v84, v79, v84
	v_div_scale_f32 v79, s0, v62, v58, v62
	v_div_fixup_f32 v13, v69, v58, v13
	v_fma_f32 v69, -v89, v86, v88
	v_fma_f32 v88, -v78, v70, v76
	v_rcp_f32_e32 v92, v91
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v89, v79, v84
	v_fma_f32 v93, -v87, v71, 1.0
	v_div_fmas_f32 v69, v69, v77, v86
	v_fmac_f32_e32 v70, v88, v85
	v_div_scale_f32 v86, s1, v63, v58, v63
	v_fma_f32 v77, -v90, v89, v79
	v_fmac_f32_e32 v71, v93, v71
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v88, -v91, v92, 1.0
	v_div_fixup_f32 v60, v69, v58, v60
	v_fma_f32 v69, -v78, v70, v76
	v_div_scale_f32 v78, null, v58, v58, v10
	s_mov_b32 vcc_lo, s6
	v_dual_fmac_f32 v89, v77, v84 :: v_dual_mul_f32 v76, v86, v71
	v_fmac_f32_e32 v92, v88, v92
	v_div_scale_f32 v77, s7, v12, v58, v12
	v_div_fmas_f32 v69, v69, v85, v70
	v_rcp_f32_e32 v85, v78
	v_fma_f32 v70, -v90, v89, v79
	v_fma_f32 v79, -v87, v76, v86
	v_mul_f32_e32 v88, v77, v92
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v90, null, v58, v58, v11
	v_div_fmas_f32 v70, v70, v84, v89
	v_fmac_f32_e32 v76, v79, v71
	v_fma_f32 v84, -v91, v88, v77
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v78, v85, 1.0
	v_rcp_f32_e32 v79, v90
	v_div_fixup_f32 v61, v69, v58, v61
	v_div_fixup_f32 v62, v70, v58, v62
	v_fma_f32 v69, -v87, v76, v86
	v_dual_fmac_f32 v88, v84, v92 :: v_dual_fmac_f32 v85, v89, v85
	v_div_scale_f32 v70, s0, v10, v58, v10
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v89, null, v36, v36, v53
	v_div_fmas_f32 v69, v69, v71, v76
	v_fma_f32 v71, -v91, v88, v77
	v_mul_f32_e32 v76, v70, v85
	v_div_scale_f32 v77, null, v36, v36, v52
	v_fma_f32 v84, -v90, v79, 1.0
	s_mov_b32 vcc_lo, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v87, -v78, v76, v70
	v_rcp_f32_e32 v86, v77
	v_div_fmas_f32 v71, v71, v92, v88
	v_fmac_f32_e32 v79, v84, v79
	v_div_scale_f32 v84, s1, v11, v58, v11
	v_fmac_f32_e32 v76, v87, v85
	v_div_fixup_f32 v63, v69, v58, v63
	v_div_fixup_f32 v12, v71, v58, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v88, v84, v79
	v_rcp_f32_e32 v71, v89
	v_fma_f32 v87, -v77, v86, 1.0
	v_fma_f32 v70, -v78, v76, v70
	v_div_scale_f32 v78, null, v36, v36, v55
	v_fma_f32 v69, -v90, v88, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v87, v86
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v87, v78
	v_div_fmas_f32 v70, v70, v85, v76
	v_fmac_f32_e32 v88, v69, v79
	v_div_scale_f32 v69, s6, v52, v36, v52
	v_fma_f32 v91, -v89, v71, 1.0
	v_div_scale_f32 v85, s0, v53, v36, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v76, -v90, v88, v84
	v_mul_f32_e32 v84, v69, v86
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v90, -v78, v87, 1.0
	v_fmac_f32_e32 v71, v91, v71
	v_div_scale_f32 v92, null, v36, v36, v54
	v_fma_f32 v91, -v77, v84, v69
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v87, v90, v87
	v_div_scale_f32 v90, s7, v55, v36, v55
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v93, v85, v71
	v_rcp_f32_e32 v94, v92
	v_div_fmas_f32 v76, v76, v79, v88
	v_fmac_f32_e32 v84, v91, v86
	v_mul_f32_e32 v88, v90, v87
	v_fma_f32 v79, -v89, v93, v85
	v_div_fixup_f32 v10, v70, v58, v10
	v_div_fixup_f32 v11, v76, v58, v11
	v_fma_f32 v58, -v77, v84, v69
	v_fma_f32 v69, -v78, v88, v90
	v_div_scale_f32 v76, null, v36, v36, v44
	v_fmac_f32_e32 v93, v79, v71
	v_fma_f32 v70, -v92, v94, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v88, v69, v87
	v_rcp_f32_e32 v69, v76
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v77, -v89, v93, v85
	v_fmac_f32_e32 v94, v70, v94
	v_div_scale_f32 v70, s1, v54, v36, v54
	v_div_fmas_f32 v58, v58, v86, v84
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v79, null, v36, v36, v45
	v_div_fmas_f32 v71, v77, v71, v93
	v_fma_f32 v77, -v78, v88, v90
	v_mul_f32_e32 v78, v70, v94
	v_fma_f32 v84, -v76, v69, 1.0
	v_rcp_f32_e32 v85, v79
	v_div_fixup_f32 v52, v58, v36, v52
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v86, -v92, v78, v70
	v_fmac_f32_e32 v69, v84, v69
	v_div_scale_f32 v84, s0, v44, v36, v44
	v_div_fmas_f32 v77, v77, v87, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v78, v86, v94
	v_div_fixup_f32 v53, v71, v36, v53
	v_mul_f32_e32 v58, v84, v69
	v_fma_f32 v71, -v79, v85, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v70, -v92, v78, v70
	v_div_fixup_f32 v55, v77, v36, v55
	v_fma_f32 v86, -v76, v58, v84
	v_div_scale_f32 v77, null, v36, v36, v46
	v_fmac_f32_e32 v85, v71, v85
	v_div_scale_f32 v71, s6, v45, v36, v45
	v_div_fmas_f32 v70, v70, v94, v78
	v_fmac_f32_e32 v58, v86, v69
	v_rcp_f32_e32 v87, v77
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v78, v71, v85
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v54, v70, v36, v54
	v_fma_f32 v70, -v76, v58, v84
	v_div_scale_f32 v86, null, v36, v36, v47
	v_fma_f32 v76, -v79, v78, v71
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v58, v70, v69, v58
	v_div_scale_f32 v69, null, v36, v36, v9
	v_fma_f32 v84, -v77, v87, 1.0
	v_rcp_f32_e32 v88, v86
	v_fmac_f32_e32 v78, v76, v85
	v_rcp_f32_e32 v76, v69
	v_div_scale_f32 v70, s0, v46, v36, v46
	v_fmac_f32_e32 v87, v84, v87
	v_div_scale_f32 v84, null, v36, v36, v37
	v_div_fixup_f32 v44, v58, v36, v44
	v_fma_f32 v71, -v79, v78, v71
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v58, -v86, v88, 1.0
	v_rcp_f32_e32 v90, v84
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v69, v76, 1.0
	v_mul_f32_e32 v79, v70, v87
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v88, v58, v88
	v_div_scale_f32 v58, s1, v47, v36, v47
	v_fmac_f32_e32 v76, v89, v76
	v_div_scale_f32 v89, null, v36, v36, v38
	v_div_fmas_f32 v71, v71, v85, v78
	v_fma_f32 v78, -v77, v79, v70
	v_mul_f32_e32 v85, v58, v88
	v_div_scale_f32 v91, s6, v9, v36, v9
	v_fma_f32 v92, -v84, v90, 1.0
	v_rcp_f32_e32 v93, v89
	v_fmac_f32_e32 v79, v78, v87
	v_fma_f32 v78, -v86, v85, v58
	v_mul_f32_e32 v94, v91, v76
	v_fmac_f32_e32 v90, v92, v90
	v_div_scale_f32 v92, s7, v37, v36, v37
	v_div_fixup_f32 v45, v71, v36, v45
	v_fma_f32 v70, -v77, v79, v70
	v_fmac_f32_e32 v85, v78, v88
	v_fma_f32 v71, -v69, v94, v91
	v_mul_f32_e32 v77, v92, v90
	v_fma_f32 v78, -v89, v93, 1.0
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v58, -v86, v85, v58
	v_fmac_f32_e32 v94, v71, v76
	v_fma_f32 v71, -v84, v77, v92
	v_fmac_f32_e32 v93, v78, v93
	v_div_scale_f32 v78, s0, v38, v36, v38
	v_div_fmas_f32 v70, v70, v87, v79
	v_fma_f32 v69, -v69, v94, v91
	v_fmac_f32_e32 v77, v71, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v71, v78, v93
	v_div_scale_f32 v79, null, v36, v36, v39
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v46, v70, v36, v46
	v_div_fmas_f32 v58, v58, v88, v85
	s_mov_b32 vcc_lo, s6
	v_rcp_f32_e32 v85, v79
	v_div_fmas_f32 v69, v69, v76, v94
	v_fma_f32 v76, -v84, v77, v92
	v_fma_f32 v84, -v89, v71, v78
	v_div_fixup_f32 v47, v58, v36, v47
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v9, v69, v36, v9
	v_div_scale_f32 v69, null, v36, v36, v40
	v_fmac_f32_e32 v71, v84, v93
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v70, -v79, v85, 1.0
	v_div_fmas_f32 v76, v76, v90, v77
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v87, null, v36, v36, v8
	v_fma_f32 v58, -v89, v71, v78
	v_fmac_f32_e32 v85, v70, v85
	v_div_scale_f32 v70, null, v36, v36, v6
	v_div_fixup_f32 v37, v76, v36, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v58, v58, v93, v71
	v_div_scale_f32 v77, vcc_lo, v39, v36, v39
	v_rcp_f32_e32 v71, v69
	v_rcp_f32_e32 v78, v70
	v_div_fixup_f32 v38, v58, v36, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v86, v77, v85
	v_div_scale_f32 v76, null, v36, v36, v7
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v61
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v89, v87
	v_fma_f32 v90, -v79, v86, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v84, v76
	v_fma_f32 v58, -v69, v71, 1.0
	v_fma_f32 v88, -v70, v78, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v86, v90, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v55
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v71, v58, v71
	v_div_scale_f32 v58, s0, v40, v36, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v77, -v79, v86, v77
	v_fmac_f32_e32 v78, v88, v78
	v_div_scale_f32 v88, s1, v6, v36, v6
	v_mul_f32_e32 v92, v58, v71
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v77, v77, v85, v86
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	v_fma_f32 v91, -v76, v84, 1.0
	v_fma_f32 v90, -v69, v92, v58
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v61, v61, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v93, -v87, v89, 1.0
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v10, v10
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v86, v13
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v92, v90, v71
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v61, v61
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v94, v88, v78
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v55, v55, s0, 0x40e00000
	v_cvt_i32_f32_e32 v85, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v58, -v69, v92, v58
	v_fmac_f32_e32 v84, v91, v84
	v_fma_f32 v79, -v70, v94, v88
	v_div_scale_f32 v91, s6, v7, v36, v7
	v_fmac_f32_e32 v89, v93, v89
	v_div_scale_f32 v93, s7, v8, v36, v8
	v_div_fmas_f32 v58, v58, v71, v92
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_cvt_i32_f32_e32 v92, v55
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v94, v79, v78
	v_mul_f32_e32 v95, v91, v84
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v53, v53
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v70, -v70, v94, v88
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v88, v10
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v96, v93, v89
	v_fma_f32 v90, -v76, v95, v91
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v52, v52, s0, 0x40e00000
	v_med3_f32 v53, v53, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v70, v70, v78, v94
	v_fma_f32 v69, -v87, v96, v93
	v_fmac_f32_e32 v95, v90, v84
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v90, v52
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s6
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v15, v15
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v96, v69, v89
	v_fma_f32 v69, -v76, v95, v91
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v91, v53
	v_and_b32_e32 v53, 15, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fma_f32 v71, -v87, v96, v93
	v_div_fmas_f32 v69, v69, v84, v95
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v39, v77, v36, v39
	v_div_fixup_f32 v40, v58, v36, v40
	v_div_fmas_f32 v71, v71, v89, v96
	v_div_fixup_f32 v6, v70, v36, v6
	v_div_fixup_f32 v7, v69, v36, v7
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v45, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v8, v71, v36, v8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v41
	v_rndne_f32_e32 v41, v42
	v_rndne_f32_e32 v42, v43
	v_rndne_f32_e32 v43, v48
	v_rndne_f32_e32 v48, v49
	v_rndne_f32_e32 v47, v47
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v0, v0, s0, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v8, v8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v48, v48, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v45, v45, s0, 0x40e00000
	v_med3_f32 v47, v47, s0, 0x40e00000
	v_cvt_i32_f32_e32 v79, v15
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v50
	v_rndne_f32_e32 v50, v51
	v_rndne_f32_e32 v51, v56
	v_rndne_f32_e32 v56, v57
	v_rndne_f32_e32 v57, v59
	v_rndne_f32_e32 v58, v64
	v_rndne_f32_e32 v59, v65
	v_rndne_f32_e32 v64, v66
	v_rndne_f32_e32 v65, v67
	v_rndne_f32_e32 v66, v72
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v54, v54
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v95, v45
	v_cvt_i32_f32_e32 v97, v47
	v_and_b32_e32 v45, 15, v79
	v_and_b32_e32 v47, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 10, v198
	v_and_b32_e32 v79, 16, v198
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v67, v73
	v_rndne_f32_e32 v69, v74
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v71, v80
	v_rndne_f32_e32 v72, v81
	v_rndne_f32_e32 v73, v82
	v_rndne_f32_e32 v74, v83
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v6, v6
	v_rndne_f32_e32 v7, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_med3_f32 v41, v41, s0, 0x40e00000
	v_med3_f32 v42, v42, s0, 0x40e00000
	v_med3_f32 v43, v43, s0, 0x40e00000
	v_med3_f32 v49, v49, s0, 0x40e00000
	v_med3_f32 v50, v50, s0, 0x40e00000
	v_med3_f32 v58, v58, s0, 0x40e00000
	v_med3_f32 v59, v59, s0, 0x40e00000
	v_med3_f32 v64, v64, s0, 0x40e00000
	v_med3_f32 v65, v65, s0, 0x40e00000
	v_med3_f32 v66, v66, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v63, v63, s0, 0x40e00000
	v_med3_f32 v54, v54, s0, 0x40e00000
	v_cvt_i32_f32_e32 v87, v12
	v_cvt_i32_f32_e32 v98, v9
	v_cvt_i32_f32_e32 v105, v8
	v_and_b32_e32 v8, 15, v24
	v_and_b32_e32 v9, 15, v27
	v_and_b32_e32 v12, 15, v48
	v_and_b32_e32 v48, 15, v25
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v24, 4, v202
	v_and_b32_e32 v0, 0x1800, v0
	v_lshlrev_b32_e32 v25, 6, v79
	v_lshlrev_b32_e32 v27, 6, v198
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v40, v40
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v51, v51, s0, 0x40e00000
	v_med3_f32 v56, v56, s0, 0x40e00000
	v_med3_f32 v57, v57, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v71, v71, s0, 0x40e00000
	v_med3_f32 v72, v72, s0, 0x40e00000
	v_med3_f32 v73, v73, s0, 0x40e00000
	v_med3_f32 v74, v74, s0, 0x40e00000
	v_med3_f32 v60, v60, s0, 0x40e00000
	v_med3_f32 v62, v62, s0, 0x40e00000
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v38, v38, s0, 0x40e00000
	v_med3_f32 v39, v39, s0, 0x40e00000
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v6, v6, s0, 0x40e00000
	v_med3_f32 v7, v7, s0, 0x40e00000
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v81, v31
	v_cvt_i32_f32_e32 v82, v32
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v93, v54
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v24, v24, v30
	v_add3_u32 v0, 0, v0, v25
	v_and_or_b32 v25, 0x1b00, v27, v26
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v75
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v40, v40, s0, 0x40e00000
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v75, v18
	v_cvt_i32_f32_e32 v76, v19
	v_cvt_i32_f32_e32 v77, v17
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v99, v37
	v_cvt_i32_f32_e32 v100, v38
	v_cvt_i32_f32_e32 v101, v39
	v_cvt_i32_f32_e32 v83, v33
	v_cvt_i32_f32_e32 v84, v34
	v_cvt_i32_f32_e32 v89, v11
	v_cvt_i32_f32_e32 v103, v6
	v_cvt_i32_f32_e32 v104, v7
	v_and_b32_e32 v6, 15, v36
	v_and_b32_e32 v7, 15, v41
	v_and_b32_e32 v10, 15, v42
	v_and_b32_e32 v11, 15, v43
	v_and_b32_e32 v13, 15, v49
	v_and_b32_e32 v15, 15, v50
	v_and_b32_e32 v31, 15, v58
	v_and_b32_e32 v32, 15, v59
	v_and_b32_e32 v33, 15, v64
	v_and_b32_e32 v34, 15, v65
	v_and_b32_e32 v35, 15, v66
	v_and_b32_e32 v49, 15, v81
	v_and_b32_e32 v50, 15, v82
	v_and_b32_e32 v59, 15, v63
	v_and_b32_e32 v63, 15, v90
	v_and_b32_e32 v64, 15, v91
	v_and_b32_e32 v65, 15, v92
	v_and_b32_e32 v66, 15, v93
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, v0, v24, v28
	v_xad_u32 v28, v25, v204, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v78, v16
	v_cvt_i32_f32_e32 v80, v14
	v_cvt_i32_f32_e32 v102, v40
	v_and_b32_e32 v14, 15, v21
	v_and_b32_e32 v16, 15, v51
	v_and_b32_e32 v17, 15, v56
	v_and_b32_e32 v18, 15, v57
	v_and_b32_e32 v19, 15, v20
	v_and_b32_e32 v20, 15, v75
	v_and_b32_e32 v21, 15, v76
	v_and_b32_e32 v39, 15, v77
	v_and_b32_e32 v40, 15, v71
	v_and_b32_e32 v41, 15, v72
	v_and_b32_e32 v42, 15, v73
	v_and_b32_e32 v43, 15, v74
	v_and_b32_e32 v55, 15, v86
	v_and_b32_e32 v56, 15, v60
	v_and_b32_e32 v57, 15, v61
	v_and_b32_e32 v58, 15, v62
	v_and_b32_e32 v71, 15, v98
	v_and_b32_e32 v72, 15, v99
	v_and_b32_e32 v73, 15, v100
	v_and_b32_e32 v74, 15, v101
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v68
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v67, v67, s0, 0x40e00000
	v_med3_f32 v69, v69, s0, 0x40e00000
	v_med3_f32 v70, v70, s0, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v46, v46
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v0, v[6:9]
	ds_store_b128 v0, v[14:17] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[6:9], v28
	ds_load_b128 v[14:17], v28 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[31:34]
	ds_store_b128 v0, v[39:42] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[24:27], v28
	ds_load_b128 v[30:33], v28 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[47:50]
	ds_store_b128 v0, v[55:58] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[39:42], v28
	ds_load_b128 v[47:50], v28 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[63:66]
	ds_store_b128 v0, v[71:74] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[55:58], v28
	ds_load_b128 v[63:66], v28 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[10:13]
	ds_store_b128 v0, v[18:21] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v28
	ds_load_b128 v[18:21], v28 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v68, v68, s0, 0x40e00000
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v70, v70
	v_med3_f32 v44, v44, s0, 0x40e00000
	v_med3_f32 v46, v46, s0, 0x40e00000
	v_cvt_i32_f32_e32 v68, v68
	v_and_b32_e32 v36, 15, v67
	v_and_b32_e32 v37, 15, v69
	v_and_b32_e32 v38, 15, v70
	v_cvt_i32_f32_e32 v94, v44
	v_cvt_i32_f32_e32 v96, v46
	v_and_b32_e32 v44, 15, v78
	v_and_b32_e32 v46, 15, v80
	v_and_b32_e32 v51, 15, v83
	v_and_b32_e32 v52, 15, v84
	v_and_b32_e32 v54, 15, v68
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[35:38]
	ds_store_b128 v0, v[43:46] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[34:37], v28
	ds_load_b128 v[43:46], v28 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v60, 15, v87
	v_and_b32_e32 v61, 15, v88
	v_and_b32_e32 v62, 15, v89
	v_and_b32_e32 v67, 15, v94
	v_and_b32_e32 v68, 15, v95
	v_and_b32_e32 v69, 15, v96
	v_and_b32_e32 v70, 15, v97
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[51:54]
	ds_store_b128 v0, v[59:62] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[51:54], v28
	ds_load_b128 v[59:62], v28 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v75, 15, v102
	v_and_b32_e32 v76, 15, v103
	v_and_b32_e32 v77, 15, v104
	v_and_b32_e32 v78, 15, v105
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v6, v14, 4, v6
	v_lshl_or_b32 v14, v15, 4, v7
	v_lshl_or_b32 v15, v16, 4, v8
	v_lshl_or_b32 v16, v17, 4, v9
	v_lshl_or_b32 v17, v18, 4, v10
	v_lshl_or_b32 v18, v19, 4, v11
	v_lshl_or_b32 v19, v30, 4, v24
	v_lshl_or_b32 v24, v33, 4, v27
	v_lshl_or_b32 v33, v50, 4, v42
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v42, 3, v202
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[67:70]
	ds_store_b128 v0, v[75:78] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[67:70], v28
	ds_load_b128 v[71:74], v28 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s0, s33, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_lshl_or_b32 v0, s57, 7, v42
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s0, s33, s0
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v12, v20, 4, v12
	v_lshl_or_b32 v13, v21, 4, v13
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s0, 1
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v27, v45, 4, v36
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[7:8], null, v5, s0, v[0:1]
	v_mad_u64_u32 v[8:9], null, v200, s0, v[0:1]
	v_mad_u64_u32 v[9:10], null, v201, s0, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v28, v46, 4, v37
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[10:11], null, v203, s0, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v16.l
	v_and_b16 v0.h, 0xff, v15.l
	v_lshlrev_b16 v3.l, 8, v14.l
	v_and_b16 v4.l, 0xff, v6.l
	v_lshlrev_b16 v5.l, 8, v13.l
	v_and_b16 v5.h, 0xff, v12.l
	v_lshlrev_b16 v6.l, 8, v18.l
	v_and_b16 v6.h, 0xff, v17.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v20, v31, 4, v25
	v_lshl_or_b32 v21, v32, 4, v26
	v_lshl_or_b32 v25, v43, 4, v34
	v_lshl_or_b32 v26, v44, 4, v35
	v_lshl_or_b32 v36, v61, 4, v53
	v_lshl_or_b32 v37, v62, 4, v54
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v0.h, v0.l
	v_or_b16 v11.l, v4.l, v3.l
	v_or_b16 v12.h, v5.h, v5.l
	v_or_b16 v12.l, v6.h, v6.l
	v_cndmask_b32_e64 v7, 0x80000000, v7, s5
	v_lshlrev_b16 v5.l, 8, v28.l
	v_and_b16 v5.h, 0xff, v27.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v30, v47, 4, v39
	v_lshl_or_b32 v31, v48, 4, v40
	v_lshl_or_b32 v32, v49, 4, v41
	v_lshl_or_b32 v34, v59, 4, v51
	v_lshl_or_b32 v35, v60, 4, v52
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v45, v73, 4, v69
	v_lshl_or_b32 v46, v74, 4, v70
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v24.l
	v_and_b16 v0.h, 0xff, v21.l
	v_lshlrev_b16 v3.l, 8, v20.l
	v_and_b16 v4.l, 0xff, v19.l
	v_lshlrev_b16 v6.l, 8, v26.l
	v_and_b16 v6.h, 0xff, v25.l
	buffer_store_b64 v[11:12], v7, s[8:11], 0 offen
	v_or_b16 v12.h, v5.h, v5.l
	v_lshlrev_b16 v5.l, 8, v37.l
	v_and_b16 v5.h, 0xff, v36.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v38, v63, 4, v55
	v_lshl_or_b32 v39, v64, 4, v56
	v_lshl_or_b32 v40, v65, 4, v57
	v_lshl_or_b32 v41, v66, 4, v58
	v_lshl_or_b32 v43, v71, 4, v67
	v_lshl_or_b32 v44, v72, 4, v68
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v0.h, v0.l
	v_or_b16 v11.l, v4.l, v3.l
	v_or_b16 v12.l, v6.h, v6.l
	v_cndmask_b32_e64 v7, 0x80000000, v8, s4
	v_lshlrev_b16 v0.l, 8, v33.l
	v_and_b16 v0.h, 0xff, v32.l
	v_lshlrev_b16 v3.l, 8, v31.l
	v_and_b16 v4.l, 0xff, v30.l
	v_lshlrev_b16 v6.l, 8, v35.l
	v_and_b16 v6.h, 0xff, v34.l
	v_or_b16 v8.h, v5.h, v5.l
	v_lshlrev_b16 v5.l, 8, v46.l
	v_and_b16 v5.h, 0xff, v45.l
	buffer_store_b64 v[11:12], v7, s[8:11], 0 offen
	v_or_b16 v7.h, v0.h, v0.l
	v_or_b16 v7.l, v4.l, v3.l
	v_or_b16 v8.l, v6.h, v6.l
	v_lshlrev_b16 v0.l, 8, v41.l
	v_and_b16 v0.h, 0xff, v40.l
	v_lshlrev_b16 v3.l, 8, v39.l
	v_and_b16 v4.l, 0xff, v38.l
	v_lshlrev_b16 v6.l, 8, v44.l
	v_and_b16 v6.h, 0xff, v43.l
	v_or_b16 v12.h, v5.h, v5.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v5, 2, v79
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	v_or_b16 v11.h, v0.h, v0.l
	v_or_b16 v11.l, v4.l, v3.l
	v_or_b16 v12.l, v6.h, v6.l
	v_cndmask_b32_e64 v0, 0x80000000, v10, s2
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v6, 2, v199
	v_add_nc_u32_e32 v5, 0, v5
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[7:8], v9, s[8:11], 0 offen
	buffer_store_b64 v[11:12], v0, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v42
	v_mov_b16_e32 v4.l, v29.h
	v_mov_b16_e32 v3.l, v22.h
	v_add3_u32 v5, v5, v6, v42
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s0, 24
	.loc	1 1254 13 is_stmt 0             ; ragged.py:1254:13
	v_add_nc_u32_e32 v7, s54, v23
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s33, s33, s0
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s33, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	ds_store_b64 v0, v[3:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v5
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v3, v7, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v4, 0xc0, v198
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[34:35], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[52:53], v[1:2]
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_and_b32 s9, s31, 0xffff
	s_mov_b32 s8, s30
	v_cmp_eq_u32_e64 s1, 0, v4
	v_add_lshl_u32 v1, v3, s57, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_and_b32 vcc_lo, s1, s0
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[8:11], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp64:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 292
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
		.amdhsa_next_free_sgpr 63
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 63
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 292
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 29000
; TotalNumSgprs: 65
; NumVgprs: 256
; ScratchSize: 292
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 65
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
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp19-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 292
    .sgpr_count:     65
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 72
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
