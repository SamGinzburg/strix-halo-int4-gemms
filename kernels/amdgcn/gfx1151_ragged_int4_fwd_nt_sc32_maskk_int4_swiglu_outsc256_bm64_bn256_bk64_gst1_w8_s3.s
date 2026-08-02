	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[48:49], s[0:1], 0x5c
	v_dual_mov_b32 v139, v0 :: v_dual_mov_b32 v44, 0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v140, 4, v139
	v_lshlrev_b32_e32 v8, 4, v139
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
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
	s_sub_i32 s4, s49, s8
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
	s_ashr_i32 s13, s4, 31
	s_sub_i32 s11, s5, s6
	s_add_i32 s12, s3, 1
	s_sub_i32 s14, s11, s10
	s_cmp_ge_u32 s11, s10
	s_load_b128 s[4:7], s[0:1], 0x28
	s_cselect_b32 s3, s12, s3
	s_cselect_b32 s11, s14, s11
	s_add_i32 s12, s3, 1
	s_cmp_ge_u32 s11, s10
	s_cselect_b32 s3, s12, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s14, s3, s13
	s_sub_i32 s49, s14, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s49, s9
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
	s_load_b64 s[46:47], s[2:3], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s2, s6, s10
	s_addc_u32 s3, s7, s11
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s4, s8, s10
	s_addc_u32 s5, s9, s11
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[34:35], s[2:3], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[44:45], s[4:5], 0x0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v0, s2, s46, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s47, 0, s2
	v_add_nc_u32_e32 v32, s46, v140
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
	v_cmp_gt_i64_e64 s2, s[44:45], v[0:1]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[34:35], v[2:3]
	v_cmp_le_i64_e64 s6, s[34:35], v[4:5]
	v_cmp_le_i64_e64 s7, s[34:35], v[6:7]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[44:45], v[2:3]
	v_cmp_gt_i64_e64 s8, s[44:45], v[4:5]
	v_cmp_gt_i64_e64 s9, s[44:45], v[6:7]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s5, vcc_lo, s2
	s_and_b32 s4, s3, s4
	s_and_b32 s3, s6, s8
	s_and_b32 s2, s7, s9
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cmp_gt_i32 s48, 0
	s_mov_b32 s6, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v128, s46, v140
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v109, 8, v139
	v_and_b32_e32 v110, 0x80, v139
	v_lshlrev_b32_e32 v114, 4, v139
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp4:
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v177, 16, v128
	v_add_nc_u32_e32 v127, 32, v128
	v_add_nc_u32_e32 v179, 48, v128
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr109
                                        ; implicit-def: $vgpr110
                                        ; implicit-def: $vgpr114
                                        ; implicit-def: $vgpr128
                                        ; implicit-def: $vgpr177
                                        ; implicit-def: $vgpr127
                                        ; implicit-def: $vgpr179
