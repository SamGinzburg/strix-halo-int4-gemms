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
	s_load_b64 s[48:49], s[0:1], 0x5c
	v_dual_mov_b32 v175, v0 :: v_dual_mov_b32 v254, 0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v157, 4, v175
	v_and_b32_e32 v200, 15, v175
	v_lshlrev_b32_e32 v51, 4, v175
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
	s_ashr_i32 s11, s4, 31
	s_sub_i32 s12, s5, s6
	s_add_i32 s13, s3, 1
	s_sub_i32 s14, s12, s10
	s_cmp_ge_u32 s12, s10
	s_load_b128 s[4:7], s[0:1], 0x28
	s_cselect_b32 s3, s13, s3
	s_cselect_b32 s12, s14, s12
	s_add_i32 s13, s3, 1
	s_cmp_ge_u32 s12, s10
	s_cselect_b32 s3, s13, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s3, s3, s11
	s_sub_i32 s49, s3, s11
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
	s_load_b64 s[34:35], s[2:3], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s2, s6, s10
	s_addc_u32 s3, s7, s11
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s4, s8, s10
	s_addc_u32 s5, s9, s11
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[44:45], s[2:3], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[46:47], s[4:5], 0x0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v0, s2, s34, v157
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s35, 0, s2
	v_add_nc_u32_e32 v25, s34, v157
	v_add_co_u32 v2, vcc_lo, v0, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, 0, v1, vcc_lo
	v_add_co_u32 v4, vcc_lo, v0, 32
	v_add_co_ci_u32_e64 v5, null, 0, v1, vcc_lo
	v_add_co_u32 v6, vcc_lo, v0, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, 0, v1, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[44:45], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[46:47], v[0:1]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[44:45], v[2:3]
	v_cmp_le_i64_e64 s6, s[44:45], v[4:5]
	v_cmp_le_i64_e64 s7, s[44:45], v[6:7]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[46:47], v[2:3]
	v_cmp_gt_i64_e64 s8, s[46:47], v[4:5]
	v_cmp_gt_i64_e64 s9, s[46:47], v[6:7]
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
	v_add_nc_u32_e32 v5, s34, v157
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v1, 8, v175
	v_and_b32_e32 v2, 0x80, v175
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp4:
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v112, 16, v5
	v_add_nc_u32_e32 v202, 32, v5
	v_add_nc_u32_e32 v141, 48, v5
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr112
                                        ; implicit-def: $vgpr202
                                        ; implicit-def: $vgpr141
