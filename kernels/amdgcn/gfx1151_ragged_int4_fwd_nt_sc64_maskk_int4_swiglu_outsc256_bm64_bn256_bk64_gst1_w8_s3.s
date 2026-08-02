	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[44:45], s[0:1], 0x5c
	v_mov_b32_e32 v180, v0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
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
	v_rcp_iflag_f32_e32 v0, s5
	v_readfirstlane_b32 s5, v0
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
	s_sub_i32 s8, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s4, s45, s8
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
	s_ashr_i32 s23, s4, 31
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
	s_xor_b32 s55, s3, s23
	s_sub_i32 s45, s55, s23
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s45, s9
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s2, s2, s8
	s_load_b64 s[8:9], s[0:1], 0x38
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s3, s2, 31
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[2:3], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s2
	s_addc_u32 s5, s5, s3
	s_load_b64 s[34:35], s[4:5], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s4, s6, s2
	s_addc_u32 s5, s7, s3
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s6, s8, s2
	s_addc_u32 s7, s9, s3
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s44, 0
	s_mov_b32 s8, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v127, 0x80, v180
	s_branch .LBB0_3
.Ltmp4:
.LBB0_2:
	.loc	2 0 16 is_stmt 0                ; standard.py:0:16
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr127
.LBB0_3:                                ; %Flow627
	s_load_b128 s[36:39], s[0:1], 0x40
	s_load_b64 s[40:41], s[4:5], 0x0
	s_load_b64 s[42:43], s[6:7], 0x0
	v_dual_mov_b32 v42, 0 :: v_dual_and_b32 v181, 15, v180
	v_dual_mov_b32 v41, 0 :: v_dual_and_b32 v182, 0xf0, v180
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v221, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v118, 0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v24, 5, v180
	s_clause 0x2
	s_load_b64 s[4:5], s[0:1], 0x20
	s_load_b256 s[24:31], s[0:1], 0x0
	s_load_b32 s48, s[0:1], 0x58
	v_dual_mov_b32 v210, 0 :: v_dual_and_b32 v25, 0xe0, v180
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v0, s0, s34, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s35, 0, s0
	v_add_co_u32 v14, s0, s34, v181
	v_add_co_u32 v2, vcc_lo, v0, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, 0, v1, vcc_lo
	v_add_co_u32 v4, vcc_lo, v0, 16
	v_add_co_ci_u32_e64 v5, null, 0, v1, vcc_lo
	v_add_co_u32 v6, vcc_lo, v0, 24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, 0, v1, vcc_lo
	v_add_co_u32 v8, vcc_lo, v0, 32
	v_add_co_ci_u32_e64 v9, null, 0, v1, vcc_lo
	v_add_co_u32 v10, vcc_lo, v0, 40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v11, null, 0, v1, vcc_lo
	v_add_co_u32 v12, vcc_lo, v0, 48
	v_add_co_ci_u32_e64 v15, null, s35, 0, s0
	v_add_co_ci_u32_e64 v13, null, 0, v1, vcc_lo
	v_add_co_u32 v16, vcc_lo, v0, 56
	v_add_co_ci_u32_e64 v17, null, 0, v1, vcc_lo
	v_add_co_u32 v18, vcc_lo, v14, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, 0, v15, vcc_lo
	v_add_co_u32 v20, vcc_lo, v14, 32
	v_add_co_ci_u32_e64 v21, null, 0, v15, vcc_lo
	v_add_co_u32 v22, vcc_lo, v14, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v23, null, 0, v15, vcc_lo
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[40:41], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s11, s[42:43], v[0:1]
	v_dual_mov_b32 v128, 0 :: v_dual_lshlrev_b32 v1, 1, v180
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_add_u32 s46, s4, s2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[40:41], v[2:3]
	v_cmp_le_i64_e64 s2, s[40:41], v[6:7]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[42:43], v[2:3]
	v_cmp_gt_i64_e64 s14, s[42:43], v[6:7]
	v_bfe_i32 v2, v180, 7, 1
	v_dual_mov_b32 v221, 0 :: v_dual_and_b32 v6, 24, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[40:41], v[14:15]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s19, s[42:43], v[14:15]
	v_dual_mov_b32 v115, 0 :: v_dual_add_nc_u32 v14, s34, v24
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_addc_u32 s47, s5, s3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[40:41], v[4:5]
	v_cmp_le_i64_e64 s3, s[40:41], v[8:9]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s13, s[42:43], v[4:5]
	v_cmp_gt_i64_e64 s15, s[42:43], v[8:9]
	v_dual_mov_b32 v204, 0 :: v_dual_and_b32 v5, 0x7f, v180
	v_dual_mov_b32 v207, 0 :: v_dual_and_b32 v2, 0x88, v2
	v_lshl_or_b32 v8, v181, 5, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[40:41], v[16:17]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s18, s[42:43], v[16:17]
	v_dual_mov_b32 v200, 0 :: v_dual_add_nc_u32 v15, 8, v14
	v_mul_lo_u32 v16, v14, s48
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[40:41], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s17, s[42:43], v[12:13]
	v_xor_b32_e32 v2, v2, v5
	v_lshl_or_b32 v12, v25, 4, v8
	v_mul_lo_u32 v15, v15, s48
	v_mov_b32_e32 v111, 0
	v_dual_mov_b32 v134, 0 :: v_dual_add_nc_u32 v17, 24, v14
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_clause 0x5                            ; 24-byte Folded Spill
	scratch_store_b32 off, v2, off offset:260
	scratch_store_b32 off, v12, off offset:264
	scratch_store_b32 off, v16, off offset:268
	scratch_store_b32 off, v8, off offset:256
	scratch_store_b32 off, v15, off offset:272
	scratch_store_b32 off, v180, off offset:584
	v_add_nc_u32_e32 v16, 16, v14
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s53, s3, s15
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s3, s[46:47], 0x0
	v_mov_b32_e32 v110, 0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s8, s[40:41], v[18:19]
	v_mul_lo_u32 v15, v16, s48
	scratch_store_b32 off, v181, off offset:588 ; 4-byte Folded Spill
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s20, s[42:43], v[18:19]
	v_dual_mov_b32 v99, 0 :: v_dual_add_nc_u32 v18, 48, v14
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[40:41], v[10:11]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s16, s[42:43], v[10:11]
	v_mov_b32_e32 v113, 0
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	scratch_store_b32 off, v15, off offset:276 ; 4-byte Folded Spill
	v_mul_lo_u32 v15, v17, s48
	scratch_store_b32 off, v182, off offset:592 ; 4-byte Folded Spill
	v_dual_mov_b32 v108, 0 :: v_dual_add_nc_u32 v17, 40, v14
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s9, s[40:41], v[20:21]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s21, s[42:43], v[20:21]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s54, s4, s16
	s_and_b32 s49, vcc_lo, s11
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	scratch_store_b32 off, v15, off offset:280 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v15, 32, v14
	v_add_nc_u32_e32 v14, 56, v14
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s4, s44, s3
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s19
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_lshl_b32 s7, s4, 1
	v_mul_lo_u32 v15, v15, s48
	v_mul_lo_u32 v14, v14, s48
	s_or_b32 s7, s7, 1
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v0, s34, v181
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s51, s1, s13
	s_and_b32 s1, s9, s21
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_mul_i32 s7, s33, s7
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v15, off offset:284
	scratch_store_b32 off, v14, off offset:296
	v_mul_lo_u32 v15, v17, s48
	s_lshl_b32 s9, s55, 8
	s_mul_i32 s4, s4, s33
	v_add3_u32 v16, s7, s9, v180
	s_lshl_b32 s7, s3, 1
	s_lshl_b32 s4, s4, 1
	s_or_b32 s7, s7, 1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s10, s[40:41], v[22:23]
	scratch_store_b32 off, v15, off offset:288 ; 4-byte Folded Spill
	v_mul_lo_u32 v15, v18, s48
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s22, s[42:43], v[22:23]
	v_dual_mov_b32 v211, 0 :: v_dual_add_nc_u32 v4, 32, v0
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	v_add3_u32 v14, s4, s9, v180
	s_mul_i32 s4, s33, s7
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s52, s2, s14
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mul_lo_u32 v4, s44, v4
	scratch_store_b32 off, v15, off offset:292 ; 4-byte Folded Spill
	v_add3_u32 v15, s4, s9, v24
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, s10, s22
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_lshl_b32 s10, s23, 8
	v_dual_mov_b32 v80, 0 :: v_dual_add_nc_u32 v7, 48, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_subrev_nc_u32_e32 v15, s10, v15
	v_dual_mov_b32 v206, 0 :: v_dual_add_nc_u32 v3, 16, v0
	v_mul_lo_u32 v0, s44, v0
	v_mul_lo_u32 v7, s44, v7
	v_dual_mov_b32 v107, 0 :: v_dual_lshlrev_b32 v28, 1, v4
	v_dual_mov_b32 v105, 0 :: v_dual_add_nc_u32 v4, 0xf8, v15
	v_subrev_nc_u32_e32 v14, s10, v14
	v_mov_b32_e32 v98, 0
	v_dual_mov_b32 v65, 0 :: v_dual_lshlrev_b32 v30, 1, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v0, s48, v4
	v_dual_mov_b32 v104, 0 :: v_dual_lshlrev_b32 v27, 1, v7
	v_add_nc_u32_e32 v7, 0xf0, v15
	v_dual_mov_b32 v109, 0 :: v_dual_lshlrev_b32 v26, 1, v14
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v14, 0xe8, v15
	scratch_store_b32 off, v0, off offset:300 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s48, v7
	v_mul_lo_u32 v3, s44, v3
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v4, 0xd0, v15
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v7, 0xc8, v15
	scratch_store_b32 off, v0, off offset:304 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s48, v14
	v_dual_mov_b32 v90, 0 :: v_dual_lshlrev_b32 v29, 1, v3
	v_add_nc_u32_e32 v3, 0xd8, v15
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v14, 0xc0, v15
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v64, 0
	scratch_store_b32 off, v0, off offset:308 ; 4-byte Folded Spill
	v_dual_mov_b32 v183, 0 :: v_dual_add_nc_u32 v0, 0xe0, v15
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v37, 0
	v_mov_b32_e32 v58, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v0, s48, v0
	v_mov_b32_e32 v119, 0
	s_mul_i32 s3, s33, s3
	v_xor_b32_e32 v5, 8, v8
	s_lshl_b32 s3, s3, 1
	v_xor_b32_e32 v6, 16, v8
	v_xor_b32_e32 v8, 24, v8
	v_xor_b32_e32 v9, 8, v12
	scratch_store_b32 off, v0, off offset:312 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s48, v3
	v_dual_mov_b32 v184, 0 :: v_dual_add_nc_u32 v3, 0xb0, v15
	v_dual_mov_b32 v35, 0 :: v_dual_lshlrev_b32 v10, 5, v180
	v_xor_b32_e32 v11, 16, v12
	v_xor_b32_e32 v12, 24, v12
	v_dual_mov_b32 v202, 0 :: v_dual_lshlrev_b32 v13, 2, v182
	scratch_store_b32 off, v0, off offset:316 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s48, v4
	v_dual_mov_b32 v59, 0 :: v_dual_add_nc_u32 v4, 0xa8, v15
	v_dual_mov_b32 v203, 0 :: v_dual_and_b32 v10, 32, v10
	v_xor_b32_e32 v2, 0x110, v2
	v_mov_b32_e32 v121, 0
	v_dual_mov_b32 v114, 0 :: v_dual_and_b32 v1, 28, v1
	scratch_store_b32 off, v0, off offset:320 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s48, v7
	v_add_nc_u32_e32 v7, 0xa0, v15
	v_add3_u32 v10, 0, v13, v10
	v_dual_mov_b32 v118, 0 :: v_dual_lshlrev_b32 v13, 1, v182
	v_subrev_nc_u32_e32 v16, s10, v16
	v_dual_mov_b32 v34, 0 :: v_dual_and_b32 v127, 31, v180
	scratch_store_b32 off, v0, off offset:324 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s48, v14
	v_add_nc_u32_e32 v14, 0x98, v15
	v_dual_mov_b32 v100, 0 :: v_dual_lshlrev_b32 v23, 1, v16
	v_dual_mov_b32 v106, 0 :: v_dual_add_nc_u32 v213, 0, v2
	v_dual_mov_b32 v52, 0 :: v_dual_add_nc_u32 v101, 0, v13
	v_mov_b32_e32 v54, 0
	scratch_store_b32 off, v0, off offset:328 ; 4-byte Folded Spill
	v_dual_mov_b32 v215, 0 :: v_dual_add_nc_u32 v0, 0xb8, v15
	v_dual_mov_b32 v188, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v81, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v0, s48, v0
	v_mov_b32_e32 v88, 0
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v91, 0
	scratch_store_b32 off, v0, off offset:332 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s48, v3
	v_add_nc_u32_e32 v3, 0x88, v15
	v_mov_b32_e32 v131, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v79, 0
	v_mov_b32_e32 v61, 0
	scratch_store_b32 off, v0, off offset:336 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s48, v4
	v_add_nc_u32_e32 v4, 0x80, v15
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v216, 0
	scratch_store_b32 off, v0, off offset:340 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s48, v7
	v_dual_mov_b32 v36, 0 :: v_dual_add_nc_u32 v7, 0x78, v15
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	scratch_store_b32 off, v0, off offset:344 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s48, v14
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v14, 0x70, v15
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v97, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s50, s0, s12
	s_and_b32 s6, s6, s18
	.loc	1 1135 19                       ; ragged.py:1135:19
	scratch_store_b32 off, v0, off offset:348 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0x90, v15
	v_mov_b32_e32 v38, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s8, s20
	s_and_b32 s25, s25, 0xffff
	v_mov_b32_e32 v120, 0
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_mul_lo_u32 v0, s48, v0
	s_mov_b32 s19, 0x31027000
	v_mov_b32_e32 v95, 0
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s27, s27, 0xffff
	s_and_b32 s29, s29, 0xffff
	s_and_b32 s31, s31, 0xffff
	v_mov_b32_e32 v122, 0
	scratch_store_b32 off, v0, off offset:352 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s48, v3
	v_add_nc_u32_e32 v3, 0x60, v15
	s_mov_b32 s8, 0
	v_mov_b32_e32 v83, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s5, s5, s17
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_lshl_b32 s7, s33, 2
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	scratch_store_b32 off, v0, off offset:356 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s48, v4
	v_add_nc_u32_e32 v4, 0x58, v15
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	s_mov_b32 s16, s24
	s_mov_b32 s17, s25
	s_mov_b32 s20, s26
	scratch_store_b32 off, v0, off offset:360 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s48, v7
	v_add_nc_u32_e32 v7, 0x50, v15
	s_mov_b32 s21, s27
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_mov_b32 s24, s28
	s_mov_b32 s25, s29
	s_mov_b32 s26, s18
	scratch_store_b32 off, v0, off offset:364 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s48, v14
	v_add_nc_u32_e32 v14, 0x48, v15
	v_mov_b32_e32 v60, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v197, 0
	s_mov_b32 s27, s19
	s_mov_b32 s28, s30
	s_mov_b32 s29, s31
	scratch_store_b32 off, v0, off offset:368 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0x68, v15
	s_mov_b32 s30, s18
	s_mov_b32 s31, s19
	v_mov_b32_e32 v62, 0
	v_mov_b32_e32 v130, 0
	v_mul_lo_u32 v0, s48, v0
	v_mov_b32_e32 v195, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v125, 0
	scratch_store_b32 off, v0, off offset:372 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s48, v3
	v_dual_mov_b32 v194, 0 :: v_dual_add_nc_u32 v3, 56, v15
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v196, 0
	v_mov_b32_e32 v94, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v3, s48, v3
	v_mov_b32_e32 v77, 0
	scratch_store_b32 off, v0, off offset:376 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s48, v4
	v_add_nc_u32_e32 v4, 48, v15
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v69, 0
	v_mov_b32_e32 v78, 0
	scratch_store_b32 off, v3, off offset:396 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s48, v4
	v_add_nc_u32_e32 v4, 24, v15
	scratch_store_b32 off, v0, off offset:380 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s48, v7
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v7, 40, v15
	v_mul_lo_u32 v4, s48, v4
	v_mov_b32_e32 v67, 0
	scratch_store_b32 off, v3, off offset:400 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s48, v7
	v_add_nc_u32_e32 v7, 16, v15
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, s48, v14
	v_add_nc_u32_e32 v14, 8, v15
	scratch_store_b32 off, v4, off offset:412 ; 4-byte Folded Spill
	v_mul_lo_u32 v4, s48, v7
	v_mov_b32_e32 v68, 0
	scratch_store_b32 off, v3, off offset:404 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 32, v15
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v191, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v3, s48, v3
	scratch_store_b32 off, v0, off offset:388 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 64, v15
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v189, 0
	v_mov_b32_e32 v116, 0
	v_mov_b32_e32 v124, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v0, s48, v0
	scratch_store_b32 off, v3, off offset:408 ; 4-byte Folded Spill
	v_mov_b32_e32 v117, 0
	v_mov_b32_e32 v51, 0
	v_mov_b32_e32 v53, 0
	v_mov_b32_e32 v187, 0
	v_mov_b32_e32 v43, 0
	v_mov_b32_e32 v45, 0
	scratch_store_b32 off, v0, off offset:392 ; 4-byte Folded Spill
	v_add3_u32 v0, s3, s9, v24
	s_mov_b32 s9, s8
	v_mov_b32_e32 v103, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_subrev_nc_u32_e32 v0, s10, v0
	s_mov_b32 s10, s8
	v_add_nc_u32_e32 v3, 0xf8, v0
	v_add_nc_u32_e32 v7, 0xe0, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_lo_u32 v3, s48, v3
	scratch_store_b32 off, v4, off offset:416 ; 4-byte Folded Spill
	v_mul_lo_u32 v4, s48, v14
	v_add_nc_u32_e32 v14, 0xd8, v0
	scratch_store_b32 off, v3, off offset:428 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0xf0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_lo_u32 v3, s48, v3
	scratch_store_b32 off, v4, off offset:420 ; 4-byte Folded Spill
	v_mul_lo_u32 v4, s48, v15
	v_add_nc_u32_e32 v15, 0xd0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:432
	scratch_store_b32 off, v4, off offset:424
	v_add_nc_u32_e32 v4, 0xe8, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_lo_u32 v3, s48, v4
	v_add_nc_u32_e32 v4, 0xc0, v0
	scratch_store_b32 off, v3, off offset:436 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s48, v7
	v_add_nc_u32_e32 v7, 0xb8, v0
	scratch_store_b32 off, v3, off offset:440 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s48, v14
	v_add_nc_u32_e32 v14, 0xb0, v0
	scratch_store_b32 off, v3, off offset:444 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s48, v15
	v_add_nc_u32_e32 v15, 0xa8, v0
	scratch_store_b32 off, v3, off offset:448 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0xc8, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_lo_u32 v3, s48, v3
	scratch_store_b32 off, v3, off offset:452 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s48, v4
	v_add_nc_u32_e32 v4, 0x98, v0
	scratch_store_b32 off, v3, off offset:456 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s48, v7
	v_add_nc_u32_e32 v7, 0x90, v0
	scratch_store_b32 off, v3, off offset:460 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s48, v14
	v_add_nc_u32_e32 v14, 0x88, v0
	scratch_store_b32 off, v3, off offset:464 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s48, v15
	v_add_nc_u32_e32 v15, 0x80, v0
	scratch_store_b32 off, v3, off offset:468 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0xa0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_lo_u32 v3, s48, v3
	scratch_store_b32 off, v3, off offset:472 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s48, v4
	v_add_nc_u32_e32 v4, 0x70, v0
	scratch_store_b32 off, v3, off offset:476 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s48, v7
	v_add_nc_u32_e32 v7, 0x68, v0
	scratch_store_b32 off, v3, off offset:480 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s48, v14
	v_add_nc_u32_e32 v14, 0x60, v0
	scratch_store_b32 off, v3, off offset:484 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s48, v15
	v_add_nc_u32_e32 v15, 0x58, v0
	scratch_store_b32 off, v3, off offset:488 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0x78, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_lo_u32 v3, s48, v3
	scratch_store_b32 off, v3, off offset:492 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s48, v4
	v_add_nc_u32_e32 v4, 0x48, v0
	scratch_store_b32 off, v3, off offset:496 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s48, v7
	v_add_nc_u32_e32 v7, 64, v0
	scratch_store_b32 off, v3, off offset:500 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s48, v14
	v_add_nc_u32_e32 v14, 56, v0
	scratch_store_b32 off, v3, off offset:504 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s48, v15
	v_add_nc_u32_e32 v15, 48, v0
	scratch_store_b32 off, v3, off offset:508 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 0x50, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_lo_u32 v3, s48, v3
	scratch_store_b32 off, v3, off offset:512 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s48, v4
	v_add_nc_u32_e32 v4, 32, v0
	scratch_store_b32 off, v3, off offset:516 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s48, v7
	v_add_nc_u32_e32 v7, 24, v0
	scratch_store_b32 off, v3, off offset:520 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s48, v14
	v_add_nc_u32_e32 v14, 16, v0
	scratch_store_b32 off, v3, off offset:524 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s48, v15
	v_add_nc_u32_e32 v15, 8, v0
	scratch_store_b32 off, v3, off offset:528 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v3, 40, v0
	v_mul_lo_u32 v0, s48, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_lo_u32 v3, s48, v3
	scratch_store_b32 off, v0, off offset:552 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v5
	scratch_store_b32 off, v3, off offset:532 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s48, v4
	scratch_store_b32 off, v0, off offset:556 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v6
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:560
	scratch_store_b32 off, v3, off offset:536
	v_mul_lo_u32 v3, s48, v7
	v_add_nc_u32_e32 v0, 0, v8
	scratch_store_b32 off, v0, off offset:564 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v9
	scratch_store_b32 off, v3, off offset:540 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s48, v14
	scratch_store_b32 off, v0, off offset:568 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v11
	scratch_store_b32 off, v3, off offset:544 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s48, v15
	scratch_store_b32 off, v0, off offset:572 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v12
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:576
	scratch_store_b32 off, v3, off offset:548
	v_add_nc_u32_e32 v0, v10, v1
	scratch_store_b32 off, v0, off offset:580 ; 4-byte Folded Spill
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	scratch_load_b32 v4, off, off offset:536 ; 4-byte Folded Reload
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v37, off offset:252
	scratch_store_b32 off, v30, off offset:248
	scratch_store_b32 off, v29, off offset:244
	scratch_store_b32 off, v28, off offset:240
	scratch_store_b32 off, v27, off offset:236
	scratch_store_b32 off, v26, off offset:232
	scratch_store_b32 off, v23, off offset:228
	scratch_store_b32 off, v211, off offset:224
	scratch_store_b32 off, v210, off offset:220
	scratch_store_b32 off, v41, off offset:216
	scratch_store_b32 off, v34, off offset:212
	scratch_store_b32 off, v68, off offset:208
	scratch_store_b32 off, v205, off offset:204
	scratch_store_b32 off, v35, off offset:200
	scratch_store_b32 off, v69, off offset:196
	scratch_store_b32 off, v47, off offset:192
	scratch_store_b32 off, v56, off offset:188
	scratch_store_b32 off, v57, off offset:184
	scratch_store_b32 off, v59, off offset:180
	scratch_store_b32 off, v134, off offset:176
	scratch_store_b32 off, v58, off offset:172
	scratch_store_b32 off, v103, off offset:168
	scratch_store_b32 off, v129, off offset:164
	scratch_store_b32 off, v39, off offset:160
	scratch_store_b32 off, v40, off offset:156
	scratch_store_b32 off, v38, off offset:152
	scratch_store_b32 off, v70, off offset:148
	scratch_store_b32 off, v65, off offset:144
	scratch_store_b32 off, v82, off offset:140
	scratch_store_b32 off, v66, off offset:136
	scratch_store_b32 off, v198, off offset:132
	scratch_store_b32 off, v48, off offset:128
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v201, off offset:124
	scratch_store_b32 off, v33, off offset:120
	scratch_store_b32 off, v49, off offset:116
	scratch_store_b32 off, v88, off offset:112
	scratch_store_b32 off, v81, off offset:108
	scratch_store_b32 off, v67, off offset:104
	scratch_store_b32 off, v126, off offset:100
	scratch_store_b32 off, v60, off offset:96
	scratch_store_b32 off, v119, off offset:92
	scratch_store_b32 off, v50, off offset:88
	scratch_store_b32 off, v120, off offset:84
	scratch_store_b32 off, v121, off offset:80
	scratch_store_b32 off, v100, off offset:76
	scratch_store_b32 off, v122, off offset:72
	scratch_store_b32 off, v51, off offset:68
	scratch_store_b32 off, v61, off offset:64
	scratch_store_b32 off, v62, off offset:60
	scratch_store_b32 off, v102, off offset:56
	scratch_store_b32 off, v52, off offset:52
	scratch_store_b32 off, v117, off offset:48
	scratch_store_b32 off, v63, off offset:44
	scratch_store_b32 off, v53, off offset:40
	scratch_store_b32 off, v55, off offset:36
	scratch_store_b32 off, v79, off offset:32
	scratch_store_b32 off, v54, off offset:28
	scratch_store_b32 off, v64, off offset:24
	scratch_store_b32 off, v132, off offset:20
	scratch_store_b32 off, v199, off offset:16
	scratch_store_b32 off, v91, off offset:12
	scratch_store_b32 off, v93, off offset:8
	scratch_store_b32 off, v71, off offset:4
	scratch_store_b32 off, v209, off
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v3, off, off offset:540
	scratch_load_b32 v2, off, off offset:544
	scratch_load_b32 v1, off, off offset:548
	scratch_load_b32 v0, off, off offset:552
	v_cmp_gt_i32_e64 s3, s48, v127
	v_mov_b32_e32 v119, v112
	v_mov_b32_e32 v147, v204
	v_mov_b32_e32 v117, v76
	v_mov_b32_e32 v208, v192
	s_and_b32 s4, s49, s3
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_add_i32 s44, s44, -1
	v_dual_mov_b32 v122, v43 :: v_dual_mov_b32 v129, v78
	v_dual_mov_b32 v112, v45 :: v_dual_mov_b32 v103, v110
	v_mov_b32_e32 v120, v89
	v_mov_b32_e32 v102, v75
	v_mov_b32_e32 v126, v77
	v_mov_b32_e32 v110, v106
	v_mov_b32_e32 v106, v104
	v_mov_b32_e32 v104, v94
	v_dual_mov_b32 v96, v87 :: v_dual_mov_b32 v87, v73
	.loc	1 1161 31 is_stmt 1             ; ragged.py:1161:31
	v_dual_mov_b32 v142, s15 :: v_dual_mov_b32 v137, s10
	v_mov_b32_e32 v139, s12
	v_mov_b32_e32 v141, s14
	v_mov_b32_e32 v135, s8
	v_dual_mov_b32 v133, v185 :: v_dual_mov_b32 v140, s13
	v_dual_mov_b32 v255, v187 :: v_dual_mov_b32 v138, s11
	v_dual_mov_b32 v136, s9 :: v_dual_mov_b32 v93, v189
	v_mov_b32_e32 v254, v186
	v_dual_mov_b32 v132, v107 :: v_dual_mov_b32 v107, v90
	v_mov_b32_e32 v90, v116
	v_dual_mov_b32 v116, v188 :: v_dual_mov_b32 v143, v131
	v_dual_mov_b32 v134, v42 :: v_dual_mov_b32 v145, v80
	v_mov_b32_e32 v121, v44
	v_dual_mov_b32 v91, v124 :: v_dual_mov_b32 v124, v123
	v_dual_mov_b32 v123, v190 :: v_dual_mov_b32 v100, v36
	v_dual_mov_b32 v131, v86 :: v_dual_mov_b32 v86, v125
	v_mov_b32_e32 v89, v46
	v_mov_b32_e32 v125, v191
	v_dual_mov_b32 v148, v195 :: v_dual_mov_b32 v81, v105
	v_mov_b32_e32 v82, v98
	v_dual_mov_b32 v105, v194 :: v_dual_mov_b32 v94, v72
	v_mov_b32_e32 v98, v197
	v_dual_mov_b32 v144, v99 :: v_dual_mov_b32 v99, v200
	v_mov_b32_e32 v80, v202
	s_waitcnt vmcnt(4)
	v_dual_mov_b32 v146, v203 :: v_dual_add_nc_u32 v5, v4, v127
	scratch_load_b32 v4, off, off offset:532 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v6, v4, v127
	scratch_load_b32 v4, off, off offset:528 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v7, v4, v127
	scratch_load_b32 v4, off, off offset:524 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v8, v4, v127
	scratch_load_b32 v4, off, off offset:520 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, v4, v127
	scratch_load_b32 v4, off, off offset:516 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, v4, v127
	scratch_load_b32 v4, off, off offset:512 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v11, v4, v127
	scratch_load_b32 v4, off, off offset:508 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v12, v4, v127
	scratch_load_b32 v4, off, off offset:504 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v12, 0x80000000, v12, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, v4, v127
	scratch_load_b32 v4, off, off offset:500 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v13, 0x80000000, v13, s3
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v43, v13, s[20:23], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v14, v4, v127
	scratch_load_b32 v4, off, off offset:496 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v14, 0x80000000, v14, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v15, v4, v127
	scratch_load_b32 v4, off, off offset:492 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v15, 0x80000000, v15, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v16, v4, v127
	scratch_load_b32 v4, off, off offset:488 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v16, 0x80000000, v16, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, v4, v127
	scratch_load_b32 v4, off, off offset:484 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v18, v4, v127
	scratch_load_b32 v4, off, off offset:480 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v19, v4, v127
	scratch_load_b32 v4, off, off offset:476 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v20, v4, v127
	scratch_load_b32 v4, off, off offset:472 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, v4, v127
	scratch_load_b32 v4, off, off offset:468 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v22, v4, v127
	scratch_load_b32 v4, off, off offset:464 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v23, v4, v127
	scratch_load_b32 v4, off, off offset:460 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v24, v4, v127
	scratch_load_b32 v4, off, off offset:456 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v24, 0x80000000, v24, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, v4, v127
	scratch_load_b32 v4, off, off offset:452 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v26, v4, v127
	scratch_load_b32 v4, off, off offset:448 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v27, v4, v127
	scratch_load_b32 v4, off, off offset:444 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v27, 0x80000000, v27, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v28, v4, v127
	scratch_load_b32 v4, off, off offset:440 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v28, 0x80000000, v28, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v29, v4, v127
	scratch_load_b32 v4, off, off offset:436 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v29, 0x80000000, v29, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v30, v4, v127
	scratch_load_b32 v4, off, off offset:432 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v30, 0x80000000, v30, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v31, v4, v127
	scratch_load_b32 v4, off, off offset:428 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v31, 0x80000000, v31, s3
	s_clause 0xa
	buffer_load_u8 v44, v15, s[20:23], 0 offen
	buffer_load_u8 v17, v17, s[20:23], 0 offen
	buffer_load_u8 v19, v19, s[20:23], 0 offen
	buffer_load_u8 v21, v21, s[20:23], 0 offen
	buffer_load_u8 v23, v23, s[20:23], 0 offen
	buffer_load_u8 v25, v25, s[20:23], 0 offen
	buffer_load_u8 v27, v27, s[20:23], 0 offen
	buffer_load_u8 v29, v29, s[20:23], 0 offen
	buffer_load_u8 v31, v31, s[20:23], 0 offen
	buffer_load_u8 v8, v8, s[20:23], 0 offen
	buffer_load_u8 v6, v6, s[20:23], 0 offen
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v32, v4, v127
	scratch_load_b32 v4, off, off offset:268 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v3, v3, v127
	v_cndmask_b32_e64 v32, 0x80000000, v32, s3
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	buffer_load_u8 v45, v3, s[20:23], 0 offen
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v33, v4, v127
	scratch_load_b32 v4, off, off offset:272 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v2, v2, v127
	v_cndmask_b32_e64 v33, 0x80000000, v33, s4
	s_and_b32 s4, s50, s3
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	s_clause 0x4
	buffer_load_u8 v42, v2, s[20:23], 0 offen
	buffer_load_u8 v5, v5, s[20:23], 0 offen
	buffer_load_u8 v7, v7, s[20:23], 0 offen
	buffer_load_u8 v9, v9, s[20:23], 0 offen
	buffer_load_u8 v11, v11, s[20:23], 0 offen
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v34, v4, v127
	scratch_load_b32 v4, off, off offset:276 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v1, v1, v127
	v_cndmask_b32_e64 v34, 0x80000000, v34, s4
	s_and_b32 s4, s51, s3
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	s_clause 0xc
	buffer_load_u8 v46, v1, s[20:23], 0 offen
	buffer_load_u8 v63, v16, s[20:23], 0 offen
	buffer_load_u8 v64, v14, s[20:23], 0 offen
	buffer_load_u8 v12, v12, s[20:23], 0 offen
	buffer_load_u8 v10, v10, s[20:23], 0 offen
	buffer_load_u8 v24, v24, s[20:23], 0 offen
	buffer_load_u8 v22, v22, s[20:23], 0 offen
	buffer_load_u8 v20, v20, s[20:23], 0 offen
	buffer_load_u8 v18, v18, s[20:23], 0 offen
	buffer_load_u8 v32, v32, s[20:23], 0 offen
	buffer_load_u8 v30, v30, s[20:23], 0 offen
	buffer_load_u8 v28, v28, s[20:23], 0 offen
	buffer_load_u8 v26, v26, s[20:23], 0 offen
	s_waitcnt vmcnt(13)
	v_add_nc_u32_e32 v35, v4, v127
	scratch_load_b32 v4, off, off offset:280 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v0, v0, v127
	v_cndmask_b32_e64 v35, 0x80000000, v35, s4
	s_and_b32 s4, s52, s3
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v36, v4, v127
	scratch_load_b32 v4, off, off offset:284 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v36, 0x80000000, v36, s4
	s_and_b32 s4, s53, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, v4, v127
	scratch_load_b32 v4, off, off offset:288 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v37, 0x80000000, v37, s4
	s_and_b32 s4, s54, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, v4, v127
	scratch_load_b32 v4, off, off offset:292 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v38, 0x80000000, v38, s4
	s_and_b32 s4, s5, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, v4, v127
	scratch_load_b32 v4, off, off offset:296 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v39, 0x80000000, v39, s4
	s_and_b32 s4, s6, s3
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s44, 0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v40, v4, v127
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v40, 0x80000000, v40, s4
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v33, v33, s[16:19], 0 offen
	buffer_load_u8 v35, v35, s[16:19], 0 offen
	buffer_load_u8 v37, v37, s[16:19], 0 offen
	buffer_load_u8 v39, v39, s[16:19], 0 offen
	buffer_load_u8 v40, v40, s[16:19], 0 offen
	buffer_load_u8 v38, v38, s[16:19], 0 offen
	buffer_load_u8 v36, v36, s[16:19], 0 offen
	buffer_load_u8 v34, v34, s[16:19], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v41, v0, s[20:23], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, 0, v0
	ds_store_b8 v71, v33
	ds_store_b8 v71, v35 offset:512
	ds_store_b8 v71, v37 offset:1024
	ds_store_b8 v71, v39 offset:1536
	ds_store_b8 v213, v34
	ds_store_b8 v213, v36 offset:512
	ds_store_b8 v213, v38 offset:1024
	ds_store_b8 v213, v40 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:256
	scratch_load_b32 v4, off, off offset:556
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[217:220], v4 offset1:1
	ds_load_2addr_stride64_b64 v[209:212], v4 offset0:2 offset1:3
	scratch_load_b32 v4, off, off offset:560 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[51:54], v4 offset1:1
	ds_load_2addr_stride64_b64 v[47:50], v4 offset0:2 offset1:3
	scratch_load_b32 v4, off, off offset:564 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v0, 0, v0
	ds_load_2addr_stride64_b64 v[13:16], v0 offset1:1
	ds_load_2addr_stride64_b64 v[0:3], v0 offset0:2 offset1:3
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[59:62], v4 offset1:1
	ds_load_2addr_stride64_b64 v[55:58], v4 offset0:2 offset1:3
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v4, off, off offset:424 ; 4-byte Folded Reload
	ds_store_b8 v71, v41
	ds_store_b8 v71, v42 offset:512
	ds_store_b8 v71, v5 offset:1024
	ds_store_b8 v71, v7 offset:1536
	ds_store_b8 v71, v9 offset:2048
	ds_store_b8 v71, v11 offset:2560
	ds_store_b8 v71, v43 offset:3072
	ds_store_b8 v71, v44 offset:3584
	ds_store_b8 v71, v17 offset:4096
	ds_store_b8 v71, v19 offset:4608
	ds_store_b8 v71, v21 offset:5120
	ds_store_b8 v71, v23 offset:5632
	ds_store_b8 v71, v25 offset:6144
	ds_store_b8 v71, v27 offset:6656
	ds_store_b8 v71, v29 offset:7168
	ds_store_b8 v71, v31 offset:7680
	ds_store_b8 v213, v46
	ds_store_b8 v213, v45 offset:512
	ds_store_b8 v213, v6 offset:1024
	ds_store_b8 v213, v8 offset:1536
	ds_store_b8 v213, v10 offset:2048
	ds_store_b8 v213, v12 offset:2560
	ds_store_b8 v213, v64 offset:3072
	ds_store_b8 v213, v63 offset:3584
	ds_store_b8 v213, v18 offset:4096
	ds_store_b8 v213, v20 offset:4608
	ds_store_b8 v213, v22 offset:5120
	ds_store_b8 v213, v24 offset:5632
	ds_store_b8 v213, v26 offset:6144
	ds_store_b8 v213, v28 offset:6656
	ds_store_b8 v213, v30 offset:7168
	ds_store_b8 v213, v32 offset:7680
	v_mov_b32_e32 v79, v196
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v5, v4, v127
	scratch_load_b32 v4, off, off offset:420 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v6, v4, v127
	scratch_load_b32 v4, off, off offset:416 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v7, v4, v127
	scratch_load_b32 v4, off, off offset:412 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v8, v4, v127
	scratch_load_b32 v4, off, off offset:408 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, v4, v127
	scratch_load_b32 v4, off, off offset:404 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v10, v4, v127
	scratch_load_b32 v4, off, off offset:400 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v11, v4, v127
	scratch_load_b32 v4, off, off offset:396 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v12, v4, v127
	scratch_load_b32 v4, off, off offset:392 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v12, 0x80000000, v12, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v17, v4, v127
	scratch_load_b32 v4, off, off offset:388 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v18, v4, v127
	scratch_load_b32 v4, off, off offset:384 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v19, v4, v127
	scratch_load_b32 v4, off, off offset:380 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v20, v4, v127
	scratch_load_b32 v4, off, off offset:376 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, v4, v127
	scratch_load_b32 v4, off, off offset:372 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v22, v4, v127
	scratch_load_b32 v4, off, off offset:368 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v23, v4, v127
	scratch_load_b32 v4, off, off offset:364 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v24, v4, v127
	scratch_load_b32 v4, off, off offset:360 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v24, 0x80000000, v24, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, v4, v127
	scratch_load_b32 v4, off, off offset:356 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v26, v4, v127
	scratch_load_b32 v4, off, off offset:352 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v26, 0x80000000, v26, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v27, v4, v127
	scratch_load_b32 v4, off, off offset:348 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v27, 0x80000000, v27, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v28, v4, v127
	scratch_load_b32 v4, off, off offset:344 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v28, 0x80000000, v28, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v29, v4, v127
	scratch_load_b32 v4, off, off offset:340 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v29, 0x80000000, v29, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v30, v4, v127
	scratch_load_b32 v4, off, off offset:336 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v30, 0x80000000, v30, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v31, v4, v127
	scratch_load_b32 v4, off, off offset:332 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v31, 0x80000000, v31, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v32, v4, v127
	scratch_load_b32 v4, off, off offset:328 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v32, 0x80000000, v32, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, v4, v127
	scratch_load_b32 v4, off, off offset:324 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v33, 0x80000000, v33, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v34, v4, v127
	scratch_load_b32 v4, off, off offset:320 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v34, 0x80000000, v34, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v35, v4, v127
	scratch_load_b32 v4, off, off offset:316 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v35, 0x80000000, v35, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v36, v4, v127
	scratch_load_b32 v4, off, off offset:312 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v36, 0x80000000, v36, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v37, v4, v127
	scratch_load_b32 v4, off, off offset:308 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v37, 0x80000000, v37, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v38, v4, v127
	scratch_load_b32 v4, off, off offset:304 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v38, 0x80000000, v38, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v39, v4, v127
	scratch_load_b32 v4, off, off offset:300 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v165, off, off offset:572 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v39, 0x80000000, v39, s3
	scratch_load_b32 v88, off, off offset:576 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v40, v4, v127
	scratch_load_b32 v4, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v127, 32, v127
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(2)
	ds_load_2addr_stride64_b64 v[63:66], v165 offset1:8
	v_cndmask_b32_e64 v40, 0x80000000, v40, s3
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x1f
	buffer_load_u8 v41, v5, s[20:23], 0 offen
	buffer_load_u8 v42, v7, s[20:23], 0 offen
	buffer_load_u8 v9, v9, s[20:23], 0 offen
	buffer_load_u8 v11, v11, s[20:23], 0 offen
	buffer_load_u8 v17, v17, s[20:23], 0 offen
	buffer_load_u8 v19, v19, s[20:23], 0 offen
	buffer_load_u8 v21, v21, s[20:23], 0 offen
	buffer_load_u8 v23, v23, s[20:23], 0 offen
	buffer_load_u8 v25, v25, s[20:23], 0 offen
	buffer_load_u8 v27, v27, s[20:23], 0 offen
	buffer_load_u8 v29, v29, s[20:23], 0 offen
	buffer_load_u8 v31, v31, s[20:23], 0 offen
	buffer_load_u8 v33, v33, s[20:23], 0 offen
	buffer_load_u8 v35, v35, s[20:23], 0 offen
	buffer_load_u8 v37, v37, s[20:23], 0 offen
	buffer_load_u8 v39, v39, s[20:23], 0 offen
	buffer_load_u8 v12, v12, s[20:23], 0 offen
	buffer_load_u8 v10, v10, s[20:23], 0 offen
	buffer_load_u8 v43, v8, s[20:23], 0 offen
	buffer_load_u8 v44, v6, s[20:23], 0 offen
	buffer_load_u8 v24, v24, s[20:23], 0 offen
	buffer_load_u8 v22, v22, s[20:23], 0 offen
	buffer_load_u8 v20, v20, s[20:23], 0 offen
	buffer_load_u8 v18, v18, s[20:23], 0 offen
	buffer_load_u8 v32, v32, s[20:23], 0 offen
	buffer_load_u8 v30, v30, s[20:23], 0 offen
	buffer_load_u8 v28, v28, s[20:23], 0 offen
	buffer_load_u8 v26, v26, s[20:23], 0 offen
	buffer_load_u8 v40, v40, s[20:23], 0 offen
	buffer_load_u8 v38, v38, s[20:23], 0 offen
	buffer_load_u8 v36, v36, s[20:23], 0 offen
	buffer_load_u8 v34, v34, s[20:23], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(33)
	ds_load_2addr_stride64_b64 v[75:78], v88 offset1:8
	s_waitcnt vmcnt(32)
	v_add_nc_u32_e32 v45, 0, v4
	scratch_load_b32 v4, off, off offset:568 ; 4-byte Folded Reload
	ds_load_2addr_stride64_b64 v[5:8], v45 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[149:156], v[5:6], v[13:14], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[222:229], v[5:6], v[15:16], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[238:245], v[5:6], v[0:1], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[166:173], v[5:6], v[2:3], v[135:142] neg_lo:[1,1,0]
	v_mov_b32_e32 v6, v184
	v_wmma_i32_16x16x16_iu4 v[157:164], v[7:8], v[13:14], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[230:237], v[7:8], v[15:16], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[246:253], v[7:8], v[0:1], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[174:181], v[7:8], v[2:3], v[135:142] neg_lo:[1,1,0]
	v_mov_b32_e32 v5, v183
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[67:70], v4 offset1:8
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v71, v41
	ds_store_b8 v71, v42 offset:512
	ds_store_b8 v71, v9 offset:1024
	ds_store_b8 v71, v11 offset:1536
	ds_store_b8 v71, v17 offset:2048
	ds_store_b8 v71, v19 offset:2560
	ds_store_b8 v71, v21 offset:3072
	ds_store_b8 v71, v23 offset:3584
	ds_store_b8 v71, v25 offset:4096
	ds_store_b8 v71, v27 offset:4608
	ds_store_b8 v71, v29 offset:5120
	ds_store_b8 v71, v31 offset:5632
	ds_store_b8 v71, v33 offset:6144
	ds_store_b8 v71, v35 offset:6656
	ds_store_b8 v71, v37 offset:7168
	ds_store_b8 v71, v39 offset:7680
	ds_store_b8 v213, v44
	ds_store_b8 v213, v43 offset:512
	ds_store_b8 v213, v10 offset:1024
	ds_store_b8 v213, v12 offset:1536
	ds_store_b8 v213, v18 offset:2048
	ds_store_b8 v213, v20 offset:2560
	ds_store_b8 v213, v22 offset:3072
	ds_store_b8 v213, v24 offset:3584
	ds_store_b8 v213, v26 offset:4096
	ds_store_b8 v213, v28 offset:4608
	ds_store_b8 v213, v30 offset:5120
	ds_store_b8 v213, v32 offset:5632
	ds_store_b8 v213, v34 offset:6144
	ds_store_b8 v213, v36 offset:6656
	ds_store_b8 v213, v38 offset:7168
	ds_store_b8 v213, v40 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[71:74], v45 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[230:237], v[69:70], v[219:220], v[230:237] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[149:156], v[67:68], v[217:218], v[149:156] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[222:229], v[67:68], v[219:220], v[222:229] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[238:245], v[67:68], v[209:210], v[238:245] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[246:253], v[69:70], v[209:210], v[246:253] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[230:237], v[65:66], v[53:54], v[230:237] neg_lo:[1,1,0]
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[182:189], v[71:72], v[13:14], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[190:197], v[73:74], v[13:14], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[198:205], v[71:72], v[15:16], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[7:14], v[73:74], v[15:16], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[15:22], v[71:72], v[0:1], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[23:30], v[73:74], v[0:1], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[31:38], v[71:72], v[2:3], v[135:142] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[39:46], v[73:74], v[2:3], v[135:142] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[0:3], v4 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[166:173], v[67:68], v[211:212], v[166:173] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[230:237], v[77:78], v[61:62], v[230:237] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[157:164], v[69:70], v[217:218], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[174:181], v[69:70], v[211:212], v[174:181] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[149:156], v[63:64], v[51:52], v[149:156] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[222:229], v[63:64], v[53:54], v[222:229] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[238:245], v[63:64], v[47:48], v[238:245] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[246:253], v[65:66], v[47:48], v[246:253] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[166:173], v[63:64], v[49:50], v[166:173] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v64, v230
	v_cvt_f32_i32_e32 v68, v231
	v_cvt_f32_i32_e32 v69, v232
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[246:253], v[77:78], v[55:56], v[246:253] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v70, v233
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[157:164], v[65:66], v[51:52], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[174:181], v[65:66], v[49:50], v[174:181] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[238:245], v[75:76], v[55:56], v[238:245] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[149:156], v[75:76], v[59:60], v[149:156] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v66, v236
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[182:189], v[0:1], v[217:218], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[190:197], v[2:3], v[217:218], v[190:197] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[198:205], v[0:1], v[219:220], v[198:205] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[7:14], v[2:3], v[219:220], v[7:14] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[15:22], v[0:1], v[209:210], v[15:22] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[23:30], v[2:3], v[209:210], v[23:30] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[31:38], v[0:1], v[211:212], v[31:38] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[39:46], v[2:3], v[211:212], v[39:46] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[0:3], v165 offset1:8
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v210, v246
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[157:164], v[77:78], v[59:60], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[174:181], v[77:78], v[57:58], v[174:181] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v74, v240
	v_cvt_f32_i32_e32 v78, v244
	v_cvt_f32_i32_e32 v209, v245
	v_cvt_f32_i32_e32 v219, v248
	v_cvt_f32_i32_e32 v218, v247
	v_cvt_f32_i32_e32 v211, v251
	v_cvt_f32_i32_e32 v212, v252
	v_cvt_f32_i32_e32 v220, v249
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[222:229], v[75:76], v[61:62], v[222:229] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[166:173], v[75:76], v[57:58], v[166:173] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v75, v241
	v_cvt_f32_i32_e32 v77, v243
	v_cvt_f32_i32_e32 v217, v253
	v_cvt_f32_i32_e32 v63, v229
	v_cvt_f32_i32_e32 v67, v237
	v_cvt_f32_i32_e32 v72, v238
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[182:189], v[0:1], v[51:52], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[190:197], v[2:3], v[51:52], v[190:197] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[198:205], v[0:1], v[53:54], v[198:205] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[7:14], v[2:3], v[53:54], v[7:14] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[15:22], v[0:1], v[47:48], v[15:22] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[23:30], v[2:3], v[47:48], v[23:30] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[31:38], v[0:1], v[49:50], v[31:38] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[39:46], v[2:3], v[49:50], v[39:46] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[0:3], v88 offset1:8
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v47, v152
	v_cvt_f32_i32_e32 v48, v153
	v_cvt_f32_i32_e32 v50, v155
	v_cvt_f32_i32_e32 v51, v156
	v_cvt_f32_i32_e32 v49, v154
	v_cvt_f32_i32_e32 v52, v157
	v_cvt_f32_i32_e32 v73, v239
	v_cvt_f32_i32_e32 v65, v235
	v_cvt_f32_i32_e32 v4, v250
	v_cvt_f32_i32_e32 v54, v159
	v_cvt_f32_i32_e32 v76, v242
	v_cvt_f32_i32_e32 v165, v161
	v_cvt_f32_i32_e32 v166, v166
	v_cvt_f32_i32_e32 v167, v167
	v_cvt_f32_i32_e32 v168, v168
	v_cvt_f32_i32_e32 v169, v169
	v_cvt_f32_i32_e32 v53, v158
	v_cvt_f32_i32_e32 v170, v170
	v_cvt_f32_i32_e32 v171, v171
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[23:30], v[2:3], v[55:56], v[23:30] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[7:14], v[2:3], v[61:62], v[7:14] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[182:189], v[0:1], v[59:60], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[190:197], v[2:3], v[59:60], v[190:197] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[15:22], v[0:1], v[55:56], v[15:22] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v230, v28
	scratch_load_b32 v28, off, off offset:240 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v231, v29
	scratch_load_b32 v29, off, off offset:244 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v232, v30
	scratch_load_b32 v30, off, off offset:248 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v246, v26
	scratch_load_b32 v26, off, off offset:232 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v233, v27
	scratch_load_b32 v27, off, off offset:236 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v240, v7
	v_cvt_f32_i32_e32 v244, v8
	v_cvt_f32_i32_e32 v245, v23
	v_cvt_f32_i32_e32 v248, v24
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[31:38], v[0:1], v[57:58], v[31:38] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[39:46], v[2:3], v[57:58], v[39:46] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v247, v25
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v3, v151
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v156, v185
	v_mov_b32_e32 v185, v133
	v_cvt_f32_i32_e32 v236, v191
	v_mov_b32_e32 v191, v125
	v_cvt_f32_i32_e32 v133, v19
	v_cvt_f32_i32_e32 v140, v21
	v_cvt_f32_i32_e32 v139, v22
	v_cvt_f32_i32_e32 v19, v31
	v_cvt_f32_i32_e32 v21, v33
	scratch_load_b32 v33, off, off offset:120 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v22, v34
	scratch_load_b32 v34, off, off offset:212 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v155, v35
	v_cvt_f32_i32_e32 v153, v36
	v_mov_b32_e32 v36, v100
	v_cvt_f32_i32_e32 v152, v37
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:252
	scratch_load_b32 v88, off, off offset:112
	v_cvt_f32_i32_e32 v151, v38
	scratch_load_b32 v38, off, off offset:152 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v249, v39
	scratch_load_b32 v39, off, off offset:160 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v252, v40
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v40, off, off offset:156
	scratch_load_b32 v100, off, off offset:76
	v_cvt_f32_i32_e32 v251, v41
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v41, off, off offset:216
	scratch_load_b32 v35, off, off offset:200
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[198:205], v[0:1], v[61:62], v[198:205] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v60, v226
	v_cvt_f32_i32_e32 v61, v227
	v_cvt_f32_i32_e32 v62, v228
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v226, v12
	v_cvt_f32_i32_e32 v227, v13
	v_cvt_f32_i32_e32 v228, v14
	v_cvt_f32_i32_e32 v243, v9
	v_cvt_f32_i32_e32 v241, v10
	v_cvt_f32_i32_e32 v229, v11
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v1, v149
	v_cvt_f32_i32_e32 v2, v150
	v_cvt_f32_i32_e32 v59, v225
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v225, v194
	v_mov_b32_e32 v194, v105
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v56, v222
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v135, v186
	v_mov_b32_e32 v186, v254
	v_cvt_f32_i32_e32 v254, v190
	v_mov_b32_e32 v190, v123
	v_cvt_f32_i32_e32 v222, v195
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v58, v224
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v224, v197
	v_mov_b32_e32 v197, v98
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v57, v223
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v223, v196
	v_cvt_f32_i32_e32 v237, v44
	v_mov_b32_e32 v44, v121
	v_cvt_f32_i32_e32 v238, v45
	v_cvt_f32_i32_e32 v157, v184
	v_mov_b32_e32 v184, v6
	v_cvt_f32_i32_e32 v6, v188
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v150, v162
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v162, v200
	v_cvt_f32_i32_e32 v239, v46
	v_mov_b32_e32 v46, v89
	v_mov_b32_e32 v200, v99
	v_cvt_f32_i32_e32 v235, v192
	v_cvt_f32_i32_e32 v138, v202
	v_cvt_f32_i32_e32 v250, v42
	v_mov_b32_e32 v42, v134
	v_cvt_f32_i32_e32 v242, v43
	v_mov_b32_e32 v43, v122
	v_cvt_f32_i32_e32 v136, v204
	v_mov_b32_e32 v89, v120
	v_cvt_f32_i32_e32 v0, v205
	v_cvt_f32_i32_e32 v141, v20
	v_dual_mov_b32 v125, v86 :: v_dual_mov_b32 v86, v131
	v_cvt_f32_i32_e32 v158, v183
	v_mov_b32_e32 v183, v5
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v172, v172
	v_cvt_f32_i32_e32 v173, v173
	v_cvt_f32_i32_e32 v55, v160
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v160, v201
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v149, v163
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v5, v187
	v_mov_b32_e32 v187, v255
	v_cvt_f32_i32_e32 v255, v189
	v_mov_b32_e32 v189, v93
	v_cvt_f32_i32_e32 v163, v199
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v174, v174
	v_cvt_f32_i32_e32 v71, v234
	v_cvt_f32_i32_e32 v175, v175
	v_mov_b32_e32 v98, v82
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v234, v193
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v176, v176
	v_cvt_f32_i32_e32 v142, v164
	v_cvt_f32_i32_e32 v177, v177
	v_mov_b32_e32 v105, v81
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v164, v198
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v179, v179
	v_cvt_f32_i32_e32 v180, v180
	v_cvt_f32_i32_e32 v178, v178
	v_cvt_f32_i32_e32 v181, v181
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v182, v182
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v137, v203
	v_cvt_f32_i32_e32 v20, v32
	v_mov_b32_e32 v131, v143
	v_mov_b32_e32 v203, v146
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(13)
	v_cndmask_b32_e64 v8, 0x80000000, v29, s0
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v29, 2, v29
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(12)
	v_cndmask_b32_e32 v7, 0x80000000, v30, vcc_lo
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v30, 2, v30
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v23, v8, s[24:27], 0 offen
	v_cndmask_b32_e64 v8, 0x80000000, v28, s1
	buffer_load_u16 v7, v7, s[24:27], 0 offen
	v_dual_mov_b32 v195, v148 :: v_dual_add_nc_u32 v28, 2, v28
	buffer_load_u16 v24, v8, s[24:27], 0 offen
	s_waitcnt vmcnt(13)
	v_cndmask_b32_e64 v8, 0x80000000, v27, s2
	buffer_load_u16 v25, v8, s[24:27], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v8, v26, s[28:31], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v31, off, off offset:580 ; 4-byte Folded Reload
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v26, s7, v26
	v_add_nc_u32_e32 v27, 2, v27
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v154, 16, v23
	s_waitcnt vmcnt(4)
	v_dual_mov_b32 v202, v80 :: v_dual_lshlrev_b32 v253, 16, v7
	v_mov_b32_e32 v80, v145
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v154, v0
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v159, 16, v24
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v1, v253, v1 :: v_dual_lshlrev_b32 v8, 16, v8
	v_mov_b32_e32 v204, v147
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v31, v8
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[7:10], v101
	ds_load_b128 v[11:14], v101 offset:16
	v_dual_mov_b32 v123, v124 :: v_dual_mov_b32 v124, v91
	v_dual_mov_b32 v45, v112 :: v_dual_mov_b32 v112, v119
	v_dual_mov_b32 v196, v79 :: v_dual_lshlrev_b32 v161, 16, v25
	scratch_load_b32 v23, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v194, v1, v7
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v253, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v195, v1, v8
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v253, v3
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v197, v1, v9
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v1, v253, v47 :: v_dual_mov_b32 v188, v116
	v_mov_b32_e32 v116, v90
	v_dual_mov_b32 v90, v107 :: v_dual_mov_b32 v107, v132
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v196, v1, v10 :: v_dual_mul_f32 v1, v154, v56
	v_mov_b32_e32 v99, v144
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v56, off, off offset:188
	scratch_load_b32 v47, off, off offset:192
	v_dual_fmac_f32 v190, v1, v7 :: v_dual_mul_f32 v1, v154, v57
	v_mov_b32_e32 v192, v208
	scratch_load_b32 v57, off, off offset:184 ; 4-byte Folded Reload
	v_fmac_f32_e32 v123, v1, v8
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v154, v58
	scratch_load_b32 v58, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v191, v1, v9
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v154, v59
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v59, off, off offset:180
	scratch_load_b32 v134, off, off offset:176
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v124, v1, v10 :: v_dual_mul_f32 v1, v159, v72
	v_mov_b32_e32 v72, v94
	v_mov_b32_e32 v94, v104
	v_mov_b32_e32 v104, v106
	v_mov_b32_e32 v106, v110
	v_dual_mov_b32 v110, v103 :: v_dual_fmac_f32 v43, v1, v7
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v159, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v73, v87 :: v_dual_fmac_f32 v44, v1, v8
	v_mul_f32_e32 v1, v159, v74
	v_dual_mov_b32 v87, v96 :: v_dual_fmac_f32 v46, v1, v9
	v_mul_f32_e32 v1, v159, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v45, v1, v10
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v161, v166
	v_dual_mov_b32 v75, v102 :: v_dual_fmac_f32 v72, v1, v7
	v_mul_f32_e32 v1, v161, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v73, v1, v8
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v161, v168
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v87, v1, v9
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v161, v169
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v216, v1, v10
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v253, v48
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v48, off, off offset:128
	scratch_load_b32 v201, off, off offset:124
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v83, v1, v11
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v253, v49
	scratch_load_b32 v49, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v84, v1, v12
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v253, v50
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v50, off, off offset:88
	scratch_load_b32 v103, off, off offset:168
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v85, v1, v13
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v253, v51
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v51, off, off offset:68
	scratch_load_b32 v102, off, off offset:56
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v86, v1, v14 :: v_dual_mul_f32 v1, v154, v60
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v60, off, off offset:96
	scratch_load_b32 v119, off, off offset:92
	scratch_load_b32 v120, off, off offset:84
	scratch_load_b32 v121, off, off offset:80
	scratch_load_b32 v122, off, off offset:72
	s_waitcnt vmcnt(13)
	v_fmac_f32_e32 v59, v1, v11
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v154, v61
	scratch_load_b32 v61, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v60, v1, v12 :: v_dual_mul_f32 v1, v154, v62
	scratch_load_b32 v62, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v61, v1, v13
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v154, v63
	scratch_load_b32 v63, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v62, v1, v14 :: v_dual_mul_f32 v1, v159, v76
	v_mov_b32_e32 v76, v117
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v183, v1, v11
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v159, v77
	v_dual_mov_b32 v77, v126 :: v_dual_fmac_f32 v36, v1, v12
	v_dual_mul_f32 v1, v159, v78 :: v_dual_mov_b32 v78, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v37, v1, v13
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v159, v209
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v38, v1, v14
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v161, v170
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v56, v1, v11
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v161, v171
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v57, v1, v12
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v161, v172
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v58, v1, v13
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v161, v173
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v63, v1, v14
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v52, v253
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v52, off, off offset:52
	scratch_load_b32 v117, off, off offset:48
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[7:10], v101 offset:512
	ds_load_b128 v[11:14], v101 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v118, v1, v7
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v253, v53
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v75, v1, v8
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v253, v54
	scratch_load_b32 v54, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v76, v1, v9
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v253, v55
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v55, off, off offset:36
	scratch_load_b32 v79, off, off offset:32
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v77, v1, v10
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v64, v154
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v64, off, off offset:24
	scratch_load_b32 v132, off, off offset:20
	scratch_load_b32 v199, off, off offset:16
	scratch_load_b32 v91, off, off offset:12
	scratch_load_b32 v93, off, off offset:8
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v134, v1, v7 :: v_dual_mul_f32 v1, v154, v68
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v68, off, off offset:208
	scratch_load_b32 v205, off, off offset:204
	v_fmac_f32_e32 v51, v1, v8
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v154, v69
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v69, off, off offset:196
	scratch_load_b32 v129, off, off offset:164
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(13)
	v_dual_fmac_f32 v52, v1, v9 :: v_dual_mul_f32 v1, v154, v70
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v70, off, off offset:148
	scratch_load_b32 v53, off, off offset:40
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v53, v1, v10
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v210, v159
	scratch_load_b32 v210, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v107, v1, v7
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v159, v218
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v199, v1, v8
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v159, v219
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v91, v1, v9
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v159, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v93, v1, v10
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v174, v161
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v98, v1, v7
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v161, v175
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v40, v1, v8
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v161, v176
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v39, v1, v9
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v161, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v42, v1, v10
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v253, v165
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v78, v1, v11 :: v_dual_mul_f32 v1, v150, v253
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v99, v1, v12
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v149, v253
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v200, v1, v13
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v142, v253
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v113, v1, v14
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v154, v71
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v71, off, off offset:4
	scratch_load_b32 v209, off, off
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v54, v1, v11
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v65, v154
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v65, off, off offset:144
	scratch_load_b32 v82, off, off offset:140
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v110, v1, v12 :: v_dual_mul_f32 v1, v66, v154
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v66, off, off offset:136
	scratch_load_b32 v198, off, off offset:132
	scratch_load_b32 v81, off, off offset:108
	v_fmac_f32_e32 v109, v1, v13
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v67, v154
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:104
	scratch_load_b32 v126, off, off offset:100
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v108, v1, v14 :: v_dual_mul_f32 v1, v159, v4
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v4, v254, v253
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v198, v1, v11
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v211, v159
	scratch_load_b32 v211, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v106, v1, v12 :: v_dual_mul_f32 v1, v212, v159
	v_fmac_f32_e32 v105, v1, v13
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v217, v159
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v104, v1, v14
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v161, v178
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v41, v1, v11
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v179, v161
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v89, v1, v12
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v180, v161
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v90, v1, v13
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v181, v161
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v92, v1, v14
	.loc	1 1218 45                       ; ragged.py:1218:45
	buffer_load_u16 v1, v23, s[28:31], 0 offen
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1135 19                       ; ragged.py:1135:19
	v_add_nc_u32_e32 v23, s7, v23
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v31, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[7:10], v101
	ds_load_b128 v[11:14], v101 offset:16
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v253, v182
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v97, v1, v7
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v253, v158
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v119, v0, v14 :: v_dual_mul_f32 v0, v159, v133
	v_fmac_f32_e32 v214, v1, v8
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v253, v157
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v185, v0, v11 :: v_dual_mul_f32 v0, v159, v141
	v_fmac_f32_e32 v94, v1, v9
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v253, v156
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v184, v0, v12
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v159, v140 :: v_dual_fmac_f32 v95, v1, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v1, v154, v164 :: v_dual_fmac_f32 v100, v0, v13
	v_mul_f32_e32 v0, v159, v139
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v70, v1, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v1, v154, v163 :: v_dual_fmac_f32 v88, v0, v14
	v_mul_f32_e32 v0, v161, v155
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v69, v1, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v1, v154, v162 :: v_dual_fmac_f32 v66, v0, v11
	v_mul_f32_e32 v0, v161, v153
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v68, v1, v9 :: v_dual_mul_f32 v1, v154, v160
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v65, v0, v12
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v161, v152
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v67, v1, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v1, v159, v15 :: v_dual_fmac_f32 v64, v0, v13
	v_dual_mul_f32 v0, v161, v151 :: v_dual_mul_f32 v15, v159, v233
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v188, v1, v7 :: v_dual_mul_f32 v1, v159, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v55, v0, v14 :: v_dual_mul_f32 v16, v237, v161
	v_fmac_f32_e32 v187, v1, v8
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v159, v17
	v_mul_f32_e32 v17, v238, v161
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v112, v1, v9 :: v_dual_mul_f32 v1, v159, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v18, v239, v161
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v186, v1, v10
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v161, v19
	v_mul_f32_e32 v19, v161, v242
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v82, v1, v7
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v161, v20
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v132, v1, v8
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v161, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v79, v1, v9
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v161, v22
	v_mul_f32_e32 v9, v227, v154
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v71, v1, v10
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v1, v253, v135 :: v_dual_mul_f32 v10, v228, v154
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v215, v1, v11
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v253, v5
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v192, v1, v12
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v253, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v130, v1, v13
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v253, v255
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v131, v1, v14
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v1, v154, v138 :: v_dual_mul_f32 v14, v232, v159
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v122, v1, v11 :: v_dual_mul_f32 v1, v154, v137
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v11, v154, v229
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v121, v1, v12
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v154, v136
	v_mul_f32_e32 v12, v230, v159
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v120, v1, v13
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[0:3], v101 offset:512
	ds_load_b128 v[5:8], v101 offset:528
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v13, v231, v159
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v33, v4, v0
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v4, v253, v236
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v116, v11, v5 :: v_dual_fmac_f32 v207, v9, v7
	v_dual_fmac_f32 v206, v10, v8 :: v_dual_fmac_f32 v209, v15, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v129, v4, v1 :: v_dual_mul_f32 v4, v253, v235
	v_fmac_f32_e32 v35, v12, v6
	v_dual_fmac_f32 v203, v13, v7 :: v_dual_fmac_f32 v80, v14, v8
	v_fmac_f32_e32 v47, v19, v5
	v_fmac_f32_e32 v205, v4, v2
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v4, v253, v234
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v115, v16, v6 :: v_dual_fmac_f32 v114, v17, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v111, v18, v8 :: v_dual_fmac_f32 v126, v4, v3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v4, v240, v154
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v34, v4, v0
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v4, v154, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v189, v4, v1 :: v_dual_mul_f32 v4, v154, v243
	v_dual_fmac_f32 v117, v4, v2 :: v_dual_mul_f32 v4, v154, v241
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v102, v4, v3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v4, v245, v159
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v204, v4, v0
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v4, v159, v248
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v103, v4, v1 :: v_dual_mul_f32 v4, v159, v247
	v_fmac_f32_e32 v201, v4, v2
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v4, v159, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v81, v4, v3 :: v_dual_mul_f32 v4, v249, v161
	v_fmac_f32_e32 v202, v4, v0
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v161, v252
	v_mul_f32_e32 v4, v226, v154
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v50, v0, v1
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v161, v251 :: v_dual_mul_f32 v1, v223, v253
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v128, v4, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v49, v0, v2
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v161, v250
	v_mul_f32_e32 v2, v224, v253
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v210, v1, v7
	v_fmac_f32_e32 v48, v0, v3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v222, v253
	v_mul_f32_e32 v3, v253, v225
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v221, v2, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v211, v0, v6
	v_fmac_f32_e32 v125, v3, v5
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v180, off, off offset:584
	scratch_load_b32 v181, off, off offset:588
	scratch_load_b32 v182, off, off offset:592
	s_waitcnt vmcnt(2)
	v_and_b32_e32 v127, 0x80, v180