.LBB0_3:                                ; %Flow576
	s_load_b128 s[28:31], s[0:1], 0x40
	v_dual_mov_b32 v47, 0 :: v_dual_and_b32 v180, 0xf0, v139
	v_dual_mov_b32 v45, 0 :: v_dual_and_b32 v192, 15, v139
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v255, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v223, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v251, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v198, 0
	v_mov_b32_e32 v133, 0
	v_mov_b32_e32 v203, 0
	v_mov_b32_e32 v125, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[20:27], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s8, s46, v192
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s47, 0, s8
	s_load_b32 s50, s[0:1], 0x58
	v_add_co_u32 v2, vcc_lo, v0, 16
	v_add_co_ci_u32_e64 v3, null, 0, v1, vcc_lo
	v_add_co_u32 v4, vcc_lo, v0, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v1, vcc_lo
	v_add_co_u32 v6, vcc_lo, v0, 48
	v_add_co_ci_u32_e64 v7, null, 0, v1, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[34:35], v[0:1]
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s16, s6, s10
	s_addc_u32 s17, s7, s11
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[44:45], v[0:1]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[34:35], v[2:3]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[44:45], v[2:3]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[34:35], v[4:5]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s9, s[44:45], v[4:5]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[34:35], v[6:7]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s7
	.loc	1 1214 25 is_stmt 1             ; ragged.py:1214:25
	s_load_b32 s7, s[16:17], 0x0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[44:45], v[6:7]
	.loc	1 1046 20 is_stmt 0             ; ragged.py:1046:20
	s_and_b32 s0, s0, s8
	s_and_b32 s1, s1, s9
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_dual_mov_b32 v39, 0 :: v_dual_add_nc_u32 v0, s46, v192
	v_mov_b32_e32 v210, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s6, s6, s10
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_lshl_b32 s10, s14, 8
	s_lshl_b32 s11, s13, 8
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_add_nc_u32_e32 v3, 48, v0
	v_dual_mov_b32 v182, v192 :: v_dual_add_nc_u32 v1, 16, v0
	v_dual_mov_b32 v211, 0 :: v_dual_add_nc_u32 v2, 32, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mul_lo_u32 v3, s48, v3
	v_mul_lo_u32 v1, s48, v1
	v_mul_lo_u32 v0, s48, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v2, s48, v2
	v_bfe_i32 v4, v139, 3, 1
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s8, s48, s7
	v_dual_mov_b32 v40, 0 :: v_dual_lshlrev_b32 v5, 3, v139
	s_lshl_b32 s9, s8, 1
	s_mul_i32 s8, s8, s33
	v_dual_mov_b32 v115, 0 :: v_dual_lshlrev_b32 v114, 1, v3
	s_lshl_b32 s8, s8, 1
	v_dual_mov_b32 v120, 0 :: v_dual_lshlrev_b32 v69, 1, v1
	v_add3_u32 v13, s8, s10, v139
	s_lshl_b32 s8, s7, 1
	v_dual_mov_b32 v116, 0 :: v_dual_lshlrev_b32 v71, 1, v0
	s_or_b32 s8, s8, 1
	v_dual_mov_b32 v93, 0 :: v_dual_lshlrev_b32 v38, 1, v2
	s_mul_i32 s8, s33, s8
	s_mul_i32 s7, s33, s7
	v_add3_u32 v14, s8, s10, v140
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v73, 0
	v_mov_b32_e32 v81, 0
	s_lshl_b32 s7, s7, 1
	s_delay_alu instid0(VALU_DEP_3)
	v_subrev_nc_u32_e32 v14, s11, v14
	v_mov_b32_e32 v100, 0
	v_subrev_nc_u32_e32 v13, s11, v13
	v_mov_b32_e32 v174, 0
	v_bfe_i32 v6, v139, 7, 1
	v_add_nc_u32_e32 v3, 0xf0, v14
	v_add_nc_u32_e32 v0, 0xe0, v14
	v_add_nc_u32_e32 v2, 0xc0, v14
	v_dual_mov_b32 v117, 0 :: v_dual_lshlrev_b32 v110, 1, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v1, s50, v3
	v_mul_lo_u32 v0, s50, v0
	v_dual_mov_b32 v102, 0 :: v_dual_add_nc_u32 v3, 0xb0, v14
	v_mov_b32_e32 v171, 0
	v_add_nc_u32_e32 v13, 16, v14
	v_dual_mov_b32 v208, 0 :: v_dual_and_b32 v7, 0x70, v8
	scratch_store_b32 off, v1, off offset:176 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0xd0, v14
	v_dual_mov_b32 v209, 0 :: v_dual_and_b32 v4, 0x88, v4
	v_mov_b32_e32 v63, 0
	v_dual_mov_b32 v206, 0 :: v_dual_and_b32 v5, 0x700, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_mul_lo_u32 v1, s50, v1
	scratch_store_b32 off, v0, off offset:180 ; 4-byte Folded Spill
	v_dual_mov_b32 v61, 0 :: v_dual_add_nc_u32 v0, 0xa0, v14
	v_dual_mov_b32 v91, 0 :: v_dual_and_b32 v6, 0x88, v6
	v_or_b32_e32 v9, v4, v7
	v_mul_lo_u32 v0, s50, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:184
	scratch_store_b32 off, v139, off offset:324
	v_mul_lo_u32 v1, s50, v2
	v_add_nc_u32_e32 v2, 0x70, v14
	v_mov_b32_e32 v82, 0
	v_or3_b32 v4, v7, v5, v4
	v_dual_mov_b32 v204, 0 :: v_dual_lshlrev_b32 v11, 2, v180
	scratch_store_b32 off, v0, off offset:196 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0x80, v14
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v217, 0
	s_or_b32 s9, s9, 1
	v_xor_b32_e32 v7, 8, v9
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v0, s50, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:188
	scratch_store_b32 off, v140, off offset:328
	v_mul_lo_u32 v1, s50, v3
	v_dual_mov_b32 v170, 0 :: v_dual_add_nc_u32 v3, 0x60, v14
	v_mov_b32_e32 v74, 0
	s_mul_i32 s9, s33, s9
	scratch_store_b32 off, v0, off offset:204 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s50, v2
	v_add_nc_u32_e32 v2, 48, v14
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:192
	scratch_store_b32 off, v192, off offset:332
	v_add_nc_u32_e32 v1, 0x90, v14
	v_dual_mov_b32 v207, 0 :: v_dual_lshlrev_b32 v10, 1, v139
	v_mov_b32_e32 v121, 0
	scratch_store_b32 off, v0, off offset:208 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s50, v1
	v_mul_lo_u32 v0, s50, v3
	v_mov_b32_e32 v219, 0
	v_add_nc_u32_e32 v3, 32, v14
	v_mov_b32_e32 v41, 0
	v_dual_mov_b32 v125, 0 :: v_dual_and_b32 v10, 28, v10
	v_mov_b32_e32 v203, 0
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v1, off offset:200
	scratch_store_b32 off, v180, off offset:336
	scratch_store_b32 off, v0, off offset:212
	v_add_nc_u32_e32 v1, 0x50, v14
	v_dual_mov_b32 v133, 0 :: v_dual_lshlrev_b32 v12, 1, v180
	v_dual_mov_b32 v202, 0 :: v_dual_add_nc_u32 v177, 16, v32
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v0, s50, v1
	scratch_store_b32 off, v8, off offset:340 ; 4-byte Folded Spill
	v_add3_u32 v1, s7, s10, v140
	v_dual_mov_b32 v251, 0 :: v_dual_and_b32 v8, 0x7f, v139
	v_dual_mov_b32 v194, 0 :: v_dual_add_nc_u32 v127, 32, v32
	v_mov_b32_e32 v62, 0
	scratch_store_b32 off, v0, off offset:216 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 64, v14
	v_xor_b32_e32 v5, v6, v8
	v_lshlrev_b32_e32 v6, 5, v139
	v_xor_b32_e32 v8, 8, v4
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v179, 48, v32
	v_mul_lo_u32 v0, s50, v0
	v_mov_b32_e32 v68, 0
	v_and_b32_e32 v6, 32, v6
	v_dual_mov_b32 v200, 0 :: v_dual_add_nc_u32 v175, 0, v5
	v_dual_mov_b32 v107, 0 :: v_dual_add_nc_u32 v106, 0, v12
	v_mov_b32_e32 v43, 0
	scratch_store_b32 off, v0, off offset:220 ; 4-byte Folded Spill
	v_subrev_nc_u32_e32 v0, s11, v1
	v_mul_lo_u32 v1, s50, v2
	v_add3_u32 v6, 0, v11, v6
	v_add3_u32 v11, s9, s10, v139
	v_mov_b32_e32 v118, 0
	v_add_nc_u32_e32 v2, 0xe0, v0
	v_mov_b32_e32 v60, 0
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v189, 0
	scratch_store_b32 off, v1, off offset:224 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s50, v3
	v_add_nc_u32_e32 v3, 0xd0, v0
	v_subrev_nc_u32_e32 v11, s11, v11
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v223, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_lshlrev_b32_e32 v21, 1, v11
	scratch_store_b32 off, v1, off offset:228 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s50, v13
	v_add_nc_u32_e32 v13, 0xc0, v0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v190, 0
	v_mov_b32_e32 v87, 0
	scratch_store_b32 off, v1, off offset:232 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s50, v14
	v_add_nc_u32_e32 v14, 0xb0, v0
	v_mov_b32_e32 v124, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v77, 0
	v_mov_b32_e32 v126, 0
	scratch_store_b32 off, v1, off offset:236 ; 4-byte Folded Spill
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v1, 0xf0, v0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v84, 0
	v_mov_b32_e32 v105, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v1, s50, v1
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v76, 0
	v_mov_b32_e32 v255, 0
	scratch_store_b32 off, v1, off offset:240 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s50, v2
	v_mov_b32_e32 v218, 0
	v_add_nc_u32_e32 v2, 0x90, v0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v58, 0
	scratch_store_b32 off, v1, off offset:244 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s50, v3
	v_add_nc_u32_e32 v3, 0x80, v0
	v_mov_b32_e32 v193, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v196, 0
	scratch_store_b32 off, v1, off offset:248 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s50, v13
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v13, 0x70, v0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v98, 0
	scratch_store_b32 off, v1, off offset:252 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s50, v14
	v_add_nc_u32_e32 v14, 0x60, v0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v111, 0
	scratch_store_b32 off, v1, off offset:256 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0xa0, v0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v78, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v1, s50, v1
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v89, 0
	v_mov_b32_e32 v54, 0
	scratch_store_b32 off, v1, off offset:260 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s50, v2
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v2, 64, v0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v44, 0
	scratch_store_b32 off, v1, off offset:264 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s50, v3
	v_add_nc_u32_e32 v3, 48, v0
	v_mov_b32_e32 v137, 0
	v_mov_b32_e32 v53, 0
	v_mov_b32_e32 v45, 0
	v_mov_b32_e32 v47, 0
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s39, 0x31027000
	scratch_store_b32 off, v1, off offset:268 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s50, v13
	v_add_nc_u32_e32 v13, 32, v0
	v_mov_b32_e32 v95, 0
	s_mov_b32 s38, 0x7ffffffe
	s_and_b32 s23, s23, 0xffff
	s_and_b32 s25, s25, 0xffff
	s_and_b32 s27, s27, 0xffff
	s_mov_b32 s12, 0
	scratch_store_b32 off, v1, off offset:272 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s50, v14
	v_dual_mov_b32 v141, 0 :: v_dual_add_nc_u32 v14, 16, v0
	s_lshl_b32 s9, s33, 2
	s_mov_b32 s36, s20
	s_mov_b32 s37, s21
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	scratch_store_b32 off, v1, off offset:276 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0x50, v0
	v_mul_lo_u32 v0, s50, v0
	v_mov_b32_e32 v191, 0
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	v_mul_lo_u32 v1, s50, v1
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	scratch_store_b32 off, v0, off offset:300 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v9
	s_mov_b32 s20, s22
	s_mov_b32 s21, s23
	scratch_store_b32 off, v1, off offset:280 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s50, v2
	scratch_store_b32 off, v0, off offset:304 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v7
	s_mov_b32 s22, s38
	s_mov_b32 s23, s39
	s_mov_b32 s40, s24
	s_mov_b32 s41, s25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:308
	scratch_store_b32 off, v1, off offset:284
	v_mul_lo_u32 v1, s50, v3
	v_add_nc_u32_e32 v0, 0, v4
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_mov_b32 s24, s26
	s_mov_b32 s25, s27
	scratch_store_b32 off, v0, off offset:312 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v8
	scratch_store_b32 off, v1, off offset:288 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s50, v13
	s_mov_b32 s26, s38
	s_mov_b32 s27, s39
	scratch_store_b32 off, v0, off offset:316 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, v6, v10
	scratch_store_b32 off, v1, off offset:292 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, s50, v14
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:320
	scratch_store_b32 off, v1, off offset:296
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x8                            ; 36-byte Folded Reload
	scratch_load_b32 v0, off, off offset:300
	scratch_load_b32 v8, off, off offset:268
	scratch_load_b32 v1, off, off offset:296
	scratch_load_b32 v2, off, off offset:292
	scratch_load_b32 v3, off, off offset:288
	scratch_load_b32 v4, off, off offset:284
	scratch_load_b32 v5, off, off offset:280
	scratch_load_b32 v6, off, off offset:276
	scratch_load_b32 v7, off, off offset:272
	v_mul_lo_u32 v19, v32, s50
	v_mul_lo_u32 v20, v177, s50
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v171, off offset:172
	scratch_store_b32 off, v141, off offset:168
	scratch_store_b32 off, v21, off offset:164
	scratch_store_b32 off, v211, off offset:160
	scratch_store_b32 off, v210, off offset:156
	scratch_store_b32 off, v209, off offset:152
	scratch_store_b32 off, v133, off offset:148
	scratch_store_b32 off, v208, off offset:144
	scratch_store_b32 off, v207, off offset:140
	scratch_store_b32 off, v206, off offset:136
	scratch_store_b32 off, v191, off offset:132
	scratch_store_b32 off, v82, off offset:128
	scratch_store_b32 off, v204, off offset:124
	scratch_store_b32 off, v70, off offset:120
	scratch_store_b32 off, v202, off offset:116
	scratch_store_b32 off, v194, off offset:112
	scratch_store_b32 off, v203, off offset:108
	scratch_store_b32 off, v198, off offset:104
	scratch_store_b32 off, v174, off offset:100
	scratch_store_b32 off, v112, off offset:96
	scratch_store_b32 off, v134, off offset:92
	scratch_store_b32 off, v178, off offset:88
	scratch_store_b32 off, v176, off offset:84
	scratch_store_b32 off, v170, off offset:80
	scratch_store_b32 off, v251, off offset:76
	scratch_store_b32 off, v126, off offset:72
	scratch_store_b32 off, v193, off offset:68
	scratch_store_b32 off, v111, off offset:64
	scratch_store_b32 off, v190, off offset:60
	scratch_store_b32 off, v189, off offset:56
	scratch_store_b32 off, v11, off offset:52
	scratch_store_b32 off, v200, off offset:48
	s_clause 0xb                            ; 48-byte Folded Spill
	scratch_store_b32 off, v188, off offset:44
	scratch_store_b32 off, v199, off offset:40
	scratch_store_b32 off, v205, off offset:36
	scratch_store_b32 off, v201, off offset:32
	scratch_store_b32 off, v187, off offset:28
	scratch_store_b32 off, v197, off offset:24
	scratch_store_b32 off, v219, off offset:20
	scratch_store_b32 off, v218, off offset:16
	scratch_store_b32 off, v217, off offset:12
	scratch_store_b32 off, v124, off offset:8
	scratch_store_b32 off, v196, off offset:4
	scratch_store_b32 off, v195, off
	v_mul_lo_u32 v21, v127, s50
	v_cmp_gt_i32_e64 s7, s50, v182
	v_mul_lo_u32 v22, v179, s50
	v_mov_b32_e32 v128, v32
	v_mov_b32_e32 v90, v91
	v_add_nc_u32_e32 v19, v19, v182
	v_dual_mov_b32 v91, v41 :: v_dual_add_nc_u32 v20, v20, v182
	s_and_b32 s8, s5, s7
	v_dual_mov_b32 v112, v92 :: v_dual_add_nc_u32 v21, v21, v182
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v19, 0x80000000, v19, s8
	s_and_b32 s8, s4, s7
	v_add_nc_u32_e32 v22, v22, v182
	v_cndmask_b32_e64 v20, 0x80000000, v20, s8
	s_and_b32 s8, s3, s7
	v_mov_b32_e32 v124, v113
	v_cndmask_b32_e64 v21, 0x80000000, v21, s8
	s_and_b32 s8, s2, s7
	v_mov_b32_e32 v113, v48
	v_cndmask_b32_e64 v22, 0x80000000, v22, s8
	v_mov_b32_e32 v142, v51
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_add_i32 s48, s48, -1
	.loc	1 1161 31 is_stmt 1             ; ragged.py:1161:31
	v_mov_b32_e32 v190, s19
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s48, 0
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_mov_b32_e32 v183, s12
	v_dual_mov_b32 v189, s18 :: v_dual_mov_b32 v186, s15
	v_dual_mov_b32 v70, v69 :: v_dual_mov_b32 v69, v223
	v_mov_b32_e32 v109, v35
	v_dual_mov_b32 v187, s16 :: v_dual_mov_b32 v184, s13
	v_dual_mov_b32 v188, s17 :: v_dual_mov_b32 v133, v122
	v_dual_mov_b32 v122, v100 :: v_dual_mov_b32 v185, s14
	v_mov_b32_e32 v92, v42
	v_dual_mov_b32 v82, v177 :: v_dual_mov_b32 v111, v39
	v_dual_mov_b32 v100, v43 :: v_dual_mov_b32 v141, v38
	v_mov_b32_e32 v11, v104
	v_dual_mov_b32 v127, v49 :: v_dual_mov_b32 v104, v46
	v_dual_mov_b32 v181, v50 :: v_dual_mov_b32 v134, v73
	v_dual_mov_b32 v73, v108 :: v_dual_mov_b32 v126, v81
	v_mov_b32_e32 v81, v98
	v_mov_b32_e32 v98, v78
	v_mov_b32_e32 v78, v45
	v_mov_b32_e32 v108, v99
	s_waitcnt vmcnt(8)
	v_dual_mov_b32 v99, v47 :: v_dual_add_nc_u32 v0, v0, v182
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v12, v8, v182
	scratch_load_b32 v8, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v1, v1, v182
	v_cndmask_b32_e64 v0, 0x80000000, v0, s7
	v_cndmask_b32_e64 v12, 0x80000000, v12, s7
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s7
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, v8, v182
	scratch_load_b32 v8, off, off offset:260 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v2, v2, v182
	v_cndmask_b32_e64 v13, 0x80000000, v13, s7
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v2, 0x80000000, v2, s7
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v14, v8, v182
	scratch_load_b32 v8, off, off offset:256 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v3, v3, v182
	v_cndmask_b32_e64 v14, 0x80000000, v14, s7
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v3, 0x80000000, v3, s7
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v15, v8, v182
	scratch_load_b32 v8, off, off offset:252 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v4, v4, v182
	v_cndmask_b32_e64 v15, 0x80000000, v15, s7
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v4, 0x80000000, v4, s7
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v16, v8, v182
	scratch_load_b32 v8, off, off offset:248 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v5, v5, v182
	v_cndmask_b32_e64 v16, 0x80000000, v16, s7
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v5, 0x80000000, v5, s7
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, v8, v182
	scratch_load_b32 v8, off, off offset:244 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v6, v6, v182
	v_cndmask_b32_e64 v17, 0x80000000, v17, s7
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v6, 0x80000000, v6, s7
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v18, v8, v182
	scratch_load_b32 v8, off, off offset:240 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v7, v7, v182
	v_cndmask_b32_e64 v18, 0x80000000, v18, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v7, 0x80000000, v7, s7
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v23, v8, v182
	v_cndmask_b32_e64 v23, 0x80000000, v23, s7
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x3
	buffer_load_u8 v19, v19, s[36:39], 0 offen
	buffer_load_u8 v20, v20, s[36:39], 0 offen
	buffer_load_u8 v21, v21, s[36:39], 0 offen
	buffer_load_u8 v22, v22, s[36:39], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0xf
	buffer_load_u8 v0, v0, s[20:23], 0 offen
	buffer_load_u8 v1, v1, s[20:23], 0 offen
	buffer_load_u8 v2, v2, s[20:23], 0 offen
	buffer_load_u8 v3, v3, s[20:23], 0 offen
	buffer_load_u8 v4, v4, s[20:23], 0 offen
	buffer_load_u8 v5, v5, s[20:23], 0 offen
	buffer_load_u8 v6, v6, s[20:23], 0 offen
	buffer_load_u8 v7, v7, s[20:23], 0 offen
	buffer_load_u8 v12, v12, s[20:23], 0 offen
	buffer_load_u8 v13, v13, s[20:23], 0 offen
	buffer_load_u8 v14, v14, s[20:23], 0 offen
	buffer_load_u8 v15, v15, s[20:23], 0 offen
	buffer_load_u8 v16, v16, s[20:23], 0 offen
	buffer_load_u8 v17, v17, s[20:23], 0 offen
	buffer_load_u8 v24, v18, s[20:23], 0 offen
	buffer_load_u8 v23, v23, s[20:23], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(19)
	ds_store_b8 v175, v19
	s_waitcnt vmcnt(18)
	ds_store_b8 v175, v20 offset:256
	s_waitcnt vmcnt(17)
	ds_store_b8 v175, v21 offset:512
	s_waitcnt vmcnt(16)
	ds_store_b8 v175, v22 offset:768
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v8, off, off offset:304 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_b64 v[18:21], v8 offset1:32
	ds_load_2addr_b64 v[223:226], v8 offset0:64 offset1:96
	scratch_load_b32 v8, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_b64 v[227:230], v8 offset1:32
	ds_load_2addr_b64 v[239:242], v8 offset0:64 offset1:96
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v175, v0
	ds_store_b8 v175, v1 offset:256
	ds_store_b8 v175, v2 offset:512
	ds_store_b8 v175, v3 offset:768
	ds_store_b8 v175, v4 offset:1024
	ds_store_b8 v175, v5 offset:1280
	ds_store_b8 v175, v6 offset:1536
	ds_store_b8 v175, v7 offset:1792
	ds_store_b8 v175, v12 offset:2048
	ds_store_b8 v175, v13 offset:2304
	ds_store_b8 v175, v14 offset:2560
	ds_store_b8 v175, v15 offset:2816
	ds_store_b8 v175, v16 offset:3072
	ds_store_b8 v175, v17 offset:3328
	ds_store_b8 v175, v24 offset:3584
	ds_store_b8 v175, v23 offset:3840
	s_clause 0x8                            ; 36-byte Folded Reload
	scratch_load_b32 v0, off, off offset:236
	scratch_load_b32 v8, off, off offset:204
	scratch_load_b32 v1, off, off offset:232
	scratch_load_b32 v2, off, off offset:228
	scratch_load_b32 v3, off, off offset:224
	scratch_load_b32 v4, off, off offset:220
	scratch_load_b32 v5, off, off offset:216
	scratch_load_b32 v6, off, off offset:212
	scratch_load_b32 v7, off, off offset:208
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v0, v0, v182
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v12, v8, v182
	scratch_load_b32 v8, off, off offset:200 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v0, 0x80000000, v0, s7
	v_cndmask_b32_e64 v12, 0x80000000, v12, s7
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, v8, v182
	scratch_load_b32 v8, off, off offset:196 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v2, v2, v182
	v_cndmask_b32_e64 v13, 0x80000000, v13, s7
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v2, 0x80000000, v2, s7
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v14, v8, v182
	scratch_load_b32 v8, off, off offset:192 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v3, v3, v182
	v_cndmask_b32_e64 v14, 0x80000000, v14, s7
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v3, 0x80000000, v3, s7
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v15, v8, v182
	scratch_load_b32 v8, off, off offset:188 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v4, v4, v182
	v_cndmask_b32_e64 v15, 0x80000000, v15, s7
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v4, 0x80000000, v4, s7
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v16, v8, v182
	scratch_load_b32 v8, off, off offset:184 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v5, v5, v182
	v_cndmask_b32_e64 v16, 0x80000000, v16, s7
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v5, 0x80000000, v5, s7
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, v8, v182
	scratch_load_b32 v8, off, off offset:180 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v6, v6, v182
	v_cndmask_b32_e64 v17, 0x80000000, v17, s7
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v6, 0x80000000, v6, s7
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v22, v8, v182
	scratch_load_b32 v8, off, off offset:176 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v9, off, off offset:316 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v1, v1, v182
	v_add_nc_u32_e32 v7, v7, v182
	v_cndmask_b32_e64 v22, 0x80000000, v22, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s7
	v_cndmask_b32_e64 v7, 0x80000000, v7, s7
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v23, v8, v182
	scratch_load_b32 v8, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v182, 16, v182
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(1)
	ds_load_2addr_stride64_b64 v[176:179], v9 offset1:4
	v_cndmask_b32_e64 v23, 0x80000000, v23, s7
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0xf
	buffer_load_u8 v24, v0, s[20:23], 0 offen
	buffer_load_u8 v25, v1, s[20:23], 0 offen
	buffer_load_u8 v26, v2, s[20:23], 0 offen
	buffer_load_u8 v27, v3, s[20:23], 0 offen
	buffer_load_u8 v4, v4, s[20:23], 0 offen
	buffer_load_u8 v5, v5, s[20:23], 0 offen
	buffer_load_u8 v6, v6, s[20:23], 0 offen
	buffer_load_u8 v7, v7, s[20:23], 0 offen
	buffer_load_u8 v12, v12, s[20:23], 0 offen
	buffer_load_u8 v13, v13, s[20:23], 0 offen
	buffer_load_u8 v14, v14, s[20:23], 0 offen
	buffer_load_u8 v15, v15, s[20:23], 0 offen
	buffer_load_u8 v16, v16, s[20:23], 0 offen
	buffer_load_u8 v17, v17, s[20:23], 0 offen
	buffer_load_u8 v22, v22, s[20:23], 0 offen
	buffer_load_u8 v23, v23, s[20:23], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(16)
	ds_load_2addr_stride64_b64 v[0:3], v8 offset1:4
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b8 v175, v24
	s_waitcnt vmcnt(14)
	ds_store_b8 v175, v25 offset:256
	s_waitcnt vmcnt(13)
	ds_store_b8 v175, v26 offset:512
	s_waitcnt vmcnt(12)
	ds_store_b8 v175, v27 offset:768
	s_waitcnt vmcnt(11)
	ds_store_b8 v175, v4 offset:1024
	s_waitcnt vmcnt(10)
	ds_store_b8 v175, v5 offset:1280
	s_waitcnt vmcnt(9)
	ds_store_b8 v175, v6 offset:1536
	s_waitcnt vmcnt(8)
	ds_store_b8 v175, v7 offset:1792
	s_waitcnt vmcnt(7)
	ds_store_b8 v175, v12 offset:2048
	s_waitcnt vmcnt(6)
	ds_store_b8 v175, v13 offset:2304
	s_waitcnt vmcnt(5)
	ds_store_b8 v175, v14 offset:2560
	s_waitcnt vmcnt(4)
	ds_store_b8 v175, v15 offset:2816
	s_waitcnt vmcnt(3)
	ds_store_b8 v175, v16 offset:3072
	s_waitcnt vmcnt(2)
	ds_store_b8 v175, v17 offset:3328
	s_waitcnt vmcnt(1)
	ds_store_b8 v175, v22 offset:3584
	s_waitcnt vmcnt(0)
	ds_store_b8 v175, v23 offset:3840
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[251:254], v8 offset1:4
	v_mov_b32_e32 v8, v40
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[191:198], v[0:1], v[18:19], v[183:190] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[199:206], v[2:3], v[18:19], v[183:190] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[207:214], v[0:1], v[20:21], v[183:190] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[215:222], v[2:3], v[20:21], v[183:190] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[231:238], v[0:1], v[223:224], v[183:190] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[243:250], v[2:3], v[223:224], v[183:190] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[143:150], v[0:1], v[225:226], v[183:190] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[151:158], v[2:3], v[225:226], v[183:190] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[191:198], v[176:177], v[227:228], v[191:198] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[199:206], v[178:179], v[227:228], v[199:206] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[207:214], v[176:177], v[229:230], v[207:214] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[215:222], v[178:179], v[229:230], v[215:222] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[231:238], v[176:177], v[239:240], v[231:238] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[243:250], v[178:179], v[239:240], v[243:250] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[143:150], v[176:177], v[241:242], v[143:150] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[151:158], v[178:179], v[241:242], v[151:158] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[176:179], v9 offset1:4
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[159:166], v[251:252], v[18:19], v[183:190] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[167:174], v[253:254], v[18:19], v[183:190] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[251:252], v[20:21], v[183:190] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[12:19], v[253:254], v[20:21], v[183:190] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[251:252], v[223:224], v[183:190] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[28:35], v[253:254], v[223:224], v[183:190] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[36:43], v[251:252], v[225:226], v[183:190] neg_lo:[1,1,0]
	v_mov_b32_e32 v223, v84
	v_mov_b32_e32 v84, v44
	v_wmma_i32_16x16x16_iu4 v[44:51], v[253:254], v[225:226], v[183:190] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v140, v200
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[159:166], v[176:177], v[227:228], v[159:166] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[12:19], v[178:179], v[229:230], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[36:43], v[176:177], v[241:242], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[44:51], v[178:179], v[241:242], v[44:51] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[176:177], v[229:230], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[176:177], v[239:240], v[20:27] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v176, v191
	v_cvt_f32_i32_e32 v177, v192
	v_cvt_f32_i32_e32 v200, v210
	v_dual_mov_b32 v189, v130 :: v_dual_mov_b32 v130, v65
	v_cvt_f32_i32_e32 v65, v216
	v_mov_b32_e32 v191, v61
	v_cvt_f32_i32_e32 v61, v231
	v_cvt_f32_i32_e32 v192, v232
	v_cvt_f32_i32_e32 v185, v233
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v216, v166
	v_cvt_f32_i32_e32 v166, v18
	v_cvt_f32_i32_e32 v18, v38
	v_mov_b32_e32 v38, v141
	v_cvt_f32_i32_e32 v233, v41
	v_mov_b32_e32 v41, v91
	v_mov_b32_e32 v91, v90
	v_cvt_f32_i32_e32 v232, v42
	v_mov_b32_e32 v42, v92
	v_mov_b32_e32 v92, v112
	v_cvt_f32_i32_e32 v231, v43
	v_dual_mov_b32 v43, v100 :: v_dual_mov_b32 v100, v122
	v_mov_b32_e32 v122, v133
	v_cvt_f32_i32_e32 v210, v44
	v_mov_b32_e32 v44, v84
	v_dual_mov_b32 v84, v223 :: v_dual_mov_b32 v223, v69
	v_mov_b32_e32 v69, v70
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[28:35], v[178:179], v[239:240], v[28:35] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v241, v0
	v_cvt_f32_i32_e32 v240, v1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e32 v0, 0x80000000, v71, vcc_lo
	v_cndmask_b32_e64 v1, 0x80000000, v69, s0
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v180, v201
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v201, v12
	v_cvt_f32_i32_e32 v12, v20
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x1
	buffer_load_u16 v0, v0, s[40:43], 0 offen
	buffer_load_u16 v20, v1, s[40:43], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v38, s1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v229, v205
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v205, v13
	v_cvt_f32_i32_e32 v13, v21
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v230, v204
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v21, v1, s[40:43], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v114, s6
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v204, v14
	v_cvt_f32_i32_e32 v14, v22
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v22, v1, s[40:43], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v1, v110, s[24:27], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v90, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[167:174], v[178:179], v[227:228], v[167:174] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v228, v24
	v_cvt_f32_i32_e32 v24, v33
	v_cvt_f32_i32_e32 v33, v31
	v_cvt_f32_i32_e32 v31, v48
	v_mov_b32_e32 v48, v113
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v252, v196
	v_cvt_f32_i32_e32 v253, v197
	v_cvt_f32_i32_e32 v139, v199
	v_cvt_f32_i32_e32 v199, v209
	v_cvt_f32_i32_e32 v184, v214
	v_cvt_f32_i32_e32 v187, v220
	v_cvt_f32_i32_e32 v209, v221
	v_cvt_f32_i32_e32 v188, v222
	v_cvt_f32_i32_e32 v196, v236
	v_cvt_f32_i32_e32 v197, v238
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v236, v161
	v_cvt_f32_i32_e32 v239, v2
	v_cvt_f32_i32_e32 v238, v3
	v_cvt_f32_i32_e32 v161, v4
	v_cvt_f32_i32_e32 v222, v5
	v_cvt_f32_i32_e32 v221, v6
	v_cvt_f32_i32_e32 v220, v7
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v97, v202
	v_cvt_f32_i32_e32 v9, v207
	v_cvt_f32_i32_e32 v207, v212
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v202, v15
	v_cvt_f32_i32_e32 v15, v23
	v_cvt_f32_i32_e32 v212, v46
	v_mov_b32_e32 v46, v104
	v_mov_b32_e32 v104, v11
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v254, v198
	v_cvt_f32_i32_e32 v242, v203
	v_cvt_f32_i32_e32 v10, v208
	v_mov_b32_e32 v203, v57
	v_cvt_f32_i32_e32 v57, v211
	v_cvt_f32_i32_e32 v208, v213
	v_cvt_f32_i32_e32 v198, v218
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v218, v164
	v_cvt_f32_i32_e32 v164, v171
	v_cvt_f32_i32_e32 v225, v26
	v_cvt_f32_i32_e32 v26, v35
	v_mov_b32_e32 v35, v109
	v_cvt_f32_i32_e32 v109, v29
	v_cvt_f32_i32_e32 v29, v50
	v_mov_b32_e32 v50, v181
	v_cvt_f32_i32_e32 v213, v45
	v_mov_b32_e32 v45, v78
	v_mov_b32_e32 v78, v98
	v_cvt_f32_i32_e32 v211, v47
	v_mov_b32_e32 v47, v99
	v_mov_b32_e32 v99, v108
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v178, v193
	v_cvt_f32_i32_e32 v179, v194
	v_cvt_f32_i32_e32 v194, v219
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v219, v163
	v_cvt_f32_i32_e32 v163, v174
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v193, v234
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v234, v40
	v_mov_b32_e32 v40, v8
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v251, v195
	v_mov_b32_e32 v195, v137
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v224, v27
	v_cvt_f32_i32_e32 v27, v32
	v_mov_b32_e32 v32, v128
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v227, v206
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v206, v28
	v_cvt_f32_i32_e32 v28, v49
	v_mov_b32_e32 v49, v127
	v_cvt_f32_i32_e32 v226, v25
	v_cvt_f32_i32_e32 v25, v34
	v_cvt_f32_i32_e32 v34, v30
	v_cvt_f32_i32_e32 v30, v51
	v_mov_b32_e32 v51, v142
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v186, v215
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v215, v167
	v_cvt_f32_i32_e32 v167, v19
	v_cvt_f32_i32_e32 v19, v39
	v_dual_mov_b32 v39, v111 :: v_dual_mov_b32 v98, v81
	v_mov_b32_e32 v81, v126
	v_mov_b32_e32 v137, v75
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v75, v235
	v_cvt_f32_i32_e32 v183, v237
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v150, v150
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v235, v162
	v_cvt_f32_i32_e32 v162, v173
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v190, v217
	v_cvt_f32_i32_e32 v243, v243
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v237, v160
	v_cvt_f32_i32_e32 v160, v172
	v_cvt_f32_i32_e32 v172, v169
	v_cvt_f32_i32_e32 v169, v170
	v_dual_mov_b32 v108, v73 :: v_dual_mov_b32 v113, v124
	v_mov_b32_e32 v73, v134
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v244, v244
	v_cvt_f32_i32_e32 v245, v245
	v_cvt_f32_i32_e32 v246, v246
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v247, v247
	v_cvt_f32_i32_e32 v248, v248
	v_cvt_f32_i32_e32 v249, v249
	v_cvt_f32_i32_e32 v250, v250
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v156, v156
	v_cvt_f32_i32_e32 v157, v157
	v_cvt_f32_i32_e32 v158, v158
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v159, v159
	v_cvt_f32_i32_e32 v173, v168
	v_cvt_f32_i32_e32 v168, v16
	v_cvt_f32_i32_e32 v16, v36
	v_cvt_f32_i32_e32 v217, v165
	v_cvt_f32_i32_e32 v165, v17
	v_cvt_f32_i32_e32 v17, v37
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v114, 2, v114
	v_add_nc_u32_e32 v38, 2, v38
	v_add_nc_u32_e32 v110, s9, v110
	v_add_nc_u32_e32 v69, 2, v69
	v_add_nc_u32_e32 v71, 2, v71
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v214, 16, v0
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v20, 16, v20
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v23, v214, v176
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v90, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v106
	ds_load_b128 v[4:7], v106 offset:16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v9, v20, v9
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v133, off, off offset:148
	scratch_load_b32 v112, off, off offset:96
	scratch_load_b32 v134, off, off offset:92
	scratch_load_b32 v176, off, off offset:84
	scratch_load_b32 v170, off, off offset:80
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v104, v23, v0 :: v_dual_mul_f32 v23, v214, v177
	v_mov_b32_e32 v177, v82
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v171, off, off offset:172
	scratch_load_b32 v141, off, off offset:168
	scratch_load_b32 v82, off, off offset:128
	scratch_load_b32 v70, off, off offset:120
	v_fmac_f32_e32 v105, v9, v0
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v9, v20, v10
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v103, v9, v1
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v9, v20, v199
	scratch_load_b32 v199, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v135, v9, v2
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v9, v20, v200
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v111, off, off offset:64
	scratch_load_b32 v11, off, off offset:52
	scratch_load_b32 v200, off, off offset:48
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v70, v23, v1 :: v_dual_mul_f32 v23, v214, v178
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v174, off, off offset:100
	scratch_load_b32 v178, off, off offset:88
	v_fmac_f32_e32 v255, v9, v3
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v9, 16, v21
	v_add_nc_u32_e32 v127, 32, v32
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v35, v23, v2
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v23, v214, v179
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v10, v9, v61 :: v_dual_add_nc_u32 v179, 48, v32
	v_mov_b32_e32 v61, v191
	scratch_load_b32 v191, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v48, v10, v0
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v10, v9, v192 :: v_dual_fmac_f32 v223, v23, v3
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v49, v10, v1
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v10, v9, v185
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v51, v10, v2 :: v_dual_mul_f32 v10, v9, v193
	scratch_load_b32 v193, off, off offset:68 ; 4-byte Folded Reload
	v_fmac_f32_e32 v50, v10, v3
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v10, 16, v22
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v21, v10, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v78, v21, v0
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v0, v10, v144 :: v_dual_mul_f32 v21, v139, v214
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v79, v0, v1
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v10, v145
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v178, v0, v2
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v10, v146
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v80, v0, v3
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v214, v251
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v251, off, off offset:76
	scratch_load_b32 v126, off, off offset:72
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v94, v0, v4
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v214, v252
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v95, v0, v5
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v214, v253
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v96, v0, v6
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v214, v254
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v141, v0, v7
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v0, v20, v57 :: v_dual_mov_b32 v57, v203
	scratch_load_b32 v203, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v193, v0, v4
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v20, v207
	scratch_load_b32 v207, off, off offset:140 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v111, v0, v5
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v20, v208
	scratch_load_b32 v208, off, off offset:144 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v11, v0, v6
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v20, v184
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v200, v0, v7
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v9, v75
	v_mov_b32_e32 v75, v137
	v_mov_b32_e32 v137, v195
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v251, v0, v4
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v9, v196
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v126, v0, v5
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v9, v183
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v42, v0, v6
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v9, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v43, v0, v7
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v10, v147
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v61, v0, v4
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v10, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v62, v0, v5
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v10, v149
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v63, v0, v6
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v10, v150
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v68, v0, v7
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[0:3], v106 offset:512
	ds_load_b128 v[4:7], v106 offset:528
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v8, v214, v97
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v136, v8, v3
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v8, v186, v20
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v125, v21, v0
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v21, v214, v140
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v133, v8, v0
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v8, v20, v65 :: v_dual_mov_b32 v65, v130
	v_mov_b32_e32 v130, v189
	scratch_load_b32 v189, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v84, v21, v1
	v_fmac_f32_e32 v56, v8, v1
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v8, v20, v190
	scratch_load_b32 v190, off, off offset:60 ; 4-byte Folded Reload
	v_mul_f32_e32 v21, v214, v180
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v57, v8, v2
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v8, v20, v198
	scratch_load_b32 v198, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v85, v21, v2
	scratch_load_b32 v21, off, off offset:164 ; 4-byte Folded Reload
	v_fmac_f32_e32 v58, v8, v3
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v8, v243, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v102, v8, v0
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v8, v9, v244
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v98, v8, v1
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v8, v9, v245
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v99, v8, v2
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v8, v9, v246
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v101, v8, v3 :: v_dual_mul_f32 v8, v151, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, v8, v0
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v10, v152
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v45, v0, v1
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v10, v153
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v46, v0, v2
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v10, v154
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v47, v0, v3 :: v_dual_mul_f32 v0, v214, v242
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v86, v0, v4
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v230, v214
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(6)
	v_dual_fmac_f32 v203, v0, v5 :: v_dual_mul_f32 v0, v229, v214
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v198, v0, v6
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v227, v214
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v120, v0, v7
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v20, v194
	scratch_load_b32 v194, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v59, v0, v4
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v187, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v117, v0, v5 :: v_dual_mul_f32 v0, v209, v20
	v_fmac_f32_e32 v116, v0, v6
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v188, v20
	scratch_load_b32 v188, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v115, v0, v7
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v9, v247
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v134, v0, v4
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v248, v9
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v100, v0, v5
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v249, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v92, v0, v6
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v250, v9
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v93, v0, v7
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v10, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v44, v0, v4
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v156, v10
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v73, v0, v5 :: v_dual_mul_f32 v0, v157, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v0, v6
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v158, v10
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v81, v0, v7
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(2)
	buffer_load_u16 v0, v21, s[24:27], 0 offen
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v21, s9, v21
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v90, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v106
	ds_load_b128 v[4:7], v106 offset:16
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v214, v159
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v197, off, off offset:24
	scratch_load_b32 v187, off, off offset:28
	scratch_load_b32 v124, off, off offset:8
	scratch_load_b32 v196, off, off offset:4
	scratch_load_b32 v195, off, off
	scratch_load_b32 v209, off, off offset:152
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v191, v8, v0 :: v_dual_mul_f32 v8, v214, v237
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v190, v8, v1
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v214, v236
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v107, v8, v2 :: v_dual_mul_f32 v8, v214, v235
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v189, v8, v3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v20, v241
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v77, v8, v0
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v20, v240
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v76, v8, v1
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v20, v239
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v75, v8, v2
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v20, v238
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v72, v8, v3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v9, v12
	v_mul_f32_e32 v12, v166, v20
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v199, v8, v0 :: v_dual_mul_f32 v8, v9, v13
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v13, v167, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v123, v8, v1 :: v_dual_mul_f32 v8, v9, v14
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v20, v168
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v113, v8, v2 :: v_dual_mul_f32 v8, v9, v15
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v15, v24, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v119, v8, v3 :: v_dual_mul_f32 v8, v10, v16
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v16, v25, v9
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v176, v8, v0
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v10, v17
	v_mul_f32_e32 v17, v26, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v89, v0, v1 :: v_dual_mul_f32 v0, v10, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v18, v28, v10
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v88, v0, v2
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v10, v19 :: v_dual_mul_f32 v19, v29, v10
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v83, v0, v3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v214, v219
	scratch_load_b32 v219, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v188, v0, v4
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v214, v218
	scratch_load_b32 v218, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v138, v0, v5
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v214, v217
	scratch_load_b32 v217, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v132, v0, v6
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v214, v216
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v137, v0, v7
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v20, v161
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v67, v0, v4
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v20, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v66, v0, v5
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v20, v221
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v65, v0, v6
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v20, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v64, v0, v7
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v9, v228
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v219, v0, v4 :: v_dual_mul_f32 v0, v9, v226
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v218, v0, v5
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v9, v225
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v124, v0, v6
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v9, v224
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v217, v0, v7 :: v_dual_mul_f32 v0, v10, v234
	v_fmac_f32_e32 v170, v0, v4
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v10, v233
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v174, v0, v5
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v10, v232
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v171, v0, v6 :: v_dual_mul_f32 v0, v10, v231
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v60, v0, v7
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[0:3], v106 offset:512
	ds_load_b128 v[4:7], v106 offset:528
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v215, v214
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v39, v8, v0 :: v_dual_mul_f32 v8, v214, v173
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v187, v14, v4
	v_fmac_f32_e32 v207, v12, v6
	v_fmac_f32_e32 v41, v15, v5
	v_fmac_f32_e32 v122, v18, v5
	v_dual_fmac_f32 v131, v8, v1 :: v_dual_mul_f32 v8, v214, v172
	v_fmac_f32_e32 v121, v19, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v130, v8, v2
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v214, v169
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v129, v8, v3 :: v_dual_mul_f32 v8, v201, v20
	scratch_load_b32 v201, off, off offset:32 ; 4-byte Folded Reload
	v_fmac_f32_e32 v40, v8, v0
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v20, v205
	scratch_load_b32 v205, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v205, v8, v1
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v20, v204
	scratch_load_b32 v204, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v201, v8, v2
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v20, v202
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v197, v8, v3 :: v_dual_mul_f32 v8, v206, v9
	scratch_load_b32 v206, off, off offset:136 ; 4-byte Folded Reload
	v_dual_fmac_f32 v91, v8, v0 :: v_dual_mul_f32 v8, v9, v109
	v_fmac_f32_e32 v196, v8, v1
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v9, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v195, v8, v2 :: v_dual_mul_f32 v8, v9, v33
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v9, v27
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v112, v8, v3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v210, v10
	scratch_load_b32 v210, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v108, v9, v4
	v_fmac_f32_e32 v194, v8, v0
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v10, v213
	v_mul_f32_e32 v8, v165, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v20, v30, v10 :: v_dual_fmac_f32 v55, v0, v1
	v_mul_f32_e32 v0, v10, v212
	v_dual_mul_f32 v1, v162, v214 :: v_dual_fmac_f32 v208, v8, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v118, v20, v7
	v_fmac_f32_e32 v54, v0, v2
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v10, v211
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v211, off, off offset:160
	scratch_load_b32 v202, off, off offset:116
	v_mul_f32_e32 v2, v163, v214
	v_mul_f32_e32 v10, v10, v31
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v53, v0, v3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v160, v214 :: v_dual_mul_f32 v3, v214, v164
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v209, v2, v7
	v_fmac_f32_e32 v52, v10, v4
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v87, v3, v4 :: v_dual_fmac_f32 v204, v16, v6
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v206, v13, v7
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v210, v1, v6 :: v_dual_fmac_f32 v211, v0, v5
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v202, v17, v7
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v139, off, off offset:324
	scratch_load_b32 v114, off, off offset:340
	scratch_load_b32 v140, off, off offset:328
	scratch_load_b32 v192, off, off offset:332
	scratch_load_b32 v180, off, off offset:336
	v_mov_b32_e32 v106, v35
	s_waitcnt vmcnt(4)
	v_dual_mov_b32 v128, v32 :: v_dual_and_b32 v109, 8, v139
	v_and_b32_e32 v110, 0x80, v139