.LBB0_3:                                ; %Flow596
	s_load_b128 s[24:27], s[0:1], 0x40
	v_dual_mov_b32 v211, 0 :: v_dual_and_b32 v204, 0xf0, v175
	v_dual_mov_b32 v210, 0 :: v_dual_lshlrev_b32 v205, 4, v200
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v236, 0
	v_dual_mov_b32 v235, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v238, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v232, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v230, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v159, 0
	v_mov_b32_e32 v154, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x2
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[16:23], s[0:1], 0x0
	s_load_b32 s50, s[0:1], 0x58
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s0, s34, v200
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s35, 0, s0
	v_dual_mov_b32 v203, 0 :: v_dual_add_nc_u32 v8, s34, v200
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
	v_cmp_le_i64_e32 vcc_lo, s[44:45], v[0:1]
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[12:13], s[0:1], 0x0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[46:47], v[0:1]
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v0, v8, s48
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v48, 0 :: v_dual_add_nc_u32 v1, 32, v8
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[44:45], v[4:5]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s9, s[46:47], v[4:5]
	v_dual_mov_b32 v201, 0 :: v_dual_and_b32 v4, 0x7f, v175
	v_mov_b32_e32 v63, 0
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:112
	scratch_store_b32 off, v175, off offset:164
	v_add_nc_u32_e32 v0, 16, v8
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v8, 48, v8
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[44:45], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[46:47], v[2:3]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v0, v0, s48
	v_dual_mov_b32 v163, 0 :: v_dual_and_b32 v2, 0x70, v51
	v_bfe_i32 v3, v175, 3, 1
	v_dual_mov_b32 v68, 0 :: v_dual_lshlrev_b32 v5, 5, v175
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s8, s[44:45], v[6:7]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[46:47], v[6:7]
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:116
	scratch_store_b32 off, v204, off offset:168
	v_mul_lo_u32 v0, v1, s48
	v_bfe_i32 v1, v175, 7, 1
	v_mov_b32_e32 v206, 0
	v_and_or_b32 v2, 0x88, v3, v2
	v_lshrrev_b32_e32 v3, 1, v175
	v_dual_mov_b32 v153, 0 :: v_dual_lshlrev_b32 v6, 2, v204
	v_dual_mov_b32 v150, 0 :: v_dual_and_b32 v1, 0x88, v1
	v_dual_mov_b32 v50, 0 :: v_dual_lshlrev_b32 v7, 1, v175
	v_dual_mov_b32 v160, 0 :: v_dual_and_b32 v5, 32, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v1, v1, v4
	v_dual_mov_b32 v162, 0 :: v_dual_and_b32 v3, 0x70, v3
	v_dual_mov_b32 v158, 0 :: v_dual_and_b32 v7, 28, v7
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v1, 0, v1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:120
	scratch_store_b32 off, v205, off offset:172
	v_mul_lo_u32 v0, v8, s48
	v_add3_u32 v5, 0, v6, v5
	scratch_store_b32 off, v1, off offset:132 ; 4-byte Folded Spill
	v_dual_mov_b32 v154, 0 :: v_dual_add_nc_u32 v1, 0, v2
	v_mov_b32_e32 v199, 0
	v_mov_b32_e32 v145, 0
	v_xor_b32_e32 v4, 8, v2
	.loc	1 1214 25                       ; ragged.py:1214:25
	scratch_store_b32 off, v0, off offset:124 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v200
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_lshl_b32 s53, s49, 8
	.loc	1 1049 17                       ; ragged.py:1049:17
	s_lshl_b32 s11, s33, 1
	v_or_b32_e32 v8, s53, v175
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	v_dual_mov_b32 v149, 0 :: v_dual_add_nc_u32 v174, v0, v3
	v_add_nc_u32_e32 v0, v5, v7
	scratch_store_b32 off, v1, off offset:136 ; 4-byte Folded Spill
	v_dual_mov_b32 v152, 0 :: v_dual_add_nc_u32 v1, 0, v4
	s_and_b32 s0, s1, s7
	scratch_store_b32 off, v0, off offset:148 ; 4-byte Folded Spill
	scratch_load_b32 v107, off, off offset:148 ; 4-byte Folded Reload
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v133, 0
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s7, s11, s50
	v_dual_mov_b32 v159, 0 :: v_dual_lshlrev_b32 v6, 1, v204
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:140
	scratch_store_b32 off, v51, off offset:176
	v_dual_mov_b32 v110, 0 :: v_dual_add_nc_u32 v1, 0, v51
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v8, off offset:128
	scratch_store_b32 off, v0, off
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v0, s53, v205
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s6, s9
	s_and_b32 s6, s8, s10
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s10, s7, s12
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s51, s48, s12
	.loc	1 1180 33                       ; ragged.py:1180:33
	s_mov_b32 s12, 0
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
	s_mov_b32 s28, s16
	s_mov_b32 s29, s17
	s_mov_b32 s36, s18
	s_mov_b32 s37, s19
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v1, off offset:144
	scratch_store_b64 off, v[0:1], off offset:156
	v_dual_mov_b32 v148, 0 :: v_dual_add_nc_u32 v187, 0, v6
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v1, s12
	v_dual_mov_b32 v155, 0 :: v_dual_add_nc_u32 v112, 16, v25
	v_dual_mov_b32 v151, 0 :: v_dual_add_nc_u32 v202, 32, v25
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v141, 48, v25
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v231, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v235, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v237, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v3, s14
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v7, s18
	v_mov_b32_e32 v4, s15
	v_mov_b32_e32 v6, s17
	v_mov_b32_e32 v8, s19
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s21, s21, 0xffff
	s_and_b32 s23, s23, 0xffff
	s_add_u32 s52, s10, s33
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	s_mov_b32 s40, s20
	s_mov_b32 s41, s21
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
	s_mov_b32 s20, s22
	s_mov_b32 s21, s23
	s_mov_b32 s22, s30
	s_mov_b32 s23, s31
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v157, off offset:104
	scratch_store_b32 off, v25, off offset:108
	scratch_store_b32 off, v202, off offset:152
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	scratch_load_b64 v[9:10], off, off offset:156 ; 8-byte Folded Reload
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s8, s12, 4
	v_mul_lo_u32 v11, v112, s50
	v_or_b32_e32 v0, s8, v157
	v_mul_lo_u32 v12, v202, s50
	v_mul_lo_u32 v13, v141, s50
	s_clause 0xd                            ; 56-byte Folded Spill
	scratch_store_b32 off, v161, off offset:56
	scratch_store_b32 off, v96, off offset:52
	scratch_store_b32 off, v56, off offset:48
	scratch_store_b32 off, v206, off offset:44
	scratch_store_b32 off, v203, off offset:40
	scratch_store_b32 off, v201, off offset:36
	scratch_store_b32 off, v199, off offset:32
	scratch_store_b32 off, v156, off offset:28
	scratch_store_b32 off, v90, off offset:24
	scratch_store_b32 off, v100, off offset:20
	scratch_store_b32 off, v65, off offset:16
	scratch_store_b32 off, v142, off offset:12
	scratch_store_b32 off, v58, off offset:8
	scratch_store_b32 off, v57, off offset:4
	v_dual_mov_b32 v157, v135 :: v_dual_mov_b32 v132, v49
	v_cmp_gt_i32_e64 s7, s50, v0
	v_mov_b32_e32 v135, v113
	v_mov_b32_e32 v113, v97
	v_mov_b32_e32 v97, v69
	v_mov_b32_e32 v69, v200
	v_mov_b32_e32 v161, v81
	v_mov_b32_e32 v57, v67
	v_dual_mov_b32 v67, v146 :: v_dual_mov_b32 v146, v68
	v_mov_b32_e32 v68, v162
	v_dual_mov_b32 v162, v143 :: v_dual_mov_b32 v143, v129
	v_dual_mov_b32 v129, v109 :: v_dual_mov_b32 v90, v254
	v_mov_b32_e32 v109, v238
	v_mov_b32_e32 v81, v54
	v_dual_mov_b32 v123, v163 :: v_dual_mov_b32 v156, v101
	v_dual_mov_b32 v101, v91 :: v_dual_mov_b32 v186, v48
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[26:27], null, v0, s11, v[9:10]
	v_mul_lo_u32 v10, v25, s50
	v_or_b32_e32 v0, s8, v200
	v_mov_b32_e32 v91, v233
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_gt_i32_e64 s8, s50, v0
	v_add_nc_u32_e32 v9, s10, v26
	v_add_nc_u32_e32 v10, v10, v0
	v_add_nc_u32_e32 v11, v11, v0
	v_add_nc_u32_e32 v12, v12, v0
	s_and_b32 s9, s5, s8
	v_add_nc_u32_e32 v0, v13, v0
	v_cndmask_b32_e64 v10, 0x80000000, v10, s9
	s_and_b32 s9, s4, s8
	v_cndmask_b32_e64 v9, 0x80000000, v9, s7
	v_cndmask_b32_e64 v11, 0x80000000, v11, s9
	s_and_b32 s9, s3, s8
	s_and_b32 s8, s2, s8
	v_cndmask_b32_e64 v12, 0x80000000, v12, s9
	v_cndmask_b32_e64 v0, 0x80000000, v0, s8
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x3
	buffer_load_u8 v10, v10, s[28:31], 0 offen
	buffer_load_u8 v11, v11, s[28:31], 0 offen
	buffer_load_u8 v12, v12, s[28:31], 0 offen
	buffer_load_u8 v0, v0, s[28:31], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_b128 v[27:30], v9, s[36:39], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v9, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v9, v10
	ds_store_b8 v9, v11 offset:256
	ds_store_b8 v9, v12 offset:512
	ds_store_b8 v9, v0 offset:768
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_b64 v[17:20], v0 offset1:32
	ds_load_2addr_b64 v[9:12], v0 offset0:64 offset1:96
	scratch_load_b32 v0, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_b64 v[21:24], v0 offset1:32
	ds_load_2addr_b64 v[13:16], v0 offset0:64 offset1:96
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v51, off, off offset:144 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v51, v[27:30]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v0, v174 offset:1280
	ds_load_u8 v25, v174 offset:1024
	ds_load_u8 v35, v174 offset:1920
	ds_load_u8 v40, v174 offset:1664
	ds_load_u8 v41, v174 offset:1408
	ds_load_u8 v42, v174 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v25, v0, 0xc0c0004
	ds_load_u8 v25, v174 offset:1792
	ds_load_u8 v27, v174 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v27, v25, 0xc0c0004
	ds_load_u8 v27, v174 offset:256
	ds_load_u8 v28, v174
	ds_load_u8 v43, v174 offset:896
	ds_load_u8 v44, v174 offset:640
	ds_load_u8 v45, v174 offset:384
	ds_load_u8 v164, v174 offset:128
	v_lshl_or_b32 v37, v25, 16, v0
	ds_load_u8 v0, v174 offset:3328
	ds_load_u8 v25, v174 offset:3072
	ds_load_u8 v165, v174 offset:3968
	ds_load_u8 v166, v174 offset:3712
	ds_load_u8 v167, v174 offset:3456
	ds_load_u8 v168, v174 offset:3200
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v174 offset:768
	ds_load_u8 v29, v174 offset:512
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v0, v25, v0, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v28, 16, v27
	ds_load_u8 v25, v174 offset:3840
	ds_load_u8 v27, v174 offset:3584
	v_wmma_i32_16x16x16_iu4 v[201:208], v[36:37], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[239:246], v[36:37], v[11:12], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v27, v25, 0xc0c0004
	ds_load_u8 v27, v174 offset:2304
	ds_load_u8 v28, v174 offset:2048
	ds_load_u8 v169, v174 offset:2944
	ds_load_u8 v171, v174 offset:2688
	ds_load_u8 v172, v174 offset:2432
	ds_load_u8 v173, v174 offset:2176
	v_lshl_or_b32 v39, v25, 16, v0
	v_perm_b32 v0, v42, v41, 0xc0c0004
	v_perm_b32 v25, v40, v35, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v41, v25, 16, v0
	v_perm_b32 v0, v168, v167, 0xc0c0004
	v_perm_b32 v25, v166, v165, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	ds_load_u8 v28, v174 offset:2816
	ds_load_u8 v29, v174 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v38, v28, 16, v27
	v_wmma_i32_16x16x16_iu4 v[27:34], v[36:37], v[17:18], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[201:208], v[38:39], v[13:14], v[201:208] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[27:34], v[38:39], v[21:22], v[27:34] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[239:246], v[38:39], v[15:16], v[239:246] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v168, v201
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v175, v27
	v_cvt_f32_i32_e32 v179, v28
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v27, v164, v45, 0xc0c0004
	v_perm_b32 v28, v44, v43, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v58, v29
	v_cvt_f32_i32_e32 v65, v30
	v_cvt_f32_i32_e32 v192, v31
	v_cvt_f32_i32_e32 v191, v32
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v40, v28, 16, v27
	v_perm_b32 v27, v173, v172, 0xc0c0004
	v_perm_b32 v28, v171, v169, 0xc0c0004
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v189, v33
	v_cvt_f32_i32_e32 v188, v34
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v43, v25, 16, v0
	v_wmma_i32_16x16x16_iu4 v[217:224], v[40:41], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v42, v28, 16, v27
	v_wmma_i32_16x16x16_iu4 v[27:34], v[40:41], v[17:18], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v54, v243
	v_cvt_f32_i32_e32 v163, v244
	v_cvt_f32_i32_e32 v48, v245
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[27:34], v[42:43], v[21:22], v[27:34] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v49, v246
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[243:250], v[40:41], v[11:12], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[217:224], v[42:43], v[13:14], v[217:224] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v32
	v_cvt_f32_i32_e32 v96, v27
	v_mov_b32_e32 v27, v178
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[243:250], v[42:43], v[15:16], v[243:250] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v46, v239
	scratch_store_b32 off, v0, off offset:68 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v33
	v_cvt_f32_i32_e32 v47, v240
	v_cvt_f32_i32_e32 v182, v241
	v_cvt_f32_i32_e32 v196, v224
	v_cvt_f32_i32_e32 v224, v219
	scratch_store_b32 off, v0, off offset:64 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v34
	v_cvt_f32_i32_e32 v184, v221
	v_cvt_f32_i32_e32 v180, v242
	v_cvt_f32_i32_e32 v221, v249
	v_cvt_f32_i32_e32 v253, v244
	scratch_store_b32 off, v0, off offset:60 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v28
	v_cvt_f32_i32_e32 v251, v245
	v_cvt_f32_i32_e32 v249, v246
	v_cvt_f32_i32_e32 v166, v203
	v_cvt_f32_i32_e32 v165, v204
	scratch_store_b32 off, v0, off offset:84 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v29
	v_cvt_f32_i32_e32 v167, v202
	v_cvt_f32_i32_e32 v202, v222
	v_cvt_f32_i32_e32 v198, v223
	v_cvt_f32_i32_e32 v222, v220
	scratch_store_b32 off, v0, off offset:80 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v30
	v_cvt_f32_i32_e32 v223, v248
	v_cvt_f32_i32_e32 v220, v250
	v_cvt_f32_i32_e32 v234, v247
	v_cvt_f32_i32_e32 v255, v207
	scratch_store_b32 off, v0, off offset:76 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v31
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[28:35], v[36:37], v[19:20], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v254, v208
	v_cvt_f32_i32_e32 v225, v218
	.loc	1 1161 31                       ; ragged.py:1161:31
	scratch_store_b32 off, v0, off offset:72 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu4 v[28:35], v[38:39], v[23:24], v[28:35] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v217, v217
	v_cvt_f32_i32_e32 v243, v243
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v238, v28
	v_cvt_f32_i32_e32 v178, v29
	v_cvt_f32_i32_e32 v177, v30
	v_cvt_f32_i32_e32 v56, v31
	v_cvt_f32_i32_e32 v233, v32
	v_cvt_f32_i32_e32 v183, v33
	v_cvt_f32_i32_e32 v181, v34
	v_cvt_f32_i32_e32 v185, v35
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[28:35], v[40:41], v[19:20], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[28:35], v[42:43], v[23:24], v[28:35] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v190, v28
	v_cvt_f32_i32_e32 v200, v29
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v197, v30
	v_cvt_f32_i32_e32 v195, v31
	scratch_store_b32 off, v0, off offset:100 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v34
	v_cvt_f32_i32_e32 v100, v32
	v_cvt_f32_i32_e32 v34, v206
	scratch_store_b32 off, v0, off offset:92 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v0, v35
	v_cvt_f32_i32_e32 v35, v205
	scratch_store_b32 off, v0, off offset:88 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s52, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s7
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s7, s12, s51
	s_mul_i32 s7, s7, s11
	.loc	1 1185 39                       ; ragged.py:1185:39
	buffer_load_b128 v[28:31], v0, s[36:39], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v51, v[28:31]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v0, v174 offset:1280
	ds_load_u8 v25, v174 offset:1024
	ds_load_u8 v26, v174 offset:1920
	ds_load_u8 v30, v174 offset:1664
	ds_load_u8 v31, v174 offset:1408
	ds_load_u8 v32, v174 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v25, v0, 0xc0c0004
	ds_load_u8 v25, v174 offset:1792
	ds_load_u8 v28, v174 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v28, v25, 0xc0c0004
	ds_load_u8 v28, v174 offset:256
	ds_load_u8 v29, v174
	ds_load_u8 v33, v174 offset:896
	ds_load_u8 v44, v174 offset:640
	ds_load_u8 v45, v174 offset:384
	ds_load_u8 v164, v174 offset:128
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	ds_load_u8 v29, v174 offset:768
	ds_load_u8 v36, v174 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v36, v36, v29, 0xc0c0004
	v_lshl_or_b32 v29, v25, 16, v0
	ds_load_u8 v0, v174 offset:3328
	ds_load_u8 v25, v174 offset:3072
	ds_load_u8 v169, v174 offset:3968
	ds_load_u8 v171, v174 offset:3712
	ds_load_u8 v172, v174 offset:3456
	ds_load_u8 v173, v174 offset:3200
	v_lshl_or_b32 v28, v36, 16, v28
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v25, v0, 0xc0c0004
	ds_load_u8 v25, v174 offset:3840
	ds_load_u8 v36, v174 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v36, v25, 0xc0c0004
	ds_load_u8 v36, v174 offset:2304
	ds_load_u8 v37, v174 offset:2048
	ds_load_u8 v193, v174 offset:2944
	ds_load_u8 v194, v174 offset:2688
	ds_load_u8 v199, v174 offset:2432
	ds_load_u8 v201, v174 offset:2176
	v_lshl_or_b32 v214, v25, 16, v0
	v_perm_b32 v0, v32, v31, 0xc0c0004
	v_perm_b32 v25, v30, v26, 0xc0c0004
	v_perm_b32 v26, v164, v45, 0xc0c0004
	v_perm_b32 v30, v44, v33, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v216, v25, 16, v0
	v_perm_b32 v0, v173, v172, 0xc0c0004
	v_lshl_or_b32 v215, v30, 16, v26
	v_perm_b32 v25, v171, v169, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v36, v37, v36, 0xc0c0004
	ds_load_u8 v37, v174 offset:2816
	ds_load_u8 v38, v174 offset:2560
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v30, v194, v193, 0xc0c0004
	v_lshl_or_b32 v45, v25, 16, v0
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v201, v199, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v44, v30, 16, v26
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	v_lshl_or_b32 v213, v37, 16, v36
	v_wmma_i32_16x16x16_iu4 v[36:43], v[28:29], v[17:18], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[213:214], v[21:22], v[36:43] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v170, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v241, v37
	v_cvt_f32_i32_e32 v240, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v239, v39
	v_cvt_f32_i32_e32 v229, v40
	v_cvt_f32_i32_e32 v228, v41
	v_cvt_f32_i32_e32 v227, v42
	v_cvt_f32_i32_e32 v226, v43
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[36:43], v[215:216], v[17:18], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[44:45], v[21:22], v[36:43] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v219, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v0, v41
	v_cvt_f32_i32_e32 v18, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v21, v43
	v_cvt_f32_i32_e32 v194, v37
	v_cvt_f32_i32_e32 v193, v38
	v_cvt_f32_i32_e32 v26, v39
	v_cvt_f32_i32_e32 v22, v40
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[36:43], v[28:29], v[19:20], v[1:8] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	scratch_store_b32 off, v0, off offset:96 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[36:43], v[213:214], v[23:24], v[36:43] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v164, v36
	v_cvt_f32_i32_e32 v32, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v31, v38
	v_cvt_f32_i32_e32 v17, v39
	v_cvt_f32_i32_e32 v246, v40
	v_cvt_f32_i32_e32 v245, v41
	v_cvt_f32_i32_e32 v244, v42
	v_cvt_f32_i32_e32 v242, v43
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[36:43], v[215:216], v[19:20], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[44:45], v[23:24], v[36:43] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v199, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v19, v41
	v_cvt_f32_i32_e32 v20, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v23, v43
	v_cvt_f32_i32_e32 v204, v37
	v_cvt_f32_i32_e32 v203, v38
	v_cvt_f32_i32_e32 v201, v39
	v_cvt_f32_i32_e32 v24, v40
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[36:43], v[28:29], v[9:10], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[213:214], v[13:14], v[36:43] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v171, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v169, v37
	v_cvt_f32_i32_e32 v25, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v173, v39
	v_cvt_f32_i32_e32 v252, v40
	v_cvt_f32_i32_e32 v250, v41
	v_cvt_f32_i32_e32 v248, v42
	v_cvt_f32_i32_e32 v247, v43
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[36:43], v[215:216], v[9:10], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[44:45], v[13:14], v[36:43] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v205, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v9, v41
	v_cvt_f32_i32_e32 v10, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v13, v43
	v_cvt_f32_i32_e32 v208, v37
	v_cvt_f32_i32_e32 v207, v38
	v_cvt_f32_i32_e32 v206, v39
	v_cvt_f32_i32_e32 v14, v40
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[36:43], v[28:29], v[11:12], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[213:214], v[15:16], v[36:43] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v51, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v142, v37
	v_cvt_f32_i32_e32 v141, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v172, v39
	v_cvt_f32_i32_e32 v30, v40
	v_cvt_f32_i32_e32 v29, v41
	v_cvt_f32_i32_e32 v28, v42
	v_cvt_f32_i32_e32 v33, v43
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[36:43], v[215:216], v[11:12], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[44:45], v[15:16], v[36:43] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v213, v36
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v36, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v216, v37
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v37, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v215, v38
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v38, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v214, v39
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v39, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v16, v40
	v_cvt_f32_i32_e32 v11, v41
	v_cvt_f32_i32_e32 v12, v42
	v_cvt_f32_i32_e32 v15, v43
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v40, v0, s7, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v36, s12, v36, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v37, s12, v37, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v38, s12, v38, 1
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v39, s12, v39, 1
	v_cndmask_b32_e64 v37, 0x80000000, v37, s0
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s12, s12, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v38, 0x80000000, v38, s1
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s12, s48
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v39, 0x80000000, v39, s6
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v40, v40, s[20:23], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v36, v36, s[40:43], 0 offen
	buffer_load_u16 v44, v37, s[40:43], 0 offen
	buffer_load_u16 v45, v38, s[40:43], 0 offen
	buffer_load_u16 v62, v39, s[40:43], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v37, 16, v40
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v218, 16, v36
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v44, 16, v44
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v45, 16, v45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v62, 16, v62
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_store_b32 v107, v37
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1226 17                       ; ragged.py:1226:17
	scratch_load_b32 v112, off, off         ; 4-byte Folded Reload
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[36:39], v187
	ds_load_b128 v[40:43], v187 offset:16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v175, v218, v175 :: v_dual_mul_f32 v168, v45, v168
	v_mul_f32_e32 v166, v45, v166
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v20, v20, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v46, v62, v46 :: v_dual_mul_f32 v167, v45, v167
	v_mul_f32_e32 v165, v45, v165
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v10, v45
	v_mul_f32_e32 v12, v12, v62
	v_mul_f32_e32 v16, v62, v16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v34, v45, v34
	v_mul_f32_e32 v35, v45, v35
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v19, v19, v44
	v_mul_f32_e32 v9, v9, v45
	v_mul_f32_e32 v11, v11, v62
	v_mul_f32_e32 v13, v13, v45
	v_mul_f32_e32 v15, v15, v62
	v_mul_f32_e32 v14, v45, v14
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v76, v168, v36
	v_fmac_f32_e32 v235, v46, v36
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v112, v175, v36 :: v_dual_mul_f32 v175, v218, v179
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_store_b32 off, v112, off        ; 4-byte Folded Spill
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v138, v175, v37 :: v_dual_mul_f32 v175, v218, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v147, v175, v38
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v175, v218, v65
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v133, v175, v39
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v175, v44, v238 :: v_dual_mov_b32 v238, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v238, v167, v37 :: v_dual_mov_b32 v109, v129
	v_mov_b32_e32 v129, v143
	v_dual_mov_b32 v143, v162 :: v_dual_mov_b32 v162, v68
	v_mov_b32_e32 v68, v146
	v_mov_b32_e32 v146, v67
	v_dual_fmac_f32 v146, v175, v36 :: v_dual_mul_f32 v175, v44, v178
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v36, v62, v47
	v_mov_b32_e32 v178, v27
	scratch_load_b32 v27, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v236, v36, v37
	v_fmac_f32_e32 v178, v175, v37
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v175, v44, v177 :: v_dual_mul_f32 v36, v62, v182
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v103, v175, v38
	v_dual_fmac_f32 v237, v36, v38 :: v_dual_mul_f32 v36, v62, v180
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v175, v44, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v52, v36, v39
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v36, v218, v192
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v176, v165, v39
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v116, v36, v40
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v36, v218, v191 :: v_dual_mov_b32 v67, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v102, v175, v39 :: v_dual_fmac_f32 v117, v36, v41
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v36, v218, v189
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v67, v166, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v118, v36, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v36, v218, v188
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v119, v36, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v36, v44, v233 :: v_dual_mov_b32 v233, v91
	v_mov_b32_e32 v91, v101
	v_mov_b32_e32 v101, v156
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v92, v36, v40
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v36, v44, v183 :: v_dual_fmac_f32 v233, v35, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v91, v34, v41 :: v_dual_mul_f32 v34, v45, v255
	v_fmac_f32_e32 v70, v34, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v34, v45, v254
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v106, v36, v41
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v36, v44, v181 :: v_dual_fmac_f32 v71, v34, v43
	v_mul_f32_e32 v34, v62, v54
	v_mov_b32_e32 v54, v81
	v_mov_b32_e32 v81, v161
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v105, v36, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v36, v44, v185
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v66, v34, v40
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v34, v62, v163 :: v_dual_mov_b32 v163, v123
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v230, v34, v41
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v34, v62, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v104, v36, v43 :: v_dual_fmac_f32 v231, v34, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v34, v62, v49 :: v_dual_mov_b32 v49, v132
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v232, v34, v43
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[34:37], v187 offset:512
	ds_load_b128 v[38:41], v187 offset:528
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v96, v218
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v159, v42, v34
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v42, v218, v27
	scratch_load_b32 v27, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v108, v42, v35
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v42, v218, v27
	scratch_load_b32 v27, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v109, v42, v36
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v42, v218, v27
	scratch_load_b32 v27, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v121, v42, v37
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v190, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v151, v42, v34 :: v_dual_mul_f32 v42, v44, v200
	v_mov_b32_e32 v200, v69
	v_mov_b32_e32 v69, v97
	v_mov_b32_e32 v97, v113
	v_dual_mov_b32 v113, v135 :: v_dual_fmac_f32 v84, v42, v35
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v42, v44, v197 :: v_dual_mov_b32 v135, v157
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v85, v42, v36 :: v_dual_mul_f32 v42, v44, v195
	v_fmac_f32_e32 v86, v42, v37
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v217, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v145, v42, v34 :: v_dual_mul_f32 v42, v45, v225
	v_fmac_f32_e32 v80, v42, v35
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v45, v224
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v81, v42, v36 :: v_dual_mul_f32 v42, v45, v222
	v_fmac_f32_e32 v82, v42, v37
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v243, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v139, v42, v34
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v34, v62, v253
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v209, v34, v35
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v34, v62, v251
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v210, v34, v36
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v34, v62, v249
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v211, v34, v37
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v34, v218, v27
	scratch_load_b32 v27, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v126, v34, v38
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v34, v27, v218
	scratch_load_b32 v27, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v155, v34, v39 :: v_dual_mul_f32 v34, v27, v218
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v27, off, off offset:60 ; 4-byte Folded Reload
	v_mov_b32_e32 v48, v186
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v154, v34, v40 :: v_dual_mul_f32 v27, v27, v218
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v152, v27, v41 :: v_dual_mul_f32 v27, v44, v100
	v_fmac_f32_e32 v87, v27, v38
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v27, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v27, v27, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v149, v27, v39
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v27, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v27, v27, v44
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v110, v27, v40
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v27, off, off offset:88 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v27, v27, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v148, v27, v41 :: v_dual_mul_f32 v27, v45, v184
	v_dual_mov_b32 v254, v90 :: v_dual_fmac_f32 v83, v27, v38
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v27, v202, v45
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v202, off, off offset:152
	scratch_load_b32 v161, off, off offset:56
	scratch_load_b32 v96, off, off offset:52
	scratch_load_b32 v56, off, off offset:48
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v144, v27, v39 :: v_dual_mul_f32 v27, v198, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v143, v27, v40
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v27, v196, v45
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v140, v27, v41 :: v_dual_mul_f32 v27, v62, v234
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v254, v27, v38
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v27, v223, v62
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v137, v27, v39
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v27, v221, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v136, v27, v40 :: v_dual_mul_f32 v27, v220, v62
	v_fmac_f32_e32 v135, v27, v41
	v_add_nc_u32_e32 v27, s33, v0
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v44, v17 :: v_dual_mul_f32 v17, v18, v218
	v_mul_f32_e32 v18, v21, v218
	v_mul_f32_e32 v21, v218, v22
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1218 45                       ; ragged.py:1218:45
	v_add_lshl_u32 v27, v27, s7, 1
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v22, v23, v44
	v_mul_f32_e32 v23, v44, v24
	.loc	1 1218 45                       ; ragged.py:1218:45
	buffer_load_u16 v27, v27, s[20:23], 0 offen
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v27, 16, v27
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v107, v27
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[34:37], v187
	ds_load_b128 v[38:41], v187 offset:16
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v27, v218, v170
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v58, off, off offset:8
	scratch_load_b32 v57, off, off offset:4
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v134, v27, v34 :: v_dual_mul_f32 v27, v218, v241
	v_dual_fmac_f32 v101, v0, v37 :: v_dual_mul_f32 v0, v45, v171
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v131, v27, v35
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v27, v218, v240 :: v_dual_fmac_f32 v96, v0, v34
	v_mul_f32_e32 v0, v45, v169
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v124, v27, v36 :: v_dual_mul_f32 v27, v218, v239
	v_dual_fmac_f32 v79, v0, v35 :: v_dual_mul_f32 v0, v45, v25
	scratch_load_b32 v25, off, off offset:108 ; 4-byte Folded Reload
	v_fmac_f32_e32 v125, v27, v37
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v27, v44, v164
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v77, v0, v36 :: v_dual_mul_f32 v0, v45, v173
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v120, v27, v34 :: v_dual_mul_f32 v27, v44, v32
	v_fmac_f32_e32 v78, v0, v37
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v62, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v114, v27, v35
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v27, v44, v31
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v75, v0, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v62, v142
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v142, off, off offset:12
	scratch_load_b32 v100, off, off offset:20
	scratch_load_b32 v65, off, off offset:16
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v113, v27, v36
	v_dual_fmac_f32 v55, v0, v35 :: v_dual_mul_f32 v0, v62, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v54, v0, v36
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v62, v172
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v53, v0, v37
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v218, v229
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v111, v0, v38 :: v_dual_mul_f32 v0, v218, v228
	v_fmac_f32_e32 v130, v0, v39
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v218, v227
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v128, v0, v40
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v218, v226
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v129, v0, v41
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v44, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v56, v0, v38
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v44, v245
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v95, v0, v39
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v44, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v94, v0, v40
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v44, v242
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v93, v0, v41 :: v_dual_mul_f32 v0, v45, v252
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v89, v0, v38
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v45, v250
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v88, v0, v39
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v45, v248
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v161, v0, v40 :: v_dual_mul_f32 v0, v45, v247
	v_dual_fmac_f32 v69, v0, v41 :: v_dual_mul_f32 v0, v62, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v74, v0, v38
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v62, v29
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v73, v0, v39 :: v_dual_mul_f32 v0, v62, v28
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v72, v0, v40
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v62, v33
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[27:30], v187 offset:512
	ds_load_b128 v[31:34], v187 offset:528
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v212, v0, v41
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v0, v219, v218 :: v_dual_fmac_f32 v163, v20, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v48, v0, v27
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v218, v194 :: v_dual_fmac_f32 v97, v23, v31
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v68, v22, v34
	v_fmac_f32_e32 v50, v9, v32
	v_dual_fmac_f32 v160, v10, v33 :: v_dual_fmac_f32 v127, v0, v28
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v218, v193
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v158, v13, v34 :: v_dual_fmac_f32 v153, v11, v32
	v_fmac_f32_e32 v64, v12, v33
	v_fmac_f32_e32 v150, v15, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v122, v0, v29
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v218, v26
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v60, v14, v31 :: v_dual_fmac_f32 v115, v0, v30
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v199, v44
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v199, off, off offset:32
	scratch_load_b32 v157, off, off offset:104
	scratch_load_b32 v156, off, off offset:28
	scratch_load_b32 v90, off, off offset:24
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v49, v0, v27
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v44, v204
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v99, v0, v28
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v44, v203
	scratch_load_b32 v203, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v98, v0, v29
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v44, v201
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(10)
	v_fmac_f32_e32 v58, v16, v31
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v100, v21, v31 :: v_dual_fmac_f32 v199, v19, v32
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v90, v0, v30
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v205, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v162, v0, v27
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v45, v208
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v65, v0, v28 :: v_dual_mul_f32 v0, v45, v207
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v156, v0, v29
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v45, v206
	scratch_load_b32 v206, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v61, v0, v30
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v213, v62
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v63, v0, v27 :: v_dual_mul_f32 v0, v62, v216
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v57, v0, v28 :: v_dual_mul_f32 v0, v62, v215
	v_dual_fmac_f32 v59, v0, v29 :: v_dual_mul_f32 v0, v62, v214
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v142, v0, v30
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:96
	scratch_load_b32 v201, off, off offset:36
	v_add_nc_u32_e32 v141, 48, v25
	v_add_nc_u32_e32 v112, 16, v25
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v203, v17, v33 :: v_dual_mul_f32 v0, v0, v218
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v201, v18, v34 :: v_dual_fmac_f32 v206, v0, v32
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v175, off, off offset:164
	scratch_load_b32 v204, off, off offset:168
	scratch_load_b32 v205, off, off offset:172
	scratch_load_b32 v51, off, off offset:176
	v_mov_b32_e32 v123, v146
	scratch_load_b32 v146, off, off         ; 4-byte Folded Reload
	v_dual_mov_b32 v132, v178 :: v_dual_mov_b32 v5, v25
	s_waitcnt vmcnt(4)
	v_dual_mov_b32 v62, v176 :: v_dual_and_b32 v1, 8, v175
	v_and_b32_e32 v2, 0x80, v175