.LBB0_7:                                ; %._crit_edge
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_dual_mul_f32 v0, 0xbfb8aa3b, v33 :: v_dual_mul_f32 v177, 0xbfb8aa3b, v95
	v_dual_mul_f32 v171, 0xbfb8aa3b, v129 :: v_dual_mul_f32 v164, 0xbfb8aa3b, v68
	v_mul_f32_e32 v157, 0xbfb8aa3b, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_dual_mul_f32 v0, 0xbfb8aa3b, v211 :: v_dual_mul_f32 v1, 0xbfb8aa3b, v210
	v_dual_mul_f32 v153, 0xbfb8aa3b, v186 :: v_dual_mul_f32 v154, 0xbfb8aa3b, v187
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v1
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v149, 0xbfb8aa3b, v100 :: v_dual_fmac_f32 v4, 0xbfb8aa3b, v33
	v_mul_f32_e32 v173, 0xbfb8aa3b, v130
	v_cndmask_b32_e64 v5, 0, 0x42800000, s0
	v_mul_f32_e32 v2, 0xbfb8aa3b, v221
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v4, v4
	v_mul_f32_e32 v178, 0xbfb8aa3b, v214
	v_fmac_f32_e32 v5, 0xbfb8aa3b, v210
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v2
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v211
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, s0
	v_exp_f32_e32 v5, v5
	v_cndmask_b32_e64 v7, 0, 0x42800000, s1
	v_mul_f32_e32 v172, 0xbfb8aa3b, v131
	v_ldexp_f32 v3, v4, v3
	v_mul_f32_e32 v4, 0xbfb8aa3b, v34
	v_exp_f32_e32 v1, v1
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v221
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, s1
	v_mul_f32_e32 v147, 0xbfb8aa3b, v103
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_ldexp_f32 v2, v5, v2
	v_exp_f32_e32 v7, v7
	v_dual_mul_f32 v143, 0xbfb8aa3b, v82 :: v_dual_mul_f32 v16, 0xbfb8aa3b, v111
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v4, 0xbfb8aa3b, v128
	v_ldexp_f32 v1, v1, v0
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_dual_mul_f32 v176, 0xbfb8aa3b, v94 :: v_dual_mul_f32 v179, 0xbfb8aa3b, v97
	v_fmac_f32_e32 v5, 0xbfb8aa3b, v34
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v6, v7, v6
	v_mul_f32_e32 v7, 0xbfb8aa3b, v207
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v3, 1.0, v3
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v5, v5
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v6, 1.0, v6
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v7
	v_cndmask_b32_e64 v7, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v8, 0xbfb8aa3b, v206
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v20, null, v3, v3, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v128
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v8
	v_cndmask_b32_e64 v9, 0, 0x42800000, s0
	v_mul_f32_e32 v162, 0xbfb8aa3b, v121
	v_ldexp_f32 v12, v5, v0
	v_exp_f32_e32 v7, v7
	v_cndmask_b32_e64 v11, 0, 0x42800000, s1
	v_mul_f32_e32 v160, 0xbfb8aa3b, v119
	v_dual_fmac_f32 v9, 0xbfb8aa3b, v207 :: v_dual_mul_f32 v0, 0xbfb8aa3b, v204
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v206
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s1
	v_exp_f32_e32 v9, v9
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_dual_mul_f32 v5, 0xbfb8aa3b, v35 :: v_dual_mul_f32 v148, 0xbfb8aa3b, v88
	v_exp_f32_e32 v11, v11
	v_ldexp_f32 v4, v7, v4
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v22, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v174, 0xbfb8aa3b, v192 :: v_dual_mul_f32 v175, 0xbfb8aa3b, v215
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v7, v9, v8
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	v_dual_mul_f32 v170, 0xbfb8aa3b, v205 :: v_dual_mul_f32 v165, 0xbfb8aa3b, v67
	v_ldexp_f32 v8, v11, v10
	v_dual_mul_f32 v10, 0xbfb8aa3b, v203 :: v_dual_mul_f32 v11, 0xbfb8aa3b, v80
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, vcc_lo
	v_dual_mul_f32 v168, 0xbfb8aa3b, v125 :: v_dual_mul_f32 v169, 0xbfb8aa3b, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v10
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v11
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v204
	v_mul_f32_e32 v150, 0xbfb8aa3b, v184
	v_cndmask_b32_e64 v13, 0, 0x42800000, s0
	v_cndmask_b32_e64 v15, 0, 0x42800000, s1
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v35
	v_exp_f32_e32 v9, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v146, 0xbfb8aa3b, v201 :: v_dual_fmac_f32 v13, 0xbfb8aa3b, v203
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v80
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v10, v10
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, s1
	v_exp_f32_e32 v13, v13
	v_exp_f32_e32 v15, v15
	v_mul_f32_e32 v140, 0xbfb8aa3b, v66
	v_ldexp_f32 v9, v9, v0
	v_mul_f32_e32 v0, 0xbfb8aa3b, v202
	v_dual_mul_f32 v166, 0xbfb8aa3b, v69 :: v_dual_mul_f32 v167, 0xbfb8aa3b, v70
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_ldexp_f32 v10, v10, v5
	v_mul_f32_e32 v5, 0xbfb8aa3b, v115
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v11, v13, v11
	v_ldexp_f32 v13, v15, v14
	v_mul_f32_e32 v14, 0xbfb8aa3b, v114
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v5
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v5, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v2, 1.0, v2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v17, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v16
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v4, 1.0, v4
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v141, 0xbfb8aa3b, v71
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v115
	v_cndmask_b32_e64 v19, 0, 0x42800000, s0
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v114
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s0
	v_exp_f32_e32 v17, v17
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v111
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v1, 1.0, v1 :: v_dual_add_f32 v10, 1.0, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v16, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v23, vcc_lo, v33, v3, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v19, v19
	v_dual_fmac_f32 v5, 0xbfb8aa3b, v202 :: v_dual_add_f32 v12, 1.0, v12
	v_ldexp_f32 v15, v17, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v17, -v20, v22, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v133, 0xbfb8aa3b, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v29, s1, v210, v2, v210
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v14, v16, v14
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v22, v17, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v16, v19, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v18, null, v1, v1, v211
	v_div_scale_f32 v19, null, v2, v2, v210
	v_mul_f32_e32 v25, v23, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v17, v18
	v_div_scale_f32 v32, null, v12, v12, v34
	v_rcp_f32_e32 v24, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v27, -v20, v25, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v5, v5
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v7, 1.0, v7 :: v_dual_add_f32 v14, 1.0, v14
	v_dual_add_f32 v8, 1.0, v8 :: v_dual_fmac_f32 v25, v27, v22
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v18, v17, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v9, 1.0, v9 :: v_dual_add_f32 v16, 1.0, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v19, v24, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v135, 0xbfb8aa3b, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v17, v26, v17
	v_div_scale_f32 v26, s0, v211, v1, v211
	v_fmac_f32_e32 v24, v28, v24
	v_div_scale_f32 v28, null, v6, v6, v221
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v27, v26, v17
	v_fma_f32 v20, -v20, v25, v23
	v_mul_f32_e32 v31, v29, v24
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v30, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v21, v5, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v23, -v18, v27, v26
	v_div_fmas_f32 v20, v20, v22, v25
	v_rcp_f32_e32 v22, v32
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v5, 0xbfb8aa3b, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v27, v23, v17
	v_fma_f32 v23, -v19, v31, v29
	v_div_fixup_f32 v3, v20, v3, v33
	v_fma_f32 v25, -v28, v30, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v18, -v18, v27, v26
	v_fmac_f32_e32 v31, v23, v24
	v_div_scale_f32 v20, s2, v221, v6, v221
	v_fmac_f32_e32 v30, v25, v30
	v_fma_f32 v23, -v32, v22, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v13, 1.0, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v17, v18, v17, v27
	v_fma_f32 v18, -v19, v31, v29
	v_mul_f32_e32 v19, v20, v30
	v_fmac_f32_e32 v22, v23, v22
	v_div_scale_f32 v23, null, v4, v4, v128
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v25, s0, v34, v12, v34
	v_div_fmas_f32 v18, v18, v24, v31
	v_rcp_f32_e32 v24, v23
	v_fma_f32 v26, -v28, v19, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v27, v25, v22
	v_div_scale_f32 v29, null, v7, v7, v207
	v_div_fixup_f32 v1, v17, v1, v211
	v_fmac_f32_e32 v19, v26, v30
	v_div_fixup_f32 v2, v18, v2, v210
	v_fma_f32 v17, -v32, v27, v25
	v_rcp_f32_e32 v18, v29
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v26, -v23, v24, 1.0
	v_fma_f32 v20, -v28, v19, v20
	v_div_scale_f32 v28, null, v8, v8, v206
	v_dual_fmac_f32 v27, v17, v22 :: v_dual_fmac_f32 v24, v26, v24
	v_div_scale_f32 v17, s1, v128, v4, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v26, v28
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v31, -v29, v18, 1.0
	v_div_fmas_f32 v19, v20, v30, v19
	v_fma_f32 v20, -v32, v27, v25
	v_mul_f32_e32 v25, v17, v24
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v18, v31, v18
	v_div_scale_f32 v30, s2, v207, v7, v207
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v31, -v28, v26, 1.0
	v_div_scale_f32 v32, null, v9, v9, v204
	v_div_fmas_f32 v20, v20, v22, v27
	v_fma_f32 v22, -v23, v25, v17
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v21, 1.0, v21 :: v_dual_fmac_f32 v26, v31, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v27, v30, v18
	v_rcp_f32_e32 v31, v32
	v_div_scale_f32 v33, s0, v206, v8, v206
	v_fmac_f32_e32 v25, v22, v24
	v_div_scale_f32 v22, null, v10, v10, v35
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v6, v19, v6, v221
	v_div_fixup_f32 v12, v20, v12, v34
	v_fma_f32 v19, -v29, v27, v30
	v_mul_f32_e32 v20, v33, v26
	v_fma_f32 v17, -v23, v25, v17
	v_rcp_f32_e32 v23, v22
	v_fma_f32 v34, -v32, v31, 1.0
	v_fmac_f32_e32 v27, v19, v18
	v_fma_f32 v19, -v28, v20, v33
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v113, v113, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v31, v34, v31
	v_div_scale_f32 v34, s3, v204, v9, v204
	v_div_fmas_f32 v17, v17, v24, v25
	v_fma_f32 v24, -v29, v27, v30
	v_fmac_f32_e32 v20, v19, v26
	v_fma_f32 v25, -v22, v23, 1.0
	s_mov_b32 vcc_lo, s2
	v_mul_f32_e32 v19, v34, v31
	v_div_fmas_f32 v18, v24, v18, v27
	v_fma_f32 v24, -v28, v20, v33
	v_div_fixup_f32 v4, v17, v4, v128
	v_fmac_f32_e32 v23, v25, v23
	v_div_scale_f32 v25, null, v11, v11, v203
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v27, -v32, v19, v34
	v_div_scale_f32 v28, s1, v35, v10, v35
	v_div_fmas_f32 v20, v24, v26, v20
	v_rcp_f32_e32 v24, v25
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v110, v110, v4
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v26, v28, v23
	v_div_fixup_f32 v7, v18, v7, v207
	v_div_fixup_f32 v8, v20, v8, v206
	v_fmac_f32_e32 v19, v27, v31
	v_div_scale_f32 v20, null, v13, v13, v80
	v_fma_f32 v18, -v22, v26, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v108, v108, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v17, -v32, v19, v34
	v_fma_f32 v27, -v25, v24, 1.0
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v26, v18, v23
	v_div_scale_f32 v18, s0, v203, v11, v203
	v_div_fmas_f32 v17, v17, v31, v19
	v_rcp_f32_e32 v19, v20
	v_fmac_f32_e32 v24, v27, v24
	v_div_scale_f32 v27, null, v21, v21, v202
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v9, v17, v9, v204
	v_fma_f32 v17, -v22, v26, v28
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v29, v27
	v_mul_f32_e32 v22, v18, v24
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v118, v118, v3
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v20, v19, 1.0
	v_div_fmas_f32 v17, v17, v23, v26
	v_div_scale_f32 v26, null, v15, v15, v115
	v_fma_f32 v23, -v25, v22, v18
	v_fmac_f32_e32 v19, v28, v19
	v_div_scale_f32 v28, s1, v80, v13, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v30, -v27, v29, 1.0
	v_div_fixup_f32 v10, v17, v10, v35
	v_rcp_f32_e32 v17, v26
	v_dual_fmac_f32 v22, v23, v24 :: v_dual_mul_f32 v23, v28, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v29, v30, v29
	v_div_scale_f32 v30, s2, v202, v21, v202
	v_fma_f32 v18, -v25, v22, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v25, -v20, v23, v28
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v32, v30, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v26, v17, 1.0
	v_div_fmas_f32 v18, v18, v24, v22
	v_dual_fmac_f32 v23, v25, v19 :: v_dual_mul_f32 v106, v106, v10
	v_fma_f32 v22, -v27, v32, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v17, v33, v17
	v_div_scale_f32 v25, s0, v115, v15, v115
	v_div_fixup_f32 v11, v18, v11, v203
	v_fma_f32 v18, -v20, v23, v28
	v_fmac_f32_e32 v32, v22, v29
	v_mul_f32_e32 v20, v25, v17
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v31, null, v14, v14, v114
	v_div_fmas_f32 v18, v18, v19, v23
	v_fma_f32 v19, -v27, v32, v30
	v_fma_f32 v23, -v26, v20, v25
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v34, v31
	v_div_scale_f32 v35, null, v16, v16, v111
	v_div_fmas_f32 v19, v19, v29, v32
	v_fmac_f32_e32 v20, v23, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v179
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v24, v35
	v_div_scale_f32 v22, s3, v114, v14, v114
	v_div_fixup_f32 v19, v19, v21, v202
	v_fma_f32 v21, -v26, v20, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v33, -v31, v34, 1.0
	v_div_fmas_f32 v17, v21, v17, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v97
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v35, v24, 1.0
	v_div_fixup_f32 v13, v18, v13, v80
	v_fmac_f32_e32 v34, v33, v34
	v_div_fixup_f32 v15, v17, v15, v115
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v21, v26
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v115, v99, v1 :: v_dual_mul_f32 v98, v98, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v27, v22, v34 :: v_dual_mul_f32 v104, v104, v13
	v_fmac_f32_e32 v24, v28, v24
	v_div_scale_f32 v28, s1, v111, v16, v111
	v_fma_f32 v18, -v31, v27, v22
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v107, v107, v9
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v3, v21, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s3
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v178
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v27, v18, v34
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v109, v109, v7
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v1, 1.0, v3
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v105, v105, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v20, -v31, v27, v22
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v89, v89, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v3, null, v1, v1, v97
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v163, 0xbfb8aa3b, v122 :: v_dual_mul_f32 v156, 0xbfb8aa3b, v116
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v162
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v6, v3
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v161, 0xbfb8aa3b, v120 :: v_dual_mul_f32 v158, 0xbfb8aa3b, v117
	v_dual_mul_f32 v159, 0xbfb8aa3b, v189 :: v_dual_mul_f32 v152, 0xbfb8aa3b, v112
	v_dual_mul_f32 v155, 0xbfb8aa3b, v188 :: v_dual_mul_f32 v144, 0xbfb8aa3b, v209
	v_dual_mul_f32 v151, 0xbfb8aa3b, v185 :: v_dual_mul_f32 v142, 0xbfb8aa3b, v132
	v_dual_mul_f32 v145, 0xbfb8aa3b, v81 :: v_dual_mul_f32 v136, 0xbfb8aa3b, v55
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v9, -v3, v6, 1.0
	v_mul_f32_e32 v23, v28, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v139, 0xbfb8aa3b, v79 :: v_dual_mul_f32 v138, 0xbfb8aa3b, v65
	v_dual_mul_f32 v137, 0xbfb8aa3b, v64 :: v_dual_mul_f32 v0, 0xbfb8aa3b, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v6, v9, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v35, v23, v28