.LBB0_7:                                ; %._crit_edge
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_dual_mul_f32 v0, 0xbfb8aa3b, v39 :: v_dual_mul_f32 v185, 0xbfb8aa3b, v190
	v_dual_mul_f32 v186, 0xbfb8aa3b, v191 :: v_dual_mul_f32 v1, 0xbfb8aa3b, v210
	v_mul_f32_e32 v90, 0xbfb8aa3b, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_dual_mul_f32 v0, 0xbfb8aa3b, v211 :: v_dual_mul_f32 v5, 0xbfb8aa3b, v137
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v1
	v_dual_mul_f32 v71, 0xbfb8aa3b, v67 :: v_dual_mul_f32 v18, 0xbfb8aa3b, v202
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, s0
	v_mul_f32_e32 v153, 0xbfb8aa3b, v195
	v_dual_mul_f32 v149, 0xbfb8aa3b, v89 :: v_dual_mul_f32 v22, 0xbfb8aa3b, v118
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v2, 0xbfb8aa3b, v209
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_dual_mul_f32 v183, 0xbfb8aa3b, v107 :: v_dual_mul_f32 v184, 0xbfb8aa3b, v189
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v211
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v2
	v_cndmask_b32_e64 v2, 0, 0x42800000, s0
	v_dual_mul_f32 v175, 0xbfb8aa3b, v87 :: v_dual_mul_f32 v182, 0xbfb8aa3b, v188
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v1, v1
	v_cndmask_b32_e64 v9, 0, 0x42800000, s1
	v_fmac_f32_e32 v4, 0xbfb8aa3b, v39
	v_dual_fmac_f32 v2, 0xbfb8aa3b, v210 :: v_dual_mul_f32 v13, 0xbfb8aa3b, v40
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v209
	v_exp_f32_e32 v4, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v10, v2
	v_mul_f32_e32 v2, 0xbfb8aa3b, v129
	v_ldexp_f32 v14, v1, v0
	v_exp_f32_e32 v9, v9
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	v_mul_f32_e32 v1, 0xbfb8aa3b, v208
	v_dual_mul_f32 v13, 0xbfb8aa3b, v206 :: v_dual_mul_f32 v6, 0xbfb8aa3b, v132
	v_mul_f32_e32 v181, 0xbfb8aa3b, v138
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v7, v10, v7
	v_mul_f32_e32 v10, 0xbfb8aa3b, v207
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v13
	v_ldexp_f32 v8, v9, v8
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v10
	v_cndmask_b32_e64 v17, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v168, 0xbfb8aa3b, v65 :: v_dual_fmac_f32 v9, 0xbfb8aa3b, v40
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v206
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v9, v9
	v_dual_fmac_f32 v10, 0xbfb8aa3b, v208 :: v_dual_fmac_f32 v15, 0xbfb8aa3b, v207
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v10, v10
	v_exp_f32_e32 v15, v15
	v_ldexp_f32 v12, v4, v3
	v_mul_f32_e32 v146, 0xbfb8aa3b, v88
	v_ldexp_f32 v9, v9, v0
	v_mul_f32_e32 v0, 0xbfb8aa3b, v91
	v_exp_f32_e32 v17, v17
	v_mul_f32_e32 v162, 0xbfb8aa3b, v199
	v_cndmask_b32_e64 v21, 0, 0x42800000, s1
	v_mul_f32_e32 v158, 0xbfb8aa3b, v219
	v_ldexp_f32 v10, v10, v1
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_mul_f32_e32 v1, 0xbfb8aa3b, v41
	v_ldexp_f32 v13, v15, v13
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v202
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s1
	v_ldexp_f32 v15, v17, v16
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v17, 0xbfb8aa3b, v204
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_dual_mul_f32 v159, 0xbfb8aa3b, v113 :: v_dual_mul_f32 v154, 0xbfb8aa3b, v196
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v91
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v17
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v21, v21
	v_exp_f32_e32 v16, v16
	v_cndmask_b32_e64 v19, 0, 0x42800000, s0
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v41
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s0
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_dual_add_f32 v14, 1.0, v14 :: v_dual_add_f32 v7, 1.0, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v204
	v_exp_f32_e32 v17, v17
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v12, 1.0, v12 :: v_dual_add_f32 v9, 1.0, v9
	v_add_f32_e32 v10, 1.0, v10
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v16, v16, v0
	v_mul_f32_e32 v0, 0xbfb8aa3b, v194
	v_exp_f32_e32 v19, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v12, v12, v39
	v_div_scale_f32 v38, null, v9, v9, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v17, v17, v1
	v_mul_f32_e32 v1, 0xbfb8aa3b, v122
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v28, v26
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v8, 1.0, v8
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v18, v19, v18
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v1
	v_ldexp_f32 v19, v21, v20
	v_mul_f32_e32 v20, 0xbfb8aa3b, v121
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0x42800000, s0
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, s1, v210, v7, v210
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v122
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v25, 0, 0x42800000, s0
	v_mul_f32_e32 v143, 0xbfb8aa3b, v60
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v23, v23
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v121
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, s0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v29, vcc_lo, v39, v12, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v1, 0xbfb8aa3b, v194 :: v_dual_mul_f32 v142, 0xbfb8aa3b, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v22, v22
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v13, 1.0, v13 :: v_dual_add_f32 v18, 1.0, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v21, v23, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v23, -v26, v28, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v118
	v_exp_f32_e32 v1, v1
	v_dual_mul_f32 v147, 0xbfb8aa3b, v170 :: v_dual_add_f32 v16, 1.0, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v28, v23, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v25, v25
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v20, v22, v20
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v3, 0xbfb8aa3b, v130 :: v_dual_mul_f32 v4, 0xbfb8aa3b, v131
	v_mul_f32_e32 v173, 0xbfb8aa3b, v76
	v_ldexp_f32 v27, v1, v0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v20, 1.0, v20 :: v_dual_mul_f32 v69, 0xbfb8aa3b, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v172, 0xbfb8aa3b, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v22, v25, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v24, null, v14, v14, v211
	v_div_scale_f32 v25, null, v7, v7, v210
	v_dual_mul_f32 v31, v29, v28 :: v_dual_add_f32 v22, 1.0, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v23, v24
	v_rcp_f32_e32 v30, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v169, 0xbfb8aa3b, v66 :: v_dual_mul_f32 v166, 0xbfb8aa3b, v205
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v26, v31, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v167, 0xbfb8aa3b, v64 :: v_dual_mul_f32 v164, 0xbfb8aa3b, v197
	v_dual_mul_f32 v165, 0xbfb8aa3b, v201 :: v_dual_mul_f32 v160, 0xbfb8aa3b, v119
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v31, v33, v28
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v32, -v24, v23, 1.0
	v_fma_f32 v34, -v25, v30, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v163, 0xbfb8aa3b, v187 :: v_dual_mul_f32 v156, 0xbfb8aa3b, v124
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v26, v31, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v30, v34, v30
	v_div_scale_f32 v34, null, v8, v8, v209
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v161, 0xbfb8aa3b, v123 :: v_dual_mul_f32 v152, 0xbfb8aa3b, v112
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v26, v26, v28, v31
	v_rcp_f32_e32 v28, v38
	v_fmac_f32_e32 v23, v32, v23
	v_div_scale_f32 v32, s0, v211, v14, v211
	v_rcp_f32_e32 v36, v34
	v_mul_f32_e32 v37, v35, v30
	v_div_fixup_f32 v12, v26, v12, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v33, v32, v23
	v_div_scale_f32 v26, s6, v209, v8, v209
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v157, 0xbfb8aa3b, v218 :: v_dual_mul_f32 v150, 0xbfb8aa3b, v176
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v24, v33, v32
	v_fma_f32 v31, -v34, v36, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v155, 0xbfb8aa3b, v217 :: v_dual_mul_f32 v148, 0xbfb8aa3b, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v33, v29, v23
	v_fma_f32 v29, -v25, v37, v35
	v_fmac_f32_e32 v36, v31, v36
	v_div_scale_f32 v31, s0, v40, v9, v40
	v_fma_f32 v24, -v24, v33, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v37, v29, v30
	v_fma_f32 v29, -v38, v28, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v151, 0xbfb8aa3b, v108 :: v_dual_mul_f32 v144, 0xbfb8aa3b, v171
	v_dual_mul_f32 v145, 0xbfb8aa3b, v174 :: v_dual_mul_f32 v0, 0xbfb8aa3b, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v28, v29, v28
	v_div_fmas_f32 v23, v24, v23, v33
	v_fma_f32 v24, -v25, v37, v35
	v_mul_f32_e32 v25, v26, v36
	v_div_scale_f32 v29, null, v10, v10, v208
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v33, v31, v28
	v_div_fmas_f32 v24, v24, v30, v37
	v_rcp_f32_e32 v30, v29
	v_fma_f32 v32, -v34, v25, v26
	v_div_scale_f32 v35, null, v13, v13, v207
	v_div_fixup_f32 v14, v23, v14, v211
	v_div_fixup_f32 v7, v24, v7, v210
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v25, v32, v36
	v_fma_f32 v23, -v38, v33, v31
	v_rcp_f32_e32 v24, v35
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v32, -v29, v30, 1.0
	v_fma_f32 v26, -v34, v25, v26
	v_div_scale_f32 v34, null, v15, v15, v206
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v27, 1.0, v27 :: v_dual_fmac_f32 v30, v32, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v33, v23, v28
	v_div_scale_f32 v23, s1, v208, v10, v208
	v_rcp_f32_e32 v32, v34
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v37, -v35, v24, 1.0
	v_div_fmas_f32 v25, v26, v36, v25
	v_fma_f32 v26, -v38, v33, v31
	v_mul_f32_e32 v31, v23, v30
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v21, 1.0, v21 :: v_dual_fmac_f32 v24, v37, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v36, s6, v207, v13, v207
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v37, -v34, v32, 1.0
	v_div_scale_f32 v38, null, v16, v16, v91
	v_div_fmas_f32 v26, v26, v28, v33
	v_fma_f32 v28, -v29, v31, v23
	v_mul_f32_e32 v33, v36, v24
	v_fmac_f32_e32 v32, v37, v32
	v_rcp_f32_e32 v37, v38
	v_div_scale_f32 v39, s0, v206, v15, v206
	v_fmac_f32_e32 v31, v28, v30
	v_div_scale_f32 v28, null, v17, v17, v41
	v_div_fixup_f32 v8, v25, v8, v209
	v_div_fixup_f32 v9, v26, v9, v40
	v_fma_f32 v25, -v35, v33, v36
	v_mul_f32_e32 v26, v39, v32
	v_fma_f32 v23, -v29, v31, v23
	v_rcp_f32_e32 v29, v28
	v_fma_f32 v40, -v38, v37, 1.0
	v_fmac_f32_e32 v33, v25, v24
	v_fma_f32 v25, -v34, v26, v39
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v1, 0xbfb8aa3b, v52 :: v_dual_mul_f32 v212, 0xbfb8aa3b, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v37, v40, v37
	v_div_scale_f32 v40, s7, v91, v16, v91
	v_div_fmas_f32 v23, v23, v30, v31
	v_fma_f32 v30, -v35, v33, v36
	v_fmac_f32_e32 v26, v25, v32
	v_fma_f32 v31, -v28, v29, 1.0
	s_mov_b32 vcc_lo, s6
	v_mul_f32_e32 v25, v40, v37
	v_div_fmas_f32 v24, v30, v24, v33
	v_fma_f32 v30, -v34, v26, v39
	v_fmac_f32_e32 v29, v31, v29
	v_div_scale_f32 v31, null, v18, v18, v204
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v33, -v38, v25, v40
	v_div_scale_f32 v34, s1, v41, v17, v41
	v_div_fmas_f32 v26, v30, v32, v26
	v_rcp_f32_e32 v30, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v25, v33, v37
	v_mul_f32_e32 v32, v34, v29
	v_div_fixup_f32 v10, v23, v10, v208
	v_div_fixup_f32 v13, v24, v13, v207
	v_div_fixup_f32 v15, v26, v15, v206
	v_fma_f32 v23, -v38, v25, v40
	v_fma_f32 v24, -v28, v32, v34
	v_div_scale_f32 v26, null, v19, v19, v202
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v31, v30, 1.0
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v32, v24, v29
	v_div_fmas_f32 v23, v23, v37, v25
	v_rcp_f32_e32 v25, v26
	v_fmac_f32_e32 v30, v33, v30
	v_div_scale_f32 v24, s0, v204, v18, v204
	v_div_scale_f32 v33, null, v27, v27, v194
	v_div_fixup_f32 v16, v23, v16, v91
	v_fma_f32 v23, -v28, v32, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v28, v24, v30
	v_rcp_f32_e32 v35, v33
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v26, v25, 1.0
	v_div_fmas_f32 v23, v23, v29, v32
	v_fma_f32 v29, -v31, v28, v24
	v_div_scale_f32 v32, null, v21, v21, v122
	v_fmac_f32_e32 v25, v34, v25
	v_div_scale_f32 v34, s1, v202, v19, v202
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v36, -v33, v35, 1.0
	v_div_fixup_f32 v17, v23, v17, v41
	v_fmac_f32_e32 v28, v29, v30
	v_rcp_f32_e32 v23, v32
	v_div_scale_f32 v37, null, v20, v20, v121
	v_dual_mul_f32 v29, v34, v25 :: v_dual_mul_f32 v120, v120, v8
	v_fmac_f32_e32 v35, v36, v35
	v_div_scale_f32 v36, s6, v194, v27, v194
	v_fma_f32 v24, -v31, v28, v24
	v_rcp_f32_e32 v40, v37
	v_div_scale_f32 v41, null, v22, v22, v118
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v31, -v26, v29, v34
	v_mul_f32_e32 v38, v36, v35
	v_fma_f32 v39, -v32, v23, 1.0
	v_div_fmas_f32 v24, v24, v30, v28
	v_rcp_f32_e32 v30, v41
	v_dual_fmac_f32 v29, v31, v25 :: v_dual_mul_f32 v102, v102, v16
	v_fma_f32 v28, -v33, v38, v36
	v_dual_fmac_f32 v23, v39, v23 :: v_dual_mul_f32 v116, v116, v13
	v_div_scale_f32 v31, s0, v122, v21, v122
	v_fma_f32 v39, -v37, v40, 1.0
	v_div_fixup_f32 v18, v24, v18, v204
	v_fma_f32 v24, -v26, v29, v34
	v_fmac_f32_e32 v38, v28, v35
	v_mul_f32_e32 v26, v31, v23
	v_fmac_f32_e32 v40, v39, v40
	v_div_scale_f32 v28, s7, v121, v20, v121
	v_fma_f32 v34, -v41, v30, 1.0
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v125, v125, v12 :: v_dual_mul_f32 v100, v100, v17
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v24, v24, v25, v29
	v_fma_f32 v25, -v33, v38, v36
	v_fma_f32 v29, -v32, v26, v31
	v_dual_mul_f32 v33, v28, v40 :: v_dual_fmac_f32 v30, v34, v30
	v_div_scale_f32 v34, s1, v118, v22, v118
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v19, v24, v19, v202
	v_div_fmas_f32 v25, v25, v35, v38
	v_fmac_f32_e32 v26, v29, v23
	v_fma_f32 v24, -v37, v33, v28
	v_mul_f32_e32 v29, v34, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v186
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v25, v25, v27, v194
	v_fma_f32 v27, -v32, v26, v31
	v_fmac_f32_e32 v33, v24, v40
	v_fma_f32 v24, -v41, v29, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v82, v82, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v23, v27, v23, v26
	v_fma_f32 v26, -v37, v33, v28
	v_dual_fmac_f32 v29, v24, v30 :: v_dual_fmac_f32 v32, 0xbfb8aa3b, v191
	s_mov_b32 vcc_lo, s7
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v185
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v24, v26, v40, v33
	v_fma_f32 v26, -v41, v29, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v27, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v21, v23, v21, v122
	v_div_fixup_f32 v20, v24, v20, v121
	v_div_fmas_f32 v26, v26, v30, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v184
	v_cndmask_b32_e64 v24, 0, 0x42800000, s0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v122, v203, v14 :: v_dual_mul_f32 v121, v198, v7
	v_mul_f32_e32 v92, v92, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v22, v26, v22, v118
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v12, v27, v31
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v183
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v190
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v118, v133, v9
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v7, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v14, null, v12, v12, v191
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v27, 0xbfb8aa3b, v189 :: v_dual_mul_f32 v74, v74, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v107
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v9, v14
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v117, v117, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v8, v27
	v_exp_f32_e32 v13, v13
	v_ldexp_f32 v7, v7, v23
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v93, v93, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v169
.Ltmp5:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp6:
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v7, 1.0, v7
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s9, s29, 0xffff
	s_mov_b32 s11, 0x31027000
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v8, v8, v26
	v_ldexp_f32 v10, v13, v10
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v115, v115, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v15, -v14, v9, 1.0
	v_div_scale_f32 v16, null, v7, v7, v190
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v13, s0, v190, v7, v190
	v_fmac_f32_e32 v9, v15, v9
	v_div_scale_f32 v15, vcc_lo, v191, v12, v191
	v_rcp_f32_e32 v23, v16
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v8, 1.0, v8
	s_mov_b32 s10, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v26, v15, v9
	.loc	1 1248 9 is_stmt 1              ; ragged.py:1248:9
	s_mov_b32 s8, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v24, null, v8, v8, v189
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v18, -v14, v26, v15
	v_fma_f32 v19, -v16, v23, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v17, v24
	v_dual_fmac_f32 v26, v18, v9 :: v_dual_fmac_f32 v23, v19, v23
	v_div_scale_f32 v19, null, v10, v10, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v14, -v14, v26, v15
	v_mul_f32_e32 v15, v13, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v18, -v24, v17, 1.0
	v_div_fmas_f32 v9, v14, v9, v26
	v_rcp_f32_e32 v14, v19
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v182
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v20, -v16, v15, v13
	v_fmac_f32_e32 v17, v18, v17
	v_div_scale_f32 v18, s1, v189, v8, v189
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v15, v20, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v181
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v20, -v19, v14, 1.0
	v_div_fixup_f32 v9, v9, v12, v191
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v188
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v13, -v16, v15, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v14, v20, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v104, v104, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v13, v13, v23, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v138
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v7, v13, v7, v190
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v81, v81, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v6, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v22, s6, v107, v10, v107
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v70, v70, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v15, v22, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v6, v6, v16
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v73, v73, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v21, v18, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v20, -v19, v15, v22
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v6, 1.0, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v12, -v24, v21, v18
	v_fmac_f32_e32 v15, v20, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v21, v12, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v12, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v13, -v19, v15, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v18, -v24, v21, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v17, v18, v17, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v12, v12, v25
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v132
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v18, null, v6, v6, v138
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v8, v17, v8, v189
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v12
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v17, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s6
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v13, v13, v14, v15
	v_div_scale_f32 v25, null, v12, v12, v188
	v_rcp_f32_e32 v14, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v5, s0, v188, v12, v188
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v16, v25
	v_div_fixup_f32 v10, v13, v10, v107
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v17, v17, v23
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v20, -v18, v14, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v107, v106, v10 :: v_dual_add_f32 v10, 1.0, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v137
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v19, -v25, v16, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v14, v20, v14
	v_div_scale_f32 v20, s1, v138, v6, v138
	v_div_scale_f32 v21, null, v10, v10, v132
	v_fmac_f32_e32 v16, v19, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v15, v15
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v106, v223, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v7, v21
	v_mul_f32_e32 v19, v5, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v17, -v25, v19, v5
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v13, v15, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v9, -v21, v7, 1.0
	v_fmac_f32_e32 v19, v17, v16
	v_mul_f32_e32 v17, v20, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v7, v9, v7
	v_fma_f32 v5, -v25, v19, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v8, -v18, v17, v20
	v_div_fmas_f32 v5, v5, v16, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v17, v8, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v4, s0, v132, v10, v132
	v_div_fixup_f32 v5, v5, v12, v188
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v12, -v18, v17, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v8, 1.0, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v3, v12, v14, v17
	v_dual_mul_f32 v17, v4, v7 :: v_dual_mul_f32 v94, v94, v5
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v13, null, v8, v8, v137
	v_div_fixup_f32 v3, v3, v6, v138
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v6, -v21, v17, v4
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v9, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v14, 0, 0x42800000, s6
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v17, v6, v7
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s6
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v175
	v_dual_fmac_f32 v14, 0xbfb8aa3b, v130 :: v_dual_mul_f32 v95, v95, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v4, -v21, v17, v4
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v2, v16, v15
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v18, -v13, v9, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v14, v14
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v4, v4, v7, v17
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v2, 1.0, v2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v129
	v_cndmask_b32_e64 v17, 0, 0x42800000, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v4, v4, v10, v132
	v_fmac_f32_e32 v9, v18, v9
	v_div_scale_f32 v18, s1, v137, v8, v137
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v12, v14, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v96, v96, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v14, null, v2, v2, v131
	v_mul_f32_e32 v6, v18, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v16, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v19, -v13, v6, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v20, null, v12, v12, v130
	v_fmac_f32_e32 v6, v19, v9
	v_rcp_f32_e32 v19, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v7, -v13, v6, v18
	v_rcp_f32_e32 v18, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, s6
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v6, v7, v9, v6
	v_fma_f32 v21, -v14, v19, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v7, v16, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v9, vcc_lo, v131, v2, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v6, v6, v8, v137
	v_fmac_f32_e32 v19, v21, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v15, -v20, v18, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v7, 1.0, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v16, v9, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v18, v15, v18
	v_div_scale_f32 v15, s0, v130, v12, v130
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v97, v141, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v6, -v14, v16, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v10, v15, v18
	v_fmac_f32_e32 v16, v6, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v6, -v20, v10, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v17, 0xbfb8aa3b, v87 :: v_dual_fmac_f32 v10, v6, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v8, v17
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v17, null, v7, v7, v129
	v_rcp_f32_e32 v21, v17
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v4, v8, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v8, -v20, v10, v15
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v3, 1.0, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v5, -v17, v21, 1.0
	v_fma_f32 v4, -v14, v16, v9
	v_div_scale_f32 v9, s1, v129, v7, v129
	v_div_scale_f32 v6, null, v3, v3, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v21, v5, v21
	v_div_fmas_f32 v4, v4, v19, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v5, v6
	v_div_fixup_f32 v2, v4, v2, v131
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v16, s0, v87, v3, v87
	v_div_fmas_f32 v8, v8, v18, v10
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v10, -v6, v5, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v173
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v77
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v84, v84, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v8, v8, v12, v130
	v_fmac_f32_e32 v5, v10, v5
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v172
	v_exp_f32_e32 v12, v14
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v85, v85, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v76
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v4, v9, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v12, v12, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v18, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v14, -v17, v4, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v10, v15, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v4, v14, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v9, -v17, v4, v9
	v_div_scale_f32 v17, null, v12, v12, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v15, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v20, 0xbfb8aa3b, v75 :: v_dual_mul_f32 v13, v16, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v19, -v6, v13, v16
	v_fmac_f32_e32 v13, v19, v5
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v4, v9, v21, v4
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v6, -v6, v13, v16
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v9, 1.0, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v10, v18, v14
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v14, -v17, v15, 1.0
	v_div_fmas_f32 v5, v6, v5, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v6, v20
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v4, v4, v7, v129
	v_fmac_f32_e32 v15, v14, v15
	v_div_fixup_f32 v3, v5, v3, v87
	v_div_scale_f32 v14, vcc_lo, v77, v12, v77
	v_div_scale_f32 v5, null, v10, v10, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v87, v86, v3
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v3, v6, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v16, null, v9, v9, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v6, v5
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v86, v136, v4 :: v_dual_add_f32 v3, 1.0, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v13, v16
	v_fma_f32 v8, -v5, v6, 1.0
	v_mul_f32_e32 v7, v14, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v18, -v16, v13, 1.0
	v_fmac_f32_e32 v6, v8, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v17, v7, v14
	v_fmac_f32_e32 v7, v19, v15
	v_div_scale_f32 v19, null, v3, v3, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v2, -v17, v7, v14
	v_rcp_f32_e32 v8, v19
	v_div_scale_f32 v17, s1, v72, v10, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v2, v2, v15, v7
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, s6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v15, v17, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v2, v2, v12, v77
	v_fma_f32 v20, -v19, v8, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v8, v20, v8
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v20, 0, 0x42800000, s7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v13, v18, v13
	v_div_scale_f32 v18, s0, v76, v9, v76
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v4, v18, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v14, -v16, v4, v18
	v_fmac_f32_e32 v4, v14, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v14, 0, 0x42800000, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v12, -v16, v4, v18
	v_div_scale_f32 v18, s6, v75, v3, v75
	v_fma_f32 v16, -v5, v15, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v4, v12, v13, v4
	v_mul_f32_e32 v12, v18, v8
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v168
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v15, v16, v6
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v14, v14
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, s7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v16, -v19, v12, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v5, -v5, v15, v17
	v_div_fixup_f32 v4, v4, v9, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v153
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v12, v16, v8
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v16, v20
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v65
	v_ldexp_f32 v7, v14, v7
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v18, -v19, v12, v18
	v_div_fmas_f32 v5, v5, v6, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v167
	v_exp_f32_e32 v6, v21
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v13, v16, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v5, v5, v10, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s6
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v72, v105, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v8, v18, v8, v12
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v6, v6, v14
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v7, 1.0, v7 :: v_dual_mul_f32 v76, v255, v5
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v3, v8, v3, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v14, null, v12, v12, v66
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v6, 1.0, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v17, null, v7, v7, v67
	v_rcp_f32_e32 v18, v14
	v_div_scale_f32 v5, s0, v66, v12, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v15, v17
	v_div_scale_f32 v20, null, v6, v6, v65
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v75, v103, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v8, v20
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v10, -v14, v18, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v77, v135, v3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v13, -v17, v15, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v18, v10, v18 :: v_dual_fmac_f32 v19, 0xbfb8aa3b, v64
	v_mul_f32_e32 v10, v5, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v19, v19
	v_ldexp_f32 v3, v19, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v16, -v14, v10, v5
	v_fmac_f32_e32 v15, v13, v15
	v_div_scale_f32 v13, vcc_lo, v67, v7, v67
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v3, 1.0, v3 :: v_dual_fmac_f32 v10, v16, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v21, v13, v15
	v_fma_f32 v5, -v14, v10, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v9, -v17, v21, v13
	v_fmac_f32_e32 v21, v9, v15
	v_fma_f32 v9, -v20, v8, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v4, -v17, v21, v13
	v_div_scale_f32 v13, null, v3, v3, v64
	v_fmac_f32_e32 v8, v9, v8
	v_div_scale_f32 v9, s1, v65, v6, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v4, v4, v15, v21
	v_rcp_f32_e32 v15, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v166
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v2, v4, v7, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v165
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v7, -v13, v15, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v15, v7, v15
	v_mul_f32_e32 v17, v9, v8
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v201
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v5, v5, v18, v10
	v_fma_f32 v4, -v20, v17, v9
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v164
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v14, v14
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v5, v5, v12, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, v4, v8
	v_fma_f32 v9, -v20, v17, v9
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_ldexp_f32 v7, v14, v7
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v197
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v16, s6, v64, v3, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v12, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v10, v16, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v13, v10, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v21, 0xbfb8aa3b, v205 :: v_dual_fmac_f32 v10, v18, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v4, v21
	v_ldexp_f32 v4, v4, v19
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v8, v9, v8, v17
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v4, 1.0, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s6
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v12, v12, v19
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v161
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v6, v8, v6, v65
	v_div_scale_f32 v21, null, v4, v4, v205
	v_fma_f32 v8, -v13, v10, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v66, v11, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v9, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v8, v8, v15, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v163
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v3, v8, v3, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v14, -v21, v9, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v64, v193, v2 :: v_dual_mul_f32 v67, v200, v3
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v3, 1.0, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v9, v14, v9
	v_div_scale_f32 v14, s0, v205, v4, v205
	v_div_scale_f32 v18, null, v3, v3, v197
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v16, v14, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v12, -v21, v16, v14
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v7, 1.0, v7 :: v_dual_fmac_f32 v16, v12, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v13, null, v7, v7, v201
	v_fma_f32 v6, -v21, v16, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v10, v13
	v_fma_f32 v17, -v13, v10, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v10, v17, v10
	v_div_scale_f32 v17, s1, v201, v7, v201
	v_mul_f32_e32 v12, v17, v10
	v_div_fmas_f32 v6, v6, v9, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v162
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v14, -v13, v12, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v187
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v4, v6, v4, v205
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v12, v14, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v15, v15
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v56, v56, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v6, -v13, v12, v17
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v8, v15, v8
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v65, v111, v5
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v5, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v2, 1.0, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v6, v6, v10, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v12, 0, 0x42800000, s6
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s6
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v160
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v9, null, v2, v2, v187
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v8, -v18, v5, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v123
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v6, v6, v7, v201
	v_rcp_f32_e32 v13, v9
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v5, v8, v5
	v_div_scale_f32 v8, s0, v197, v3, v197
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v199
	v_exp_f32_e32 v12, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v19, 0xbfb8aa3b, v119 :: v_dual_mul_f32 v16, v8, v5
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v159
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v17, -v9, v13, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v57, v57, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v7, -v18, v16, v8
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v10, v12, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v13, v17, v13
	v_div_scale_f32 v17, s1, v187, v2, v187
	v_fmac_f32_e32 v16, v7, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v7, v15, v14
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v14, v17, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v7, 1.0, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v8, -v18, v16, v8
	v_fma_f32 v18, -v9, v14, v17
	v_div_scale_f32 v20, null, v10, v10, v123
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v12, null, v7, v7, v199
	v_fmac_f32_e32 v14, v18, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v18, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v5, v8, v5, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v19, v12
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v16, 0, 0x42800000, s6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v3, v5, v3, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v58, v58, v3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v21, -v12, v19, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v19, v21, v19
	v_fma_f32 v8, -v9, v14, v17
	v_rcp_f32_e32 v17, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, s6
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v154
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v8, v8, v13, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v13, v18, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v14, vcc_lo, v199, v7, v199
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v2, v8, v2, v187
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v113
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v15, -v20, v17, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v13, 1.0, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v59, v59, v2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v8, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v16, v14, v19 :: v_dual_fmac_f32 v17, v15, v17
	v_div_scale_f32 v15, s0, v123, v10, v123
	v_div_scale_f32 v18, null, v13, v13, v119
	v_fma_f32 v2, -v12, v16, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v5, v15, v17
	v_rcp_f32_e32 v21, v18
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v3, v8, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v16, v2, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v2, -v20, v5, v15
	v_div_scale_f32 v9, s1, v119, v13, v119
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v3, 1.0, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v4, -v12, v16, v14
	v_div_scale_f32 v6, null, v3, v3, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v4, v4, v19, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v158
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v4, v4, v7, v199
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v5, v2, v17
	v_fma_f32 v2, -v18, v21, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v219
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v8, -v20, v5, v15
	v_fmac_f32_e32 v21, v2, v21
	v_rcp_f32_e32 v2, v6
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v48, v48, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v5, v8, v17, v5
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v157
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v5, v5, v10, v123
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v10, v14
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v8, -v6, v2, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v2, v8, v2
	v_div_scale_f32 v16, s0, v113, v3, v113
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v218
	v_ldexp_f32 v10, v10, v12
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v12, v16, v2 :: v_dual_mul_f32 v7, v9, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v15, v15
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v156
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v10, 1.0, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v19, -v6, v12, v16
	v_fma_f32 v14, -v18, v7, v9
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v12, v19, v2 :: v_dual_fmac_f32 v7, v14, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v155
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v8, v15, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v6, -v6, v12, v16
	v_fma_f32 v9, -v18, v7, v9
	v_div_scale_f32 v18, null, v10, v10, v219
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v124
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v8, 1.0, v8
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v217
	v_exp_f32_e32 v17, v17
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v16, null, v8, v8, v218
	v_div_fmas_f32 v7, v9, v21, v7
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v15, v18
	v_div_fmas_f32 v2, v6, v2, v12
	v_rcp_f32_e32 v12, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v6, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v7, v7, v13, v119
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v9, v17, v14
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v2, v2, v3, v113
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v50, v50, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v14, -v18, v15, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v51, v51, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v17, -v16, v12, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v9, 1.0, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v2, v6, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v15, v14, v15
	v_div_scale_f32 v14, vcc_lo, v219, v10, v219
	v_fmac_f32_e32 v12, v17, v12
	v_div_scale_f32 v3, null, v9, v9, v124
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v2, 1.0, v2 :: v_dual_mul_f32 v13, v14, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v17, s0, v218, v8, v218
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v6, v3
	v_fma_f32 v19, -v18, v13, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v13, v19, v15
	v_div_scale_f32 v19, null, v2, v2, v217
	v_fma_f32 v7, -v3, v6, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v49, v49, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v4, -v18, v13, v14
	v_div_scale_f32 v18, s1, v124, v9, v124
	v_fmac_f32_e32 v6, v7, v6
	v_rcp_f32_e32 v7, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v19, v7, 1.0
	v_fmac_f32_e32 v7, v20, v7
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v20, 0, 0x42800000, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v5, v17, v12 :: v_dual_fmac_f32 v20, 0xbfb8aa3b, v195
	v_fma_f32 v14, -v16, v5, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v5, v14, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v14, 0, 0x42800000, s6
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v196
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v4, v4, v15, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, s6
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v14, v14
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v4, v4, v10, v219
	v_fma_f32 v10, -v16, v5, v17
	v_div_scale_f32 v17, s6, v217, v2, v217
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v40, v251, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v5, v10, v12, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_mul_f32 v10, v17, v7 :: v_dual_mul_f32 v15, v18, v6
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v152
	v_ldexp_f32 v13, v14, v13
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v5, v5, v8, v218
	v_fma_f32 v16, -v3, v15, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v41, v126, v5
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v15, v16, v6
	v_fma_f32 v16, -v19, v10, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v3, -v3, v15, v18
	v_fmac_f32_e32 v10, v16, v7
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v16, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v3, v3, v6, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v151
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v17, -v19, v10, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v3, v3, v9, v124
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v12, v16, v12
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v42, v42, v3 :: v_dual_fmac_f32 v19, 0xbfb8aa3b, v108
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v7, v17, v7, v10
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v10, 1.0, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v2, v7, v2, v217
	v_div_scale_f32 v3, s0, v195, v10, v195
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v43, v43, v2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v2, v19, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v21, 0xbfb8aa3b, v112 :: v_dual_add_f32 v2, 1.0, v2
	v_exp_f32_e32 v6, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v6, v6, v14
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v13, 1.0, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v14, null, v10, v10, v195
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v6, 1.0, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v18, null, v13, v13, v196
	v_rcp_f32_e32 v17, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v20, null, v6, v6, v112
	v_rcp_f32_e32 v15, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v7, v20
	v_fma_f32 v9, -v14, v17, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v12, -v18, v15, 1.0
	v_fmac_f32_e32 v17, v9, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v15, v12, v15
	v_div_scale_f32 v12, vcc_lo, v196, v13, v196
	v_mul_f32_e32 v9, v3, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v21, v12, v15
	v_fma_f32 v16, -v14, v9, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v8, -v18, v21, v12
	v_fmac_f32_e32 v21, v8, v15
	v_fma_f32 v8, -v20, v7, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v5, -v18, v21, v12
	v_div_scale_f32 v12, null, v2, v2, v108
	v_fmac_f32_e32 v7, v8, v7
	v_div_scale_f32 v8, s1, v112, v6, v112
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v5, v5, v15, v21
	v_rcp_f32_e32 v15, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v150
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v18, v8, v7
	v_div_fixup_f32 v4, v5, v13, v196
	v_fmac_f32_e32 v9, v16, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v149
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v5, -v20, v18, v8
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v13, -v12, v15, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v176
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v16, s6, v108, v2, v108
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v32, v98, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v3, -v14, v9, v3
	v_fmac_f32_e32 v15, v13, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v18, v5, v7
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v5, v21
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v89
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v3, v3, v17, v9
	v_mul_f32_e32 v9, v16, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v148
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v8, -v20, v18, v8
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v14, v14
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v3, v3, v10, v195
	v_fma_f32 v17, -v12, v9, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v5, v5, v19
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v9, v17, v15
	v_div_fmas_f32 v7, v8, v7, v18
	s_mov_b32 vcc_lo, s6
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v8, v14, v13
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v83
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v33, v99, v3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v6, v7, v6, v112
	v_fma_f32 v7, -v12, v9, v16
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v8, 1.0, v8
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v10, v20
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v145
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v34, v101, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v7, v7, v15, v9
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v146
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v12, null, v8, v8, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v2, v7, v2, v108
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v9, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v10, v10, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v88
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v17, -v12, v9, 1.0
	v_fmac_f32_e32 v9, v17, v9
	v_div_scale_f32 v17, s1, v89, v8, v89
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v35, v134, v2
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v2, 1.0, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v7, v15, v7
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v5, 1.0, v5
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v18, null, v2, v2, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v4, 1.0, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v21, null, v5, v5, v176
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v3, v18
	v_rcp_f32_e32 v13, v21
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v7, -v18, v3, 1.0
	v_fma_f32 v14, -v21, v13, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v3, v7, v3
	v_fmac_f32_e32 v13, v14, v13
	v_div_scale_f32 v14, s0, v176, v5, v176
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v7, s0, v83, v2, v83
	v_mul_f32_e32 v16, v14, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v10, -v21, v16, v14
	v_fmac_f32_e32 v16, v10, v13
	v_mul_f32_e32 v10, v17, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v6, -v21, v16, v14
	v_fma_f32 v14, -v12, v10, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v6, v6, v13, v16
	v_fmac_f32_e32 v10, v14, v9
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v147
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v16, v7, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v5, v6, v5, v176
	v_fma_f32 v6, -v12, v10, v17
	v_div_scale_f32 v12, null, v4, v4, v88
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v13, v12
	v_div_fmas_f32 v6, v6, v9, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v170
	v_cndmask_b32_e64 v10, 0, 0x42800000, s6
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v144
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, s6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v6, v6, v8, v89
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v15, v15
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v174
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v8, -v18, v16, v7
	v_fma_f32 v17, -v12, v13, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v143
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v16, v8, v3 :: v_dual_fmac_f32 v13, v17, v13
	v_div_scale_f32 v17, s1, v88, v4, v88
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v8, v15, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v7, -v18, v16, v7
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v19, 0xbfb8aa3b, v171 :: v_dual_mul_f32 v14, v17, v13
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v8, 1.0, v8
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v9, v10, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v18, -v12, v14, v17
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v24, v78, v5
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v10, null, v8, v8, v170
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v14, v18, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v18, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v19, v10
	v_div_fmas_f32 v3, v7, v3, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v16, 0, 0x42800000, s6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v7, -v12, v14, v17
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v2, v3, v2, v83
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v60
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v142
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v21, -v10, v19, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v26, v80, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v7, v7, v13, v14
	v_div_scale_f32 v14, vcc_lo, v170, v8, v170
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v19, v21, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v13, v18, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v4, v7, v4, v88
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v7, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v16, v14, v19
	v_fma_f32 v3, -v10, v16, v14
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v9, 1.0, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v2, v7, v12
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v13, 1.0, v13 :: v_dual_fmac_f32 v16, v3, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v20, null, v9, v9, v174
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v2, 1.0, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v18, null, v13, v13, v171
	v_rcp_f32_e32 v17, v20
	v_fma_f32 v5, -v10, v16, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v14, 0, 0x42800000, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v21, v18
	v_div_scale_f32 v7, null, v2, v2, v60
	v_div_fmas_f32 v5, v5, v19, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v55
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v10, v7
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v15, -v20, v17, 1.0
	v_div_fixup_f32 v5, v5, v8, v170
	v_fmac_f32_e32 v17, v15, v17
	v_div_scale_f32 v15, s0, v174, v9, v174
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v27, v178, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v4, v15, v17
	v_fma_f32 v3, -v20, v4, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v4, v3, v17
	v_fma_f32 v3, -v18, v21, 1.0
	v_fmac_f32_e32 v21, v3, v21
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v25, v79, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v6, -v20, v4, v15
	v_div_scale_f32 v3, s1, v171, v13, v171
	v_div_fmas_f32 v4, v6, v17, v4
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v212
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v17, s0, v60, v2, v60
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v4, v4, v9, v174
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v7, v10, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v23, v62, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v54
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v10, v0, v10
	v_mul_f32_e32 v6, v3, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v0, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v8, -v18, v6, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v6, v8, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v8, v14
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_ldexp_f32 v0, v0, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v3, -v18, v6, v3
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v53
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v8, v8, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v3, v3, v21, v6
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v12, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v9, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v3, v3, v13, v171
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v12, v12, v14
	v_ldexp_f32 v1, v9, v1
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v6, 1.0, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v9, null, v0, v0, v54
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v1, 1.0, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v15, null, v6, v6, v55
	v_div_scale_f32 v14, null, v12, v12, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v30, s6, v52, v1, v52
	v_rcp_f32_e32 v13, v15
	v_mul_f32_e32 v8, v17, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v18, v14
	v_fma_f32 v16, -v7, v8, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v8, v16, v10
	v_fma_f32 v16, -v15, v13, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v7, -v7, v8, v17
	v_rcp_f32_e32 v17, v9
	v_fmac_f32_e32 v13, v16, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v7, v7, v10, v8
	v_div_scale_f32 v8, null, v1, v1, v52
	v_div_scale_f32 v10, vcc_lo, v55, v6, v55
	v_div_fixup_f32 v2, v7, v2, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v19, v8
	v_fma_f32 v7, -v14, v18, 1.0
	v_fma_f32 v16, -v9, v17, 1.0
	v_mul_f32_e32 v22, v10, v13
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v20, v68, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v17, v16, v17
	v_div_scale_f32 v16, s0, v54, v0, v54
	v_fma_f32 v21, -v8, v19, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v19, v21, v19 :: v_dual_fmac_f32 v18, v7, v18
	v_div_scale_f32 v7, s1, v53, v12, v53
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v21, v63, v3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v31, v30, v19
	v_fma_f32 v2, -v15, v22, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v29, v7, v18 :: v_dual_fmac_f32 v22, v2, v13
	v_fma_f32 v3, -v14, v29, v7
	v_mul_f32_e32 v28, v16, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v4, -v15, v22, v10
	v_fmac_f32_e32 v29, v3, v18
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v2, -v9, v28, v16
.Ltmp7:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v10, |v48|, |v49|
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v15, 1, v110
.Ltmp9:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v3, v4, v13, v22
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v28, v2, v17
	v_fma_f32 v2, -v8, v31, v30
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v13, |v32|, |v33|, |v34|
.Ltmp11:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v3, v3, v6, v55
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, |v84|, |v85|, |v86|
.Ltmp13:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v4, -v9, v28, v16
	v_fmac_f32_e32 v31, v2, v19
	v_fma_f32 v2, -v14, v29, v7
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v9, |v59|, |v117|, |v116|
	v_max3_f32 v14, |v35|, |v100|, |v92|