.LBB0_7:                                ; %._crit_edge
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_dual_mul_f32 v0, 0xbfb8aa3b, v48 :: v_dual_mul_f32 v7, 0xbfb8aa3b, v125
	v_dual_mul_f32 v10, 0xbfb8aa3b, v134 :: v_dual_mul_f32 v3, 0xbfb8aa3b, v203
	v_mul_f32_e32 v24, 0xbfb8aa3b, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_dual_mul_f32 v0, 0xbfb8aa3b, v206 :: v_dual_mul_f32 v195, 0xbfb8aa3b, v115
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v3
	v_mul_f32_e32 v198, 0xbfb8aa3b, v130
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v12, 0, 0x42800000, s0
	v_mul_f32_e32 v186, 0xbfb8aa3b, v93
	v_dual_fmac_f32 v8, 0xbfb8aa3b, v48 :: v_dual_mul_f32 v197, 0xbfb8aa3b, v127
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v4, 0xbfb8aa3b, v201
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v203
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v15, v8
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v3, 0xbfb8aa3b, v206
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v4
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, s0
	v_dual_mul_f32 v6, 0xbfb8aa3b, v124 :: v_dual_mul_f32 v9, 0xbfb8aa3b, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v3, v3
	v_cndmask_b32_e64 v14, 0, 0x42800000, s1
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, s1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_ldexp_f32 v11, v15, v11
	v_mul_f32_e32 v15, 0xbfb8aa3b, v49
	v_exp_f32_e32 v12, v12
	v_dual_fmac_f32 v14, 0xbfb8aa3b, v201 :: v_dual_mul_f32 v193, 0xbfb8aa3b, v120
	v_dual_mul_f32 v176, 0xbfb8aa3b, v88 :: v_dual_add_f32 v11, 1.0, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	v_exp_f32_e32 v14, v14
	v_ldexp_f32 v16, v3, v0
	v_mul_f32_e32 v3, 0xbfb8aa3b, v199
	v_mul_f32_e32 v15, 0xbfb8aa3b, v68
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v12, v12, v4
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v179, 0xbfb8aa3b, v78
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v15
	v_fmac_f32_e32 v4, 0xbfb8aa3b, v49
	v_ldexp_f32 v13, v14, v13
	v_dual_mul_f32 v14, 0xbfb8aa3b, v163 :: v_dual_mul_f32 v183, 0xbfb8aa3b, v90
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v4, v4
	v_cndmask_b32_e64 v19, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v14
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	v_dual_mul_f32 v8, 0xbfb8aa3b, v111 :: v_dual_mul_f32 v181, 0xbfb8aa3b, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v68
	v_cndmask_b32_e64 v17, 0, 0x42800000, s0
	v_dual_mul_f32 v171, 0xbfb8aa3b, v61 :: v_dual_mul_f32 v194, 0xbfb8aa3b, v100
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v20, v4, v0
	v_mul_f32_e32 v0, 0xbfb8aa3b, v162
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v199
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v163
	v_exp_f32_e32 v19, v19
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_exp_f32_e32 v14, v14
	v_exp_f32_e32 v17, v17
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s1
	v_dual_mul_f32 v0, 0xbfb8aa3b, v50 :: v_dual_mul_f32 v173, 0xbfb8aa3b, v65
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v169, 0xbfb8aa3b, v75
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_div_scale_f32 v33, null, v11, v11, v48
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v20, 1.0, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v4, 0xbfb8aa3b, v162
	v_ldexp_f32 v14, v14, v3
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v15, v17, v15
	v_ldexp_f32 v17, v19, v18
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v4, v4
	v_dual_mul_f32 v18, 0xbfb8aa3b, v160 :: v_dual_mul_f32 v19, 0xbfb8aa3b, v158
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v37, v33
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v47, null, v20, v20, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v28, v4, v3
	v_mul_f32_e32 v3, 0xbfb8aa3b, v63
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v18
	v_cndmask_b32_e64 v25, 0, 0x42800000, s1
	v_dual_mul_f32 v188, 0xbfb8aa3b, v95 :: v_dual_fmac_f32 v19, 0xbfb8aa3b, v50
	v_mul_f32_e32 v182, 0xbfb8aa3b, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v22, 0, 0x42800000, s0
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v158
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v19, v19
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v160
	v_exp_f32_e32 v25, v25
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s1
	v_mul_f32_e32 v4, 0xbfb8aa3b, v153
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_exp_f32_e32 v22, v22
	v_dual_mul_f32 v26, 0xbfb8aa3b, v128 :: v_dual_mul_f32 v191, 0xbfb8aa3b, v101
	s_delay_alu instid0(TRANS32_DEP_3)
	v_ldexp_f32 v18, v19, v18
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v4
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v13, 1.0, v13 :: v_dual_mul_f32 v196, 0xbfb8aa3b, v122
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v189, 0xbfb8aa3b, v56
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v19, v22, v21
	v_ldexp_f32 v21, v25, v23
	v_dual_mul_f32 v22, 0xbfb8aa3b, v64 :: v_dual_mul_f32 v23, 0xbfb8aa3b, v150
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v30, 0, 0x42800000, s0
	v_dual_mul_f32 v164, 0xbfb8aa3b, v73 :: v_dual_add_f32 v19, 1.0, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v23
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v153
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v17, 1.0, v17 :: v_dual_mul_f32 v166, 0xbfb8aa3b, v74
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0x42800000, s0
	v_mul_f32_e32 v170, 0xbfb8aa3b, v60
	v_exp_f32_e32 v30, v30
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v22, 0xbfb8aa3b, v64 :: v_dual_fmac_f32 v23, 0xbfb8aa3b, v150
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, vcc_lo, v48, v11, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v34, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v35, v23
	v_dual_mul_f32 v192, 0xbfb8aa3b, v114 :: v_dual_mul_f32 v185, 0xbfb8aa3b, v99
	v_ldexp_f32 v29, v30, v29
	v_dual_mul_f32 v190, 0xbfb8aa3b, v113 :: v_dual_mul_f32 v187, 0xbfb8aa3b, v94
	v_dual_mul_f32 v184, 0xbfb8aa3b, v98 :: v_dual_mul_f32 v177, 0xbfb8aa3b, v89
	v_dual_mul_f32 v180, 0xbfb8aa3b, v79 :: v_dual_mul_f32 v167, 0xbfb8aa3b, v53
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v30, v34, v31
	v_ldexp_f32 v31, v35, v32
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v33, v37, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v4, 0xbfb8aa3b, v63 :: v_dual_add_f32 v29, 1.0, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v34, null, v16, v16, v206
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v37, v32, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v4, v4
	v_dual_mul_f32 v178, 0xbfb8aa3b, v77 :: v_dual_mul_f32 v165, 0xbfb8aa3b, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v32, v34
	v_mul_f32_e32 v40, v38, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v0, 0xbfb8aa3b, v161 :: v_dual_mul_f32 v27, 0xbfb8aa3b, v72
	v_dual_mul_f32 v174, 0xbfb8aa3b, v69 :: v_dual_mul_f32 v25, 0xbfb8aa3b, v212
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v42, -v33, v40, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v4, v3
	v_mul_f32_e32 v4, 0xbfb8aa3b, v142
	v_dual_mul_f32 v172, 0xbfb8aa3b, v156 :: v_dual_mul_f32 v3, 0xbfb8aa3b, v58
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v34, v32, 1.0
	v_fmac_f32_e32 v40, v42, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v168, 0xbfb8aa3b, v55 :: v_dual_mul_f32 v23, 0xbfb8aa3b, v57