.Ltmp5:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp6:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v23, v18, v24
	v_div_fmas_f32 v18, v20, v34, v27
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v20, -v35, v23, v28
	v_div_fixup_f32 v14, v18, v14, v114
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_cndmask_b32_e64 v18, 0, 0x42800000, s0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v114, v200, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v20, v20, v24, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v177
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v90, v90, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v214
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v16, v20, v16, v111
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v2, v18
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v176
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v92, v92, v16 :: v_dual_fmac_f32 v21, 0xbfb8aa3b, v95
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v4, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v9, vcc_lo, v97, v1, v97
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v2, v2, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v94
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v2, 1.0, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v8, v8
	v_ldexp_f32 v4, v4, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v20, v9, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v4, 1.0, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v11, -v3, v20, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v7, v8, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v18, null, v4, v4, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v20, v11, v6
	v_div_scale_f32 v8, s0, v214, v2, v214
	v_rcp_f32_e32 v10, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v3, -v3, v20, v9
	v_div_fmas_f32 v3, v3, v6, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v175
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v11, -v18, v10, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v111, v134, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v12, null, v2, v2, v214
	v_div_fixup_f32 v1, v3, v1, v97
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v7, 1.0, v7 :: v_dual_fmac_f32 v10, v11, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v17, v12
	v_div_scale_f32 v11, s1, v95, v4, v95
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v174
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v15, v11, v10
	v_div_scale_f32 v16, s2, v94, v7, v94
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v215
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v13, -v12, v17, 1.0
	v_fma_f32 v3, -v18, v15, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v17, v13, v17
	v_div_scale_f32 v13, null, v7, v7, v94
	v_fmac_f32_e32 v15, v3, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v3, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v9, v8, v17
	v_rcp_f32_e32 v6, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v11, -v18, v15, v11
	v_fma_f32 v14, -v12, v9, v8
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v3, v3, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v9, v14, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v14, -v13, v6, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v3, 1.0, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v8, -v12, v9, v8
	v_fmac_f32_e32 v6, v14, v6
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v20, null, v3, v3, v215
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v192
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v8, v8, v17, v9
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v173
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v9, v16, v6
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v14, v14
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v2, v8, v2, v214
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v17, -v13, v9, v16
	v_div_fmas_f32 v10, v11, v10, v15
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v130
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v170
	v_ldexp_f32 v11, v14, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v12, v20
	v_fmac_f32_e32 v9, v17, v6
	v_div_fixup_f32 v4, v10, v4, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v8, 1.0, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v11, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v10, -v13, v9, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v96, v196, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v13, null, v8, v8, v192
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v14, -v20, v12, 1.0
	v_div_fmas_f32 v6, v10, v6, v9
	v_div_scale_f32 v10, s0, v215, v3, v215
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v9, v13
	v_fmac_f32_e32 v12, v14, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v6, v6, v7, v94
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v11, v11, v18
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v172
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v94, v194, v1
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v15, v10, v12
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v97, v197, v6 :: v_dual_add_f32 v6, 1.0, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v16, -v13, v9, 1.0
	v_fma_f32 v11, -v20, v15, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v14, 0xbfb8aa3b, v131 :: v_dual_fmac_f32 v9, v16, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v16, s1, v192, v8, v192
	v_fmac_f32_e32 v15, v11, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v14, v14
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v17, null, v6, v6, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v11, v16, v9
	v_fma_f32 v4, -v20, v15, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v10, -v13, v11, v16
	v_div_fmas_f32 v4, v4, v12, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v171
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v7, v14, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v11, v10, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v3, v4, v3, v215
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v1, 1.0, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v4, -v13, v11, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v10, null, v1, v1, v131
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v4, v4, v9, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v129
	v_cndmask_b32_e64 v11, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v12, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v4, v4, v8, v192
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v95, v195, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v2, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v14, v14
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v205
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v169
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v168
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v84, v84, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v16, -v10, v12, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v11, v11
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v83, v83, v3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v7, -v17, v2, 1.0
	v_fmac_f32_e32 v12, v16, v12
	v_div_scale_f32 v16, s1, v131, v1, v131
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v126
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v2, v7, v2
	v_div_scale_f32 v7, s0, v130, v6, v130
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v9, v11, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v15, v7, v2
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v9, 1.0, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v8, -v17, v15, v7
	v_div_scale_f32 v19, null, v9, v9, v205
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v15, v8, v2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v8, v14, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v13, v16, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v7, -v17, v15, v7
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v8, 1.0, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v17, -v10, v13, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v2, v7, v2, v15
	v_div_scale_f32 v11, null, v8, v8, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v13, v17, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v17, v18
	v_cndmask_b32_e64 v15, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v18, v11
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v7, -v10, v13, v16
	v_rcp_f32_e32 v16, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v125
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v2, v2, v6, v130
	v_div_fmas_f32 v7, v7, v12, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v12, v17, v14
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v13, vcc_lo, v129, v8, v129
	v_fma_f32 v20, -v11, v18, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v1, v7, v1, v131
	v_fma_f32 v14, -v19, v16, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v7, v15
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v18, v20, v18
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v86, v86, v1
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v16, v14, v16
	v_div_scale_f32 v14, s0, v205, v9, v205
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v15, v13, v18
	v_div_scale_f32 v17, null, v12, v12, v126
	v_dual_mul_f32 v6, v14, v16 :: v_dual_mul_f32 v85, v85, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v1, -v11, v15, v13
	v_rcp_f32_e32 v20, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v2, v7, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v10, s1, v126, v12, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v15, v1, v18
	v_fma_f32 v1, -v19, v6, v14
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v2, 1.0, v2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v163
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v3, -v11, v15, v13
	v_fmac_f32_e32 v6, v1, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v1, -v17, v20, 1.0
	v_div_scale_f32 v4, null, v2, v2, v125
	v_div_fmas_f32 v3, v3, v18, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v167
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v20, v1, v20
	v_rcp_f32_e32 v1, v4
	v_fma_f32 v7, -v19, v6, v14
	v_div_fixup_f32 v3, v3, v8, v129
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v15, s0, v125, v2, v125
	v_div_fmas_f32 v6, v7, v16, v6
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v70
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v8, -v4, v1, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v166
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v7, v10, v20
	v_div_fixup_f32 v6, v6, v9, v205
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v9, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v1, v8, v1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v165
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v13, -v17, v7, v10
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v76, v76, v6 :: v_dual_mul_f32 v75, v75, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v69
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v9, v9, v11
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v11, v15, v1
	v_fmac_f32_e32 v7, v13, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v67
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v164
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v18, -v4, v11, v15
	v_fma_f32 v10, -v17, v7, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v14, v14
	v_exp_f32_e32 v16, v16
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v11, v18, v1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v7, v10, v20, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v4, -v4, v11, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v10, v16, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v7, v7, v12, v126
	v_div_fmas_f32 v1, v4, v1, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v4, v19
	v_ldexp_f32 v8, v14, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v10, 1.0, v10 :: v_dual_mul_f32 v77, v77, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v1, v1, v2, v125
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v8, 1.0, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v2, null, v10, v10, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v78, v78, v1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v1, v4, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v15, null, v8, v8, v69
	v_rcp_f32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v1, 1.0, v1
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v11, v15
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v7, -v2, v4, 1.0
	v_fma_f32 v16, -v15, v11, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v4, v7, v4 :: v_dual_add_f32 v9, 1.0, v9
	v_fmac_f32_e32 v11, v16, v11
	v_div_scale_f32 v16, s0, v69, v8, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v17, null, v9, v9, v70
	v_mul_f32_e32 v6, v16, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v14, v17
	v_fma_f32 v13, -v17, v14, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v14, v13, v14
	v_div_scale_f32 v13, vcc_lo, v70, v9, v70
	v_mul_f32_e32 v12, v13, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v17, v12, v13
	v_fmac_f32_e32 v12, v18, v14
	v_div_scale_f32 v18, null, v1, v1, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v3, -v17, v12, v13
	v_fma_f32 v13, -v15, v6, v16
	v_rcp_f32_e32 v7, v18
	v_div_scale_f32 v17, s1, v67, v10, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v3, v3, v14, v12
	v_fmac_f32_e32 v6, v13, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v13, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v3, v3, v9, v70
	v_fma_f32 v9, -v15, v6, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v122
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v19, -v18, v7, 1.0
	v_mul_f32_e32 v14, v17, v4
	v_div_scale_f32 v16, s2, v68, v1, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v13, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v7, v19, v7
	v_div_fmas_f32 v6, v9, v11, v6
	v_fma_f32 v15, -v2, v14, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0x42800000, s3
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v161
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v6, v6, v8, v69
	v_dual_mul_f32 v9, v16, v7 :: v_dual_fmac_f32 v14, v15, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v12, v13, v12
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v121
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v15, -v18, v9, v16
	v_fma_f32 v2, -v2, v14, v17
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v9, v15, v7
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v15, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v17, null, v12, v12, v122
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v120
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v2, v2, v4, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v160
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v14, v17
	v_fma_f32 v16, -v18, v9, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v4, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v2, v2, v10, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v11, v15, v11
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v67, v190, v3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v7, v16, v7, v9
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v9, 1.0, v11
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v11, -v17, v14, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v4, v4, v13
	v_dual_fmac_f32 v18, 0xbfb8aa3b, v119 :: v_dual_mul_f32 v69, v124, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v13, null, v9, v9, v121
	v_fmac_f32_e32 v14, v11, v14
	v_div_scale_f32 v11, vcc_lo, v122, v12, v122
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v4, 1.0, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v16, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v18, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v20, v11, v14
	v_div_scale_f32 v2, s0, v121, v9, v121
	v_div_scale_f32 v19, null, v4, v4, v120
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v8, -v17, v20, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v146
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v10, -v13, v16, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v20, v8, v14
	v_div_fixup_f32 v1, v7, v1, v68
	v_rcp_f32_e32 v7, v19
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v68, v123, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v16, v10, v16
	v_fma_f32 v6, -v17, v20, v11
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v70, v191, v1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v1, v18, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v10, v2, v16
	v_div_fmas_f32 v6, v6, v14, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v159
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v8, -v19, v7, 1.0
	v_fma_f32 v15, -v13, v10, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v3, v6, v12, v122
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v7, v8, v7
	v_div_scale_f32 v8, s1, v120, v4, v120
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v189
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v10, v15, v16 :: v_dual_mul_f32 v17, v8, v7
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v158
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v59, v59, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v2, -v13, v10, v2
	v_fma_f32 v6, -v19, v17, v8
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v17, v6, v7
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v6, v20
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v117
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v8, -v19, v17, v8
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v13, v13
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v6, v6, v18
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v1, 1.0, v1 :: v_dual_add_f32 v6, 1.0, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v11, null, v1, v1, v119
	v_div_scale_f32 v15, s2, v119, v1, v119
	v_div_scale_f32 v20, null, v6, v6, v189
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v14, v11
	v_fma_f32 v12, -v11, v14, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v14, v12, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v2, v2, v16, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v157
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v10, v15, v14
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v2, v2, v9, v121
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v16, -v11, v10, v15
	v_div_fmas_f32 v7, v8, v7, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v8, v13, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v12, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v102
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v10, v16, v14
	v_div_fixup_f32 v4, v7, v4, v120
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v8, 1.0, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v9, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v7, -v11, v10, v15
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v60, v60, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v11, null, v8, v8, v117
	v_fma_f32 v13, -v20, v12, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v7, v7, v14, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v156
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v10, v11
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v61, v61, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v12, v13, v12
	v_div_scale_f32 v13, s0, v189, v6, v189
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v1, v7, v1, v119
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v9, v9, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v15, v13, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v16, -v11, v10, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v116
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v62, v62, v1
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v1, 1.0, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v9, -v20, v15, v13
	v_fmac_f32_e32 v10, v16, v10
	v_div_scale_f32 v16, s1, v117, v8, v117
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v14, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v15, v9, v12
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v9, v16, v10
	v_div_scale_f32 v17, null, v1, v1, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v4, -v20, v15, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v154
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v13, -v11, v9, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v2, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v7, v14, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v4, v4, v12, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v155
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v9, v13, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v3, 1.0, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v4, v4, v6, v189
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v6, -v11, v9, v16
	v_fma_f32 v7, -v17, v2, 1.0
	v_div_scale_f32 v11, null, v3, v3, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v188
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v2, v7, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v12, v11
	v_div_scale_f32 v7, s0, v102, v1, v102
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v14, v14
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v51, v51, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v15, v7, v2
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v16, -v11, v12, 1.0
	v_fmac_f32_e32 v12, v16, v12
	v_div_fmas_f32 v6, v6, v10, v9
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v10, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v16, s1, v116, v3, v116
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v153
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v6, v6, v8, v117
	v_fma_f32 v8, -v17, v15, v7
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v187
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, s2
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v52, v52, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v15, v8, v2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v8, v14, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v13, v16, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v10, v10
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v186
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v7, -v17, v15, v7
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v8, 1.0, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v17, -v11, v13, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v152
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v2, v7, v2, v15
	v_fmac_f32_e32 v13, v17, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v17, v18
	v_ldexp_f32 v9, v10, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v10, null, v8, v8, v188
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v7, -v11, v13, v16
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v15, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v18, v10
	v_div_fixup_f32 v1, v2, v1, v102
	v_div_fmas_f32 v7, v7, v12, v13
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v12, v17, v14
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v112
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v13, vcc_lo, v188, v8, v188
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s2
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v3, v7, v3, v116
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v20, -v10, v18, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v7, v15
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v53, v53, v1
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v17, null, v12, v12, v186
	v_fmac_f32_e32 v18, v20, v18
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v54, v54, v3
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v147
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v20, v17
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v9, 1.0, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v15, v13, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v1, v7, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v19, null, v9, v9, v187
	v_fma_f32 v2, -v10, v15, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v16, v19
	v_fmac_f32_e32 v15, v2, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v4, -v10, v15, v13
	v_div_scale_f32 v10, s1, v186, v12, v186
	v_fma_f32 v14, -v19, v16, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v4, v4, v18, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v151
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v16, v14, v16
	v_div_scale_f32 v14, s0, v187, v9, v187
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v3, v14, v16
	v_div_fixup_f32 v4, v4, v8, v188
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v185
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v2, -v19, v3, v14
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v43, v43, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v3, v2, v16
	v_fma_f32 v2, -v17, v20, 1.0
	v_fma_f32 v7, -v19, v3, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v20, v2, v20
	v_div_fmas_f32 v3, v7, v16, v3
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v150
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v7, v10, v20
	v_div_fixup_f32 v3, v3, v9, v187
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v1, 1.0, v1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v9, v13
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v13, -v17, v7, v10
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v44, v44, v3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v6, null, v1, v1, v112
	v_div_scale_f32 v15, s0, v112, v1, v112
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v7, v13, v20
	v_rcp_f32_e32 v2, v6
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v9, v9, v11
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v184
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v10, -v17, v7, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v14, v14
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v8, -v6, v2, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v2, v8, v2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v149
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v11, v15, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v8, v14, v8
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v148
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v18, -v6, v11, v15
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v8, 1.0, v8
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v100
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v11, v18, v2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v16, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v88
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v7, v10, v20, v7
	v_fma_f32 v6, -v6, v11, v15
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v15, null, v8, v8, v184
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v7, v7, v12, v186
	v_div_fmas_f32 v2, v6, v2, v11
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v10, v16, v13
	v_exp_f32_e32 v6, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v11, v15
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v45, v45, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v1, v2, v1, v112
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v10, 1.0, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v46, v46, v1
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v2, null, v10, v10, v100
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v1, v6, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v16, -v15, v11, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v6, v2
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v1, 1.0, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v11, v16, v11
	v_div_scale_f32 v16, s0, v184, v8, v184
	v_mul_f32_e32 v3, v16, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v7, -v2, v6, 1.0
	v_dual_fmac_f32 v6, v7, v6 :: v_dual_add_f32 v9, 1.0, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v17, null, v9, v9, v185
	v_rcp_f32_e32 v14, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v13, -v17, v14, 1.0
	v_fmac_f32_e32 v14, v13, v14
	v_div_scale_f32 v13, vcc_lo, v185, v9, v185
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v12, v13, v14
	v_fma_f32 v18, -v17, v12, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v12, v18, v14
	v_div_scale_f32 v18, null, v1, v1, v88
	v_fma_f32 v4, -v17, v12, v13
	v_fma_f32 v13, -v15, v3, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v7, v18
	v_div_scale_f32 v17, s1, v100, v10, v100
	v_div_fmas_f32 v4, v4, v14, v12
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v3, v13, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v13, 0, 0x42800000, s2
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v14, v17, v6
	v_div_fixup_f32 v4, v4, v9, v185
	v_fma_f32 v9, -v15, v3, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v103
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v19, -v18, v7, 1.0
	v_div_scale_f32 v16, s2, v88, v1, v88
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v13, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v7, v19, v7
	v_fma_f32 v15, -v2, v14, v17
	v_div_fmas_f32 v3, v9, v11, v3
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0x42800000, s3
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v145
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v9, v16, v7 :: v_dual_fmac_f32 v14, v15, v6
	v_div_fixup_f32 v3, v3, v8, v184
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v201
	v_ldexp_f32 v12, v13, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v15, -v18, v9, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v2, -v2, v14, v17
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v36, v36, v3
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v12, 1.0, v12 :: v_dual_fmac_f32 v9, v15, v7
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v15, v19
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v81
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v17, null, v12, v12, v103
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v2, v2, v6, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v6, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v14, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v144
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v16, -v18, v9, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v11, v15, v11
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v35, v183, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v2, v2, v10, v100
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v6, v6, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v7, v16, v7, v9
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v9, 1.0, v11
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v11, -v17, v14, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v209
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v6, 1.0, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v13, null, v9, v9, v201
	v_fmac_f32_e32 v14, v11, v14
	v_div_scale_f32 v11, vcc_lo, v103, v12, v103
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_scale_f32 v19, null, v6, v6, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v18, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v20, v11, v14
	v_div_fixup_f32 v1, v7, v1, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v7, v19
	v_rcp_f32_e32 v16, v13
	v_fma_f32 v8, -v17, v20, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v38, v38, v1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v1, v18, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v20, v8, v14
	v_fma_f32 v8, -v19, v7, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v10, -v13, v16, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v1, 1.0, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v3, -v17, v20, v11
	v_fmac_f32_e32 v7, v8, v7
	v_div_scale_f32 v8, s1, v81, v6, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v3, v3, v14, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v143
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v16, v10, v16 :: v_dual_mul_f32 v17, v8, v7
	v_div_scale_f32 v11, null, v1, v1, v209
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v4, -v19, v17, v8
	v_rcp_f32_e32 v14, v11
	v_div_fixup_f32 v3, v3, v12, v103
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v82
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v142
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v17, v4, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v27, v199, v3
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v4, v20
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v12, -v11, v14, 1.0
	v_fmac_f32_e32 v14, v12, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_ldexp_f32 v4, v4, v18
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v37, v37, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v2, s0, v201, v9, v201
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v4, 1.0, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v10, v2, v16
	v_div_scale_f32 v20, null, v4, v4, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v15, -v13, v10, v2
	v_fmac_f32_e32 v10, v15, v16
	v_div_scale_f32 v15, s2, v209, v1, v209
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v2, -v13, v10, v2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v2, v2, v16, v10
	v_mul_f32_e32 v10, v15, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v141
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v2, v2, v9, v201
	v_fma_f32 v16, -v11, v10, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v28, v91, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v8, -v19, v17, v8
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v10, v16, v14
	v_div_fmas_f32 v7, v8, v7, v17
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v138
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v6, v7, v6, v81
	v_fma_f32 v7, -v11, v10, v15
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v29, v93, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v7, v7, v14, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v139
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v1, v7, v1, v209
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v132
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v30, v198, v1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v13, v13
	v_exp_f32_e32 v14, v14
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v8, v13, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v12, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v7, v14, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v8, 1.0, v8 :: v_dual_add_f32 v3, 1.0, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v11, null, v8, v8, v132
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v13, -v20, v12, 1.0
	v_rcp_f32_e32 v10, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v12, v13, v12
	v_div_scale_f32 v13, s0, v82, v4, v82
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v16, -v11, v10, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v19, 0xbfb8aa3b, v71 :: v_dual_fmac_f32 v10, v16, v10
	v_exp_f32_e32 v9, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v16, s1, v132, v8, v132
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v9, v9, v18
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v1, 1.0, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v17, null, v1, v1, v71
	v_rcp_f32_e32 v2, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v7, -v17, v2, 1.0
	v_dual_mul_f32 v15, v13, v12 :: v_dual_fmac_f32 v2, v7, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v9, -v20, v15, v13
	v_fmac_f32_e32 v15, v9, v12
	v_mul_f32_e32 v9, v16, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v6, -v20, v15, v13
	v_fma_f32 v13, -v11, v9, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v6, v6, v12, v15
	v_fmac_f32_e32 v9, v13, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v4, v6, v4, v82
	v_fma_f32 v6, -v11, v9, v16
	v_div_scale_f32 v11, null, v3, v3, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v12, v11
	v_div_fmas_f32 v6, v6, v10, v9
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v7, s0, v71, v1, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v137
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v6, v6, v8, v132
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v14, v14
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v15, v7, v2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v10, 0, 0x42800000, s2
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v16, -v11, v12, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v20, v73, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v8, -v17, v15, v7
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v12, v16, v12
	v_div_scale_f32 v16, s1, v79, v3, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v15, v8, v2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v8, v14, v13
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v13, v16, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v10, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v7, -v17, v15, v7
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v17, -v11, v13, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, s2
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v8, 1.0, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v2, v7, v2, v15
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v13, v17, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v17, v18
	v_ldexp_f32 v9, v10, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v10, null, v8, v8, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v7, -v11, v13, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v136
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v1, v2, v1, v71
	v_rcp_f32_e32 v18, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v7, v7, v12, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v12, v17, v14
	v_cndmask_b32_e64 v15, 0, 0x42800000, s2
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v13, vcc_lo, v66, v8, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v12, 1.0, v12 :: v_dual_fmac_f32 v15, 0xbfb8aa3b, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v19, -v10, v18, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v21, v216, v1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v135
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v17, null, v12, v12, v64
	v_fmac_f32_e32 v18, v19, v18
	v_div_fixup_f32 v3, v7, v3, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v7, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v24, v17
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v9, 1.0, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v15, v13, v18 :: v_dual_mul_f32 v22, v87, v3
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v19, v72, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v23, null, v9, v9, v65
	v_fma_f32 v2, -v10, v15, v13
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v1, v7, v11
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v16, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v15, v2, v18
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v1, 1.0, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v4, -v10, v15, v13
	v_div_scale_f32 v7, null, v1, v1, v55
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v14, -v23, v16, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v13, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v4, v4, v18, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v10, v7
	v_fmac_f32_e32 v16, v14, v16
	v_div_scale_f32 v14, s0, v65, v9, v65
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v4, v4, v8, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v3, v14, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v13, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v2, -v23, v3, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v3, v2, v16
	v_fma_f32 v2, -v17, v24, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v11, v13, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v6, -v23, v3, v14
	v_fmac_f32_e32 v24, v2, v24
	v_div_scale_f32 v2, s1, v64, v12, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v3, v6, v16, v3
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v6, v2, v24
	v_div_scale_f32 v16, s0, v55, v1, v55
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v3, v3, v9, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v133
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v5, -v17, v6, v2
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v23, v57, v3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v49
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v6, v5, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v0, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v5, -v7, v10, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v2, -v17, v6, v2
	v_fmac_f32_e32 v10, v5, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v0, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v2, v2, v24, v6
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v6, 1.0, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v8, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v11, v16, v10 :: v_dual_add_f32 v0, 1.0, v0
	v_div_fixup_f32 v2, v2, v12, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_div_scale_f32 v9, null, v6, v6, v50
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v12, v9
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v5, v8, v5
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v8, null, v0, v0, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v5, 1.0, v5
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v18, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_scale_f32 v33, s2, v47, v5, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v48
	v_exp_f32_e32 v13, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v15, -v7, v11, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v11, v15, v10
	v_fma_f32 v15, -v9, v12, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v13, v13, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v7, -v7, v11, v16
	v_fmac_f32_e32 v12, v15, v12
	v_fma_f32 v15, -v8, v18, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v13, 1.0, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v7, v7, v10, v11
	v_div_scale_f32 v10, null, v5, v5, v47
	v_div_scale_f32 v11, vcc_lo, v50, v6, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v14, null, v13, v13, v48
	v_rcp_f32_e32 v25, v10
	v_div_fixup_f32 v1, v7, v1, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v26, v11, v12
	v_rcp_f32_e32 v24, v14
	v_fmac_f32_e32 v18, v15, v18
	v_div_scale_f32 v15, s0, v49, v0, v49
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v16, v63, v1
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v1, -v9, v26, v11
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v17, -v10, v25, 1.0
	v_mul_f32_e32 v31, v15, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v7, -v14, v24, 1.0
	v_fmac_f32_e32 v26, v1, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v25, v17, v25
	v_fma_f32 v1, -v8, v31, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v17, v58, v2 :: v_dual_fmac_f32 v24, v7, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v7, s1, v48, v13, v48
	v_mul_f32_e32 v34, v33, v25
	v_fma_f32 v3, -v9, v26, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v31, v1, v18 :: v_dual_mul_f32 v32, v7, v24