.Ltmp15:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v4, v4, v17, v28
	v_fma_f32 v7, -v8, v31, v30
	s_mov_b32 vcc_lo, s1
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v8, |v56|, |v57|, |v58|
.Ltmp17:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v2, v2, v18, v29
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v0, v4, v0, v54
	v_div_fmas_f32 v7, v7, v19, v31
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v29, v61, v5
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v2, v2, v12, v53
.Ltmp18:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v4, |v104|, |v70|
	v_max3_f32 v5, |v106|, |v94|, |v95|
.Ltmp19:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v1, v7, v1, v52
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v7, |v87|, |v122|, |v121|
.Ltmp21:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v19, v47, v2
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v12, |v50|, |v40|, |v41|
	v_max3_f32 v2, v4, |v107|, v5
	v_max_f32_e64 v5, |v72|, |v75|
	v_max3_f32 v4, v6, v7, |v120|
	v_max3_f32 v6, |v76|, |v64|, |v65|
.Ltmp23:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v18, v44, v1
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v1, |v96|, |v97|, |v125|
	v_max3_f32 v7, |v66|, |v67|, |v118|
.Ltmp25:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v22, v46, v0
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v5, v5, |v77|, v6
	v_max3_f32 v6, v8, v9, |v115|
.Ltmp27:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v28, v45, v3
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v8, |v42|, |v43|, |v102|
	v_max3_f32 v9, v10, |v51|, v12
	v_max3_f32 v10, v13, v14, |v93|
	v_max3_f32 v0, v2, v1, v4
	v_max3_f32 v1, v5, v7, v6
	v_max_f32_e64 v3, |v24|, |v25|
	v_max3_f32 v4, |v26|, |v29|, |v23|
	v_max3_f32 v5, |v28|, |v22|, |v19|
	v_max3_f32 v6, |v18|, |v73|, |v74|
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v2, v9, v8, v10
	v_max3_f32 v7, |v21|, |v20|, |v82|
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v8, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v1, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v3, v3, |v27|, v4
	v_max3_f32 v4, v5, v6, |v81|
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v17, 0x60, v139
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v5, v8, v8 :: v_dual_max_f32 v6, v9, v9
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v8, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v3, v3, v7, v4
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v4, 3, v139
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v0, v0, v5 :: v_dual_max_f32 v1, v1, v6
	v_max_f32_e32 v5, v8, v8
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v8, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v6, 4, v139
	v_lshl_add_u32 v7, v4, 9, 0
	v_lshrrev_b32_e32 v10, 3, v110
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v5
.Ltmp39:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v30.h, 0
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v5, v6, 2, v7
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v7, v8, v8
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v14, 5, v4
	v_lshl_add_u32 v12, v6, 6, 0
	v_lshl_add_u32 v4, v4, 4, 0
	v_lshl_add_u32 v5, v109, 4, v5
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v7
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt vmcnt(3)
	v_and_or_b32 v8, 0x680, v114, v14
	v_xor_b32_e32 v9, v14, v17