.Ltmp5:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
.Ltmp6:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v32, v41, v32
	v_div_scale_f32 v41, s0, v206, v16, v206
	v_fma_f32 v33, -v33, v40, v38
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
.Ltmp8:
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s9, s25, 0xffff
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v42, v41, v32
	s_mov_b32 s11, 0x31027000
	v_div_fmas_f32 v33, v33, v37, v40
	v_rcp_f32_e32 v37, v47
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v38, -v34, v42, v41
	s_mov_b32 s10, 0x7ffffffe
	v_div_fixup_f32 v11, v33, v11, v48
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_mov_b32 s8, s24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v42, v38, v32
	v_fma_f32 v33, -v34, v42, v41
	v_div_scale_f32 v34, s6, v201, v13, v201
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v32, v33, v32, v42
	v_div_scale_f32 v35, null, v12, v12, v203
	v_div_scale_f32 v44, s1, v203, v12, v203
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v39, v35
	v_div_fixup_f32 v16, v32, v16, v206
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v35, v39, 1.0
	v_fmac_f32_e32 v39, v43, v39
	v_div_scale_f32 v43, null, v13, v13, v201
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v46, v44, v39
	v_rcp_f32_e32 v45, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v35, v46, v44
	v_fmac_f32_e32 v46, v38, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v43, v45, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v22, 0xbfb8aa3b, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v47, v37, 1.0
	v_fma_f32 v33, -v35, v46, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v45, v40, v45
	v_div_scale_f32 v44, null, v15, v15, v163
	v_fmac_f32_e32 v37, v38, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v33, v33, v39, v46
	v_mul_f32_e32 v35, v34, v45
	v_div_scale_f32 v40, s0, v49, v20, v49
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v12, v33, v12, v203
	v_fma_f32 v41, -v43, v35, v34
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v42, v40, v37
	v_rcp_f32_e32 v33, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v35, v41, v45
	v_div_scale_f32 v38, null, v14, v14, v199
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v32, -v47, v42, v40
	v_fma_f32 v34, -v43, v35, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v39, v38
	v_div_scale_f32 v43, null, v17, v17, v68
	v_fmac_f32_e32 v42, v32, v37
	v_div_scale_f32 v32, s1, v199, v14, v199
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fma_f32 v46, -v44, v33, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v34, v34, v45, v35
	v_fma_f32 v35, -v47, v42, v40
	v_fma_f32 v41, -v38, v39, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v28, 1.0, v28 :: v_dual_fmac_f32 v33, v46, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v45, s6, v163, v15, v163
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v41, v39
	v_rcp_f32_e32 v41, v43
	v_div_scale_f32 v47, null, v28, v28, v162
	v_div_fmas_f32 v35, v35, v37, v42
	v_mul_f32_e32 v40, v32, v39
	v_mul_f32_e32 v42, v45, v33
	v_div_scale_f32 v48, s0, v68, v17, v68
	v_div_fixup_f32 v13, v34, v13, v201
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v37, -v38, v40, v32
	v_fma_f32 v46, -v43, v41, 1.0
	v_div_fixup_f32 v34, v35, v20, v49
	v_fma_f32 v20, -v44, v42, v45
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v40, v37, v39 :: v_dual_fmac_f32 v41, v46, v41
	v_rcp_f32_e32 v46, v47
	v_div_scale_f32 v37, null, v18, v18, v50
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v36, 1.0, v36 :: v_dual_mul_f32 v35, v48, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v38, v40, v32
	v_rcp_f32_e32 v38, v37
	v_fmac_f32_e32 v42, v20, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v20, -v43, v35, v48
	v_fma_f32 v49, -v47, v46, 1.0
	v_div_fmas_f32 v32, v32, v39, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v44, v42, v45
	s_mov_b32 vcc_lo, s6
	v_dual_fmac_f32 v35, v20, v41 :: v_dual_fmac_f32 v46, v49, v46
	v_div_scale_f32 v49, s7, v162, v28, v162
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v37, v38, 1.0
	v_div_fmas_f32 v33, v39, v33, v42
	v_fma_f32 v39, -v43, v35, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v20, v49, v46
	v_div_scale_f32 v43, s1, v50, v18, v50
	v_fmac_f32_e32 v38, v40, v38
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v42, -v47, v20, v49
	v_div_scale_f32 v40, null, v19, v19, v160
	v_div_fmas_f32 v35, v39, v41, v35
	v_mul_f32_e32 v41, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v20, v42, v46
	v_rcp_f32_e32 v39, v40
	v_div_fixup_f32 v14, v32, v14, v199
	v_div_fixup_f32 v15, v33, v15, v163
	v_div_fixup_f32 v32, v35, v17, v68
	v_fma_f32 v17, -v47, v20, v49
	v_fma_f32 v33, -v37, v41, v43
	s_mov_b32 vcc_lo, s7
	v_div_scale_f32 v35, null, v21, v21, v158
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v17, v17, v46, v20
	v_fmac_f32_e32 v41, v33, v38
	v_fma_f32 v42, -v40, v39, 1.0
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v28, v17, v28, v162
	v_fma_f32 v17, -v37, v41, v43
	v_rcp_f32_e32 v20, v35
	v_fmac_f32_e32 v39, v42, v39
	v_div_scale_f32 v42, null, v36, v36, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v17, v17, v38, v41
	v_div_scale_f32 v41, null, v29, v29, v153
	v_div_scale_f32 v33, s0, v160, v19, v160
	v_rcp_f32_e32 v44, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v46, v17, v18, v50
	v_rcp_f32_e32 v17, v41
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_f32_e32 v37, v33, v39
	v_fma_f32 v43, -v35, v20, 1.0
	v_div_scale_f32 v50, null, v31, v31, v150
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v38, -v40, v37, v33
	v_fmac_f32_e32 v20, v43, v20
	v_div_scale_f32 v43, s1, v158, v21, v158
	v_fma_f32 v45, -v42, v44, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v48, -v41, v17, 1.0
	v_fmac_f32_e32 v37, v38, v39
	v_div_scale_f32 v38, s6, v63, v36, v63
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, null, v30, v30, v64
	v_dual_fmac_f32 v17, v48, v17 :: v_dual_mul_f32 v18, v43, v20
	v_fma_f32 v33, -v40, v37, v33
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v49, v45
	v_mul_f32_e32 v47, v38, v44
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v15, v110, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v40, -v35, v18, v43
	v_div_fmas_f32 v33, v33, v39, v37
	v_rcp_f32_e32 v39, v50
	v_fma_f32 v37, -v42, v47, v38
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v18, v40, v20
	v_div_scale_f32 v40, s0, v153, v29, v153
	v_fma_f32 v48, -v45, v49, 1.0
	v_div_fixup_f32 v33, v33, v19, v160
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v19, -v35, v18, v43
	v_fmac_f32_e32 v47, v37, v44
	v_mul_f32_e32 v35, v40, v17
	v_fmac_f32_e32 v49, v48, v49
	v_div_scale_f32 v37, s7, v64, v30, v64
	v_fma_f32 v43, -v50, v39, 1.0
	v_div_fmas_f32 v18, v19, v20, v18
	v_fma_f32 v19, -v42, v47, v38
	v_fma_f32 v20, -v41, v35, v40
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v39, v43, v39
	v_div_fixup_f32 v43, v18, v21, v158
	v_mul_f32_e32 v38, v37, v49
	v_div_fmas_f32 v19, v19, v44, v47
	v_fmac_f32_e32 v35, v20, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v42, s1, v150, v31, v150
	v_fma_f32 v18, -v45, v38, v37
	v_div_fixup_f32 v36, v19, v36, v63
	v_fma_f32 v10, -v41, v35, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v38, v18, v49
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v20, v42, v39
	v_div_fmas_f32 v10, v10, v17, v35
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v17, -v45, v38, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v134
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v18, -v50, v20, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v29, v10, v29, v153
	v_div_fmas_f32 v17, v17, v49, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v21, v159, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v30, v17, v30, v64
	v_fmac_f32_e32 v20, v18, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v17, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v188
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v18, -v50, v20, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v131
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v9, v18, v39, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	v_ldexp_f32 v7, v35, v19
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v19, v152, v13
	v_mul_f32_e32 v13, v145, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v31, v9, v31, v150
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v35, 1.0, v7
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v7, v17
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v17, v151, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v125
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v37, null, v35, v35, v134
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v11, v11
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v34, v37
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v6, v7, v10
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v39, vcc_lo, v134, v35, v134
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v28, 1.0, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v124
	v_ldexp_f32 v6, v11, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v9, -v37, v34, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v11, v140, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v41, v10
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v10, v143, v33
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v38, 1.0, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v34, v9, v34
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v6, v137, v29 :: v_dual_mul_f32 v9, v139, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v36, s0, v131, v28, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v42, null, v38, v38, v125
	v_mul_f32_e32 v44, v39, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v29, v41, v7
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v20, v155, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v33, v42
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v7, v136, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v37, v44, v39
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v29, 1.0, v29 :: v_dual_mul_f32 v16, v149, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v44, v43, v34
	v_fma_f32 v41, -v42, v33, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v18, v154, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v37, v44, v39
	v_div_scale_f32 v39, s1, v125, v38, v125
	v_fmac_f32_e32 v33, v41, v33
	v_div_scale_f32 v41, null, v29, v29, v124
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v30, v30, v34, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v12, v144, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v34, v41
	v_mul_f32_e32 v44, v39, v33
	v_div_fixup_f32 v30, v30, v35, v134
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v8, v135, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v42, v44, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v111
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v41, v34, 1.0
	v_fmac_f32_e32 v44, v31, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v34, v35, v34
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v14, v148, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v32, null, v28, v28, v131
	v_fma_f32 v39, -v42, v44, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v40, v32
	v_fma_f32 v45, -v32, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v45, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v198
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v37, v36, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v31, v31, v45
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v32, v37, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v37, v43, v40
	v_div_scale_f32 v43, s6, v124, v29, v124
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v45, null, v31, v31, v111
	v_fma_f32 v32, -v32, v37, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v32, v32, v40, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v130
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v37, v43, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v28, v32, v28, v131
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v26, v36
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v41, v37, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v33, v39, v33, v44
	v_dual_fmac_f32 v37, v36, v34 :: v_dual_fmac_f32 v42, 0xbfb8aa3b, v128
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v26, v26, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v35, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v196
	v_exp_f32_e32 v36, v42
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v26
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v45, v35, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v36, v40
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v35, v39, v35
	v_div_fixup_f32 v26, v33, v38, v125
	v_fma_f32 v33, -v41, v37, v43
	v_div_scale_f32 v38, null, v32, v32, v130
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v125, v138, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v33, v33, v34, v37
	v_rcp_f32_e32 v34, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v37, s0, v111, v31, v111
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v24, v33, v29, v124
	v_div_scale_f32 v42, null, v36, v36, v128
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v39, v37, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v40, -v38, v34, 1.0
	v_rcp_f32_e32 v28, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v129
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v45, v39, v37
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v34, v40, v34
	v_div_scale_f32 v40, s1, v130, v32, v130
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v33, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v39, v41, v35 :: v_dual_mul_f32 v124, v146, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v41, v40, v34
	v_fma_f32 v30, -v42, v28, 1.0
	v_fma_f32 v37, -v45, v39, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v38, v41, v40
	v_fmac_f32_e32 v28, v30, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v29, v33, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v33, v37, v35, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v197
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v41, v43, v34
	v_div_scale_f32 v30, s0, v128, v36, v128
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v31, v33, v31, v111
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v33, -v38, v41, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, null, v29, v29, v129
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v127
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v33, v33, v34, v41
	v_rcp_f32_e32 v37, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0x42800000, s6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v41, v30, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v39, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v32, v33, v32, v130
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s6
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v122
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v42, v41, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v195
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v117, v117, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v35, v37, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v40, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v41, v33, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v39, v38
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v37, v43, v37
	v_div_scale_f32 v43, s1, v129, v29, v129
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v42, v41, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v115
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v38, v43, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v40, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v40, null, v33, v33, v127
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v194
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v42, -v35, v38, v43
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v116, v116, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v38, v42, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v42, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v44, v40
	v_div_scale_f32 v45, null, v34, v34, v122
	v_div_fmas_f32 v28, v30, v28, v41
	v_fma_f32 v30, -v35, v38, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0x42800000, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v43, v45
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, s6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v30, v30, v37, v38
	v_fma_f32 v46, -v40, v44, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v37, v42, v39
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v100
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, vcc_lo, v127, v33, v127
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v44, v46, v44
	v_fma_f32 v39, -v45, v43, 1.0
	v_div_fixup_f32 v29, v30, v29, v129
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v30, v41
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v41, v38, v44
	v_fmac_f32_e32 v43, v39, v43
	v_div_scale_f32 v39, s0, v122, v34, v122
	s_delay_alu instid0(VALU_DEP_4)
	v_div_scale_f32 v42, null, v37, v37, v115
	v_div_fixup_f32 v28, v28, v36, v128
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v26, v133, v26 :: v_dual_mul_f32 v119, v119, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v40, v41, v38
	v_mul_f32_e32 v36, v39, v43
	v_rcp_f32_e32 v46, v42
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v118, v118, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v30, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v41, v29, v44
	v_fma_f32 v29, -v45, v36, v39
	v_div_scale_f32 v35, s1, v115, v37, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v40, v41, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v36, v29, v43
	v_fma_f32 v29, -v42, v46, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v189
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v31, null, v28, v28, v100
	v_div_fmas_f32 v30, v30, v44, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v46, v29, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v193
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v29, v31
	v_fma_f32 v32, -v45, v36, v39
	v_div_fixup_f32 v30, v30, v33, v127
	v_mul_f32_e32 v33, v35, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v41, s0, v100, v28, v100
	v_div_fmas_f32 v32, v32, v43, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v31, v29, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v192
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v24, v147, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v39, 0xbfb8aa3b, v120 :: v_dual_mul_f32 v108, v108, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v29, v36, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v191
	v_cndmask_b32_e64 v43, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v101
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v32, v32, v34, v122
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v34, v39
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v114
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v42, v33, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v43, v43
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v109, v109, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v40, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v33, v39, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v190
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_ldexp_f32 v34, v34, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v38, v41, v29
	v_fma_f32 v35, -v42, v33, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v31, v38, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v40, v36
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v113
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v42, null, v34, v34, v120
	v_fmac_f32_e32 v38, v44, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v40, v42
	v_div_fmas_f32 v33, v35, v46, v33
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v35, 1.0, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v31, v38, v41
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v43, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v33, v33, v37, v115
	v_div_scale_f32 v41, null, v35, v35, v114
	v_div_fmas_f32 v29, v31, v29, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v42, v40, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v38, v41
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v28, v29, v28, v100
	v_fmac_f32_e32 v40, v39, v40
	v_div_scale_f32 v39, vcc_lo, v120, v34, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v29, null, v36, v36, v101
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v111, v126, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v37, v39, v40
	v_fma_f32 v43, -v41, v38, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v31, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v31, v29
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v110, v121, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v42, v37, v39
	v_fmac_f32_e32 v38, v43, v38
	v_div_scale_f32 v43, s0, v114, v35, v114
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v28, 1.0, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v37, v44, v40 :: v_dual_mul_f32 v32, v43, v38
	v_fma_f32 v33, -v29, v31, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v44, null, v28, v28, v113
	v_fma_f32 v30, -v42, v37, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v41, v32, v43
	v_fmac_f32_e32 v31, v33, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v33, v44
	v_div_scale_f32 v42, s1, v101, v36, v101
	v_fmac_f32_e32 v32, v39, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0x42800000, s6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v30, v30, v40, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, s6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v40, v42, v31
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v56
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v45, -v44, v33, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v33, v45, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v45, 0, 0x42800000, s7
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v95
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v37, v39, v37
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v30, v30, v34, v120
	v_fma_f32 v34, -v41, v32, v43
	v_fma_f32 v41, -v29, v40, v42
	v_div_scale_f32 v43, s6, v113, v28, v113
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v100, v123, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v32, v34, v38, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v187
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v34, v43, v33
	v_fmac_f32_e32 v40, v41, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v32, v32, v35, v114
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v44, v34, v43
	v_fma_f32 v29, -v29, v40, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v94
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v34, v41, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v41, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v42, null, v37, v37, v56
	v_div_fmas_f32 v29, v29, v31, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v46
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v186
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v40, v42
	v_fma_f32 v43, -v44, v34, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v172
	v_ldexp_f32 v38, v41, v38
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v31, v31, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v33, v43, v33, v34
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v42, v40, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v44, 0xbfb8aa3b, v93 :: v_dual_add_f32 v31, 1.0, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v28, v33, v28, v113
	v_div_scale_f32 v39, null, v34, v34, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v40, v38, v40
	v_div_scale_f32 v38, vcc_lo, v56, v37, v56
	v_div_scale_f32 v45, null, v31, v31, v94
	v_rcp_f32_e32 v43, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v46, v38, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v44, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v33, v45
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v103, v103, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v42, v46, v38
	v_fmac_f32_e32 v46, v35, v40
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v44, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v45, v33, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v28, 1.0, v28 :: v_dual_fmac_f32 v33, v35, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v29, v29, v36, v101
	v_fma_f32 v36, -v39, v43, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v101, v132, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v42, v46, v38
	v_div_scale_f32 v35, s1, v94, v31, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v102, v102, v29 :: v_dual_fmac_f32 v43, v36, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v29, s0, v95, v34, v95
	v_div_fmas_f32 v32, v32, v40, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v185
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, null, v28, v28, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v36, v29, v43
	v_mul_f32_e32 v42, v35, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v40, v38
	v_div_fixup_f32 v30, v32, v37, v56
	v_fma_f32 v41, -v39, v36, v29
	v_fma_f32 v32, -v45, v42, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v99
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v184
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v36, v41, v43
	v_fmac_f32_e32 v42, v32, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v38, v40, 1.0
	v_div_scale_f32 v41, s6, v93, v28, v93
	v_fma_f32 v29, -v39, v36, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v40, v37, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v35, -v45, v42, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v98
	v_ldexp_f32 v32, v32, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v29, v29, v43, v36
	v_mul_f32_e32 v36, v41, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v183
	v_exp_f32_e32 v39, v39
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v29, v29, v34, v95
	v_fma_f32 v43, -v38, v36, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v46, null, v32, v32, v99
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v36, v43, v40
	v_div_fmas_f32 v33, v35, v33, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v35, v39, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v37, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v90
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v31, v33, v31, v94
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v38, v36, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v45
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v92, v92, v30
	v_mul_f32_e32 v94, v105, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, null, v34, v34, v98
	v_fma_f32 v39, -v46, v37, 1.0
	v_div_fmas_f32 v33, v33, v40, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v182
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v36, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v180
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v37, v39, v37
	v_div_scale_f32 v39, s0, v99, v32, v99
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v28, v33, v28, v93
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v35, v35, v44
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v41, v39, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v97
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v42, -v38, v36, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v95, v104, v28 :: v_dual_add_f32 v28, 1.0, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v46, v41, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v40, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v36, v42, v36
	v_div_scale_f32 v42, s1, v98, v34, v98
	v_div_scale_f32 v43, null, v28, v28, v90
	v_fmac_f32_e32 v41, v35, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v35, v42, v36
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v93, v106, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v29, v43
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v40, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v46, v41, v39
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v39, -v38, v35, v42
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v30, 1.0, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v31, v31, v37, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v181
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v35, v39, v36
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v33, -v43, v29, 1.0
	v_div_scale_f32 v37, null, v30, v30, v97
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v31, v31, v32, v99
	v_fma_f32 v32, -v38, v35, v42
	v_fmac_f32_e32 v29, v33, v29
	v_div_scale_f32 v33, s0, v90, v28, v90
	v_rcp_f32_e32 v38, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v96
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v41, v33, v29
	v_div_fmas_f32 v32, v32, v36, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0x42800000, s6
	v_exp_f32_e32 v40, v40
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v179
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, s6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v42, -v37, v38, 1.0
	v_div_fixup_f32 v32, v32, v34, v98
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v43, v41, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v38, v42, v38
	v_div_scale_f32 v42, s1, v97, v30, v97
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v36, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v41, v34, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v40, v39
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v39, v42, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v78
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v178
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v43, v41, v33
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v37, v39, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v35, v36, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v36, null, v34, v34, v96
	v_fmac_f32_e32 v39, v43, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v43, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v44, v36
	v_div_fmas_f32 v29, v33, v29, v41
	v_fma_f32 v33, -v37, v39, v42
	v_div_scale_f32 v45, null, v35, v35, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0x42800000, s6
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v28, v29, v28, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v42, v45
	v_div_fmas_f32 v33, v33, v38, v39
	v_fma_f32 v46, -v36, v44, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v39, vcc_lo, v96, v34, v96
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v38, v43, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v44, v46, v44
	v_div_fixup_f32 v30, v33, v30, v97
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v33, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v40, -v45, v42, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v38, 1.0, v38 :: v_dual_mul_f32 v41, v39, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, s6
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v87, v87, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v42, v40, v42
	v_div_scale_f32 v40, s0, v79, v35, v79
	v_fma_f32 v29, -v36, v41, v39
	v_div_scale_f32 v43, null, v38, v38, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v30, v40, v42
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v86, v86, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v41, v29, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v46, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v33, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v45, v30, v40
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v84, v84, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v36, v41, v39
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v85, v85, v32
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v30, v29, v42
	v_div_scale_f32 v36, s1, v78, v38, v78
	v_div_fmas_f32 v31, v31, v44, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v177
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v43, v46, 1.0
	v_div_scale_f32 v32, null, v28, v28, v77
	v_fma_f32 v33, -v45, v30, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v46, v29, v46
	v_rcp_f32_e32 v29, v32
	v_div_fmas_f32 v30, v33, v42, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v89
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v176
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v31, v31, v34, v96
	v_mul_f32_e32 v33, v36, v46
	v_div_fixup_f32 v30, v30, v35, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v39
	v_cndmask_b32_e64 v40, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v41, s0, v77, v28, v77
	v_fma_f32 v34, -v32, v29, 1.0
	v_fma_f32 v39, -v43, v33, v36
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v40, 0xbfb8aa3b, v88
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v76, v76, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v173
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v29, v34, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_ldexp_f32 v0, v35, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v33, v39, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v40, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v35, v41, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v43, v33, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v42, -v32, v35, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v161
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v43, null, v0, v0, v89
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v174
	v_ldexp_f32 v34, v40, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v39, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v40, v43
	v_fmac_f32_e32 v35, v42, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v33, v36, v46, v33
	v_fma_f32 v32, -v32, v35, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v69
	v_ldexp_f32 v36, v39, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v43, v40, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v39, null, v34, v34, v88
	v_div_fmas_f32 v29, v32, v29, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v44
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v40, v37, v40
	v_div_scale_f32 v37, vcc_lo, v89, v0, v89
	v_rcp_f32_e32 v35, v39
	v_div_fixup_f32 v33, v33, v38, v78
	v_div_fixup_f32 v28, v29, v28, v77
	v_div_scale_f32 v29, null, v36, v36, v161
	v_mul_f32_e32 v38, v37, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v78, v62, v33 :: v_dual_mul_f32 v79, v67, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v32, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v32, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v42, -v43, v38, v37
	v_fma_f32 v41, -v39, v35, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v77, v238, v30 :: v_dual_add_f32 v28, 1.0, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v38, v42, v40 :: v_dual_fmac_f32 v35, v41, v35
	v_div_scale_f32 v41, s0, v88, v34, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v29, v32, 1.0
	v_div_scale_f32 v42, null, v28, v28, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v31, -v43, v38, v37
	v_mul_f32_e32 v30, v41, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v32, v33, v32
	v_rcp_f32_e32 v33, v42
	v_div_scale_f32 v43, s1, v161, v36, v161
	v_div_fmas_f32 v31, v31, v40, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0x42800000, s6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v39, v30, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v40, v43, v32
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v0, v31, v0, v89
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v30, v37, v35
	v_fma_f32 v44, -v42, v33, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, s6
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v68, v233, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v38, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v39, v30, v41
	v_fmac_f32_e32 v33, v44, v33
	v_div_scale_f32 v41, s6, v69, v28, v69
	v_fma_f32 v39, -v29, v40, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v30, v31, v35, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v44, 0, 0x42800000, s7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v31, v41, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v171
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v37, v38, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v40, v39, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v156
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v42, v31, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v29, v40, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v31, v39, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v39, v44
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v43, null, v37, v37, v65
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, s7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v29, v29, v32, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v40, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v170
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v42, v31, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v35, v39, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v30, v30, v34, v88
	v_div_fixup_f32 v29, v29, v36, v161
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s6
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v32, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v31, v41, v33, v31
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v33, 1.0, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v43, v40, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v60
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v28, v31, v28, v69
	v_div_scale_f32 v38, null, v33, v33, v156
	v_fmac_f32_e32 v40, v35, v40
	v_div_scale_f32 v35, vcc_lo, v65, v37, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v38
	v_div_scale_f32 v44, null, v32, v32, v61
	v_mul_f32_e32 v45, v35, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v42, v42
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v71, v71, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v31, v44
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v70, v70, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v43, v45, v35
	v_div_scale_f32 v29, s0, v156, v33, v156
	v_fma_f32 v36, -v38, v41, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v69, v91, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v45, v34, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v42, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v41, v36, v41
	v_fma_f32 v34, -v44, v31, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v30, -v43, v45, v35
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v28, 1.0, v28 :: v_dual_mul_f32 v35, v29, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v31, v34, v31
	v_div_scale_f32 v34, s1, v61, v32, v61
	v_div_fmas_f32 v30, v30, v40, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v169
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v36, null, v28, v28, v60
	v_fma_f32 v40, -v38, v35, v29
	v_mul_f32_e32 v42, v34, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v39, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v35, v40, v41
	v_div_fixup_f32 v0, v30, v37, v65
	v_fma_f32 v30, -v44, v42, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v75
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v168
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v38, v35, v29
	v_div_scale_f32 v40, s6, v60, v28, v60
	v_fmac_f32_e32 v42, v30, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v30, v45
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v36, v39, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v44, v42, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v39, v37, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v30, v30, v43
	v_exp_f32_e32 v38, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v29, v29, v41, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v167
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v35, v40, v39 :: v_dual_add_f32 v30, 1.0, v30
	v_div_fixup_f32 v29, v29, v33, v156
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v41, -v36, v35, v40
	v_div_scale_f32 v45, null, v30, v30, v75
	v_div_fmas_f32 v31, v34, v31, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v38, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v35, v41, v39
	v_rcp_f32_e32 v37, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v31, v31, v32, v61
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v33, 1.0, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v36, v35, v40
	s_mov_b32 vcc_lo, s6
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v34, v44
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v62, v82, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v36, null, v33, v33, v55
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v45, v37, 1.0
	v_div_fmas_f32 v32, v32, v39, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v165
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v35, v36
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v61, v81, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v37, v38, v37
	v_div_scale_f32 v38, s0, v75, v30, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v28, v32, v28, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v34, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v40, v38, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v36, v35, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v54
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v63, v83, v28 :: v_dual_add_f32 v28, 1.0, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v45, v40, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v35, v41, v35
	v_div_scale_f32 v41, s1, v55, v33, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v39, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v40, v34, v37
	v_div_scale_f32 v42, null, v28, v28, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v34, v41, v35
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v31, -v45, v40, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v29, v42
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v60, v80, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v36, v34, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v39, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v31, v31, v37, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v166
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v164
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v34, v38, v35
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v30, v31, v30, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v36, v34, v41
	v_div_scale_f32 v36, null, v0, v0, v54
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v32, -v42, v29, 1.0
	v_div_fmas_f32 v31, v31, v35, v34
	v_rcp_f32_e32 v37, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v74
	v_cndmask_b32_e64 v35, 0, 0x42800000, s6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v29, v32, v29
	v_div_scale_f32 v32, s0, v53, v28, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v39, v39
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v73
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v40, v32, v29
	v_fma_f32 v41, -v36, v37, 1.0
	v_div_fixup_f32 v31, v31, v33, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v35
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v42, v40, v32
	v_fmac_f32_e32 v37, v41, v37
	v_div_scale_f32 v41, s1, v54, v0, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v27, v39, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v40, v33, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v33, v41, v37
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v35, v34
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v27, 1.0, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v42, v40, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v42, -v36, v33, v41
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, null, v27, v27, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v39, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v33, v42, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v25
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v25, v35
	v_div_scale_f32 v42, null, v34, v34, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v29, v32, v29, v40
	v_fma_f32 v32, -v36, v33, v41
	v_rcp_f32_e32 v41, v42
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0x42800000, s6
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v35, v25, 1.0
	v_div_fmas_f32 v32, v32, v37, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v39, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v37, vcc_lo, v74, v27, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v40, 0xbfb8aa3b, v212 :: v_dual_fmac_f32 v25, v43, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v42, v41, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v32, v0, v54
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v39, v37, v25
	v_fmac_f32_e32 v41, v38, v41
	v_div_scale_f32 v38, s0, v73, v34, v73
	v_div_scale_f32 v40, null, v33, v33, v72
	v_div_fixup_f32 v28, v29, v28, v53
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v55, v237, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v35, v39, v37
	v_mul_f32_e32 v29, v38, v41
	v_rcp_f32_e32 v43, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s6
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v54, v52, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v39, v0, v25
	v_fma_f32 v0, -v42, v29, v38
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v52, v235, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v32, v36
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v35, v39, v37
	v_fmac_f32_e32 v29, v0, v41
	v_fma_f32 v0, -v40, v43, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v28, 1.0, v28 :: v_dual_mul_f32 v53, v236, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v30, v25, v39
	v_fma_f32 v30, -v42, v29, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v43, v0, v43
	v_div_scale_f32 v0, s1, v72, v33, v72
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v31, null, v28, v28, v212
	v_div_fmas_f32 v23, v30, v41, v29
	v_mul_f32_e32 v29, v0, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0x42800000, s6
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v30, v31
	v_div_fixup_f32 v25, v25, v27, v74
	v_fma_f32 v22, -v40, v29, v0
	v_div_fixup_f32 v23, v23, v34, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v57
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v29, v22, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v22, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v4, -v31, v30, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v59
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s6
	v_exp_f32_e32 v3, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v40, v29, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v142
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v30, v4, v30
	v_div_scale_f32 v37, s0, v212, v28, v212
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v58
	v_ldexp_f32 v22, v22, v32
	v_exp_f32_e32 v32, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v3, v3, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v0, v43, v29
	v_mul_f32_e32 v29, v37, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v27, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v22, 1.0, v22 :: v_dual_add_f32 v3, 1.0, v3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v33, v0, v33, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v36, -v31, v29, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v32, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v34, null, v22, v22, v57
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v29, v36, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v27, v4
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v36, 1.0, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v35, v34
	v_div_scale_f32 v4, null, v3, v3, v59
	v_fma_f32 v31, -v31, v29, v37
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v37, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, null, v36, v36, v142
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v32, v4
	v_div_fmas_f32 v29, v31, v30, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v39, null, v37, v37, v58
	v_rcp_f32_e32 v38, v27
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v0, -v34, v35, 1.0
	v_div_scale_f32 v40, vcc_lo, v57, v22, v57
	v_rcp_f32_e32 v41, v39
	v_div_fixup_f32 v28, v29, v28, v212
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_fmac_f32_e32 v35, v0, v35
	v_fma_f32 v0, -v4, v32, 1.0
	v_div_scale_f32 v43, s0, v59, v3, v59
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v29, -v27, v38, 1.0
	v_mul_f32_e32 v42, v40, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v32, v0, v32
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v0, v232, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v39, v41, 1.0
	v_fmac_f32_e32 v38, v29, v38
	v_div_scale_f32 v29, s1, v142, v36, v142
	v_fma_f32 v28, -v34, v42, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v44, v43, v32 :: v_dual_fmac_f32 v41, v30, v41
	v_div_scale_f32 v46, s6, v58, v37, v58
	v_dual_mul_f32 v45, v29, v38 :: v_dual_fmac_f32 v42, v28, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v28, -v4, v44, v43
	v_mul_f32_e32 v47, v46, v41
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v30, v231, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v27, v45, v29
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v31, v230, v23 :: v_dual_fmac_f32 v44, v28, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v39, v47, v46
	v_fma_f32 v23, -v34, v42, v40
	v_fmac_f32_e32 v45, v33, v38