.Ltmp7:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v9, |v54|, |v110|, |v109|
.Ltmp8:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v1, -v10, v34, v33
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v11, |v45|, |v35|, |v36|
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp10:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v2, -v14, v32, v7
	v_fmac_f32_e32 v34, v1, v25
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v32, v2, v24
	v_div_fmas_f32 v2, v3, v12, v26
	v_fma_f32 v3, -v8, v31, v15
	s_mov_b32 vcc_lo, s0
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v8, |v51|, |v52|, |v53|
.Ltmp12:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v1, -v14, v32, v7
	v_fma_f32 v7, -v10, v34, v33
	v_div_fmas_f32 v3, v3, v18, v31
	v_div_fixup_f32 v2, v2, v6, v50
	s_mov_b32 vcc_lo, s1
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, |v75|, |v76|, |v77|
.Ltmp14:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v1, v1, v24, v32
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v0, v3, v0, v49
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v24, v40, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v7, v7, v25, v34
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v25, v56, v4
.Ltmp15:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v4, |v94|, |v95|
.Ltmp16:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v18, v39, v0
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v10, |v43|, |v44|
.Ltmp18:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v3, v7, v5, v47
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v5, |v96|, |v83|, |v84|
	v_max3_f32 v7, |v78|, |v115|, |v114|
	v_max3_f32 v12, |v27|, |v28|, |v29|
	s_mov_b32 s0, 0x76543210