.Ltmp45:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v13.h, v30.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v8, v8, v17
	v_add3_u32 v5, v5, v15, v9
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v7, v12, v10, v8
	ds_store_b128 v5, v[0:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v10, 0, v110
	ds_load_b128 v[0:3], v7
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v5, v0
	v_dual_mov_b32 v7, v1 :: v_dual_mov_b32 v8, v2
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v0, v0
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v5
	v_dual_max_f32 v7, v7, v7 :: v_dual_max_f32 v0, v0, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v5, v8, v8
	v_dual_max_f32 v1, v1, v7 :: v_dual_max_f32 v2, v2, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v9, v3, v3 :: v_dual_mov_b32 v8, v1
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v5, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v8, v8 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v8, v8, v8 :: v_dual_max_f32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v7, v0 :: v_dual_max_f32 v2, v2, v5
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v5, v2
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v7, v7, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v0, v7
	v_max_f32_e32 v3, v9, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v5, v5, v5
	v_dual_max_f32 v1, v1, v8 :: v_dual_mov_b32 v8, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v2, v2, v5 :: v_dual_lshlrev_b32 v5, 5, v6
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v9, v3 :: v_dual_max_f32 v8, v8, v8
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v0, v0, v8 :: v_dual_max_f32 v7, v9, v9
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v9, v1
	v_lshrrev_b32_e32 v8, 1, v17
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v7, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v9, v9, v9
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v7, v7 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v9
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v9, 3, v109
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v7, v7, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v6, v10, v8, v9
	v_add3_u32 v4, v4, v5, v9
.Ltmp71:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v7
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v6, v[0:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v4
.Ltmp73:
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
	v_div_scale_f32 v8, null, 0x40e00000, 0x40e00000, v2
	v_div_scale_f32 v36, s1, v3, 0x40e00000, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v5, v4
	v_rcp_f32_e32 v10, v8
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v6, -v4, v5, 1.0
	v_fmac_f32_e32 v5, v6, v5
	v_div_scale_f32 v6, vcc_lo, v0, 0x40e00000, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v7, v6, v5
	v_fma_f32 v9, -v4, v7, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v7, v9, v5
	v_fma_f32 v4, -v4, v7, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v6, -v8, v10, 1.0
	v_div_fmas_f32 v4, v4, v5, v7
	v_div_scale_f32 v5, null, 0x40e00000, 0x40e00000, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v10, v6, v10
	v_div_scale_f32 v6, vcc_lo, v2, 0x40e00000, v2
	v_div_scale_f32 v7, null, 0x40e00000, 0x40e00000, v3
	v_rcp_f32_e32 v9, v5
	v_div_fixup_f32 v0, v4, 0x40e00000, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v4, v6, v10
	v_rcp_f32_e32 v16, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v13.l, v0.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v12, -v8, v4, v6
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v31, -v5, v9, 1.0
	v_dual_fmac_f32 v4, v12, v10 :: v_dual_and_b32 v13, 1, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v12, -v7, v16, 1.0
	v_fmac_f32_e32 v9, v31, v9
	v_div_scale_f32 v31, s0, v1, 0x40e00000, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v16, v12, v16
	v_fma_f32 v6, -v8, v4, v6
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v12, v0, v13, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v0, v31, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v8, v36, v16
	v_div_fmas_f32 v4, v6, v10, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v10, 0xffff0000, v12
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v6, -v5, v0, v31
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v13, -v7, v8, v36
	v_div_fixup_f32 v4, v4, 0x40e00000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v38, null, v10, v10, v107
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v0, v6, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v8, v13, v16
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v6, null, v10, v10, v104
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v30.l, v4.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_fma_f32 v2, -v5, v0, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v7, -v7, v8, v36
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v5, v6
	v_div_scale_f32 v39, null, v10, v10, v106
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v0, v2, v9, v0
	s_mov_b32 vcc_lo, s1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v47, null, v10, v10, v94
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v2, v7, v16, v8
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v7, null, v10, v10, v70
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v0, v0, 0x40e00000, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v1, -v6, v5, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v16.h, v30.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v36, v7
	v_div_scale_f32 v31, vcc_lo, v104, v10, v104
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v16.l, v0.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v5, v1, v5
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v8, v2, 0x40e00000, v3
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v52, null, v10, v10, v95
	v_div_scale_f32 v60, null, v10, v10, v97
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v7, v36, 1.0
	v_rcp_f32_e32 v53, v52
	v_div_scale_f32 v68, null, v10, v10, v86
	v_div_scale_f32 v79, null, v10, v10, v120
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v36, v37, v36
	v_rcp_f32_e32 v37, v38
	v_fma_f32 v45, -v38, v37, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v37, v45, v37
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v9, 1, v30
	v_mov_b16_e32 v30.l, v8.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v45, s1, v107, v10, v107
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v3, v4, v9, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v9, v31, v5 :: v_dual_and_b32 v4, 1, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v30, 1, v30
	v_add3_u32 v16, v0, v4, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v6, v9, v31
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v8, v30, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v9, v0, v5 :: v_dual_and_b32 v78, 0xffff0000, v16
	v_rcp_f32_e32 v0, v39
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v30, 0xffff0000, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v83, null, v78, v78, v72
	v_fma_f32 v6, -v6, v9, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v46, -v39, v0, 1.0
	v_div_fmas_f32 v5, v6, v5, v9
	v_rcp_f32_e32 v9, v47
	v_mul_f32_e32 v6, v45, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v0, v46, v0
	v_div_scale_f32 v46, s6, v106, v10, v106
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_and_b32_e32 v13, 63, v139
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v54, -v47, v9, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s46, v13
	v_add_co_ci_u32_e64 v2, null, s47, 0, s0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v44, s0, v70, v10, v70
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v9, v54, v9
	v_fma_f32 v54, -v52, v53, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v8, v44, v36 :: v_dual_fmac_f32 v53, v54, v53
	v_fma_f32 v31, -v7, v8, v44
	v_div_scale_f32 v54, null, v10, v10, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v8, v31, v36
	v_div_fixup_f32 v31, v5, v10, v104
	v_fma_f32 v5, -v7, v8, v44
	v_fma_f32 v7, -v38, v6, v45
	v_mul_f32_e32 v44, v46, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v5, v5, v36, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v6, v7, v37
	v_fma_f32 v7, -v39, v44, v46
	v_div_scale_f32 v8, s0, v94, v10, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v36, v5, v10, v70
	v_fma_f32 v5, -v38, v6, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v44, v7, v0
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v7, v8, v9
	v_div_scale_f32 v45, s7, v95, v10, v95
	v_div_fmas_f32 v5, v5, v37, v6
	v_fma_f32 v6, -v39, v44, v46
	v_rcp_f32_e32 v46, v54
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v37, -v47, v7, v8
	v_mul_f32_e32 v39, v45, v53
	v_div_fmas_f32 v0, v6, v0, v44
	v_rcp_f32_e32 v6, v60
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v7, v37, v9
	v_fma_f32 v44, -v52, v39, v45
	v_div_fixup_f32 v37, v5, v10, v107
	v_fma_f32 v61, -v54, v46, 1.0
	v_div_fixup_f32 v38, v0, v10, v106
	v_fma_f32 v0, -v47, v7, v8
	v_fmac_f32_e32 v39, v44, v53
	v_div_scale_f32 v5, s1, v96, v10, v96
	v_fmac_f32_e32 v46, v61, v46
	v_fma_f32 v8, -v60, v6, 1.0
	v_div_scale_f32 v47, null, v10, v10, v125
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v55, 0xffff0000, v3
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v9, v7
	v_fma_f32 v7, -v52, v39, v45
	v_mul_f32_e32 v9, v5, v46
	v_fmac_f32_e32 v6, v8, v6
	v_rcp_f32_e32 v8, v47
	s_mov_b32 vcc_lo, s7
	v_div_scale_f32 v45, s0, v97, v10, v97
	v_div_fmas_f32 v7, v7, v53, v39
	v_fma_f32 v53, -v54, v9, v5
	v_div_fixup_f32 v39, v0, v10, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v61, v45, v6
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v44, v7, v10, v95
	v_fma_f32 v62, -v47, v8, 1.0
	v_fmac_f32_e32 v9, v53, v46
	v_div_scale_f32 v53, null, v10, v10, v85
	v_fma_f32 v0, -v60, v61, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v8, v62, v8
	v_div_scale_f32 v7, s6, v125, v10, v125
	v_fma_f32 v5, -v54, v9, v5
	v_rcp_f32_e32 v54, v53
	v_dual_fmac_f32 v61, v0, v6 :: v_dual_mul_f32 v0, v7, v8
	v_div_scale_f32 v52, null, v10, v10, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v5, v5, v46, v9
	v_fma_f32 v9, -v60, v61, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v45, -v47, v0, v7
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v69, s0, v85, v10, v85
	v_fma_f32 v46, -v53, v54, 1.0
	v_div_fmas_f32 v6, v9, v6, v61
	v_fmac_f32_e32 v0, v45, v8
	v_div_fixup_f32 v45, v5, v10, v96
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v54, v46, v54
	v_div_fixup_f32 v46, v6, v10, v97
	v_fma_f32 v5, -v47, v0, v7
	v_rcp_f32_e32 v63, v52
	v_div_scale_f32 v70, null, v10, v10, v122
	v_mul_f32_e32 v6, v69, v54
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v0, v5, v8, v0
	v_rcp_f32_e32 v9, v68
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v46, v46
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v8, -v53, v6, v69
	v_div_fixup_f32 v47, v0, v10, v125
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v62, -v52, v63, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v38, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v6, v8, v54
	v_rcp_f32_e32 v8, v70
	v_fma_f32 v7, -v68, v9, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v47, v47
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v53, v6, v69
	v_div_scale_f32 v69, null, v10, v10, v121
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v45, v45
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v53, -v70, v8, 1.0
	v_fmac_f32_e32 v63, v62, v63
	v_div_scale_f32 v62, s7, v84, v10, v84
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v8, v53, v8
	v_mul_f32_e32 v60, v62, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v61, -v52, v60, v62
	v_fmac_f32_e32 v60, v61, v63
	v_div_scale_f32 v61, null, v10, v10, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v5, -v52, v60, v62
	v_div_scale_f32 v62, s1, v86, v10, v86
	v_div_fmas_f32 v5, v5, v63, v60
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v71, s0, v122, v10, v122
	v_div_fmas_f32 v0, v0, v54, v6
	v_rcp_f32_e32 v6, v69
	v_div_fixup_f32 v52, v5, v10, v84
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v84, null, v78, v78, v75
	v_div_fixup_f32 v53, v0, v10, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v52
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v69, v6, 1.0
	v_fmac_f32_e32 v9, v7, v9
	v_rcp_f32_e32 v7, v61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v6, v80, v6
	v_mul_f32_e32 v60, v62, v9
	v_div_scale_f32 v80, s1, v121, v10, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v5, -v68, v60, v62
	v_fma_f32 v63, -v61, v7, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v60, v5, v9
	v_fma_f32 v0, -v68, v60, v62
	v_mul_f32_e32 v62, v71, v8
	v_rcp_f32_e32 v68, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v0, v0, v9, v60
	v_fma_f32 v9, -v70, v62, v71
	v_fmac_f32_e32 v7, v63, v7
	v_div_scale_f32 v63, s6, v87, v10, v87
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v62, v9, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v60, -v79, v68, 1.0
	v_mul_f32_e32 v5, v63, v7
	v_mul_f32_e32 v9, v80, v6
	v_fmac_f32_e32 v68, v60, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v54, -v61, v5, v63
	v_fmac_f32_e32 v5, v54, v7
	v_div_fixup_f32 v54, v0, v10, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v0, -v61, v5, v63
	v_div_scale_f32 v63, s7, v120, v10, v120
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v7, v5
	v_fma_f32 v5, -v70, v62, v71
	v_fma_f32 v7, -v69, v9, v80
	v_rcp_f32_e32 v70, v83
	v_mul_f32_e32 v71, v63, v68
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v60, v0, v10, v87
	v_div_fmas_f32 v5, v5, v8, v62
	v_fmac_f32_e32 v9, v7, v6
	v_fma_f32 v8, -v79, v71, v63
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v7, v84
	v_div_fixup_f32 v61, v5, v10, v122
	v_fma_f32 v62, -v83, v70, 1.0
	v_fma_f32 v0, -v69, v9, v80
	v_fmac_f32_e32 v71, v8, v68
	v_div_scale_f32 v5, s0, v72, v78, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v70, v62, v70
	v_div_fmas_f32 v0, v0, v6, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v6, -v79, v71, v63
	v_div_scale_f32 v79, null, v78, v78, v76
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v8, -v84, v7, 1.0
	v_div_fmas_f32 v6, v6, v68, v71
	v_rcp_f32_e32 v86, v79
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v87, s0, v64, v78, v64
	v_mul_f32_e32 v9, v5, v70
	v_div_scale_f32 v80, null, v78, v78, v77
	v_div_scale_f32 v69, s1, v75, v78, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v68, -v83, v9, v5
	v_div_fixup_f32 v62, v0, v10, v121
	v_div_fixup_f32 v63, v6, v10, v120
	v_div_scale_f32 v10, null, v78, v78, v64
	v_fmac_f32_e32 v9, v68, v70
	v_fma_f32 v68, -v79, v86, 1.0
	v_div_scale_f32 v6, s6, v77, v78, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v5, -v83, v9, v5
	v_fmac_f32_e32 v86, v68, v86
	v_fmac_f32_e32 v7, v8, v7
	v_rcp_f32_e32 v8, v80
	v_rcp_f32_e32 v83, v10
	v_div_fmas_f32 v5, v5, v70, v9
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v71, v69, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v0, -v84, v71, v69
	v_fma_f32 v85, -v80, v8, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v71, v0, v7 :: v_dual_fmac_f32 v8, v85, v8
	v_div_scale_f32 v85, s7, v76, v78, v76
	v_fma_f32 v9, -v84, v71, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v0, v6, v8
	v_mul_f32_e32 v70, v85, v86
	v_fma_f32 v69, -v10, v83, 1.0
	v_div_scale_f32 v84, null, v78, v78, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v68, -v80, v0, v6
	v_div_fmas_f32 v7, v9, v7, v71
	v_fma_f32 v71, -v79, v70, v85
	v_rcp_f32_e32 v9, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v83, v69, v83 :: v_dual_fmac_f32 v0, v68, v8
	v_div_fixup_f32 v68, v5, v78, v72
	v_fmac_f32_e32 v70, v71, v86
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v69, v7, v78, v75
	v_fma_f32 v5, -v80, v0, v6
	v_mul_f32_e32 v6, v87, v83
	v_div_scale_f32 v72, null, v78, v78, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v7, -v84, v9, 1.0
	v_div_fmas_f32 v0, v5, v8, v0
	v_fma_f32 v5, -v79, v70, v85
	v_fma_f32 v8, -v10, v6, v87
	v_div_scale_f32 v79, null, v78, v78, v67
	v_fmac_f32_e32 v9, v7, v9
	v_div_scale_f32 v75, s1, v65, v78, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v6, v8, v83
	v_rcp_f32_e32 v8, v79
	s_mov_b32 vcc_lo, s7
	v_rcp_f32_e32 v7, v72
	v_div_fmas_f32 v5, v5, v86, v70
	v_mul_f32_e32 v80, v75, v9
	v_div_fixup_f32 v70, v0, v78, v77
	v_fma_f32 v0, -v10, v6, v87
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v71, v5, v78, v76
	v_fma_f32 v5, -v84, v80, v75
	v_fma_f32 v76, -v79, v8, 1.0
	v_div_scale_f32 v10, s6, v66, v78, v66
	v_fma_f32 v85, -v72, v7, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v80, v5, v9
	v_fmac_f32_e32 v8, v76, v8
	v_div_fmas_f32 v0, v0, v83, v6
	v_div_scale_f32 v76, s0, v67, v78, v67
	v_fmac_f32_e32 v7, v85, v7
	v_div_scale_f32 v77, null, v78, v78, v118
	v_div_scale_f32 v83, null, v78, v78, v56
	v_div_fixup_f32 v64, v0, v78, v64
	v_fma_f32 v0, -v84, v80, v75
	v_mul_f32_e32 v84, v76, v8
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v6, v77
	v_rcp_f32_e32 v85, v83
	v_div_fmas_f32 v0, v0, v9, v80
	v_fma_f32 v9, -v79, v84, v76
	v_mul_f32_e32 v5, v10, v7
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v87, null, v78, v78, v115
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v9, v8
	v_fma_f32 v75, -v72, v5, v10
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v86, -v77, v6, 1.0
	v_fma_f32 v80, -v83, v85, 1.0
	v_div_fixup_f32 v65, v0, v78, v65
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v5, v75, v7 :: v_dual_fmac_f32 v6, v86, v6
	v_fmac_f32_e32 v85, v80, v85
	v_div_scale_f32 v75, s1, v118, v78, v118
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v0, -v72, v5, v10
	v_div_scale_f32 v10, s7, v56, v78, v56
	v_div_scale_f32 v80, null, v78, v78, v57
	v_div_fmas_f32 v0, v0, v7, v5
	v_fma_f32 v5, -v79, v84, v76
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v72, v10, v85
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v76, v80
	v_div_scale_f32 v79, null, v78, v78, v58
	v_div_fmas_f32 v5, v5, v8, v84
	v_fma_f32 v8, -v83, v72, v10
	v_mul_f32_e32 v9, v75, v6
	v_div_fixup_f32 v66, v0, v78, v66
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v67, v5, v78, v67
	v_fmac_f32_e32 v72, v8, v85
	v_fma_f32 v7, -v77, v9, v75
	v_fma_f32 v84, -v80, v76, 1.0
	v_div_scale_f32 v5, s0, v57, v78, v57
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v9, v7, v6 :: v_dual_fmac_f32 v76, v84, v76
	v_rcp_f32_e32 v7, v79
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v67, v67
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v77, v9, v75
	v_div_scale_f32 v75, null, v78, v78, v59
	v_div_scale_f32 v77, null, v78, v78, v117
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v0, v0, v6, v9
	v_fma_f32 v6, -v83, v72, v10
	v_fma_f32 v8, -v79, v7, 1.0
	v_div_scale_f32 v10, s1, v58, v78, v58
	s_mov_b32 vcc_lo, s7
	v_rcp_f32_e32 v86, v77
	v_fmac_f32_e32 v7, v8, v7
	v_rcp_f32_e32 v8, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v84, v10, v7
	v_div_fmas_f32 v6, v6, v85, v72
	v_div_fixup_f32 v72, v0, v78, v118
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v0, -v79, v84, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v85, -v75, v8, 1.0
	v_div_fixup_f32 v56, v6, v78, v56
	v_div_scale_f32 v6, s6, v59, v78, v59
	v_fmac_f32_e32 v8, v85, v8
	v_dual_mul_f32 v9, v5, v76 :: v_dual_fmac_f32 v84, v0, v7
	v_fma_f32 v85, -v77, v86, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v80, v9, v5
	v_fmac_f32_e32 v86, v85, v86
	v_div_scale_f32 v85, s7, v117, v78, v117
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v9, v83, v76
	v_div_scale_f32 v83, null, v78, v78, v116
	v_fma_f32 v5, -v80, v9, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v80, v83
	v_div_fmas_f32 v5, v5, v76, v9
	v_fma_f32 v9, -v79, v84, v10
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v57, v5, v78, v57
	v_div_fmas_f32 v7, v9, v7, v84
	v_rcp_f32_e32 v9, v87
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v79, -v83, v80, 1.0
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v84, null, v55, v55, v49
	v_div_fixup_f32 v58, v7, v78, v58
	v_fmac_f32_e32 v80, v79, v80
	v_div_scale_f32 v79, s0, v116, v78, v116
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v57
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v7, -v87, v9, 1.0
	v_mul_f32_e32 v0, v6, v8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v58
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v9, v7, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v10, -v75, v0, v6
	v_fmac_f32_e32 v0, v10, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v5, -v75, v0, v6
	v_mul_f32_e32 v6, v79, v80
	v_div_fmas_f32 v0, v5, v8, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v8, -v83, v6, v79
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v59, v0, v78, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v6, v8, v80
	v_rcp_f32_e32 v8, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v83, v6, v79
	v_div_scale_f32 v79, s6, v48, v55, v48
	v_mul_f32_e32 v76, v85, v86
	v_div_scale_f32 v83, null, v55, v55, v51
	v_fma_f32 v10, -v77, v76, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v76, v10, v86
	v_div_scale_f32 v10, null, v55, v55, v48
	v_fma_f32 v5, -v77, v76, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v7, v10
	v_div_scale_f32 v77, s1, v115, v78, v115
	v_div_fmas_f32 v5, v5, v86, v76
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v85, v77, v9
	v_div_scale_f32 v86, null, v55, v55, v50
	v_div_fixup_f32 v75, v5, v78, v117
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v76, -v10, v7, 1.0
	v_fma_f32 v5, -v87, v85, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v88, v86
	v_fmac_f32_e32 v7, v76, v7
	v_div_fmas_f32 v0, v0, v80, v6
	v_rcp_f32_e32 v6, v83
	v_fma_f32 v76, -v84, v8, 1.0
	v_fmac_f32_e32 v85, v5, v9
	v_mul_f32_e32 v5, v79, v7
	v_div_scale_f32 v80, s0, v49, v55, v49
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v83, v6, 1.0
	v_fmac_f32_e32 v6, v89, v6
	v_fmac_f32_e32 v8, v76, v8
	v_div_fixup_f32 v76, v0, v78, v116
	v_fma_f32 v0, -v87, v85, v77
	v_fma_f32 v77, -v10, v5, v79
	v_fma_f32 v89, -v86, v88, 1.0
	v_mul_f32_e32 v87, v80, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v0, v0, v9, v85
	v_fmac_f32_e32 v5, v77, v7
	v_div_scale_f32 v85, s1, v51, v55, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v9, -v84, v87, v80
	v_div_fixup_f32 v77, v0, v78, v115
	v_div_scale_f32 v78, null, v55, v55, v40
	v_fma_f32 v0, -v10, v5, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v87, v9, v8
	s_mov_b32 vcc_lo, s6
	v_rcp_f32_e32 v79, v78
	v_mul_f32_e32 v9, v85, v6
	v_div_fmas_f32 v0, v0, v7, v5
	v_fma_f32 v5, -v84, v87, v80
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v10, s7, v50, v55, v50
	v_fma_f32 v7, -v83, v9, v85
	v_fmac_f32_e32 v88, v89, v88
	v_div_scale_f32 v84, null, v55, v55, v41
	v_div_fmas_f32 v5, v5, v8, v87
	v_fma_f32 v87, -v78, v79, 1.0
	v_fmac_f32_e32 v9, v7, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v7, v84
	v_div_fixup_f32 v48, v0, v55, v48
	v_div_fixup_f32 v49, v5, v55, v49
	v_fmac_f32_e32 v79, v87, v79
	v_div_scale_f32 v5, s0, v40, v55, v40
	v_mul_f32_e32 v80, v10, v88
	v_fma_f32 v0, -v83, v9, v85
	v_div_scale_f32 v83, null, v55, v55, v42
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v8, -v86, v80, v10
	v_div_scale_f32 v85, null, v55, v55, v43
	v_div_scale_f32 v89, null, v55, v55, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v8, v88
	v_fma_f32 v8, -v84, v7, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v49, v49
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v7, v8, v7
	v_div_fmas_f32 v0, v0, v6, v9
	v_fma_f32 v6, -v86, v80, v10
	v_mul_f32_e32 v9, v5, v79
	v_rcp_f32_e32 v8, v83
	v_div_scale_f32 v10, s1, v41, v55, v41
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v51, v0, v55, v51
	v_div_fmas_f32 v6, v6, v88, v80
	v_fma_f32 v80, -v78, v9, v5
	v_mul_f32_e32 v86, v10, v7
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v88, v85
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v87, -v83, v8, 1.0
	v_fmac_f32_e32 v9, v80, v79
	v_fma_f32 v0, -v84, v86, v10
	v_div_scale_f32 v80, null, v55, v55, v102
	v_fmac_f32_e32 v8, v87, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v5, -v78, v9, v5
	v_fmac_f32_e32 v86, v0, v7
	v_div_fixup_f32 v50, v6, v55, v50
	v_div_scale_f32 v6, s6, v42, v55, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v5, v5, v79, v9
	v_fma_f32 v9, -v84, v86, v10
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v87, -v85, v88, 1.0
	v_rcp_f32_e32 v78, v80
	v_div_fixup_f32 v40, v5, v55, v40
	v_div_fmas_f32 v7, v9, v7, v86
	v_rcp_f32_e32 v9, v89
	v_fmac_f32_e32 v88, v87, v88
	v_div_scale_f32 v87, s7, v43, v55, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v41, v7, v55, v41
	s_mov_b32 vcc_lo, s6
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v80, v78, 1.0
	v_mul_f32_e32 v79, v87, v88
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v7, -v89, v9, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v51
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v78, v84, v78
	v_div_scale_f32 v84, s0, v102, v55, v102
	v_dual_fmac_f32 v9, v7, v9 :: v_dual_mul_f32 v0, v6, v8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v50, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v10, -v83, v0, v6
	v_fmac_f32_e32 v0, v10, v8
	v_fma_f32 v10, -v85, v79, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v5, -v83, v0, v6
	v_dual_fmac_f32 v79, v10, v88 :: v_dual_mul_f32 v6, v84, v78
	v_div_scale_f32 v10, null, v55, v55, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v0, v5, v8, v0
	v_fma_f32 v5, -v85, v79, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v8, -v80, v6, v84
	v_rcp_f32_e32 v7, v10
	v_div_scale_f32 v85, null, v55, v55, v34
	v_div_scale_f32 v83, s1, v32, v55, v32
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v42, v0, v55, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v86, -v10, v7, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v7, v86, v7 :: v_dual_fmac_f32 v6, v8, v78
	v_rcp_f32_e32 v8, v85
	v_div_fmas_f32 v5, v5, v88, v79
	v_mul_f32_e32 v79, v83, v9
	v_div_scale_f32 v86, null, v55, v55, v35
	v_fma_f32 v0, -v80, v6, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v43, v5, v55, v43
	v_fma_f32 v5, -v89, v79, v83
	v_div_scale_f32 v80, s6, v33, v55, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v84, -v85, v8, 1.0
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v79, v5, v9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v8, v84, v8
	v_div_scale_f32 v84, null, v55, v55, v100
	v_mul_f32_e32 v5, v80, v7
	v_fma_f32 v83, -v89, v79, v83
	v_rcp_f32_e32 v89, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v10, v5, v80
	v_fmac_f32_e32 v5, v87, v7
	v_div_fmas_f32 v0, v0, v78, v6
	v_rcp_f32_e32 v6, v86
	v_div_scale_f32 v78, s0, v34, v55, v34
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v87, -v84, v89, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v10, -v10, v5, v80
	v_div_fmas_f32 v9, v83, v9, v79
	v_div_scale_f32 v83, s1, v35, v55, v35
	v_dual_fmac_f32 v89, v87, v89 :: v_dual_mul_f32 v88, v78, v8
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v90, -v86, v6, 1.0
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v9, v9, v55, v32
	v_div_fmas_f32 v5, v10, v7, v5
	v_fma_f32 v79, -v85, v88, v78
	v_div_scale_f32 v87, null, v55, v55, v93
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v80, null, v55, v55, v92
	v_fmac_f32_e32 v88, v79, v8
	v_div_scale_f32 v79, s7, v100, v55, v100
	v_fmac_f32_e32 v6, v90, v6
	v_div_fixup_f32 v5, v5, v55, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v7, -v85, v88, v78
	v_mul_f32_e32 v85, v79, v89
	v_rcp_f32_e32 v78, v80
	v_mul_f32_e32 v32, v83, v6
	v_div_scale_f32 v90, null, v30, v30, v26
	v_div_fixup_f32 v0, v0, v55, v102
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v5, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v10, -v86, v32, v83
	v_rcp_f32_e32 v94, v90
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v32, v10, v6
	v_fma_f32 v10, -v84, v85, v79
	v_fma_f32 v33, -v86, v32, v83
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v85, v10, v89
	v_div_fmas_f32 v7, v7, v8, v88
	v_rcp_f32_e32 v8, v87
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v88, -v80, v78, 1.0
	v_div_fmas_f32 v6, v33, v6, v32
	v_div_fixup_f32 v7, v7, v55, v34
	v_fma_f32 v32, -v84, v85, v79
	v_div_scale_f32 v79, s1, v93, v55, v93
	s_mov_b32 vcc_lo, s7
	v_div_scale_f32 v10, s0, v92, v55, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v87, v8, 1.0
	v_div_fmas_f32 v32, v32, v89, v85
	v_div_fixup_f32 v6, v6, v55, v35
	v_div_scale_f32 v86, null, v30, v30, v25
	v_fmac_f32_e32 v8, v34, v8
	v_div_scale_f32 v34, null, v30, v30, v24
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v32, v32, v55, v100
	v_mul_f32_e32 v85, v79, v8
	v_rcp_f32_e32 v83, v34
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v7, v7
	v_rndne_f32_e32 v6, v6
	v_rndne_f32_e32 v32, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v35, -v87, v85, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v78, v88, v78 :: v_dual_fmac_f32 v85, v35, v8
	v_fma_f32 v88, -v34, v83, 1.0
	v_div_scale_f32 v35, s6, v24, v30, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v83, v88, v83
	v_mul_f32_e32 v33, v10, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v80, v33, v10
	v_fmac_f32_e32 v33, v84, v78
	v_rcp_f32_e32 v84, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v10, -v80, v33, v10
	v_div_scale_f32 v80, null, v30, v30, v27
	v_div_fmas_f32 v10, v10, v78, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v88, v80
	v_fma_f32 v89, -v86, v84, 1.0
	v_mul_f32_e32 v78, v35, v83
	v_fma_f32 v33, -v87, v85, v79
	v_div_scale_f32 v79, s0, v25, v30, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v84, v89, v84
	v_fma_f32 v89, -v34, v78, v35
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v10, v10, v55, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v87, -v80, v88, 1.0
	v_dual_mul_f32 v91, v79, v84 :: v_dual_fmac_f32 v78, v89, v83
	v_div_fmas_f32 v8, v33, v8, v85
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v88, v87, v88
	v_div_scale_f32 v87, s7, v27, v30, v27
	v_fma_f32 v33, -v86, v91, v79
	v_fma_f32 v34, -v34, v78, v35
	v_fma_f32 v35, -v90, v94, 1.0
	v_div_fixup_f32 v8, v8, v55, v93
	v_div_scale_f32 v55, null, v30, v30, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v91, v33, v84 :: v_dual_fmac_f32 v94, v35, v94
	v_mul_f32_e32 v85, v87, v88
	v_div_scale_f32 v35, s1, v26, v30, v26
	v_div_fmas_f32 v34, v34, v83, v78
	v_fma_f32 v78, -v86, v91, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v80, v85, v87
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v83, null, v30, v30, v23
	v_div_fmas_f32 v78, v78, v84, v91
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v85, v33, v88
	v_rcp_f32_e32 v33, v55
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v24, v34, v30, v24
	v_div_fixup_f32 v25, v78, v30, v25
	v_fma_f32 v79, -v80, v85, v87
	v_mul_f32_e32 v80, v35, v94
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v8, v8
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v55, v33, 1.0
	v_fma_f32 v86, -v90, v80, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v33, v84, v33
	v_div_fmas_f32 v79, v79, v88, v85
	v_div_scale_f32 v84, s0, v29, v30, v29
	v_fmac_f32_e32 v80, v86, v94
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v27, v79, v30, v27
	v_mul_f32_e32 v34, v84, v33
	v_div_scale_f32 v79, null, v30, v30, v21
	v_fma_f32 v35, -v90, v80, v35
	v_rcp_f32_e32 v85, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v86, -v55, v34, v84
	v_rcp_f32_e32 v87, v79
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v27, v27
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v35, v35, v94, v80
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v34, v86, v33
	v_div_scale_f32 v86, null, v30, v30, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v26, v35, v30, v26
	v_fma_f32 v78, -v83, v85, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v35, -v55, v34, v84
	v_fma_f32 v84, -v79, v87, 1.0
	v_rcp_f32_e32 v88, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v26
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v85, v78, v85
	v_div_scale_f32 v78, s6, v23, v30, v23
	v_fmac_f32_e32 v87, v84, v87
	v_div_fmas_f32 v33, v35, v33, v34
	v_div_scale_f32 v34, null, v30, v30, v82
	v_div_scale_f32 v35, s0, v21, v30, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v29, v33, v30, v29
	v_fma_f32 v33, -v86, v88, 1.0
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v84, null, v30, v30, v28
	v_div_scale_f32 v91, s6, v82, v30, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v88, v33, v88
	v_div_scale_f32 v33, s1, v20, v30, v20
	v_mul_f32_e32 v80, v78, v85
	v_rcp_f32_e32 v90, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v55, -v83, v80, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v80, v55, v85
	v_rcp_f32_e32 v55, v34
	v_fma_f32 v92, -v84, v90, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v34, v55, 1.0
	v_fmac_f32_e32 v55, v89, v55
	v_fma_f32 v78, -v83, v80, v78
	v_mul_f32_e32 v83, v35, v87
	v_div_scale_f32 v89, null, v30, v30, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v78, v78, v85, v80
	v_fma_f32 v80, -v79, v83, v35
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v93, v89
	v_div_fixup_f32 v23, v78, v30, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v80, v87
	v_mul_f32_e32 v85, v33, v88
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v35, -v79, v83, v35
	v_fma_f32 v80, -v86, v85, v33
	v_mul_f32_e32 v94, v91, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v35, v35, v87, v83
	v_fmac_f32_e32 v85, v80, v88
	v_div_scale_f32 v83, null, v30, v30, v19
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v78, -v34, v94, v91
	v_fma_f32 v33, -v86, v85, v33
	v_fma_f32 v80, -v89, v93, 1.0
	v_div_fixup_f32 v21, v35, v30, v21
	v_div_scale_f32 v35, null, v30, v30, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v33, v33, v88, v85
	v_rcp_f32_e32 v85, v83
	v_fmac_f32_e32 v90, v92, v90
	v_div_scale_f32 v92, s7, v28, v30, v28
	v_dual_fmac_f32 v94, v78, v55 :: v_dual_fmac_f32 v93, v80, v93
	v_div_scale_f32 v80, s0, v22, v30, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v79, v92, v90
	v_fma_f32 v34, -v34, v94, v91
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v20, v33, v30, v20
	v_div_scale_f32 v87, null, v30, v30, v81
	v_fma_f32 v78, -v84, v79, v92
	v_div_fmas_f32 v34, v34, v55, v94
	s_mov_b32 vcc_lo, s7
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v20, v20
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v79, v78, v90 :: v_dual_mul_f32 v78, v80, v93
	v_div_fixup_f32 v33, v34, v30, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v55, -v84, v79, v92
	v_fma_f32 v84, -v89, v78, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v55, v55, v90, v79
	v_div_scale_f32 v79, null, v30, v30, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v84, v93
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v28, v55, v30, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v84, v79
	v_fma_f32 v55, -v83, v85, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v85, v55, v85
	v_div_scale_f32 v55, null, v30, v30, v73
	v_fma_f32 v91, -v79, v84, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v82, v55
	v_fmac_f32_e32 v84, v91, v84
	v_div_scale_f32 v91, s6, v74, v30, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v95, v91, v84
	v_fma_f32 v34, -v89, v78, v80
	v_rcp_f32_e32 v89, v87
	v_fma_f32 v88, -v55, v82, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v34, v34, v93, v78
	v_div_scale_f32 v80, vcc_lo, v19, v30, v19
	v_rcp_f32_e32 v78, v35
	v_div_fixup_f32 v22, v34, v30, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v86, v80, v85
	v_fma_f32 v93, -v87, v89, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v90, -v83, v86, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v89, v93, v89
	v_fma_f32 v34, -v35, v78, 1.0
	v_div_scale_f32 v93, s7, v81, v30, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v90, v85
	v_fmac_f32_e32 v78, v34, v78
	v_div_scale_f32 v34, s0, v18, v30, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v80, -v83, v86, v80
	v_mul_f32_e32 v92, v34, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v80, v80, v85, v86
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	v_fma_f32 v90, -v35, v92, v34
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v46, v46, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v7, v7, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v92, v90, v78
	v_fma_f32 v90, -v79, v95, v91
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v46, v46
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v96, v93, v89
	v_fma_f32 v34, -v35, v92, v34
	v_div_fixup_f32 v19, v80, v30, v19
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v52, v52, s0, 0x40e00000
	v_med3_f32 v54, v54, s0, 0x40e00000
	v_med3_f32 v5, v5, s0, 0x40e00000
	v_cvt_i32_f32_e32 v31, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v82, v88, v82
	v_div_scale_f32 v88, s1, v73, v30, v73
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v80, v7
	v_and_b32_e32 v7, 15, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v95, v90, v84
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v90, v21
	v_and_b32_e32 v21, 15, v46
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v35, -v87, v96, v93
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v54, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v34, v34, v78, v92
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v96, v35, v89
	v_fma_f32 v35, -v79, v95, v91
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v79, v5
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v94, v88, v82 :: v_dual_and_b32 v5, 15, v31
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v25, v25, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v18, v34, v30, v18
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v53, v53, s0, 0x40e00000
	v_med3_f32 v43, v43, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v55, v94, v88
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v85, v25
	v_and_b32_e32 v25, 15, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v87, v96, v93
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v94, v83, v82
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v55, -v55, v94, v88
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v0, v0
	v_cvt_i32_f32_e32 v9, v9
	v_med3_f32 v27, v27, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v55, v55, v82, v94
	s_mov_b32 vcc_lo, s6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v10, v10
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v35, v35, v84, v95
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v34, v55, v30, v73
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v60
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v89, v96
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v60, v61
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v35, v35, v30, v74
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v62
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v55, v55, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v30, v78, v30, v81
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v60, v60, s0, 0x40e00000
	v_cvt_i32_f32_e32 v78, v43
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v63
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v55, v55
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v68
	v_rndne_f32_e32 v68, v69
	v_rndne_f32_e32 v69, v70
	v_rndne_f32_e32 v70, v71
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v84, v24
	v_cvt_i32_f32_e32 v87, v26
	v_and_b32_e32 v24, 15, v53
	v_and_b32_e32 v26, 15, v55
	v_and_b32_e32 v53, 15, v78
	v_and_b32_e32 v54, 15, v0
	v_and_b32_e32 v55, 15, v9
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 10, v139
	v_and_b32_e32 v78, 16, v139
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v9, 4, v192
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v71, v72
	v_rndne_f32_e32 v30, v30
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_med3_f32 v38, v38, s0, 0x40e00000
	v_med3_f32 v63, v63, s0, 0x40e00000
	v_med3_f32 v68, v68, s0, 0x40e00000
	v_med3_f32 v69, v69, s0, 0x40e00000
	v_med3_f32 v70, v70, s0, 0x40e00000
	v_cvt_i32_f32_e32 v86, v27
	v_and_b32_e32 v27, 15, v60
	v_and_b32_e32 v60, 15, v10
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v0, 0x1800, v0
	v_lshlrev_b32_e32 v10, 6, v78
	v_xor_b32_e32 v9, v9, v17
	v_lshlrev_b32_e32 v17, 6, v139
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v39, v39, s0, 0x40e00000
	v_med3_f32 v47, v47, s0, 0x40e00000
	v_med3_f32 v71, v71, s0, 0x40e00000
	v_med3_f32 v56, v56, s0, 0x40e00000
	v_med3_f32 v57, v57, s0, 0x40e00000
	v_med3_f32 v58, v58, s0, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v72, v75
	v_rndne_f32_e32 v73, v76
	v_rndne_f32_e32 v19, v19
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v6, v6, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v70, v70
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, 0, v0, v10
	v_and_or_b32 v10, 0x1b00, v17, v14
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v40, v40, s0, 0x40e00000
	v_med3_f32 v41, v41, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v58, v58
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v35, v35
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v44, v44, s0, 0x40e00000
	v_med3_f32 v45, v45, s0, 0x40e00000
	v_med3_f32 v62, v62, s0, 0x40e00000
	v_med3_f32 v64, v64, s0, 0x40e00000
	v_med3_f32 v65, v65, s0, 0x40e00000
	v_med3_f32 v48, v48, s0, 0x40e00000
	v_med3_f32 v49, v49, s0, 0x40e00000
	v_med3_f32 v51, v51, s0, 0x40e00000
	v_med3_f32 v50, v50, s0, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v74, v77
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v61, v61, s0, 0x40e00000
	v_med3_f32 v72, v72, s0, 0x40e00000
	v_med3_f32 v73, v73, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_cvt_i32_f32_e32 v81, v6
	v_cvt_i32_f32_e32 v82, v32
	v_cvt_i32_f32_e32 v83, v8
	v_cvt_i32_f32_e32 v92, v33
	v_cvt_i32_f32_e32 v99, v30
	v_and_b32_e32 v6, 15, v36
	v_and_b32_e32 v8, 15, v38
	v_and_b32_e32 v30, 15, v63
	v_and_b32_e32 v31, 15, v68
	v_and_b32_e32 v32, 15, v69
	v_and_b32_e32 v33, 15, v70
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, v0, v9, v15
	s_waitcnt vmcnt(0)
	v_xad_u32 v9, v10, v180, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v75, v40
	v_cvt_i32_f32_e32 v76, v41
	v_cvt_i32_f32_e32 v89, v23
	v_cvt_i32_f32_e32 v94, v22
	v_cvt_i32_f32_e32 v96, v18
	v_and_b32_e32 v18, 15, v39
	v_and_b32_e32 v22, 15, v47
	v_and_b32_e32 v23, 15, v52
	v_and_b32_e32 v38, 15, v71
	v_and_b32_e32 v39, 15, v56
	v_and_b32_e32 v40, 15, v57
	v_and_b32_e32 v41, 15, v58
	v_med3_f32 v66, v66, s0, 0x40e00000
	v_med3_f32 v67, v67, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v50, v50
	v_med3_f32 v59, v59, s0, 0x40e00000
	v_med3_f32 v74, v74, s0, 0x40e00000
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v93, v28
	v_cvt_i32_f32_e32 v95, v19
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v0, v[5:8]
	ds_store_b128 v0, v[22:25] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[5:8], v9
	ds_load_b128 v[22:25], v9 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[30:33]
	ds_store_b128 v0, v[38:41] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[30:33], v9
	ds_load_b128 v[38:41], v9 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v42, v42, s0, 0x40e00000
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v88, v29
	v_cvt_i32_f32_e32 v91, v20
	v_cvt_i32_f32_e32 v97, v34
	v_cvt_i32_f32_e32 v98, v35
	v_and_b32_e32 v19, 15, v44
	v_and_b32_e32 v20, 15, v45
	v_and_b32_e32 v29, 15, v62
	v_and_b32_e32 v34, 15, v64
	v_and_b32_e32 v35, 15, v65
	v_and_b32_e32 v46, 15, v48
	v_and_b32_e32 v47, 15, v49
	v_and_b32_e32 v48, 15, v51
	v_and_b32_e32 v49, 15, v50
	v_and_b32_e32 v62, 15, v84
	v_and_b32_e32 v63, 15, v85
	v_and_b32_e32 v64, 15, v86
	v_and_b32_e32 v65, 15, v87
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v74, v74
	v_and_b32_e32 v28, 15, v61
	v_and_b32_e32 v43, 15, v72
	v_and_b32_e32 v44, 15, v73
	v_and_b32_e32 v56, 15, v79
	v_and_b32_e32 v57, 15, v80
	v_and_b32_e32 v70, 15, v92
	v_and_b32_e32 v71, 15, v93
	v_and_b32_e32 v72, 15, v94
	v_and_b32_e32 v73, 15, v95
	v_cvt_i32_f32_e32 v77, v42
	v_and_b32_e32 v36, 15, v66
	v_and_b32_e32 v37, 15, v67
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[46:49]
	ds_store_b128 v0, v[54:57] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[46:49], v9
	ds_load_b128 v[54:57], v9 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[62:65]
	ds_store_b128 v0, v[70:73] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[62:65], v9
	ds_load_b128 v[70:73], v9 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[18:21]
	ds_store_b128 v0, v[26:29] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v9
	ds_load_b128 v[26:29], v9 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v42, 15, v59
	v_and_b32_e32 v45, 15, v74
	v_and_b32_e32 v50, 15, v75
	v_and_b32_e32 v51, 15, v76
	v_and_b32_e32 v52, 15, v77
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[34:37]
	ds_store_b128 v0, v[42:45] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[34:37], v9
	ds_load_b128 v[42:45], v9 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v58, 15, v81
	v_and_b32_e32 v59, 15, v82
	v_and_b32_e32 v61, 15, v83
	v_and_b32_e32 v66, 15, v88
	v_and_b32_e32 v67, 15, v89
	v_and_b32_e32 v68, 15, v90
	v_and_b32_e32 v69, 15, v91
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[50:53]
	ds_store_b128 v0, v[58:61] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[50:53], v9
	ds_load_b128 v[58:61], v9 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v74, 15, v96
	v_and_b32_e32 v75, 15, v97
	v_and_b32_e32 v76, 15, v98
	v_and_b32_e32 v77, 15, v99
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v14, v24, 4, v7
	v_lshl_or_b32 v24, v41, 4, v33
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v41, 3, v192
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[66:69]
	ds_store_b128 v0, v[74:77] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[66:69], v9
	ds_load_b128 v[74:77], v9 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s0, s33, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_lshl_or_b32 v0, s49, 7, v41
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s0, s33, s0
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v5, v22, 4, v5
	v_lshl_or_b32 v6, v23, 4, v6
	v_lshl_or_b32 v15, v25, 4, v8
	v_lshl_or_b32 v17, v26, 4, v17
	v_lshl_or_b32 v18, v27, 4, v18
	v_lshl_or_b32 v19, v28, 4, v19
	v_lshl_or_b32 v20, v29, 4, v20
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s0, 1
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v27, v44, 4, v36
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[7:8], null, v128, s0, v[0:1]
	v_mad_u64_u32 v[8:9], null, v177, s0, v[0:1]
	v_mad_u64_u32 v[9:10], null, v127, s0, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v28, v45, 4, v37
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[10:11], null, v179, s0, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v15.l
	v_and_b16 v0.h, 0xff, v14.l
	v_lshlrev_b16 v3.l, 8, v6.l
	v_and_b16 v4.l, 0xff, v5.l
	v_lshlrev_b16 v5.l, 8, v20.l
	v_and_b16 v5.h, 0xff, v19.l
	v_lshlrev_b16 v6.l, 8, v18.l
	v_and_b16 v6.h, 0xff, v17.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v21, v38, 4, v30
	v_lshl_or_b32 v22, v39, 4, v31
	v_lshl_or_b32 v23, v40, 4, v32
	v_lshl_or_b32 v25, v42, 4, v34
	v_lshl_or_b32 v26, v43, 4, v35
	v_lshl_or_b32 v35, v60, 4, v52
	v_lshl_or_b32 v36, v61, 4, v53
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v14.h, v0.h, v0.l
	v_or_b16 v14.l, v4.l, v3.l
	v_or_b16 v15.h, v5.h, v5.l
	v_or_b16 v15.l, v6.h, v6.l
	v_cndmask_b32_e64 v7, 0x80000000, v7, s5
	v_lshlrev_b16 v5.l, 8, v28.l
	v_and_b16 v5.h, 0xff, v27.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v29, v54, 4, v46
	v_lshl_or_b32 v30, v55, 4, v47
	v_lshl_or_b32 v31, v56, 4, v48
	v_lshl_or_b32 v32, v57, 4, v49
	v_lshl_or_b32 v33, v58, 4, v50
	v_lshl_or_b32 v34, v59, 4, v51
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v44, v76, 4, v68
	v_lshl_or_b32 v45, v77, 4, v69
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v24.l
	v_and_b16 v0.h, 0xff, v23.l
	v_lshlrev_b16 v3.l, 8, v22.l
	v_and_b16 v4.l, 0xff, v21.l
	v_lshlrev_b16 v6.l, 8, v26.l
	v_and_b16 v6.h, 0xff, v25.l
	buffer_store_b64 v[14:15], v7, s[8:11], 0 offen
	v_or_b16 v15.h, v5.h, v5.l
	v_lshlrev_b16 v5.l, 8, v36.l
	v_and_b16 v5.h, 0xff, v35.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v37, v70, 4, v62
	v_lshl_or_b32 v38, v71, 4, v63
	v_lshl_or_b32 v39, v72, 4, v64
	v_lshl_or_b32 v40, v73, 4, v65
	v_lshl_or_b32 v42, v74, 4, v66
	v_lshl_or_b32 v43, v75, 4, v67
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v14.h, v0.h, v0.l
	v_or_b16 v14.l, v4.l, v3.l
	v_or_b16 v15.l, v6.h, v6.l
	v_cndmask_b32_e64 v7, 0x80000000, v8, s4
	v_lshlrev_b16 v0.l, 8, v32.l
	v_and_b16 v0.h, 0xff, v31.l
	v_lshlrev_b16 v3.l, 8, v30.l
	v_and_b16 v4.l, 0xff, v29.l
	v_lshlrev_b16 v6.l, 8, v34.l
	v_and_b16 v6.h, 0xff, v33.l
	v_or_b16 v8.h, v5.h, v5.l
	v_lshlrev_b16 v5.l, 8, v45.l
	v_and_b16 v5.h, 0xff, v44.l
	buffer_store_b64 v[14:15], v7, s[8:11], 0 offen
	v_or_b16 v7.h, v0.h, v0.l
	v_or_b16 v7.l, v4.l, v3.l
	v_or_b16 v8.l, v6.h, v6.l
	v_lshlrev_b16 v0.l, 8, v40.l
	v_and_b16 v0.h, 0xff, v39.l
	v_lshlrev_b16 v3.l, 8, v38.l
	v_and_b16 v4.l, 0xff, v37.l
	v_lshlrev_b16 v6.l, 8, v43.l
	v_and_b16 v6.h, 0xff, v42.l
	v_or_b16 v15.h, v5.h, v5.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v5, 2, v78
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	v_or_b16 v14.h, v0.h, v0.l
	v_or_b16 v14.l, v4.l, v3.l
	v_or_b16 v15.l, v6.h, v6.l
	v_cndmask_b32_e64 v0, 0x80000000, v10, s2
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v6, 2, v140
	v_add_nc_u32_e32 v5, 0, v5
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[7:8], v9, s[8:11], 0 offen
	buffer_store_b64 v[14:15], v0, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v41
	v_mov_b16_e32 v4.l, v16.h
	v_mov_b16_e32 v3.l, v12.h
	v_add3_u32 v5, v5, v6, v41
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s0, 24
	.loc	1 1254 13 is_stmt 0             ; ragged.py:1254:13
	v_add_nc_u32_e32 v7, s46, v13
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
	v_and_b32_e32 v4, 0xc0, v139
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[34:35], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[44:45], v[1:2]
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_and_b32 s9, s31, 0xffff
	s_mov_b32 s8, s30
	v_cmp_eq_u32_e64 s1, 0, v4
	v_add_lshl_u32 v1, v3, s49, 1
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
.Ltmp74:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 348
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
		.amdhsa_next_free_sgpr 51
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 51
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 348
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 28728
; TotalNumSgprs: 53
; NumVgprs: 256
; ScratchSize: 348
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 53
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
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
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
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
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
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 348
    .sgpr_count:     53
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 86
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