.Ltmp9:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v33, |v84|, |v85|, |v86|
.Ltmp10:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v4, -v4, v44, v43
	v_fmac_f32_e32 v47, v28, v41
	v_div_fmas_f32 v23, v23, v35, v42
	v_fma_f32 v27, -v27, v45, v29
	s_mov_b32 vcc_lo, s0
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v29, |v111|, |v20|, |v18|
.Ltmp12:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v39, v47, v46
	v_div_fmas_f32 v4, v4, v32, v44
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v32, v66, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v27, v27, v38, v45
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v22, v23, v22, v57
	v_div_fmas_f32 v28, v28, v41, v47
	v_div_fixup_f32 v3, v4, v3, v59
	v_div_fixup_f32 v4, v27, v36, v142
.Ltmp13:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v25, |v124|, |v125|
	v_max3_f32 v27, |v26|, |v116|, |v117|
.Ltmp14:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v23, v28, v37, v58
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v28, |v108|, |v109|, |v110|
	v_max3_f32 v34, |v87|, |v16|, |v15|
	v_max_f32_e64 v35, |v76|, |v77|
	v_max3_f32 v36, |v78|, |v68|, |v69|
.Ltmp16:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v40, v254, v23
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v23, v25, |v24|, v27
	v_max3_f32 v25, v28, v29, |v19|
	v_max_f32_e64 v27, |v100|, |v101|
	v_max3_f32 v28, |v102|, |v92|, |v93|
	v_max3_f32 v37, |v60|, |v61|, |v62|
	v_max3_f32 v38, |v63|, |v12|, |v10|
.Ltmp18:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v39, v211, v4
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, |v118|, |v119|, |v21|
	v_max3_f32 v29, |v94|, |v95|, |v17|
	v_max3_f32 v27, v27, |v103|, v28
	v_max3_f32 v28, v33, v34, |v14|
	v_max3_f32 v34, v35, |v79|, v36
	v_max3_f32 v35, v37, v38, |v11|
.Ltmp20:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v38, v210, v3 :: v_dual_mul_f32 v37, v209, v22
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v33, |v70|, |v71|, |v13|
	v_max3_f32 v3, v23, v4, v25
	v_max3_f32 v4, v27, v29, v28
	v_max_f32_e64 v23, |v52|, |v53|
	v_max3_f32 v25, |v54|, |v32|, |v31|
	v_max3_f32 v27, |v37|, |v38|, |v39|
	v_max3_f32 v28, |v40|, |v6|, |v7|
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v22, v34, v33, v35
	v_max3_f32 v29, |v30|, |v0|, |v9|
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v33, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v4, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v23, v23, |v55|, v25
	v_max3_f32 v25, v27, v28, |v8|
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v27, v33, v33 :: v_dual_and_b32 v36, 0x60, v175
	v_max_f32_e32 v28, v34, v34
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v33, v22, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v23, v23, v29, v25
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v29, 3, v175
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v41, v3, v27 :: v_dual_max_f32 v42, v4, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v3, v33, v33 :: v_dual_and_b32 v4, 4, v175
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v27, v29, 9, 0
	v_permlanex16_b32 v28, v23, s0, 0xfedcba98 op_sel:[1,0]
	v_lshlrev_b32_e32 v25, 5, v29
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v43, v22, v3
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v34, 3, v2
	v_lshl_add_u32 v3, v4, 2, v27
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v22, v28, v28
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_or_b32 v28, 0x680, v51, v25
	v_lshlrev_b32_e32 v27, 1, v2
	v_xor_b32_e32 v33, v25, v36
	v_lshl_add_u32 v3, v1, 4, v3
	v_lshl_add_u32 v35, v4, 6, 0
	v_xor_b32_e32 v28, v28, v36
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v44, v23, v22 :: v_dual_lshlrev_b32 v1, 3, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v3, v3, v27, v33
	v_add_nc_u32_e32 v2, 0, v2
	v_add3_u32 v22, v35, v34, v28
	ds_store_b128 v3, v[41:44]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[41:44], v22
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v3, v41
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v28, v41, v41
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v22, v42 :: v_dual_mov_b32 v23, v43
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v33, v42, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v34, v44, v44
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v22, v22 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v23, v23 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v44, v44 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v23, v23, v23
	v_max_f32_e32 v3, v28, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v35, v3
	v_mov_b32_dpp v35, v35 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v3, v3, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v35, v3
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v28, v43, v43
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v23, v28, v23
	v_dual_max_f32 v35, v35, v35 :: v_dual_max_f32 v22, v22, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v22, v33, v22 :: v_dual_max_f32 v33, v44, v44
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v41, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v28, v34, v33 :: v_dual_mov_b32 v33, v23
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v41, v41 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v34, v28
	v_mov_b32_dpp v33, v33 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v41, v41, v41
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v34, v34 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v33, v33, v33
	v_max_f32_e32 v22, v22, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v34, v34, v34 :: v_dual_max_f32 v23, v23, v33
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v41, v22 :: v_dual_max_f32 v28, v28, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v33, v23
	v_mov_b32_dpp v41, v41 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v34, v28
	v_mov_b32_dpp v33, v33 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v42, v41, v41
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v41, v3, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_max_f32_e32 v3, v33, v33
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v33, 1, v36
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v42, v22, v42
	v_dual_max_f32 v22, v34, v34 :: v_dual_max_f32 v43, v23, v3
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v3, 5, v4
	v_lshl_add_u32 v4, v29, 4, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v44, v28, v22
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v2, v2, v33, v1
	v_add3_u32 v1, v4, v3, v1
	ds_store_b128 v2, v[41:44]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v1