.Ltmp20:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v14, v41, v3
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_div_fixup_f32 v1, v1, v13, v48
.Ltmp21:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v3, v4, |v97|, v5
	v_max3_f32 v4, v6, v7, |v113|
	v_max_f32_e64 v5, |v67|, |v68|
	v_max3_f32 v6, |v69|, |v59|, |v60|
	v_max3_f32 v13, |v30|, |v106|, |v105|
.Ltmp22:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v15, v42, v1
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v1, |v85|, |v86|, |v118|
	v_max3_f32 v7, |v61|, |v62|, |v111|
	v_max3_f32 v5, v5, |v70|, v6
	v_max3_f32 v6, v8, v9, |v108|
	v_max3_f32 v8, |v37|, |v38|, |v107|
	v_max3_f32 v9, v10, |v46|, v11
	v_max3_f32 v10, v12, v13, |v104|
	v_max3_f32 v0, v3, v1, v4
	v_max3_f32 v1, v5, v7, v6
	v_max3_f32 v6, |v24|, |v18|, |v15|
	v_max3_f32 v7, |v14|, |v89|, |v90|
	v_max3_f32 v2, v9, v8, v10
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v8, v0, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v3, |v19|, |v20|
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v13, 0x60, v180
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, v6, v7, |v92|
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v9, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v7, v8, v8
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v11, 1, v127
	v_lshrrev_b32_e32 v26, 3, v127
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v8, v9, v9
	v_max3_f32 v5, |v17|, |v16|, |v98|
	v_dual_max_f32 v0, v0, v7 :: v_dual_and_b32 v9, 8, v180
	v_max_f32_e32 v2, v2, v8
	v_max3_f32 v4, |v21|, |v25|, |v23|
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v8, 4, v180
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v3, v3, |v22|, v4
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v4, v1, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v3, v3, v5, v6
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v5, 3, v180
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v4
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v6, 4, v180
	v_lshl_add_u32 v7, v5, 9, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v1, v4 :: v_dual_lshlrev_b32 v10, 5, v5
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v4, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_add_u32 v31, v6, 6, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_add_u32 v7, v6, 2, v7
	v_and_or_b32 v8, 0x680, v8, v10
	v_xor_b32_e32 v12, v10, v13
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v7, v9, 4, v7
	v_xor_b32_e32 v8, v8, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v4
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v4, v7, v11, v12
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v7, v31, v26, v8
	ds_store_b128 v4, v[0:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v7
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v4, v0 :: v_dual_mov_b32 v7, v1
	v_mov_b32_e32 v8, v2
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v0, v0, v0 :: v_dual_max_f32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v12, v3, v3
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v7, v7, v7
	v_max_f32_e32 v2, v2, v2
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v5, v5, 4, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v0, v0, v4
	v_dual_max_f32 v1, v1, v7 :: v_dual_max_f32 v4, v8, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v7, v0 :: v_dual_mov_b32 v8, v1
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v4 :: v_dual_lshlrev_b32 v9, 3, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v4, v2 :: v_dual_max_f32 v7, v7, v7
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v8, v8, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v0, v0, v7 :: v_dual_max_f32 v1, v1, v8
	v_max_f32_e32 v3, v12, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v12, v3
	v_mov_b32_dpp v12, v12 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v7, v12, v12 :: v_dual_mov_b32 v12, v1
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v3, v3, v7
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v8, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v7, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v7, v7 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v4
	v_dual_max_f32 v1, v1, v12 :: v_dual_add_nc_u32 v12, 0, v127
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v7, v7, v7 :: v_dual_mov_b32 v4, v2
	v_dual_max_f32 v8, v8, v8 :: v_dual_max_f32 v3, v3, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v0, v8
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v8, 1, v13
.Ltmp67:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v7, 63, v180
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v4
	v_max_f32_e32 v2, v2, v4
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v4, 5, v6
	v_add3_u32 v6, v12, v8, v9
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v4, v5, v4, v9
	ds_store_b128 v6, v[0:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp70:
	.loc	1 1044 32                       ; ragged.py:1044:32
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v9, 4, v182
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[2:5], v4
.Ltmp72:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s34, v7
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v12, 48, v9
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v0, v2, v2 :: v_dual_add_nc_u32 v7, s34, v7
	v_max_f32_e32 v4, v4, v4
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	v_add_co_u32 v31, s0, s34, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v0, 0x2b8cbccc, v0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v12, 32, v9
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v32, null, s35, 0, s0
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v3, v3, v3
	v_div_scale_f32 v6, null, 0x40e00000, 0x40e00000, v0
	v_max_f32_e32 v39, 0x2b8cbccc, v4
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v33, s0, s34, v12
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v8, v6
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v34, null, s35, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[40:41], v[31:32]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[42:43], v[31:32]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v32, 0x2b8cbccc, v3
	v_div_scale_f32 v40, null, 0x40e00000, 0x40e00000, v39
	v_max_f32_e32 v5, v5, v5
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v31, 16, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v26, -v6, v8, 1.0
	v_rcp_f32_e32 v41, v40
	v_div_scale_f32 v47, null, 0x40e00000, 0x40e00000, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_max_f32 v5, 0x2b8cbccc, v5 :: v_dual_fmac_f32 v8, v26, v8
	v_div_scale_f32 v26, vcc_lo, v0, 0x40e00000, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s3, s34, v31
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v31, s6, v39, 0x40e00000, v39
	v_mul_f32_e32 v12, v26, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v42, -v40, v41, 1.0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[40:41], v[33:34]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v4, -v6, v12, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v42, v41
	v_div_scale_f32 v42, null, 0x40e00000, 0x40e00000, v5
	v_fmac_f32_e32 v12, v4, v8
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s35, 0, s3
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[42:43], v[33:34]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v34.h, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_fma_f32 v6, -v6, v12, v26
	v_rcp_f32_e32 v26, v47
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[40:41], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[42:43], v[3:4]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_fmas_f32 v6, v6, v8, v12
	v_rcp_f32_e32 v12, v42
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v0, v6, 0x40e00000, v0
	v_fma_f32 v33, -v47, v26, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v48, -v42, v12, 1.0
	v_fmac_f32_e32 v12, v48, v12
	v_div_scale_f32 v48, s8, v5, 0x40e00000, v5
	v_mul_f32_e32 v8, v31, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v6, -v40, v8, v31
	v_fmac_f32_e32 v8, v6, v41
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v6.l, v0.h
	v_mov_b16_e32 v6.h, v34.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v3, -v40, v8, v31
	v_dual_mul_f32 v31, v48, v12 :: v_dual_and_b32 v4, 1, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v40, v3, v41, v8
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s6, s34, v9
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v8, v0, v4, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_fma_f32 v0, -v42, v31, v48
	v_fmac_f32_e32 v26, v33, v26
	v_div_scale_f32 v33, s7, v32, 0x40e00000, v32
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v31, v0, v12
	v_div_fixup_f32 v39, v40, 0x40e00000, v39
	v_mul_f32_e32 v49, v33, v26
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s35, 0, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v40, -v42, v31, v48
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v34.l, v39.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v6, -v47, v49, v33
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[40:41], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[42:43], v[3:4]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, s34, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_fmac_f32 v49, v6, v26 :: v_dual_and_b32 v6, 0xffff0000, v8
	v_fma_f32 v33, -v47, v49, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v6, v6, v94
	v_div_scale_f32 v42, null, v6, v6, v97
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v26, v33, v26, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v33, v0
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s8
	v_div_fmas_f32 v12, v40, v12, v31
	v_div_fixup_f32 v26, v26, 0x40e00000, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v32, null, v6, v6, v95
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v31, 1, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v5, v12, 0x40e00000, v5
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v12.l, v26.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v41, v32
	v_fma_f32 v40, -v0, v33, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v12.h, v34.h
	v_add3_u32 v3, v39, v31, 0x7fff
	v_mov_b16_e32 v34.l, v5.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v33, v40, v33
	v_div_scale_f32 v40, vcc_lo, v94, v6, v94
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v12
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v39, -v32, v41, 1.0
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v55, 0xffff0000, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v31, v40, v33
	.loc	1 1238 23 is_stmt 1             ; ragged.py:1238:23
	v_add3_u32 v12, v26, v4, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v41, v39, v41
	v_rcp_f32_e32 v39, v42
	v_fma_f32 v26, -v0, v31, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v71, 0xffff0000, v12
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v31, v26, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v49, -v42, v39, 1.0
	v_fma_f32 v0, -v0, v31, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v49, v39
	v_div_scale_f32 v49, s9, v97, v6, v97
	v_div_fmas_f32 v0, v0, v33, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v33, v49, v39 :: v_dual_and_b32 v34, 1, v34
	v_div_scale_f32 v48, s8, v95, v6, v95
	v_div_scale_f32 v56, null, v6, v6, v83
	.loc	1 1238 23 is_stmt 1             ; ragged.py:1238:23
	v_add3_u32 v4, v5, v34, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v34, v48, v41
	v_div_scale_f32 v57, null, v6, v6, v84
	v_div_scale_f32 v47, null, v6, v6, v96
	v_fma_f32 v40, -v32, v34, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v58, v57
	v_div_fixup_f32 v31, v0, v6, v94
	v_rcp_f32_e32 v5, v47
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v34, v40, v41
	v_rcp_f32_e32 v40, v56
	v_div_scale_f32 v73, null, v6, v6, v77
	v_div_scale_f32 v80, null, v6, v6, v113
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v0, -v32, v34, v48
	v_fma_f32 v32, -v42, v33, v49
	v_fma_f32 v50, -v47, v5, 1.0
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v63, -v56, v40, 1.0
	v_div_fmas_f32 v0, v0, v41, v34
	v_fmac_f32_e32 v33, v32, v39
	s_mov_b32 vcc_lo, s9
	v_dual_fmac_f32 v5, v50, v5 :: v_dual_fmac_f32 v40, v63, v40
	v_fma_f32 v63, -v57, v58, 1.0
	v_div_fixup_f32 v32, v0, v6, v95
	v_fma_f32 v0, -v42, v33, v49
	v_div_scale_f32 v49, s11, v84, v6, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v58, v63, v58
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v26, 0xffff0000, v4
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v50, s10, v96, v6, v96
	v_div_fmas_f32 v0, v0, v39, v33
	v_mul_f32_e32 v39, v49, v58
	v_div_scale_f32 v41, s8, v83, v6, v83
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v63, null, v6, v6, v85
	v_fma_f32 v64, -v57, v39, v49
	v_mul_f32_e32 v48, v50, v5
	v_mul_f32_e32 v42, v41, v40
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v39, v64, v58
	v_fma_f32 v34, -v47, v48, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v48, v34, v5
	v_fma_f32 v34, -v56, v42, v41
	v_fma_f32 v33, -v47, v48, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v34, v40
	v_rcp_f32_e32 v47, v63
	v_div_scale_f32 v50, null, v6, v6, v86
	v_div_fmas_f32 v5, v33, v5, v48
	v_div_fixup_f32 v33, v0, v6, v97
	v_fma_f32 v0, -v56, v42, v41
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v48, v50
	v_div_scale_f32 v56, null, v6, v6, v118
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fmas_f32 v0, v0, v40, v42
	v_fma_f32 v40, -v57, v39, v49
	v_div_scale_f32 v57, null, v6, v6, v75
	v_fma_f32 v65, -v63, v47, 1.0
	v_div_fixup_f32 v34, v5, v6, v96
	v_div_scale_f32 v5, s9, v85, v6, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v66, v57
	v_fmac_f32_e32 v47, v65, v47
	v_fma_f32 v41, -v50, v48, 1.0
	v_rcp_f32_e32 v49, v56
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v40, v40, v58, v39
	v_fmac_f32_e32 v48, v41, v48
	v_div_scale_f32 v41, s8, v86, v6, v86
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v72, -v57, v66, 1.0
	v_div_fixup_f32 v39, v0, v6, v83
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v64, v41, v48
	v_fma_f32 v65, -v56, v49, 1.0
	v_fmac_f32_e32 v66, v72, v66
	v_mul_f32_e32 v42, v5, v47
	v_div_scale_f32 v72, s11, v75, v6, v75
	v_fma_f32 v0, -v50, v64, v41
	v_fmac_f32_e32 v49, v65, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v58, -v63, v42, v5
	v_div_scale_f32 v65, null, v6, v6, v76
	v_fmac_f32_e32 v64, v0, v48
	v_div_fixup_f32 v40, v40, v6, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v42, v58, v47
	v_div_scale_f32 v58, s10, v118, v6, v118
	v_fma_f32 v41, -v50, v64, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v5, -v63, v42, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v0, v58, v49
	v_rcp_f32_e32 v63, v65
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v39, v39
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v5, v5, v47, v42
	v_fma_f32 v42, -v56, v0, v58
	v_mul_f32_e32 v47, v72, v66
	s_mov_b32 vcc_lo, s8
	v_div_fmas_f32 v48, v41, v48, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v0, v42, v49
	v_fma_f32 v50, -v65, v63, 1.0
	v_rcp_f32_e32 v64, v73
	v_fma_f32 v74, -v57, v47, v72
	v_div_fixup_f32 v41, v5, v6, v85
	v_fma_f32 v5, -v56, v0, v58
	v_fmac_f32_e32 v63, v50, v63
	v_div_scale_f32 v50, s8, v76, v6, v76
	v_fmac_f32_e32 v47, v74, v66
	v_div_scale_f32 v58, null, v6, v6, v78
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v42, v48, v6, v86
	v_mul_f32_e32 v56, v50, v63
	v_fma_f32 v48, -v73, v64, 1.0
	v_div_fmas_f32 v0, v5, v49, v0
	v_fma_f32 v5, -v57, v47, v72
	v_rcp_f32_e32 v57, v58
	v_div_scale_f32 v74, null, v6, v6, v115
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v49, -v65, v56, v50
	v_fmac_f32_e32 v64, v48, v64
	v_div_scale_f32 v72, s9, v77, v6, v77
	v_div_fmas_f32 v5, v5, v66, v47
	v_rcp_f32_e32 v66, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_dual_fmac_f32 v56, v49, v63 :: v_dual_mul_f32 v79, v72, v64
	v_fma_f32 v49, -v58, v57, 1.0
	v_div_fixup_f32 v47, v0, v6, v118
	v_div_fixup_f32 v48, v5, v6, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fma_f32 v0, -v65, v56, v50
	v_fma_f32 v5, -v73, v79, v72
	v_fmac_f32_e32 v57, v49, v57
	v_div_scale_f32 v65, s10, v78, v6, v78
	v_fma_f32 v49, -v74, v66, 1.0
	v_div_scale_f32 v75, null, v6, v6, v114
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v79, v5, v64
	v_div_fmas_f32 v0, v0, v63, v56
	v_mul_f32_e32 v5, v65, v57
	v_fmac_f32_e32 v66, v49, v66
	v_rcp_f32_e32 v63, v75
	v_div_scale_f32 v56, s8, v115, v6, v115
	v_div_fixup_f32 v49, v0, v6, v76
	v_fma_f32 v0, -v73, v79, v72
	v_fma_f32 v50, -v58, v5, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v72, v56, v66
	v_rcp_f32_e32 v73, v80
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v76, -v75, v63, 1.0
	v_div_fmas_f32 v0, v0, v64, v79
	v_fmac_f32_e32 v5, v50, v57
	v_fma_f32 v64, -v74, v72, v56
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v63, v76, v63
	v_div_scale_f32 v76, s9, v114, v6, v114
	v_fma_f32 v79, -v80, v73, 1.0
	v_div_fixup_f32 v50, v0, v6, v77
	v_fma_f32 v0, -v58, v5, v65
	v_fmac_f32_e32 v72, v64, v66
	v_div_scale_f32 v65, null, v71, v71, v67
	v_dual_mul_f32 v58, v76, v63 :: v_dual_fmac_f32 v73, v79, v73
	v_div_scale_f32 v64, s11, v113, v6, v113
	v_div_fmas_f32 v0, v0, v57, v5
	v_fma_f32 v5, -v74, v72, v56
	v_rcp_f32_e32 v74, v65
	v_div_scale_f32 v79, null, v71, v71, v68
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v56, -v75, v58, v76
	v_mul_f32_e32 v77, v64, v73
	v_div_fmas_f32 v5, v5, v66, v72
	v_rcp_f32_e32 v66, v79
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v58, v56, v63
	v_fma_f32 v72, -v80, v77, v64
	v_fma_f32 v81, -v65, v74, 1.0
	v_div_fixup_f32 v56, v0, v6, v78
	v_div_fixup_f32 v57, v5, v6, v115
	v_fma_f32 v0, -v75, v58, v76
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v77, v72, v73 :: v_dual_fmac_f32 v74, v81, v74
	v_div_scale_f32 v5, s8, v67, v71, v67
	v_fma_f32 v72, -v79, v66, 1.0
	v_div_scale_f32 v75, null, v71, v71, v70
	v_div_fmas_f32 v0, v0, v63, v58
	v_fma_f32 v58, -v80, v77, v64
	v_mul_f32_e32 v64, v5, v74
	v_fmac_f32_e32 v66, v72, v66
	v_rcp_f32_e32 v72, v75
	v_div_scale_f32 v78, null, v71, v71, v69
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v76, s9, v68, v71, v68
	v_div_fmas_f32 v63, v58, v73, v77
	v_fma_f32 v73, -v65, v64, v5
	v_rcp_f32_e32 v81, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v77, v76, v66
	v_fma_f32 v80, -v75, v72, 1.0
	v_div_fixup_f32 v58, v0, v6, v114
	v_fmac_f32_e32 v64, v73, v74
	v_div_scale_f32 v73, null, v71, v71, v59
	v_div_fixup_f32 v63, v63, v6, v113
	v_fma_f32 v0, -v79, v77, v76
	v_fmac_f32_e32 v72, v80, v72
	v_div_scale_f32 v6, s10, v70, v71, v70
	v_fma_f32 v80, -v78, v81, 1.0
	v_rcp_f32_e32 v82, v73
	v_fma_f32 v5, -v65, v64, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v77, v0, v66 :: v_dual_mul_f32 v0, v6, v72
	v_fmac_f32_e32 v81, v80, v81
	v_div_scale_f32 v80, s11, v69, v71, v69
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v65, -v75, v0, v6
	v_div_fmas_f32 v5, v5, v74, v64
	v_fma_f32 v64, -v79, v77, v76
	v_mul_f32_e32 v74, v80, v81
	v_fma_f32 v76, -v73, v82, 1.0
	v_div_scale_f32 v79, null, v71, v71, v60
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v0, v65, v72
	v_div_fmas_f32 v66, v64, v66, v77
	v_rcp_f32_e32 v77, v79
	v_fma_f32 v83, -v78, v74, v80
	v_fmac_f32_e32 v82, v76, v82
	v_div_scale_f32 v76, s8, v59, v71, v59
	v_div_fixup_f32 v64, v5, v71, v67
	v_div_fixup_f32 v65, v66, v71, v68
	v_fma_f32 v5, -v75, v0, v6
	v_fmac_f32_e32 v74, v83, v81
	v_mul_f32_e32 v6, v76, v82
	v_div_scale_f32 v68, null, v71, v71, v61
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v66, -v79, v77, 1.0
	v_div_fmas_f32 v0, v5, v72, v0
	v_fma_f32 v5, -v78, v74, v80
	v_fma_f32 v67, -v73, v6, v76
	v_rcp_f32_e32 v72, v68
	v_div_scale_f32 v78, null, v71, v71, v62
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v77, v66, v77
	v_div_scale_f32 v75, s9, v60, v71, v60
	v_div_fmas_f32 v5, v5, v81, v74
	v_fmac_f32_e32 v6, v67, v82
	v_rcp_f32_e32 v74, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v80, v75, v77
	v_fma_f32 v81, -v68, v72, 1.0
	v_div_fixup_f32 v66, v0, v71, v70
	v_fma_f32 v0, -v73, v6, v76
	v_div_scale_f32 v73, null, v71, v71, v111
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v67, v5, v71, v69
	v_fma_f32 v5, -v79, v80, v75
	v_fmac_f32_e32 v72, v81, v72
	v_div_scale_f32 v69, s10, v61, v71, v61
	v_fma_f32 v70, -v78, v74, 1.0
	v_div_fmas_f32 v0, v0, v82, v6
	v_rcp_f32_e32 v6, v73
	v_fmac_f32_e32 v80, v5, v77
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v5, v69, v72 :: v_dual_fmac_f32 v74, v70, v74
	v_div_scale_f32 v70, s8, v62, v71, v62
	v_div_scale_f32 v76, null, v71, v71, v51
	v_div_fixup_f32 v59, v0, v71, v59
	v_fma_f32 v0, -v79, v80, v75
	v_fma_f32 v75, -v68, v5, v69
	v_mul_f32_e32 v79, v70, v74
	v_rcp_f32_e32 v81, v76
	v_fma_f32 v82, -v73, v6, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v5, v75, v72
	v_div_fmas_f32 v0, v0, v77, v80
	v_fma_f32 v75, -v78, v79, v70
	v_fmac_f32_e32 v6, v82, v6
	v_div_scale_f32 v77, s9, v111, v71, v111
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v60, v0, v71, v60
	v_fma_f32 v80, -v76, v81, 1.0
	v_fma_f32 v0, -v68, v5, v69
	v_fmac_f32_e32 v79, v75, v74
	v_mul_f32_e32 v68, v77, v6
	v_div_scale_f32 v75, null, v71, v71, v52
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v81, v80, v81
	v_div_scale_f32 v69, s11, v51, v71, v51
	v_div_fmas_f32 v0, v0, v72, v5
	v_fma_f32 v5, -v78, v79, v70
	v_fma_f32 v70, -v73, v68, v77
	v_rcp_f32_e32 v72, v75
	v_div_scale_f32 v80, null, v71, v71, v53
	v_mul_f32_e32 v78, v69, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v68, v70, v6
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v70, v80
	v_div_fmas_f32 v5, v5, v74, v79
	v_fma_f32 v74, -v76, v78, v69
	v_div_fixup_f32 v61, v0, v71, v61
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v79, -v75, v72, 1.0
	v_fma_f32 v0, -v73, v68, v77
	v_div_fixup_f32 v62, v5, v71, v62
	v_fmac_f32_e32 v78, v74, v81
	v_div_scale_f32 v5, s8, v52, v71, v52
	v_fmac_f32_e32 v72, v79, v72
	v_fma_f32 v73, -v80, v70, 1.0
	v_div_scale_f32 v74, null, v71, v71, v54
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v77, null, v71, v71, v110
	v_div_fmas_f32 v0, v0, v6, v68
	v_fma_f32 v6, -v76, v78, v69
	v_mul_f32_e32 v69, v5, v72
	v_fmac_f32_e32 v70, v73, v70
	v_rcp_f32_e32 v73, v74
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v76, s9, v53, v71, v53
	v_div_fmas_f32 v6, v6, v81, v78
	v_fma_f32 v78, -v75, v69, v5
	v_rcp_f32_e32 v82, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v79, v76, v70
	v_div_fixup_f32 v68, v0, v71, v111
	v_div_fixup_f32 v51, v6, v71, v51
	v_fma_f32 v81, -v74, v73, 1.0
	v_fmac_f32_e32 v69, v78, v72
	v_div_scale_f32 v78, null, v71, v71, v109
	v_fma_f32 v0, -v80, v79, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v73, v81, v73
	v_div_scale_f32 v6, s10, v54, v71, v54
	v_fma_f32 v81, -v77, v82, 1.0
	v_fma_f32 v5, -v75, v69, v5
	v_rcp_f32_e32 v75, v78
	v_dual_fmac_f32 v79, v0, v70 :: v_dual_mul_f32 v0, v6, v73
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v82, v81, v82
	v_div_scale_f32 v81, s11, v110, v71, v110
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v83, null, v71, v71, v108
	v_div_fmas_f32 v5, v5, v72, v69
	v_fma_f32 v69, -v80, v79, v76
	v_fma_f32 v72, -v74, v0, v6
	v_mul_f32_e32 v76, v81, v82
	v_fma_f32 v80, -v78, v75, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v52, v5, v71, v52
	v_div_fmas_f32 v69, v69, v70, v79
	v_fmac_f32_e32 v0, v72, v73
	v_rcp_f32_e32 v72, v83
	v_fma_f32 v70, -v77, v76, v81
	v_fmac_f32_e32 v75, v80, v75
	v_div_scale_f32 v79, s8, v109, v71, v109
	v_fma_f32 v5, -v74, v0, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v76, v70, v82
	v_div_scale_f32 v74, null, v55, v55, v43
	v_mul_f32_e32 v6, v79, v75
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v53, v69, v71, v53
	v_fma_f32 v69, -v83, v72, 1.0
	v_div_fmas_f32 v0, v5, v73, v0
	v_fma_f32 v5, -v77, v76, v81
	v_fma_f32 v70, -v78, v6, v79
	v_rcp_f32_e32 v73, v74
	v_div_scale_f32 v80, null, v55, v55, v44
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v72, v69, v72
	v_div_scale_f32 v77, s9, v108, v71, v108
	v_div_fmas_f32 v5, v5, v82, v76
	v_fmac_f32_e32 v6, v70, v75
	v_rcp_f32_e32 v76, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v81, v77, v72
	v_fma_f32 v70, -v74, v73, 1.0
	v_div_fixup_f32 v54, v0, v71, v54
	v_fma_f32 v0, -v78, v6, v79
	v_div_scale_f32 v79, null, v55, v55, v46
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v69, v5, v71, v110
	v_fma_f32 v5, -v83, v81, v77
	v_fmac_f32_e32 v73, v70, v73
	v_div_scale_f32 v78, s10, v43, v55, v43
	v_fma_f32 v70, -v80, v76, 1.0
	v_div_fmas_f32 v0, v0, v75, v6
	v_rcp_f32_e32 v6, v79
	v_fmac_f32_e32 v81, v5, v72
	v_mul_f32_e32 v5, v78, v73
	v_fmac_f32_e32 v76, v70, v76
	v_div_scale_f32 v75, s8, v44, v55, v44
	v_div_scale_f32 v82, null, v55, v55, v45
	v_div_fixup_f32 v70, v0, v71, v109
	v_fma_f32 v0, -v83, v81, v77
	v_fma_f32 v77, -v74, v5, v78
	v_mul_f32_e32 v83, v75, v76
	v_rcp_f32_e32 v84, v82
	v_fma_f32 v85, -v79, v6, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v5, v77, v73
	v_div_fmas_f32 v0, v0, v72, v81
	v_fma_f32 v72, -v80, v83, v75
	v_fmac_f32_e32 v6, v85, v6
	v_div_scale_f32 v77, s9, v46, v55, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v71, v0, v71, v108
	v_fma_f32 v81, -v82, v84, 1.0
	v_fma_f32 v0, -v74, v5, v78
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v83, v72, v76 :: v_dual_mul_f32 v72, v77, v6
	v_div_scale_f32 v78, null, v55, v55, v35
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v84, v81, v84
	v_div_scale_f32 v74, s11, v45, v55, v45
	v_div_fmas_f32 v0, v0, v73, v5
	v_fma_f32 v5, -v80, v83, v75
	v_fma_f32 v73, -v79, v72, v77
	v_rcp_f32_e32 v75, v78
	v_div_scale_f32 v81, null, v55, v55, v36
	v_mul_f32_e32 v80, v74, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v72, v73, v6
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v73, v81
	v_div_fmas_f32 v5, v5, v76, v83
	v_fma_f32 v76, -v82, v80, v74
	v_div_fixup_f32 v43, v0, v55, v43
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v83, -v78, v75, 1.0
	v_fma_f32 v0, -v79, v72, v77
	v_div_fixup_f32 v44, v5, v55, v44
	v_fmac_f32_e32 v80, v76, v84
	v_div_scale_f32 v5, s8, v35, v55, v35
	v_fmac_f32_e32 v75, v83, v75
	v_fma_f32 v76, -v81, v73, 1.0
	v_div_scale_f32 v77, null, v55, v55, v37
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v79, null, v55, v55, v38
	v_div_fmas_f32 v0, v0, v6, v72
	v_fma_f32 v6, -v82, v80, v74
	v_dual_mul_f32 v72, v5, v75 :: v_dual_fmac_f32 v73, v76, v73
	v_rcp_f32_e32 v74, v77
	v_div_scale_f32 v76, s9, v36, v55, v36
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v46, v0, v55, v46
	v_div_fmas_f32 v6, v6, v84, v80
	v_fma_f32 v80, -v78, v72, v5
	v_mul_f32_e32 v82, v76, v73
	v_rcp_f32_e32 v84, v79
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v83, -v77, v74, 1.0
	v_fmac_f32_e32 v72, v80, v75
	v_fma_f32 v0, -v81, v82, v76
	v_div_fixup_f32 v45, v6, v55, v45
	v_div_scale_f32 v6, s10, v37, v55, v37
	v_fmac_f32_e32 v74, v83, v74
	v_div_scale_f32 v80, null, v55, v55, v107
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v83, -v79, v84, 1.0
	v_fma_f32 v5, -v78, v72, v5
	v_fmac_f32_e32 v82, v0, v73
	v_mul_f32_e32 v0, v6, v74
	v_rcp_f32_e32 v78, v80
	v_fmac_f32_e32 v84, v83, v84
	v_div_scale_f32 v83, s11, v38, v55, v38
	v_div_fmas_f32 v5, v5, v75, v72
	v_fma_f32 v72, -v81, v82, v76
	v_div_scale_f32 v85, null, v55, v55, v27
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v75, -v77, v0, v6
	v_mul_f32_e32 v76, v83, v84
	v_div_fmas_f32 v72, v72, v73, v82
	v_rcp_f32_e32 v73, v85
	v_fma_f32 v81, -v80, v78, 1.0
	v_fmac_f32_e32 v0, v75, v74
	v_fma_f32 v75, -v79, v76, v83
	v_div_fixup_f32 v36, v72, v55, v36
	v_div_fixup_f32 v35, v5, v55, v35
	v_fmac_f32_e32 v78, v81, v78
	v_div_scale_f32 v81, s8, v107, v55, v107
	v_fmac_f32_e32 v76, v75, v84
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v72, -v85, v73, 1.0
	v_div_scale_f32 v75, null, v55, v55, v28
	v_fma_f32 v5, -v77, v0, v6
	v_dual_mul_f32 v6, v81, v78 :: v_dual_fmac_f32 v73, v72, v73
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v72, v75
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v77, s9, v27, v55, v27
	v_div_fmas_f32 v0, v5, v74, v0
	v_fma_f32 v5, -v79, v76, v83
	v_fma_f32 v74, -v80, v6, v81
	v_div_scale_f32 v79, null, v55, v55, v29
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v82, -v75, v72, 1.0
	v_div_fmas_f32 v5, v5, v84, v76
	v_fmac_f32_e32 v6, v74, v78
	v_rcp_f32_e32 v74, v79
	v_mul_f32_e32 v76, v77, v73
	v_fmac_f32_e32 v72, v82, v72
	v_div_fixup_f32 v5, v5, v55, v38
	v_div_scale_f32 v82, null, v55, v55, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fma_f32 v38, -v85, v76, v77
	v_div_fixup_f32 v0, v0, v55, v37
	v_fma_f32 v37, -v80, v6, v81
	v_div_scale_f32 v80, s10, v28, v55, v28
	v_fma_f32 v81, -v79, v74, 1.0
	v_fmac_f32_e32 v76, v38, v73
	v_rcp_f32_e32 v38, v82
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v57
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v6, v37, v78, v6
	v_dual_mul_f32 v37, v80, v72 :: v_dual_fmac_f32 v74, v81, v74
	v_div_scale_f32 v78, s8, v29, v55, v29
	v_div_scale_f32 v81, null, v55, v55, v106
	v_fma_f32 v77, -v85, v76, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v75, v37, v80
	v_mul_f32_e32 v84, v78, v74
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v85, v81
	v_fma_f32 v86, -v82, v38, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v37, v83, v72
	v_div_fmas_f32 v73, v77, v73, v76
	v_fma_f32 v76, -v79, v84, v78
	v_fmac_f32_e32 v38, v86, v38
	v_div_scale_f32 v77, s9, v30, v55, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v27, v73, v55, v27
	v_fma_f32 v83, -v81, v85, 1.0
	v_fma_f32 v73, -v75, v37, v80
	v_fmac_f32_e32 v84, v76, v74
	v_mul_f32_e32 v75, v77, v38
	v_div_scale_f32 v80, null, v55, v55, v105
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v85, v83, v85
	v_div_scale_f32 v76, s11, v106, v55, v106
	v_div_fmas_f32 v37, v73, v72, v37
	v_fma_f32 v72, -v79, v84, v78
	v_fma_f32 v73, -v82, v75, v77
	v_rcp_f32_e32 v78, v80
	v_div_scale_f32 v83, null, v55, v55, v104
	v_mul_f32_e32 v79, v76, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v75, v73, v38
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v73, v83
	v_div_fmas_f32 v72, v72, v74, v84
	v_fma_f32 v74, -v81, v79, v76
	v_div_fixup_f32 v28, v37, v55, v28
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v84, -v80, v78, 1.0
	v_fma_f32 v37, -v82, v75, v77
	v_div_fixup_f32 v29, v72, v55, v29
	v_fmac_f32_e32 v79, v74, v85
	v_div_scale_f32 v72, s8, v105, v55, v105
	v_fmac_f32_e32 v78, v84, v78
	v_fma_f32 v74, -v83, v73, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v82, null, v26, v26, v20
	v_div_fmas_f32 v37, v37, v38, v75
	v_fma_f32 v38, -v81, v79, v76
	v_mul_f32_e32 v75, v72, v78
	v_fmac_f32_e32 v73, v74, v73
	v_div_scale_f32 v74, null, v26, v26, v19
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v76, s9, v104, v55, v104
	v_div_fmas_f32 v38, v38, v85, v79
	v_rcp_f32_e32 v77, v74
	v_fma_f32 v79, -v80, v75, v72
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v81, v76, v73
	v_div_fixup_f32 v30, v37, v55, v30
	v_div_fixup_f32 v37, v38, v55, v106
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v75, v79, v78
	v_rcp_f32_e32 v79, v82
	v_fma_f32 v38, -v83, v81, v76
	v_div_scale_f32 v86, null, v26, v26, v21
	v_fma_f32 v84, -v74, v77, 1.0
	v_fma_f32 v72, -v80, v75, v72
	v_div_scale_f32 v80, null, v26, v26, v22
	v_fmac_f32_e32 v81, v38, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v77, v84, v77
	v_fma_f32 v85, -v82, v79, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v84, v80
	v_div_scale_f32 v38, s10, v19, v26, v19
	v_div_fmas_f32 v72, v72, v78, v75
	v_fma_f32 v75, -v83, v81, v76
	v_fmac_f32_e32 v79, v85, v79
	v_div_scale_f32 v78, s8, v20, v26, v20
	v_mul_f32_e32 v76, v38, v77
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v83, -v80, v84, 1.0
	v_mul_f32_e32 v87, v78, v79
	v_rcp_f32_e32 v88, v86
	v_fma_f32 v85, -v74, v76, v38
	v_div_fmas_f32 v73, v75, v73, v81
	v_fmac_f32_e32 v84, v83, v84
	v_div_scale_f32 v83, s11, v22, v26, v22
	v_fma_f32 v75, -v82, v87, v78
	v_div_fixup_f32 v6, v6, v55, v107
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v76, v85, v77 :: v_dual_mul_f32 v81, v83, v84
	v_div_fixup_f32 v72, v72, v55, v105
	v_div_fixup_f32 v55, v73, v55, v104
	v_fmac_f32_e32 v87, v75, v79
	v_div_scale_f32 v75, null, v26, v26, v25
	v_fma_f32 v73, -v80, v81, v83
	v_fma_f32 v38, -v74, v76, v38
	v_fma_f32 v74, -v86, v88, 1.0
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v27, v27
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v81, v73, v84
	v_rcp_f32_e32 v73, v75
	v_div_fmas_f32 v38, v38, v77, v76
	v_fma_f32 v76, -v82, v87, v78
	v_fmac_f32_e32 v88, v74, v88
	v_div_scale_f32 v74, s9, v21, v26, v21
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v77, -v80, v81, v83
	v_div_fmas_f32 v76, v76, v79, v87
	v_mul_f32_e32 v78, v74, v88
	v_div_scale_f32 v79, null, v26, v26, v23
	v_fma_f32 v80, -v75, v73, 1.0
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v82, -v86, v78, v74
	v_div_fmas_f32 v77, v77, v84, v81
	v_rcp_f32_e32 v81, v79
	v_fmac_f32_e32 v73, v80, v73
	v_div_scale_f32 v80, s8, v25, v26, v25
	v_div_fixup_f32 v19, v38, v26, v19
	v_fmac_f32_e32 v78, v82, v88
	v_div_fixup_f32 v20, v76, v26, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v38, v80, v73
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v22, v77, v26, v22
	v_fma_f32 v76, -v79, v81, 1.0
	v_fma_f32 v74, -v86, v78, v74
	v_fma_f32 v82, -v75, v38, v80
	v_div_scale_f32 v77, null, v26, v26, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v76, v81
	v_div_scale_f32 v76, s10, v23, v26, v23
	v_div_fmas_f32 v74, v74, v88, v78
	v_fmac_f32_e32 v38, v82, v73
	v_rcp_f32_e32 v83, v77
	v_mul_f32_e32 v78, v76, v81
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v21, v74, v26, v21
	v_fma_f32 v74, -v75, v38, v80
	v_div_scale_f32 v82, null, v26, v26, v16
	v_fma_f32 v75, -v79, v78, v76
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v38, v74, v73, v38
	v_div_scale_f32 v73, null, v26, v26, v98
	v_fma_f32 v80, -v77, v83, 1.0
	v_rcp_f32_e32 v84, v82
	v_fmac_f32_e32 v78, v75, v81
	v_rcp_f32_e32 v75, v73
	v_div_scale_f32 v74, s8, v17, v26, v17
	v_fmac_f32_e32 v83, v80, v83
	v_div_scale_f32 v80, null, v26, v26, v24
	v_div_fixup_f32 v25, v38, v26, v25
	v_fma_f32 v76, -v79, v78, v76
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v82, v84, 1.0
	v_rcp_f32_e32 v86, v80
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v85, -v73, v75, 1.0
	v_mul_f32_e32 v79, v74, v83
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v84, v38, v84
	v_div_scale_f32 v38, s9, v16, v26, v16
	v_fmac_f32_e32 v75, v85, v75
	v_div_scale_f32 v85, null, v26, v26, v18
	v_div_fmas_f32 v76, v76, v81, v78
	v_fma_f32 v78, -v77, v79, v74
	v_mul_f32_e32 v81, v38, v84
	v_div_scale_f32 v87, s10, v98, v26, v98
	v_fma_f32 v88, -v80, v86, 1.0
	v_rcp_f32_e32 v91, v85
	v_fmac_f32_e32 v79, v78, v83
	v_fma_f32 v78, -v82, v81, v38
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v93, v87, v75 :: v_dual_fmac_f32 v86, v88, v86
	v_div_scale_f32 v88, s11, v24, v26, v24
	v_div_fixup_f32 v23, v76, v26, v23
	v_fma_f32 v74, -v77, v79, v74
	v_fmac_f32_e32 v81, v78, v84
	v_fma_f32 v76, -v73, v93, v87
	v_mul_f32_e32 v77, v88, v86
	v_fma_f32 v78, -v85, v91, 1.0
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v38, -v82, v81, v38
	v_fmac_f32_e32 v93, v76, v75
	v_fma_f32 v76, -v80, v77, v88
	v_fmac_f32_e32 v91, v78, v91
	v_div_scale_f32 v78, s8, v18, v26, v18
	v_div_fmas_f32 v74, v74, v83, v79
	v_fma_f32 v73, -v73, v93, v87
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v77, v76, v86 :: v_dual_mul_f32 v76, v78, v91
	v_div_scale_f32 v79, null, v26, v26, v15
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v17, v74, v26, v17
	v_div_fmas_f32 v38, v38, v84, v81
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v81, v79
	v_div_fmas_f32 v73, v73, v75, v93
	v_fma_f32 v75, -v80, v77, v88
	v_fma_f32 v80, -v85, v76, v78
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v16, v38, v26, v16
	v_div_fixup_f32 v38, v73, v26, v98
	v_div_fmas_f32 v75, v75, v86, v77
	v_fmac_f32_e32 v76, v80, v91
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v74, null, v26, v26, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v24, v75, v26, v24
	v_fma_f32 v73, -v85, v76, v78
	v_fma_f32 v75, -v79, v81, 1.0
	v_div_scale_f32 v77, null, v26, v26, v90
	v_div_scale_f32 v84, null, v26, v26, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v73, v73, v91, v76
	v_fmac_f32_e32 v81, v75, v81
	v_div_scale_f32 v78, vcc_lo, v15, v26, v15
	v_rcp_f32_e32 v76, v74
	v_div_scale_f32 v75, null, v26, v26, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v83, v78, v81
	v_div_fixup_f32 v18, v73, v26, v18
	v_rcp_f32_e32 v82, v77
	v_rcp_f32_e32 v80, v75
	v_rcp_f32_e32 v86, v84
	v_fma_f32 v87, -v79, v83, v78
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v73, -v74, v76, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v5, v5
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v83, v87, v81
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v76, v73, v76
	v_div_scale_f32 v73, s8, v14, v26, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v79, v83, v78
	v_fma_f32 v85, -v75, v80, 1.0
	v_fma_f32 v88, -v77, v82, 1.0
	v_mul_f32_e32 v91, v73, v76
	v_fma_f32 v93, -v84, v86, 1.0
	v_div_fmas_f32 v78, v78, v81, v83
	s_mov_b32 vcc_lo, s8
	s_mov_b32 s8, 0xc1000000
	v_fmac_f32_e32 v82, v88, v82
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v27, v27, s8, 0x40e00000
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_med3_f32 v29, v29, s8, 0x40e00000
	v_med3_f32 v37, v37, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v88, s10, v90, v26, v90
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v81, v27
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v80, v85, v80
	v_div_scale_f32 v85, s9, v89, v26, v89
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v83, v29
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v87, -v74, v91, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v94, v85, v80 :: v_dual_mul_f32 v95, v88, v82
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v27, 15, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v57, 15, v83
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v91, v87, v76
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v79, -v75, v94, v85
	v_fma_f32 v87, -v77, v95, v88
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v41, v41, s8, 0x40e00000
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_med3_f32 v5, v5, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v94, v79, v80
	v_fma_f32 v73, -v74, v91, v73
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v59
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v95, v87, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v49
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v75, -v75, v94, v85
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v85, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v86, v93, v86
	v_div_scale_f32 v93, s11, v92, v26, v92
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v96, v93, v86
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v20, v20, s8, 0x40e00000
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v5, v5
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v74, -v84, v96, v93
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v34, v34, s8, 0x40e00000
	v_med3_f32 v59, v59, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fmac_f32_e32 v96, v74, v86
	v_fma_f32 v74, -v77, v95, v88
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v6, v6
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v24, v24
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v40, v40, s8, 0x40e00000
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v45, v45, s8, 0x40e00000
	v_med3_f32 v0, v0, s8, 0x40e00000
	v_cvt_i32_f32_e32 v88, v20
	v_and_b32_e32 v20, 15, v41
	v_and_b32_e32 v41, 15, v53
	v_and_b32_e32 v53, 15, v5
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v73, v73, v76, v91
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v76, -v84, v96, v93
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v17, v17, s8, 0x40e00000
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v59, v59
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v75, v75, v80, v94
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v15, v78, v26, v15
	v_div_fmas_f32 v74, v74, v82, v95
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v42, v42, s8, 0x40e00000
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v6, v6, s8, 0x40e00000
	v_med3_f32 v19, v19, s8, 0x40e00000
	v_med3_f32 v24, v24, s8, 0x40e00000
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v78, v45
	v_cvt_i32_f32_e32 v0, v0
	v_cvt_i32_f32_e32 v93, v17
	v_and_b32_e32 v17, 15, v34
	v_and_b32_e32 v34, 15, v59
	v_and_b32_e32 v59, 15, v85
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v76, v76, v86, v96
	v_div_fixup_f32 v14, v73, v26, v14
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v22, v22
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v21, v21, s8, 0x40e00000
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v6, v6
	v_cvt_i32_f32_e32 v87, v19
	v_cvt_i32_f32_e32 v96, v24
	v_and_b32_e32 v19, 15, v40
	v_and_b32_e32 v24, 15, v49
	v_and_b32_e32 v40, 15, v52
	v_and_b32_e32 v49, 15, v78
	v_and_b32_e32 v52, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 10, v180
	v_and_b32_e32 v78, 16, v180
	v_lshlrev_b32_e32 v5, 4, v181
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v73, v75, v26, v89
	v_div_fixup_f32 v74, v74, v26, v90
	v_div_fixup_f32 v26, v76, v26, v92
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v72, v72
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v14, v14
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v33, v33, s8, 0x40e00000
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v48, v48, s8, 0x40e00000
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v43, v43, s8, 0x40e00000
	v_med3_f32 v44, v44, s8, 0x40e00000
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_med3_f32 v22, v22, s8, 0x40e00000
	v_cvt_i32_f32_e32 v90, v21
	v_and_b32_e32 v21, 15, v42
	v_and_b32_e32 v42, 15, v54
	v_and_b32_e32 v54, 15, v6
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v0, 0x1800, v0
	v_lshlrev_b32_e32 v6, 6, v78
	v_xor_b32_e32 v5, v5, v13
	v_lshlrev_b32_e32 v13, 6, v180
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v73, v73
	v_rndne_f32_e32 v26, v26
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_med3_f32 v68, v68, s8, 0x40e00000
	v_med3_f32 v51, v51, s8, 0x40e00000
	v_med3_f32 v69, v69, s8, 0x40e00000
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_med3_f32 v28, v28, s8, 0x40e00000
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_med3_f32 v18, v18, s8, 0x40e00000
	v_med3_f32 v15, v15, s8, 0x40e00000
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v30, v30, s8, 0x40e00000
	v_med3_f32 v23, v23, s8, 0x40e00000
	v_med3_f32 v16, v16, s8, 0x40e00000
	v_med3_f32 v14, v14, s8, 0x40e00000
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v75, v43
	v_cvt_i32_f32_e32 v76, v44
	v_cvt_i32_f32_e32 v77, v46
	v_cvt_i32_f32_e32 v89, v22
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, 0, v0, v6
	v_and_or_b32 v6, 0x1b00, v13, v10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_med3_f32 v25, v25, s8, 0x40e00000
	v_med3_f32 v73, v73, s8, 0x40e00000
	v_med3_f32 v26, v26, s8, 0x40e00000
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v82, v28
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v95, v38
	v_cvt_i32_f32_e32 v97, v18
	v_cvt_i32_f32_e32 v98, v15
	v_cvt_i32_f32_e32 v79, v35
	v_cvt_i32_f32_e32 v80, v36
	v_cvt_i32_f32_e32 v84, v30
	v_cvt_i32_f32_e32 v92, v23
	v_cvt_i32_f32_e32 v94, v16
	v_cvt_i32_f32_e32 v99, v14
	v_and_b32_e32 v15, 15, v32
	v_and_b32_e32 v16, 15, v33
	v_and_b32_e32 v18, 15, v39
	v_and_b32_e32 v22, 15, v47
	v_and_b32_e32 v23, 15, v48
	v_and_b32_e32 v29, 15, v63
	v_and_b32_e32 v30, 15, v64
	v_and_b32_e32 v32, 15, v66
	v_and_b32_e32 v33, 15, v67
	v_and_b32_e32 v35, 15, v60
	v_and_b32_e32 v36, 15, v61
	v_and_b32_e32 v37, 15, v62
	v_and_b32_e32 v46, 15, v75
	v_and_b32_e32 v47, 15, v76
	v_and_b32_e32 v48, 15, v77
	v_and_b32_e32 v62, 15, v87
	v_and_b32_e32 v63, 15, v88
	v_and_b32_e32 v64, 15, v89
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, v0, v5, v11
	v_xad_u32 v5, v6, v182, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v14, 15, v31
	v_and_b32_e32 v31, 15, v65
	v_and_b32_e32 v65, 15, v90
	v_cvt_i32_f32_e32 v86, v55
	v_cvt_i32_f32_e32 v91, v25
	v_cvt_i32_f32_e32 v100, v73
	v_cvt_i32_f32_e32 v102, v26
	v_and_b32_e32 v25, 15, v50
	v_and_b32_e32 v26, 15, v56
	v_and_b32_e32 v28, 15, v58
	v_and_b32_e32 v38, 15, v68
	v_and_b32_e32 v39, 15, v51
	v_and_b32_e32 v43, 15, v69
	v_and_b32_e32 v44, 15, v70
	v_and_b32_e32 v45, 15, v71
	v_and_b32_e32 v55, 15, v81
	v_and_b32_e32 v56, 15, v82
	v_and_b32_e32 v60, 15, v72
	v_and_b32_e32 v70, 15, v95
	v_and_b32_e32 v71, 15, v96
	v_and_b32_e32 v72, 15, v97
	v_and_b32_e32 v73, 15, v98
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v0, v[14:17]
	ds_store_b128 v0, v[22:25] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[13:16], v5
	ds_load_b128 v[22:25], v5 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[30:33]
	ds_store_b128 v0, v[38:41] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[30:33], v5
	ds_load_b128 v[38:41], v5 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[46:49]
	ds_store_b128 v0, v[54:57] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[46:49], v5
	ds_load_b128 v[54:57], v5 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[62:65]
	ds_store_b128 v0, v[70:73] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[62:65], v5
	ds_load_b128 v[70:73], v5 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[18:21]
	ds_store_b128 v0, v[26:29] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v5
	ds_load_b128 v[26:29], v5 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[34:37]
	ds_store_b128 v0, v[42:45] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[34:37], v5
	ds_load_b128 v[42:45], v5 offset:1024
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v74, v74
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v50, 15, v79
	v_and_b32_e32 v51, 15, v80
	v_and_b32_e32 v58, 15, v84
	v_and_b32_e32 v61, 15, v86
	v_med3_f32 v74, v74, s8, 0x40e00000
	v_and_b32_e32 v66, 15, v91
	v_and_b32_e32 v67, 15, v92
	v_and_b32_e32 v68, 15, v93
	v_and_b32_e32 v69, 15, v94
	v_cvt_i32_f32_e32 v101, v74
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[50:53]
	ds_store_b128 v0, v[58:61] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[50:53], v5
	ds_load_b128 v[58:61], v5 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v74, 15, v99
	v_and_b32_e32 v75, 15, v100
	v_and_b32_e32 v76, 15, v101
	v_and_b32_e32 v77, 15, v102
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v20, v29, 4, v20
	v_lshl_or_b32 v29, v45, 4, v37
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v45, 3, v181
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[66:69]
	ds_store_b128 v0, v[74:77] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[66:69], v5
	ds_load_b128 v[74:77], v5 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s8, s33, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_lshl_or_b32 v0, s45, 7, v45
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s8, s33, s8
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v5, v22, 4, v13
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 32, v9
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v6, v23, 4, v14
	v_lshl_or_b32 v21, v24, 4, v15
	v_lshl_or_b32 v16, v25, 4, v16
	v_lshl_or_b32 v17, v26, 4, v17
	v_lshl_or_b32 v18, v27, 4, v18
	v_lshl_or_b32 v19, v28, 4, v19
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 16, v9
	v_add_nc_u32_e32 v15, 48, v9
	v_mad_u64_u32 v[9:10], null, v9, s8, v[0:1]
	v_mad_u64_u32 v[13:14], null, v13, s8, v[0:1]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v26, v42, 4, v34
	v_lshl_or_b32 v27, v43, 4, v35
	v_lshl_or_b32 v28, v44, 4, v36
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[10:11], null, v11, s8, v[0:1]
	v_mad_u64_u32 v[14:15], null, v15, s8, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v16.l
	v_and_b16 v0.h, 0xff, v21.l
	v_lshlrev_b16 v3.l, 8, v6.l
	v_and_b16 v4.l, 0xff, v5.l
	v_lshlrev_b16 v5.l, 8, v20.l
	v_and_b16 v5.h, 0xff, v19.l
	v_lshlrev_b16 v6.l, 8, v18.l
	v_and_b16 v6.h, 0xff, v17.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v22, v38, 4, v30
	v_lshl_or_b32 v23, v39, 4, v31
	v_lshl_or_b32 v24, v40, 4, v32
	v_lshl_or_b32 v25, v41, 4, v33
	v_lshl_or_b32 v34, v58, 4, v50
	v_lshl_or_b32 v35, v59, 4, v51
	v_lshl_or_b32 v36, v60, 4, v52
	v_lshl_or_b32 v37, v61, 4, v53
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v15.h, v0.h, v0.l
	v_or_b16 v15.l, v4.l, v3.l
	v_or_b16 v16.h, v5.h, v5.l
	v_or_b16 v16.l, v6.h, v6.l
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	v_lshlrev_b16 v5.l, 8, v29.l
	v_and_b16 v5.h, 0xff, v28.l
	v_lshlrev_b16 v6.l, 8, v27.l
	v_and_b16 v6.h, 0xff, v26.l
	s_and_b32 s9, s37, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s36
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v30, v54, 4, v46
	v_lshl_or_b32 v31, v55, 4, v47
	v_lshl_or_b32 v32, v56, 4, v48
	v_lshl_or_b32 v33, v57, 4, v49
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v42, v74, 4, v66
	v_lshl_or_b32 v43, v75, 4, v67
	v_lshl_or_b32 v44, v76, 4, v68
	v_lshl_or_b32 v46, v77, 4, v69
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v25.l
	v_and_b16 v0.h, 0xff, v24.l
	v_lshlrev_b16 v3.l, 8, v23.l
	v_and_b16 v4.l, 0xff, v22.l
	buffer_store_b64 v[15:16], v9, s[8:11], 0 offen
	v_or_b16 v16.h, v5.h, v5.l
	v_or_b16 v16.l, v6.h, v6.l
	v_lshlrev_b16 v5.l, 8, v37.l
	v_and_b16 v5.h, 0xff, v36.l
	v_lshlrev_b16 v6.l, 8, v35.l
	v_and_b16 v6.h, 0xff, v34.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v38, v70, 4, v62
	v_lshl_or_b32 v39, v71, 4, v63
	v_lshl_or_b32 v40, v72, 4, v64
	v_lshl_or_b32 v41, v73, 4, v65
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v15.h, v0.h, v0.l
	v_or_b16 v15.l, v4.l, v3.l
	v_cndmask_b32_e32 v9, 0x80000000, v10, vcc_lo
	v_lshlrev_b16 v0.l, 8, v33.l
	v_and_b16 v0.h, 0xff, v32.l
	v_lshlrev_b16 v3.l, 8, v31.l
	v_and_b16 v4.l, 0xff, v30.l
	v_or_b16 v10.h, v5.h, v5.l
	v_or_b16 v10.l, v6.h, v6.l
	v_lshlrev_b16 v5.l, 8, v46.l
	v_and_b16 v5.h, 0xff, v44.l
	v_lshlrev_b16 v6.l, 8, v43.l
	v_and_b16 v6.h, 0xff, v42.l
	buffer_store_b64 v[15:16], v9, s[8:11], 0 offen
	v_or_b16 v9.h, v0.h, v0.l
	v_or_b16 v9.l, v4.l, v3.l
	v_lshlrev_b16 v0.l, 8, v41.l
	v_and_b16 v0.h, 0xff, v40.l
	v_lshlrev_b16 v3.l, 8, v39.l
	v_and_b16 v4.l, 0xff, v38.l
	v_or_b16 v16.h, v5.h, v5.l
	v_or_b16 v16.l, v6.h, v6.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v5, 4, v180
	v_lshrrev_b32_e32 v6, 2, v78
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v15.h, v0.h, v0.l
	v_cndmask_b32_e32 v11, 0x80000000, v13, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v15.l, v4.l, v3.l
	v_dual_cndmask_b32 v0, 0x80000000, v14 :: v_dual_and_b32 v5, 2, v5
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v6, 0, v6
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[9:10], v11, s[8:11], 0 offen
	buffer_store_b64 v[15:16], v0, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v45
	v_mov_b16_e32 v4.l, v12.h
	v_mov_b16_e32 v3.l, v8.h
	v_add3_u32 v5, v6, v5, v45
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s2, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s33, s33, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s33, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v0, v[3:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v5
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v3, v7, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v4, 0xc0, v180
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[40:41], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[42:43], v[1:2]
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_and_b32 s9, s39, 0xffff
	s_mov_b32 s8, s38
	v_cmp_eq_u32_e64 s1, 0, v4
	v_add_lshl_u32 v1, v3, s45, 1
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
.Ltmp73:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 600
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
		.amdhsa_next_free_sgpr 56
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 56
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 600
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 32052
; TotalNumSgprs: 58
; NumVgprs: 256
; ScratchSize: 600
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 58
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
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
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
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 600
    .sgpr_count:     58
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 149
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