.Ltmp63:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v43.h, 0
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v44.h, v43.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_max_f32_e32 v1, v1, v1
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v2, v2, v2
	v_max_f32_e32 v1, 0x2b8cbccc, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v3, 0x2b8cbccc, v3 :: v_dual_max_f32 v2, 0x2b8cbccc, v2
	v_div_scale_f32 v22, null, 0x40e00000, 0x40e00000, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v33, null, 0x40e00000, 0x40e00000, v3
	v_rcp_f32_e32 v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v35, v33
	v_fma_f32 v28, -v22, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v28, v23
	v_div_scale_f32 v28, vcc_lo, v1, 0x40e00000, v1
	v_mul_f32_e32 v29, v28, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v22, v29, v28
	v_fmac_f32_e32 v29, v34, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v22, -v22, v29, v28
	v_fma_f32 v28, -v33, v35, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v22, v22, v23, v29
	v_fmac_f32_e32 v35, v28, v35
	v_div_scale_f32 v28, null, 0x40e00000, 0x40e00000, v2
	v_div_scale_f32 v23, vcc_lo, v3, 0x40e00000, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v1, v22, 0x40e00000, v1
	v_rcp_f32_e32 v34, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v41, v23, v35
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v44.l, v1.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v22, -v33, v41, v23
	v_fma_f32 v45, -v28, v34, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v41, v22, v35 :: v_dual_fmac_f32 v34, v45, v34
	v_div_scale_f32 v45, s0, v2, 0x40e00000, v2
	v_max_f32_e32 v4, v4, v4
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v44, 1, v44
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v23, -v33, v41, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v4, 0x2b8cbccc, v4
	v_div_fmas_f32 v23, v23, v35, v41
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v29, null, 0x40e00000, 0x40e00000, v4
	v_div_scale_f32 v46, s1, v4, 0x40e00000, v4
	v_div_fixup_f32 v3, v23, 0x40e00000, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v42, v29
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_and_b32_e32 v23, 63, v175
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v43.l, v3.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_fma_f32 v22, -v29, v42, 1.0
	v_fmac_f32_e32 v42, v22, v42
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v22, v1, v44, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v1, v45, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v33, v46, v42
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v44, 0xffff0000, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v35, -v28, v1, v45
	v_fma_f32 v41, -v29, v33, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v48, null, v44, v44, v24
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v1, v35, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v33, v41, v42
	v_fma_f32 v28, -v28, v1, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v1, v28, v34, v1
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v28, 1, v43
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v29, -v29, v33, v46
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v3, v3, v28, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v29, v29, v42, v33
	v_div_fixup_f32 v33, v1, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v59, 0xffff0000, v3
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v4, v29, 0x40e00000, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v29.l, v33.h
	v_mov_b16_e32 v29.h, v43.h
	v_mov_b16_e32 v43.l, v4.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v28, 1, v29
	v_and_b32_e32 v43, 1, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v35, v33, v28, 0x7fff
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v33, v48
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v4, v43, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v51, -v48, v33, 1.0
	v_fmac_f32_e32 v33, v51, v33
	v_div_scale_f32 v47, null, v44, v44, v124
	v_div_scale_f32 v34, null, v44, v44, v125
	v_div_scale_f32 v42, vcc_lo, v124, v44, v124
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v45, v47
	v_rcp_f32_e32 v46, v34
	v_div_scale_f32 v49, null, v44, v44, v26
	v_div_scale_f32 v51, s1, v24, v44, v24
	v_div_scale_f32 v57, null, v44, v44, v116
	v_div_scale_f32 v58, null, v44, v44, v117
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v1, -v47, v45, 1.0
	v_fma_f32 v41, -v34, v46, 1.0
	v_div_scale_f32 v74, null, v44, v44, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v64, v58
	v_fmac_f32_e32 v45, v1, v45
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s34, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v29, v42, v45 :: v_dual_fmac_f32 v46, v41, v46
	v_div_scale_f32 v50, s0, v125, v44, v125
	v_div_scale_f32 v75, null, v44, v44, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v28, -v47, v29, v42
	v_mul_f32_e32 v43, v50, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v29, v28, v45
	v_rcp_f32_e32 v28, v49
	v_fma_f32 v42, -v47, v29, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v47, -v34, v43, v50
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v88, 0xffff0000, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v29, v42, v45, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v56, -v49, v28, 1.0
	v_fmac_f32_e32 v43, v47, v46
	v_mul_f32_e32 v45, v51, v33
	v_rcp_f32_e32 v47, v57
	v_div_fixup_f32 v42, v29, v44, v124
	v_fmac_f32_e32 v28, v56, v28
	v_div_scale_f32 v56, s6, v26, v44, v26
	v_fma_f32 v29, -v34, v43, v50
	v_fma_f32 v34, -v48, v45, v51
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v50, v56, v28
	v_div_scale_f32 v82, null, v88, v88, v93
	v_fma_f32 v65, -v57, v47, 1.0
	v_div_fmas_f32 v29, v29, v46, v43
	v_fmac_f32_e32 v45, v34, v33
	v_fma_f32 v34, -v49, v50, v56
	v_div_scale_f32 v46, s0, v116, v44, v116
	v_fmac_f32_e32 v47, v65, v47
	v_fma_f32 v65, -v58, v64, 1.0
	v_div_fixup_f32 v43, v29, v44, v125
	v_fma_f32 v29, -v48, v45, v51
	v_fmac_f32_e32 v50, v34, v28
	v_div_scale_f32 v51, null, v44, v44, v118
	s_mov_b32 vcc_lo, s1
	v_dual_mul_f32 v34, v46, v47 :: v_dual_and_b32 v41, 0xffff0000, v4
	v_fmac_f32_e32 v64, v65, v64
	v_div_scale_f32 v48, s7, v117, v44, v117
	v_div_fmas_f32 v29, v29, v33, v45
	v_fma_f32 v33, -v49, v50, v56
	v_rcp_f32_e32 v56, v51
	v_div_scale_f32 v65, null, v44, v44, v119
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v45, -v57, v34, v46
	v_mul_f32_e32 v49, v48, v64
	v_div_fmas_f32 v28, v33, v28, v50
	v_rcp_f32_e32 v33, v65
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v34, v45, v47
	v_fma_f32 v45, -v58, v49, v48
	v_fma_f32 v50, -v51, v56, 1.0
	v_div_fixup_f32 v26, v28, v44, v26
	v_div_fixup_f32 v24, v29, v44, v24
	v_fma_f32 v28, -v57, v34, v46
	v_div_scale_f32 v46, null, v44, v44, v21
	v_fmac_f32_e32 v56, v50, v56
	v_div_scale_f32 v50, s0, v119, v44, v119
	v_fmac_f32_e32 v49, v45, v64
	v_fma_f32 v45, -v65, v33, 1.0
	v_div_fmas_f32 v28, v28, v47, v34
	v_div_scale_f32 v57, null, v44, v44, v108
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v58, v49, v48
	v_fmac_f32_e32 v33, v45, v33
	v_rcp_f32_e32 v45, v46
	s_mov_b32 vcc_lo, s7
	v_div_scale_f32 v29, s1, v118, v44, v118
	v_rcp_f32_e32 v67, v57
	v_div_fixup_f32 v48, v28, v44, v116
	v_div_scale_f32 v89, null, v88, v88, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v26, v26
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v66, -v46, v45, 1.0
	v_rcp_f32_e32 v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v45, v66, v45
	v_div_fmas_f32 v34, v34, v64, v49
	v_mul_f32_e32 v64, v50, v33
	v_fma_f32 v66, -v57, v67, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v49, v34, v44, v117
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v28, -v65, v64, v50
	v_mul_f32_e32 v47, v29, v56
	v_fmac_f32_e32 v67, v66, v67
	v_div_scale_f32 v34, s6, v21, v44, v21
	v_fmac_f32_e32 v64, v28, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v58, -v51, v47, v29
	v_div_scale_f32 v66, s7, v108, v44, v108
	v_fmac_f32_e32 v47, v58, v56
	v_div_scale_f32 v58, null, v44, v44, v109
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v29, -v51, v47, v29
	v_rcp_f32_e32 v72, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v29, v29, v56, v47
	v_fma_f32 v47, -v65, v64, v50
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v73, s0, v109, v44, v109
	v_div_scale_f32 v65, null, v44, v44, v110
	v_fma_f32 v51, -v58, v72, 1.0
	v_div_fmas_f32 v33, v47, v33, v64
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v47, v65
	v_fmac_f32_e32 v72, v51, v72
	v_mul_f32_e32 v28, v34, v45
	v_div_fixup_f32 v51, v33, v44, v119
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v33, v73, v72
	v_fma_f32 v50, -v46, v28, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v28, v50, v45
	v_div_fixup_f32 v50, v29, v44, v118
	v_fma_f32 v29, -v46, v28, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v65, v47, 1.0
	v_div_scale_f32 v46, null, v44, v44, v111
	v_div_fmas_f32 v28, v29, v45, v28
	v_fma_f32 v45, -v58, v33, v73
	v_mul_f32_e32 v56, v66, v67
	v_fmac_f32_e32 v47, v34, v47
	v_rcp_f32_e32 v34, v46
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v33, v45, v72
	v_fma_f32 v64, -v57, v56, v66
	v_div_fixup_f32 v21, v28, v44, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v28, -v58, v33, v73
	v_fmac_f32_e32 v56, v64, v67
	v_div_scale_f32 v64, s1, v110, v44, v110
	v_div_scale_f32 v73, s6, v111, v44, v111
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v29, -v57, v56, v66
	v_div_scale_f32 v66, null, v44, v44, v20
	v_fma_f32 v57, -v46, v34, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v29, v29, v67, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v45, v66
	s_mov_b32 vcc_lo, s0
	v_dual_fmac_f32 v34, v57, v34 :: v_dual_mul_f32 v67, v64, v47
	v_div_fixup_f32 v56, v29, v44, v108
	v_div_fmas_f32 v28, v28, v72, v33
	v_div_scale_f32 v72, s0, v20, v44, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v29, -v65, v67, v64
	v_rcp_f32_e32 v33, v74
	v_fma_f32 v57, -v66, v45, 1.0
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v45, v57, v45
	v_fmac_f32_e32 v67, v29, v47
	v_div_fixup_f32 v57, v28, v44, v109
	v_fma_f32 v80, -v74, v33, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v28, -v65, v67, v64
	v_mul_f32_e32 v64, v72, v45
	v_rcp_f32_e32 v65, v75
	v_fmac_f32_e32 v33, v80, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v28, v28, v47, v67
	v_fma_f32 v47, -v66, v64, v72
	v_mul_f32_e32 v29, v73, v34
	v_div_scale_f32 v67, s1, v18, v44, v18
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v64, v47, v45
	v_fma_f32 v58, -v46, v29, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v80, -v75, v65, 1.0
	v_div_scale_f32 v47, s7, v19, v44, v19
	v_fmac_f32_e32 v29, v58, v34
	v_div_fixup_f32 v58, v28, v44, v110
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v28, -v46, v29, v73
	v_div_scale_f32 v73, null, v88, v88, v100
	v_mul_f32_e32 v46, v67, v33
	v_div_fmas_f32 v28, v28, v34, v29
	v_fma_f32 v29, -v66, v64, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v66, v73
	v_fma_f32 v34, -v74, v46, v67
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v29, v29, v45, v64
	v_div_fixup_f32 v64, v28, v44, v111
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v20, v29, v44, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v81, -v73, v66, 1.0
	v_div_scale_f32 v29, s0, v100, v88, v100
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v66, v81, v66
	v_fmac_f32_e32 v46, v34, v33
	v_fmac_f32_e32 v65, v80, v65
	v_div_scale_f32 v80, null, v88, v88, v101
	v_fma_f32 v28, -v74, v46, v67
	v_div_scale_f32 v67, null, v88, v88, v103
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v34, v80
	v_div_scale_f32 v74, null, v88, v88, v102
	v_div_fmas_f32 v28, v28, v33, v46
	v_mul_f32_e32 v46, v29, v66
	v_mul_f32_e32 v72, v47, v65
	s_mov_b32 vcc_lo, s7
	v_rcp_f32_e32 v81, v74
	v_div_fixup_f32 v18, v28, v44, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v45, -v75, v72, v47
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v72, v45, v65
	v_fma_f32 v45, -v80, v34, 1.0
	v_fma_f32 v33, -v75, v72, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v45, v34
	v_rcp_f32_e32 v45, v67
	v_div_scale_f32 v47, s1, v101, v88, v101
	v_div_fmas_f32 v33, v33, v65, v72
	v_fma_f32 v65, -v73, v46, v29
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v83, s0, v92, v88, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v19, v33, v44, v19
	v_fmac_f32_e32 v46, v65, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v75, -v67, v45, 1.0
	v_div_scale_f32 v44, null, v88, v88, v92
	v_fma_f32 v65, -v74, v81, 1.0
	v_fma_f32 v29, -v73, v46, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v45, v75, v45
	v_mul_f32_e32 v72, v47, v34
	v_div_scale_f32 v33, s6, v103, v88, v103
	v_rcp_f32_e32 v73, v44
	v_fmac_f32_e32 v81, v65, v81
	v_fma_f32 v28, -v80, v72, v47
	v_div_fmas_f32 v29, v29, v66, v46
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v75, s7, v102, v88, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v72, v28, v34
	v_mul_f32_e32 v28, v33, v45
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v65, -v44, v73, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v80, v72, v47
	v_fma_f32 v47, -v67, v28, v33
	v_mul_f32_e32 v80, v75, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v34, v46, v34, v72
	v_rcp_f32_e32 v46, v82
	v_fmac_f32_e32 v28, v47, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v47, -v74, v80, v75
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v66, v34, v88, v101
	v_fmac_f32_e32 v80, v47, v81
	v_div_scale_f32 v47, null, v88, v88, v94
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v82, v46, 1.0
	v_fmac_f32_e32 v73, v65, v73
	v_div_fixup_f32 v65, v29, v88, v100
	v_fma_f32 v29, -v67, v28, v33
	v_dual_fmac_f32 v46, v34, v46 :: v_dual_mul_f32 v33, v83, v73
	v_rcp_f32_e32 v34, v47
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fmas_f32 v28, v29, v45, v28
	v_fma_f32 v29, -v74, v80, v75
	v_div_scale_f32 v74, s1, v93, v88, v93
	v_fma_f32 v45, -v44, v33, v83
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v67, v28, v88, v103
	v_div_fmas_f32 v29, v29, v81, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v80, v74, v46 :: v_dual_fmac_f32 v33, v45, v73
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v75, null, v88, v88, v95
	v_fma_f32 v81, -v47, v34, 1.0
	v_fma_f32 v28, -v44, v33, v83
	v_div_scale_f32 v83, null, v88, v88, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v45, v75
	v_div_fixup_f32 v72, v29, v88, v102
	v_div_fmas_f32 v28, v28, v73, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v33, v83
	v_fma_f32 v29, -v82, v80, v74
	v_div_scale_f32 v44, s6, v94, v88, v94
	v_div_fixup_f32 v73, v28, v88, v92
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v80, v29, v46
	v_fma_f32 v91, -v83, v33, 1.0
	v_fmac_f32_e32 v34, v81, v34
	v_fma_f32 v81, -v75, v45, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v28, -v82, v80, v74
	v_fmac_f32_e32 v33, v91, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v29, v44, v34
	v_div_scale_f32 v91, s1, v17, v88, v17
	v_div_fmas_f32 v28, v28, v46, v80
	v_fma_f32 v80, -v89, v90, 1.0
	v_fmac_f32_e32 v45, v81, v45
	v_div_scale_f32 v81, s0, v95, v88, v95
	v_fma_f32 v74, -v47, v29, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v90, v80, v90
	s_mov_b32 vcc_lo, s6
	v_dual_mul_f32 v82, v81, v45 :: v_dual_fmac_f32 v29, v74, v34
	v_div_fixup_f32 v74, v28, v88, v93
	v_div_scale_f32 v93, null, v88, v88, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v75, v82, v81
	v_fma_f32 v28, -v47, v29, v44
	v_mul_f32_e32 v44, v91, v33
	v_div_scale_f32 v47, null, v88, v88, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v82, v46, v45
	v_div_scale_f32 v46, s7, v84, v88, v84
	v_div_fmas_f32 v28, v28, v34, v29
	v_fma_f32 v34, -v83, v44, v91
	v_rcp_f32_e32 v92, v47
	v_fma_f32 v29, -v75, v82, v81
	v_mul_f32_e32 v81, v46, v90
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v44, v34, v33
	v_rcp_f32_e32 v34, v93
	v_div_fmas_f32 v29, v29, v45, v82
	v_fma_f32 v45, -v89, v81, v46
	v_div_fixup_f32 v75, v28, v88, v94
	v_fma_f32 v28, -v83, v44, v91
	v_fma_f32 v82, -v47, v92, 1.0
	v_div_fixup_f32 v80, v29, v88, v95
	v_fmac_f32_e32 v81, v45, v90
	v_div_scale_f32 v29, s0, v85, v88, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v92, v82, v92
	v_fma_f32 v45, -v93, v34, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v91, null, v88, v88, v87
	v_div_fmas_f32 v28, v28, v33, v44
	v_fma_f32 v33, -v89, v81, v46
	v_mul_f32_e32 v44, v29, v92
	v_fmac_f32_e32 v34, v45, v34
	v_div_scale_f32 v46, s1, v86, v88, v86
	v_div_fixup_f32 v17, v28, v88, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v82, -v47, v44, v29
	s_mov_b32 vcc_lo, s7
	v_mul_f32_e32 v83, v46, v34
	v_div_fmas_f32 v33, v33, v90, v81
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v44, v82, v92
	v_rcp_f32_e32 v45, v91
	v_fma_f32 v28, -v93, v83, v46
	v_div_scale_f32 v89, null, v88, v88, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v29, -v47, v44, v29
	v_div_fixup_f32 v81, v33, v88, v84
	v_fmac_f32_e32 v83, v28, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v94, v89
	v_div_scale_f32 v33, s6, v87, v88, v87
	v_div_fmas_f32 v29, v29, v92, v44
	v_fma_f32 v44, -v93, v83, v46
	v_div_scale_f32 v93, null, v88, v88, v14
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v90, -v91, v45, 1.0
	v_div_fmas_f32 v34, v44, v34, v83
	v_rcp_f32_e32 v44, v93
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v82, -v89, v94, 1.0
	v_div_scale_f32 v84, s7, v16, v88, v16
	v_fmac_f32_e32 v45, v90, v45
	v_div_scale_f32 v90, null, v88, v88, v15
	v_div_fixup_f32 v83, v34, v88, v86
	v_div_scale_f32 v95, s0, v15, v88, v15
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v34, -v93, v44, 1.0
	v_mul_f32_e32 v28, v33, v45
	v_rcp_f32_e32 v47, v90
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v86, null, v59, v59, v77
	v_fmac_f32_e32 v44, v34, v44
	v_fmac_f32_e32 v94, v82, v94
	v_fma_f32 v46, -v91, v28, v33
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v92, v84, v94
	v_fma_f32 v82, -v90, v47, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v28, v46, v45
	v_fma_f32 v46, -v89, v92, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v47, v82, v47
	v_div_fixup_f32 v82, v29, v88, v85
	v_fma_f32 v29, -v91, v28, v33
	v_div_scale_f32 v85, s1, v14, v88, v14
	v_fmac_f32_e32 v92, v46, v94
	v_div_scale_f32 v46, null, v59, v59, v76
	v_mul_f32_e32 v33, v95, v47
	v_div_fmas_f32 v28, v29, v45, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v29, -v89, v92, v84
	v_rcp_f32_e32 v34, v46
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v45, -v90, v33, v95
	v_mul_f32_e32 v89, v85, v44
	v_div_fmas_f32 v29, v29, v94, v92
	v_div_fixup_f32 v84, v28, v88, v87
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v33, v45, v47
	v_rcp_f32_e32 v45, v86
	v_div_fixup_f32 v16, v29, v88, v16
	v_fma_f32 v91, -v46, v34, 1.0
	v_fma_f32 v29, -v93, v89, v85
	v_fma_f32 v28, -v90, v33, v95
	v_div_scale_f32 v87, s6, v76, v59, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v34, v91, v34
	v_div_scale_f32 v91, null, v59, v59, v79
	v_fma_f32 v90, -v86, v45, 1.0
	v_div_fmas_f32 v28, v28, v47, v33
	v_fmac_f32_e32 v89, v29, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v33, v91
	v_mul_f32_e32 v29, v87, v34
	v_fmac_f32_e32 v45, v90, v45
	v_div_scale_f32 v47, s0, v77, v59, v77
	v_div_scale_f32 v90, null, v59, v59, v78
	v_div_fixup_f32 v15, v28, v88, v15
	v_fma_f32 v28, -v93, v89, v85
	v_fma_f32 v85, -v46, v29, v87
	v_mul_f32_e32 v92, v47, v45
	v_rcp_f32_e32 v93, v90
	v_fma_f32 v94, -v91, v33, 1.0
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v29, v85, v34
	v_div_fmas_f32 v28, v28, v44, v89
	v_fma_f32 v44, -v86, v92, v47
	v_fmac_f32_e32 v33, v94, v33
	v_div_scale_f32 v85, s1, v79, v59, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v14, v28, v88, v14
	v_fma_f32 v89, -v90, v93, 1.0
	v_fma_f32 v28, -v46, v29, v87
	v_fmac_f32_e32 v92, v44, v45
	v_mul_f32_e32 v44, v85, v33
	v_div_scale_f32 v87, null, v59, v59, v68
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v93, v89, v93
	v_div_scale_f32 v46, s7, v78, v59, v78
	v_div_fmas_f32 v28, v28, v34, v29
	v_fma_f32 v29, -v86, v92, v47
	v_fma_f32 v34, -v91, v44, v85
	v_rcp_f32_e32 v47, v87
	v_div_scale_f32 v88, null, v59, v59, v69
	v_mul_f32_e32 v86, v46, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v44, v34, v33
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v34, v88
	v_div_fmas_f32 v29, v29, v45, v92
	v_fma_f32 v45, -v90, v86, v46
	v_div_fixup_f32 v76, v28, v59, v76
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v87, v47, 1.0
	v_fma_f32 v28, -v91, v44, v85
	v_div_fixup_f32 v77, v29, v59, v77
	v_fmac_f32_e32 v86, v45, v93
	v_div_scale_f32 v29, s0, v68, v59, v68
	v_fmac_f32_e32 v47, v89, v47
	v_fma_f32 v45, -v88, v34, 1.0
	v_div_scale_f32 v85, null, v59, v59, v70
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v89, null, v59, v59, v71
	v_div_fmas_f32 v28, v28, v33, v44
	v_fma_f32 v33, -v90, v86, v46
	v_mul_f32_e32 v44, v29, v47
	v_fmac_f32_e32 v34, v45, v34
	v_rcp_f32_e32 v45, v85
	s_mov_b32 vcc_lo, s7
	v_div_scale_f32 v46, s1, v69, v59, v69
	v_div_fmas_f32 v33, v33, v93, v86
	v_fma_f32 v86, -v87, v44, v29
	v_rcp_f32_e32 v92, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v90, v46, v34
	v_div_fixup_f32 v79, v28, v59, v79
	v_div_fixup_f32 v78, v33, v59, v78
	v_fma_f32 v91, -v85, v45, 1.0
	v_fmac_f32_e32 v44, v86, v47
	v_div_scale_f32 v86, null, v59, v59, v13
	v_fma_f32 v28, -v88, v90, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v45, v91, v45
	v_div_scale_f32 v33, s6, v70, v59, v70
	v_fma_f32 v91, -v89, v92, 1.0
	v_fma_f32 v29, -v87, v44, v29
	v_rcp_f32_e32 v87, v86
	v_fmac_f32_e32 v90, v28, v34
	v_mul_f32_e32 v28, v33, v45
	v_fmac_f32_e32 v92, v91, v92
	v_div_scale_f32 v91, s7, v71, v59, v71
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v93, null, v59, v59, v60
	v_div_fmas_f32 v29, v29, v47, v44
	v_fma_f32 v44, -v88, v90, v46
	v_fma_f32 v46, -v85, v28, v33
	v_mul_f32_e32 v47, v91, v92
	v_fma_f32 v88, -v86, v87, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v68, v29, v59, v68
	v_div_fmas_f32 v34, v44, v34, v90
	v_fmac_f32_e32 v28, v46, v45
	v_rcp_f32_e32 v44, v93
	v_fma_f32 v46, -v89, v47, v91
	v_fmac_f32_e32 v87, v88, v87
	v_div_scale_f32 v88, s0, v13, v59, v13
	v_fma_f32 v29, -v85, v28, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v46, v92
	s_mov_b32 vcc_lo, s6
	v_mul_f32_e32 v33, v88, v87
	v_div_fixup_f32 v69, v34, v59, v69
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v34, -v93, v44, 1.0
	v_div_scale_f32 v46, null, v59, v59, v61
	v_div_fmas_f32 v28, v29, v45, v28
	v_fma_f32 v29, -v89, v47, v91
	v_fma_f32 v45, -v86, v33, v88
	v_div_scale_f32 v89, null, v59, v59, v62
	v_fmac_f32_e32 v44, v34, v44
	v_rcp_f32_e32 v34, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v45, v87
	v_rcp_f32_e32 v45, v89
	v_div_scale_f32 v85, s1, v60, v59, v60
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v28, v28, v59, v70
	v_div_fmas_f32 v29, v29, v92, v47
	v_mul_f32_e32 v47, v85, v44
	v_fma_f32 v70, -v86, v33, v88
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v90, -v46, v34, 1.0
	v_div_scale_f32 v86, s6, v61, v59, v61
	v_fma_f32 v88, -v89, v45, 1.0
	v_div_fixup_f32 v29, v29, v59, v71
	v_fma_f32 v71, -v93, v47, v85
	v_fmac_f32_e32 v34, v90, v34
	v_div_scale_f32 v90, null, v59, v59, v63
	v_fmac_f32_e32 v45, v88, v45
	v_div_scale_f32 v88, null, v59, v59, v12
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v47, v71, v44
	v_div_fmas_f32 v33, v70, v87, v33
	v_mul_f32_e32 v70, v86, v34
	v_rcp_f32_e32 v71, v90
	v_div_scale_f32 v87, s0, v62, v59, v62
	v_rcp_f32_e32 v92, v88
	v_div_fixup_f32 v13, v33, v59, v13
	v_fma_f32 v33, -v93, v47, v85
	v_fma_f32 v85, -v46, v70, v86
	v_mul_f32_e32 v91, v87, v45
	s_mov_b32 vcc_lo, s1
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v15, v15
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v93, -v90, v71, 1.0
	v_div_fmas_f32 v33, v33, v44, v47
	v_fmac_f32_e32 v70, v85, v34
	v_fma_f32 v44, -v89, v91, v87
	v_fma_f32 v85, -v88, v92, 1.0
	v_fmac_f32_e32 v71, v93, v71
	v_div_scale_f32 v47, s1, v63, v59, v63
	v_fma_f32 v46, -v46, v70, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v91, v44, v45 :: v_dual_fmac_f32 v92, v85, v92
	v_div_scale_f32 v85, null, v59, v59, v10
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v33, v33, v59, v60
	v_mul_f32_e32 v44, v47, v71
	v_div_scale_f32 v60, s7, v12, v59, v12
	v_div_fmas_f32 v34, v46, v34, v70
	v_fma_f32 v46, -v89, v91, v87
	v_rcp_f32_e32 v86, v85
	v_div_scale_f32 v89, null, v59, v59, v11
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v70, -v90, v44, v47
	v_mul_f32_e32 v87, v60, v92
	v_div_fmas_f32 v45, v46, v45, v91
	v_rcp_f32_e32 v46, v89
	v_div_fixup_f32 v34, v34, v59, v61
	v_fmac_f32_e32 v44, v70, v71
	v_fma_f32 v70, -v88, v87, v60
	v_fma_f32 v91, -v85, v86, 1.0
	v_div_fixup_f32 v45, v45, v59, v62
	v_div_scale_f32 v61, s0, v10, v59, v10
	v_fma_f32 v47, -v90, v44, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v87, v70, v92 :: v_dual_fmac_f32 v86, v91, v86
	v_fma_f32 v62, -v89, v46, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v70, s1, v11, v59, v11
	v_div_fmas_f32 v44, v47, v71, v44
	v_fma_f32 v47, -v88, v87, v60
	v_mul_f32_e32 v60, v61, v86
	v_fmac_f32_e32 v46, v62, v46
	v_div_scale_f32 v62, null, v41, v41, v52
	s_mov_b32 vcc_lo, s7
	v_div_scale_f32 v90, null, v41, v41, v53
	v_div_fmas_f32 v47, v47, v92, v87
	v_rcp_f32_e32 v71, v62
	v_fma_f32 v87, -v85, v60, v61
	v_mul_f32_e32 v88, v70, v46
	v_div_fixup_f32 v44, v44, v59, v63
	v_div_fixup_f32 v12, v47, v59, v12
	v_rcp_f32_e32 v63, v90
	v_fmac_f32_e32 v60, v87, v86
	v_fma_f32 v47, -v89, v88, v70
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v92, null, v41, v41, v54
	v_fma_f32 v87, -v62, v71, 1.0
	v_fma_f32 v61, -v85, v60, v61
	v_div_scale_f32 v85, null, v41, v41, v55
	v_fmac_f32_e32 v88, v47, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v71, v87, v71
	v_div_scale_f32 v47, s6, v52, v41, v52
	v_rcp_f32_e32 v87, v85
	v_fma_f32 v91, -v90, v63, 1.0
	v_div_fmas_f32 v60, v61, v86, v60
	v_fma_f32 v61, -v89, v88, v70
	v_mul_f32_e32 v70, v47, v71
	v_div_scale_f32 v86, s0, v53, v41, v53
	v_fmac_f32_e32 v63, v91, v63
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v91, -v62, v70, v47
	v_fma_f32 v89, -v85, v87, 1.0
	v_rcp_f32_e32 v94, v92
	v_mul_f32_e32 v93, v86, v63
	v_div_fmas_f32 v46, v61, v46, v88
	v_fmac_f32_e32 v70, v91, v71
	v_fmac_f32_e32 v87, v89, v87
	v_div_scale_f32 v89, s7, v55, v41, v55
	v_fma_f32 v61, -v90, v93, v86
	v_div_fixup_f32 v10, v60, v59, v10
	v_div_fixup_f32 v11, v46, v59, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v88, v89, v87
	v_fma_f32 v46, -v62, v70, v47
	v_div_scale_f32 v60, null, v41, v41, v32
	v_fmac_f32_e32 v93, v61, v63
	v_fma_f32 v47, -v85, v88, v89
	v_fma_f32 v59, -v92, v94, 1.0
	s_mov_b32 vcc_lo, s6
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v61, -v90, v93, v86
	v_fmac_f32_e32 v88, v47, v87
	v_rcp_f32_e32 v47, v60
	v_fmac_f32_e32 v94, v59, v94
	v_div_scale_f32 v59, s1, v54, v41, v54
	v_div_fmas_f32 v46, v46, v71, v70
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v62, -v85, v88, v89
	v_div_fmas_f32 v61, v61, v63, v93
	v_mul_f32_e32 v63, v59, v94
	v_div_scale_f32 v70, null, v41, v41, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v71, -v60, v47, 1.0
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v86, -v92, v63, v59
	v_div_fmas_f32 v62, v62, v87, v88
	v_rcp_f32_e32 v85, v70
	v_fmac_f32_e32 v47, v71, v47
	v_div_scale_f32 v71, s0, v32, v41, v32
	v_div_fixup_f32 v46, v46, v41, v52
	v_fmac_f32_e32 v63, v86, v94
	v_div_fixup_f32 v52, v61, v41, v53
	v_div_fixup_f32 v53, v62, v41, v55
	v_mul_f32_e32 v55, v71, v47
	v_div_scale_f32 v62, null, v41, v41, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v61, -v70, v85, 1.0
	v_fma_f32 v59, -v92, v63, v59
	v_fma_f32 v86, -v60, v55, v71
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v87, v62
	v_fmac_f32_e32 v85, v61, v85
	v_div_scale_f32 v61, s6, v31, v41, v31
	v_div_fmas_f32 v59, v59, v94, v63
	v_fmac_f32_e32 v55, v86, v47
	v_div_scale_f32 v86, null, v41, v41, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v63, v61, v85
	v_div_fixup_f32 v54, v59, v41, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v59, -v60, v55, v71
	v_rcp_f32_e32 v88, v86
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v60, -v70, v63, v61
	v_fma_f32 v71, -v62, v87, 1.0
	v_div_fmas_f32 v47, v59, v47, v55
	v_div_scale_f32 v59, s0, v30, v41, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v63, v60, v85
	v_fmac_f32_e32 v87, v71, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v32, v47, v41, v32
	v_fma_f32 v47, -v86, v88, 1.0
	v_div_scale_f32 v71, null, v41, v41, v37
	v_div_scale_f32 v55, null, v41, v41, v9
	v_fma_f32 v61, -v70, v63, v61
	v_mul_f32_e32 v70, v59, v87
	v_fmac_f32_e32 v88, v47, v88
	v_div_scale_f32 v47, s1, v0, v41, v0
	v_rcp_f32_e32 v90, v71
	s_mov_b32 vcc_lo, s6
	v_rcp_f32_e32 v60, v55
	v_div_fmas_f32 v61, v61, v85, v63
	v_fma_f32 v63, -v62, v70, v59
	v_mul_f32_e32 v85, v47, v88
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v91, s6, v9, v41, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v70, v63, v87
	v_fma_f32 v92, -v71, v90, 1.0
	v_fma_f32 v63, -v86, v85, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v89, -v55, v60, 1.0
	v_div_fixup_f32 v31, v61, v41, v31
	v_fma_f32 v59, -v62, v70, v59
	v_dual_fmac_f32 v90, v92, v90 :: v_dual_fmac_f32 v85, v63, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v60, v89, v60
	v_div_scale_f32 v89, null, v41, v41, v38
	v_div_fmas_f32 v59, v59, v87, v70
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v47, -v86, v85, v47
	v_div_scale_f32 v70, null, v41, v41, v39
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v93, v89
	v_div_fmas_f32 v47, v47, v88, v85
	v_rcp_f32_e32 v85, v70
	v_mul_f32_e32 v94, v91, v60
	v_div_scale_f32 v92, s7, v37, v41, v37
	v_div_fixup_f32 v30, v59, v41, v30
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v61, -v55, v94, v91
	v_div_fixup_f32 v0, v47, v41, v0
	v_fma_f32 v63, -v89, v93, 1.0
	v_div_scale_f32 v87, null, v41, v41, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v59, -v70, v85, 1.0
	v_mul_f32_e32 v62, v92, v90
	v_dual_fmac_f32 v94, v61, v60 :: v_dual_fmac_f32 v93, v63, v93
	v_div_scale_f32 v63, s0, v38, v41, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v85, v59, v85
	v_fma_f32 v61, -v71, v62, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v55, -v55, v94, v91
	v_div_scale_f32 v59, null, v41, v41, v6
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v11, v11
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v62, v61, v90 :: v_dual_mul_f32 v61, v63, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v55, v55, v60, v94
	s_mov_b32 vcc_lo, s7
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v60, -v71, v62, v92
	v_fma_f32 v71, -v89, v61, v63
	v_div_fixup_f32 v9, v55, v41, v9
	v_div_scale_f32 v55, null, v41, v41, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v60, v60, v90, v62
	v_fmac_f32_e32 v61, v71, v93
	s_mov_b32 vcc_lo, s0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v33, v33
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v37, v60, v41, v37
	v_fma_f32 v47, -v89, v61, v63
	v_rcp_f32_e32 v60, v55
	v_rcp_f32_e32 v63, v59
	v_rcp_f32_e32 v89, v87
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v47, v47, v93, v61
	v_div_scale_f32 v62, vcc_lo, v39, v41, v39
	v_div_scale_f32 v61, null, v41, v41, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_div_fixup_f32 v38, v47, v41, v38
	v_fma_f32 v47, -v55, v60, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v86, v62, v85
	v_rcp_f32_e32 v71, v61
	v_fma_f32 v88, -v59, v63, 1.0
	v_fma_f32 v93, -v87, v89, 1.0
	v_fmac_f32_e32 v60, v47, v60
	v_div_scale_f32 v47, s0, v40, v41, v40
	v_fma_f32 v90, -v70, v86, v62
	v_fmac_f32_e32 v63, v88, v63
	v_div_scale_f32 v88, s1, v6, v41, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v92, v47, v60
	v_fmac_f32_e32 v86, v90, v85
	v_fma_f32 v91, -v61, v71, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v94, v88, v63 :: v_dual_fmac_f32 v89, v93, v89
	v_fma_f32 v90, -v55, v92, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v62, -v70, v86, v62
	v_fmac_f32_e32 v71, v91, v71
	v_div_scale_f32 v91, s6, v7, v41, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v92, v90, v60
	v_fma_f32 v70, -v59, v94, v88
	v_div_fmas_f32 v62, v62, v85, v86
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v95, v91, v71
	v_fma_f32 v47, -v55, v92, v47
	v_div_scale_f32 v93, s7, v8, v41, v8
	v_fmac_f32_e32 v94, v70, v63
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v84
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v47, v47, v60, v92
	s_mov_b32 s0, 0xc1000000
	v_fma_f32 v90, -v61, v95, v91
	v_mul_f32_e32 v96, v93, v89
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v70, v70, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v40, v47, v41, v40
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v49
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v95, v90, v71
	v_fma_f32 v55, -v87, v96, v93
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v45, v45, s0, 0x40e00000
	v_med3_f32 v47, v47, s0, 0x40e00000
	v_cvt_i32_f32_e32 v70, v70
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v96, v55, v89
	v_fma_f32 v55, -v61, v95, v91
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v73
	v_rndne_f32_e32 v73, v79
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v79, v15
	v_cvt_i32_f32_e32 v84, v45
	v_and_b32_e32 v45, 15, v70
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v59, -v59, v94, v88
	s_mov_b32 vcc_lo, s1
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v88, v11
	v_and_b32_e32 v11, 15, v47
	v_and_b32_e32 v47, 15, v79
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v60, -v87, v96, v93
	v_div_fmas_f32 v59, v59, v63, v94
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v39, v62, v41, v39
	v_div_fmas_f32 v55, v55, v71, v95
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v6, v59, v41, v6
	v_div_fmas_f32 v60, v60, v89, v96
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v7, v55, v41, v7
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v58
	v_rndne_f32_e32 v58, v66
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v8, v60, v41, v8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v42
	v_rndne_f32_e32 v42, v43
	v_rndne_f32_e32 v43, v48
	v_rndne_f32_e32 v48, v50
	v_rndne_f32_e32 v50, v56
	v_rndne_f32_e32 v60, v72
	v_rndne_f32_e32 v72, v77
	v_rndne_f32_e32 v8, v8
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v69, v69, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v50, v50, s0, 0x40e00000
	v_med3_f32 v58, v58, s0, 0x40e00000
	v_med3_f32 v72, v72, s0, 0x40e00000
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_med3_f32 v54, v54, s0, 0x40e00000
	v_med3_f32 v0, v0, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v32, v32
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v51
	v_rndne_f32_e32 v51, v57
	v_rndne_f32_e32 v57, v65
	v_rndne_f32_e32 v59, v67
	v_rndne_f32_e32 v62, v74
	v_rndne_f32_e32 v65, v81
	v_rndne_f32_e32 v66, v82
	v_rndne_f32_e32 v67, v83
	v_rndne_f32_e32 v71, v76
	v_rndne_f32_e32 v74, v78
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v9, v9
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v92, v54
	v_cvt_i32_f32_e32 v0, v0
	v_cvt_i32_f32_e32 v102, v8
	v_and_b32_e32 v8, 15, v24
	v_and_b32_e32 v54, 15, v69
	v_and_b32_e32 v69, 15, v32
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v24, 10, v175
	v_and_b32_e32 v32, 16, v175
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v64
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v6, v6
	v_rndne_f32_e32 v7, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v41, v41, s0, 0x40e00000
	v_med3_f32 v42, v42, s0, 0x40e00000
	v_med3_f32 v43, v43, s0, 0x40e00000
	v_med3_f32 v48, v48, s0, 0x40e00000
	v_med3_f32 v49, v49, s0, 0x40e00000
	v_med3_f32 v51, v51, s0, 0x40e00000
	v_med3_f32 v57, v57, s0, 0x40e00000
	v_med3_f32 v59, v59, s0, 0x40e00000
	v_med3_f32 v60, v60, s0, 0x40e00000
	v_med3_f32 v65, v65, s0, 0x40e00000
	v_med3_f32 v66, v66, s0, 0x40e00000
	v_med3_f32 v67, v67, s0, 0x40e00000
	v_med3_f32 v71, v71, s0, 0x40e00000
	v_med3_f32 v73, v73, s0, 0x40e00000
	v_med3_f32 v74, v74, s0, 0x40e00000
	v_med3_f32 v68, v68, s0, 0x40e00000
	v_med3_f32 v46, v46, s0, 0x40e00000
	v_med3_f32 v52, v52, s0, 0x40e00000
	v_med3_f32 v53, v53, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v82, v29
	v_and_b32_e32 v15, 15, v50
	v_and_b32_e32 v29, 15, v58
	v_and_b32_e32 v50, 15, v72
	v_and_b32_e32 v58, 15, v33
	v_and_b32_e32 v72, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v0, 0x1800, v24
	v_lshlrev_b32_e32 v24, 6, v32
	v_lshlrev_b32_e32 v33, 6, v175
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v14
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v55, v55, s0, 0x40e00000
	v_med3_f32 v56, v56, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v38, v38, s0, 0x40e00000
	v_med3_f32 v39, v39, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v44, v44, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v6, v6, s0, 0x40e00000
	v_med3_f32 v7, v7, s0, 0x40e00000
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v89, v46
	v_cvt_i32_f32_e32 v90, v52
	v_cvt_i32_f32_e32 v91, v53
	v_cvt_i32_f32_e32 v95, v9
	v_and_b32_e32 v9, 15, v26
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v26, v205, v36
	v_add3_u32 v0, 0, v0, v24
	v_and_or_b32 v24, 0x1b00, v33, v25
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v75
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v75, v18
	v_cvt_i32_f32_e32 v76, v19
	v_cvt_i32_f32_e32 v77, v17
	v_cvt_i32_f32_e32 v83, v13
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v96, v37
	v_cvt_i32_f32_e32 v97, v38
	v_cvt_i32_f32_e32 v98, v39
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v80
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v78, v16
	v_cvt_i32_f32_e32 v81, v28
	v_cvt_i32_f32_e32 v85, v44
	v_cvt_i32_f32_e32 v86, v12
	v_cvt_i32_f32_e32 v87, v10
	v_cvt_i32_f32_e32 v93, v31
	v_cvt_i32_f32_e32 v94, v30
	v_cvt_i32_f32_e32 v100, v6
	v_cvt_i32_f32_e32 v101, v7
	v_and_b32_e32 v6, 15, v41
	v_and_b32_e32 v7, 15, v42
	v_and_b32_e32 v10, 15, v43
	v_and_b32_e32 v12, 15, v48
	v_and_b32_e32 v13, 15, v49
	v_and_b32_e32 v16, 15, v51
	v_and_b32_e32 v28, 15, v57
	v_and_b32_e32 v30, 15, v59
	v_and_b32_e32 v31, 15, v60
	v_and_b32_e32 v42, 15, v65
	v_and_b32_e32 v43, 15, v66
	v_and_b32_e32 v44, 15, v67
	v_and_b32_e32 v49, 15, v71
	v_and_b32_e32 v51, 15, v73
	v_and_b32_e32 v52, 15, v74
	v_and_b32_e32 v53, 15, v68
	v_and_b32_e32 v65, 15, v89
	v_and_b32_e32 v66, 15, v90
	v_and_b32_e32 v67, 15, v91
	v_and_b32_e32 v68, 15, v92
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, v0, v26, v27
	v_xad_u32 v33, v24, v204, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v80, v14
	v_and_b32_e32 v14, 15, v21
	v_and_b32_e32 v17, 15, v55
	v_and_b32_e32 v18, 15, v56
	v_and_b32_e32 v19, 15, v20
	v_and_b32_e32 v20, 15, v75
	v_and_b32_e32 v21, 15, v76
	v_and_b32_e32 v41, 15, v77
	v_and_b32_e32 v57, 15, v83
	v_and_b32_e32 v59, 15, v34
	v_and_b32_e32 v60, 15, v84
	v_and_b32_e32 v73, 15, v95
	v_and_b32_e32 v74, 15, v96
	v_and_b32_e32 v75, 15, v97
	v_and_b32_e32 v76, 15, v98
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v61, v61, s0, 0x40e00000
	v_med3_f32 v62, v62, s0, 0x40e00000
	v_med3_f32 v63, v63, s0, 0x40e00000
	v_med3_f32 v64, v64, s0, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v0, v[6:9]
	ds_store_b128 v0, v[14:17] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[6:9], v33
	ds_load_b128 v[14:17], v33 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[28:31]
	ds_store_b128 v0, v[41:44] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[24:27], v33
	ds_load_b128 v[28:31], v33 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[49:52]
	ds_store_b128 v0, v[57:60] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[41:44], v33
	ds_load_b128 v[49:52], v33 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[65:68]
	ds_store_b128 v0, v[73:76] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[57:60], v33
	ds_load_b128 v[65:68], v33 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[10:13]
	ds_store_b128 v0, v[18:21] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v33
	ds_load_b128 v[18:21], v33 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v40, v40, s0, 0x40e00000
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v99, v40
	v_and_b32_e32 v37, 15, v61
	v_and_b32_e32 v38, 15, v62
	v_and_b32_e32 v39, 15, v63
	v_and_b32_e32 v40, 15, v64
	v_and_b32_e32 v46, 15, v78
	v_and_b32_e32 v48, 15, v80
	v_and_b32_e32 v55, 15, v81
	v_and_b32_e32 v56, 15, v82
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[37:40]
	ds_store_b128 v0, v[45:48] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[36:39], v33
	ds_load_b128 v[45:48], v33 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v61, 15, v85
	v_and_b32_e32 v62, 15, v86
	v_and_b32_e32 v63, 15, v87
	v_and_b32_e32 v64, 15, v88
	v_and_b32_e32 v70, 15, v93
	v_and_b32_e32 v71, 15, v94
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[53:56]
	ds_store_b128 v0, v[61:64] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[53:56], v33
	ds_load_b128 v[61:64], v33 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v77, 15, v99
	v_and_b32_e32 v78, 15, v100
	v_and_b32_e32 v79, 15, v101
	v_and_b32_e32 v80, 15, v102
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v6, v14, 4, v6
	v_lshl_or_b32 v14, v15, 4, v7
	v_lshl_or_b32 v15, v16, 4, v8
	v_lshl_or_b32 v16, v17, 4, v9
	v_lshl_or_b32 v17, v18, 4, v10
	v_lshl_or_b32 v18, v19, 4, v11
	v_lshl_or_b32 v19, v28, 4, v24
	v_lshl_or_b32 v24, v31, 4, v27
	v_lshl_or_b32 v31, v51, 4, v43
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v43, 3, v200
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[69:72]
	ds_store_b128 v0, v[77:80] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[69:72], v33
	ds_load_b128 v[73:76], v33 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s0, s33, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_lshl_or_b32 v0, s49, 7, v43
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s0, s33, s0
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v12, v20, 4, v12
	v_lshl_or_b32 v13, v21, 4, v13
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s0, 1
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v27, v47, 4, v38
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[7:8], null, v5, s0, v[0:1]
	v_mad_u64_u32 v[8:9], null, v112, s0, v[0:1]
	v_mad_u64_u32 v[9:10], null, v202, s0, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v28, v48, 4, v39
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[10:11], null, v141, s0, v[0:1]
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
	v_lshl_or_b32 v20, v29, 4, v25
	v_lshl_or_b32 v21, v30, 4, v26
	v_lshl_or_b32 v25, v45, 4, v36
	v_lshl_or_b32 v26, v46, 4, v37
	v_lshl_or_b32 v37, v63, 4, v55
	v_lshl_or_b32 v38, v64, 4, v56
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v0.h, v0.l
	v_or_b16 v11.l, v4.l, v3.l
	v_or_b16 v12.h, v5.h, v5.l
	v_or_b16 v12.l, v6.h, v6.l
	v_cndmask_b32_e64 v7, 0x80000000, v7, s5
	v_lshlrev_b16 v5.l, 8, v28.l
	v_and_b16 v5.h, 0xff, v27.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v29, v49, 4, v41
	v_lshl_or_b32 v30, v50, 4, v42
	v_lshl_or_b32 v33, v52, 4, v44
	v_lshl_or_b32 v34, v61, 4, v53
	v_lshl_or_b32 v36, v62, 4, v54
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v46, v75, 4, v71
	v_lshl_or_b32 v47, v76, 4, v72
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v24.l
	v_and_b16 v0.h, 0xff, v21.l
	v_lshlrev_b16 v3.l, 8, v20.l
	v_and_b16 v4.l, 0xff, v19.l
	v_lshlrev_b16 v6.l, 8, v26.l
	v_and_b16 v6.h, 0xff, v25.l
	buffer_store_b64 v[11:12], v7, s[8:11], 0 offen
	v_or_b16 v12.h, v5.h, v5.l
	v_lshlrev_b16 v5.l, 8, v38.l
	v_and_b16 v5.h, 0xff, v37.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v39, v65, 4, v57
	v_lshl_or_b32 v40, v66, 4, v58
	v_lshl_or_b32 v41, v67, 4, v59
	v_lshl_or_b32 v42, v68, 4, v60
	v_lshl_or_b32 v44, v73, 4, v69
	v_lshl_or_b32 v45, v74, 4, v70
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v0.h, v0.l
	v_or_b16 v11.l, v4.l, v3.l
	v_or_b16 v12.l, v6.h, v6.l
	v_cndmask_b32_e64 v7, 0x80000000, v8, s4
	v_lshlrev_b16 v0.l, 8, v33.l
	v_and_b16 v0.h, 0xff, v31.l
	v_lshlrev_b16 v3.l, 8, v30.l
	v_and_b16 v4.l, 0xff, v29.l
	v_lshlrev_b16 v6.l, 8, v36.l
	v_and_b16 v6.h, 0xff, v34.l
	v_or_b16 v8.h, v5.h, v5.l
	v_lshlrev_b16 v5.l, 8, v47.l
	v_and_b16 v5.h, 0xff, v46.l
	buffer_store_b64 v[11:12], v7, s[8:11], 0 offen
	v_or_b16 v7.h, v0.h, v0.l
	v_or_b16 v7.l, v4.l, v3.l
	v_or_b16 v8.l, v6.h, v6.l
	v_lshlrev_b16 v0.l, 8, v42.l
	v_and_b16 v0.h, 0xff, v41.l
	v_lshlrev_b16 v3.l, 8, v40.l
	v_and_b16 v4.l, 0xff, v39.l
	v_lshlrev_b16 v6.l, 8, v45.l
	v_and_b16 v6.h, 0xff, v44.l
	v_or_b16 v12.h, v5.h, v5.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v5, 2, v32
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	v_or_b16 v11.h, v0.h, v0.l
	v_or_b16 v11.l, v4.l, v3.l
	v_or_b16 v12.l, v6.h, v6.l
	v_cndmask_b32_e64 v0, 0x80000000, v10, s2
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v6, 2, v157
	v_add_nc_u32_e32 v5, 0, v5
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[7:8], v9, s[8:11], 0 offen
	buffer_store_b64 v[11:12], v0, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v43
	v_mov_b16_e32 v4.l, v35.h
	v_mov_b16_e32 v3.l, v22.h
	v_add3_u32 v5, v5, v6, v43
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s0, 24
	.loc	1 1254 13 is_stmt 0             ; ragged.py:1254:13
	v_add_nc_u32_e32 v7, s34, v23
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
	v_and_b32_e32 v4, 0xc0, v175
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[44:45], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[46:47], v[1:2]
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_and_b32 s9, s27, 0xffff
	s_mov_b32 s8, s26
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
.Ltmp64:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 184
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
		.amdhsa_next_free_sgpr 54
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
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 54
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 184
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 27120
; TotalNumSgprs: 56
; NumVgprs: 256
; ScratchSize: 184
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 56
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
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
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
    .private_segment_fixed_size: 184
    .sgpr_count:     56
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 46
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
