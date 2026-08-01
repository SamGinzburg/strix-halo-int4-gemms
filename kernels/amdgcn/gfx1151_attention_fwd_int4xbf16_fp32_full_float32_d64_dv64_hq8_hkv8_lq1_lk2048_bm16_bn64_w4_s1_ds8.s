	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b32 s55, s[0:1], 0x64
	s_load_b64 s[42:43], s[0:1], 0x5c
	s_load_b64 s[56:57], s[0:1], 0x0
	s_load_b64 s[52:53], s[0:1], 0x40
.Ltmp0:
	.loc	1 748 27 prologue_end           ; attention.py:748:27
	s_abs_i32 s7, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 3, v0
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v54, 0x60, v0
	v_lshlrev_b32_e32 v49, 2, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v52, 31, v0
	v_and_b32_e32 v48, 0x70, v0
	v_and_b32_e32 v53, 15, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v50, 1, v0
	.loc	1 822 49                        ; attention.py:822:49
	v_and_b32_e32 v51, 1, v0
	s_mov_b32 s44, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s5, s55
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s8, s2, s55
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_f32_u32 s4, s5
	s_sub_i32 s6, 0, s5
	.loc	1 748 27                        ; attention.py:748:27
	s_ashr_i32 s8, s8, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
	.loc	1 773 86                        ; attention.py:773:86
	v_and_b32_e32 v1, 7, v0
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 773 86                        ; attention.py:773:86
	v_lshlrev_b32_e32 v3, 2, v1
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_u32_f32 s4, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e32 vcc_lo, s42, v3
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_i32 s6, s6, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s4, s6
	s_add_i32 s6, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 748 27                        ; attention.py:748:27
	s_mul_hi_u32 s4, s7, s6
	s_mul_i32 s9, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s9
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s7, s10, s7
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s4, s9, s4
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s57, s57, 0xffff
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s16, s7, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s7, s7, s55
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s12, s16, s3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v6, s16, v2
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v4, s12, v2
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s54, s2, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s4, 1, v6
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[4:5], null, v4, s42, v[3:4]
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s55, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s8, s4, s55
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v3, 0x80000000, v4, vcc_lo
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s4, s4
	s_ashr_i32 s8, s8, 31
	s_mul_hi_u32 s6, s4, s6
	.loc	1 774 26                        ; attention.py:774:26
	v_lshrrev_b32_e32 v4, 2, v54
	buffer_load_b32 v3, v3, s[56:59], 0 offen
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_i32 s9, s6, s5
	s_add_i32 s10, s6, 1
	s_sub_i32 s4, s4, s9
	.loc	1 774 26                        ; attention.py:774:26
	v_xad_u32 v4, v49, v4, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s2, s4, s5
	s_cmp_ge_u32 s4, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s2, s2, s4
	s_add_i32 s4, s6, 1
	s_cmp_ge_u32 s2, s5
	s_cselect_b32 s2, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s8
	s_sub_i32 s2, s2, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s4, s54, s2
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s2, s2, 6
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s72, s4, 6
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s2, s72, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 800 18 is_stmt 0              ; attention.py:800:18
	s_min_i32 s73, s2, 0x800
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_ge_i32 s72, s73
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v4, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v3, s16, v53
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v4, s12, v53, 1
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x68
	s_load_b64 s[60:61], s[0:1], 0x30
	v_dual_mov_b32 v120, 0xff800000 :: v_dual_and_b32 v5, 24, v50
	.loc	1 781 22                        ; attention.py:781:22
	v_cmp_gt_i32_e32 vcc_lo, 1, v3
	v_and_b32_e32 v19, 16, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v11, 4, v48
	v_lshlrev_b32_e32 v14, 3, v52
	.loc	1 779 31                        ; attention.py:779:31
	v_dual_cndmask_b32 v3, 0x80000000, v4 :: v_dual_add_nc_u32 v6, 0, v54
	v_lshl_or_b32 v17, v0, 5, v0
	v_dual_mov_b32 v119, 0xff800000 :: v_dual_lshlrev_b32 v18, 6, v51
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v23, v53, 5, v5
	v_dual_mov_b32 v20, 0x5410 :: v_dual_lshlrev_b32 v9, 2, v53
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_bfe_i32 v16, v0, 6, 1
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s57, s9, 0xffff
	s_mov_b32 s56, s8
	v_cmp_eq_u32_e64 s2, 0, v19
	buffer_load_u16 v10, v3, s[56:59], 0 offen
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v4, v0, 4, 1
	.loc	1 889 86                        ; attention.py:889:86
	v_lshlrev_b32_e32 v3, 3, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v22, s16, v11
	v_mov_b32_e32 v1, 0
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 29
	v_lshl_or_b32 v63, v53, 8, v14
	v_and_or_b32 v64, 0x39e, v17, v18
	s_add_i32 s1, s3, s0
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v19, 8, v23
	v_dual_mov_b32 v21, 0x7632 :: v_dual_lshlrev_b32 v8, 3, v53
	v_lshlrev_b32_e32 v15, 2, v52
	v_and_b32_e32 v14, 0x84, v16
	v_cndmask_b32_e64 v16, 0x1054, v20, s2
	v_xor_b32_e32 v20, 16, v23
	v_lshlrev_b32_e32 v57, 4, v0
	v_and_b32_e32 v7, 24, v0
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[38:39], null, s43, v2, v[3:4]
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s8, s1, -8
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s9, s1, 3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v18, 8, v22
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s1, 1, v22
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v22, 24, v23
	v_xor_b32_e32 v39, 0x78, v63
	v_xor_b32_e32 v40, 8, v64
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s74, s3, 11
	v_dual_mov_b32 v121, 0xff800000 :: v_dual_add_nc_u32 v66, 0, v23
	v_xor_b32_e32 v41, 12, v64
	v_xor_b32_e32 v42, 16, v64
	v_xor_b32_e32 v43, 20, v64
	v_xor_b32_e32 v44, 24, v64
	v_xor_b32_e32 v45, 28, v64
	v_dual_mov_b32 v5, v1 :: v_dual_add_nc_u32 v84, 0, v19
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v12, 4, v0
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v59, 0x800, v4
	v_or_b32_e32 v61, s74, v4
	v_mov_b32_e32 v4, v1
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s43, v3
	v_mov_b32_e32 v3, v1
	v_xor_b32_e32 v14, v14, v15
	v_cndmask_b32_e64 v21, 0x3276, v21, s2
	v_lshl_or_b32 v16, v16, 8, v16
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v85, 0, v20
	v_lshl_or_b32 v24, v48, 4, v8
	v_lshl_add_u32 v65, v53, 1, v6
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v8, v1
	v_xor_b32_e32 v60, v57, v7
	v_dual_mov_b32 v7, v1 :: v_dual_add_nc_u32 v86, 0, v22
	v_add_nc_u32_e32 v103, 0, v39
	v_add_nc_u32_e32 v105, 0, v40
	v_add_nc_u32_e32 v106, 0, v41
	v_add_nc_u32_e32 v107, 0, v42
	v_add_nc_u32_e32 v108, 0, v43
	v_add_nc_u32_e32 v109, 0, v44
	v_add_nc_u32_e32 v110, 0, v45
	v_lshrrev_b32_e32 v13, 1, v48
	v_or3_b32 v62, s74, v12, 62
	v_mov_b32_e32 v17, v1
	v_and_or_b32 v87, v12, 2, v14
	v_and_b32_e32 v12, 0x540054, v16
	v_lshl_or_b32 v14, v21, 8, v21
	v_xor_b32_e32 v72, v24, v13
	v_xor_b32_e32 v13, 8, v63
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v58, 0x800, v9
	v_lshl_or_b32 v12, v12, 4, v12
	v_and_b32_e32 v14, 0x760076, v14
	v_xor_b32_e32 v23, 8, v60
	v_xor_b32_e32 v24, 16, v63
	v_xor_b32_e32 v25, 24, v63
	v_xor_b32_e32 v26, 32, v63
	v_xor_b32_e32 v27, 40, v63
	v_xor_b32_e32 v28, 48, v63
	v_xor_b32_e32 v29, 56, v63
	v_xor_b32_e32 v30, 64, v63
	v_xor_b32_e32 v31, 0x48, v63
	v_xor_b32_e32 v32, 0x50, v63
	v_xor_b32_e32 v33, 0x58, v63
	v_xor_b32_e32 v34, 0x60, v63
	v_xor_b32_e32 v35, 0x68, v63
	v_xor_b32_e32 v36, 0x70, v63
	v_xor_b32_e32 v15, 4, v64
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 1, v18
	v_xor_b32_e32 v18, 0x840, v72
	v_add_nc_u32_e32 v89, 0, v13
	v_xor_b32_e32 v13, 0x318, v87
	v_and_b32_e32 v112, 0x5040504, v12
	v_lshl_or_b32 v12, v14, 4, v14
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s12, s12, 0x3fb8aa3b
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s8, s3, s8
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s9, s13, s9
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s8, s14, s8
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v55, 1, v0
	.loc	1 822 49                        ; attention.py:822:49
	v_lshlrev_b32_e32 v37, 4, v51
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v56, 0x800, v2
	v_mov_b32_e32 v2, v1
	v_or_b32_e32 v67, 30, v61
	v_or_b32_e32 v68, 32, v61
	v_or_b32_e32 v69, 34, v61
	v_or_b32_e32 v70, 36, v61
	v_or_b32_e32 v71, 38, v61
	v_or_b32_e32 v73, 40, v61
	v_or_b32_e32 v74, 42, v61
	v_or_b32_e32 v75, 44, v61
	v_or_b32_e32 v76, 46, v61
	v_or_b32_e32 v77, 48, v61
	v_or_b32_e32 v78, 50, v61
	v_or_b32_e32 v79, 52, v61
	v_or_b32_e32 v80, 54, v61
	v_or_b32_e32 v81, 56, v61
	v_or_b32_e32 v82, 58, v61
	v_or_b32_e32 v83, 60, v61
	v_add_nc_u32_e32 v90, 0, v24
	v_add_nc_u32_e32 v91, 0, v25
	v_add_nc_u32_e32 v92, 0, v26
	v_add_nc_u32_e32 v93, 0, v27
	v_add_nc_u32_e32 v94, 0, v28
	v_add_nc_u32_e32 v95, 0, v29
	v_add_nc_u32_e32 v96, 0, v30
	v_add_nc_u32_e32 v97, 0, v31
	v_add_nc_u32_e32 v98, 0, v32
	v_add_nc_u32_e32 v99, 0, v33
	v_add_nc_u32_e32 v100, 0, v34
	v_add_nc_u32_e32 v101, 0, v35
	v_add_nc_u32_e32 v102, 0, v36
	v_add_nc_u32_e32 v104, 0, v15
	v_add_nc_u32_e32 v111, 0, v18
	v_add_nc_u32_e32 v115, 0, v13
	v_and_b32_e32 v116, 0x7060706, v12
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s16, s16, s15
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_add_i32 s79, s8, s9
	s_lshl_b32 s75, s43, 4
	s_lshl_b32 s76, s43, 5
	s_mul_i32 s77, s43, 48
	s_mov_b32 s45, s44
	s_mov_b32 s46, s44
	s_mov_b32 s47, s44
	s_mov_b32 s48, s44
	s_mov_b32 s49, s44
	s_mov_b32 s50, s44
	s_mov_b32 s51, s44
	s_mov_b32 s78, 0x76543210
	s_mov_b32 s66, s58
	s_mov_b32 s67, s59
	s_mov_b32 s62, s58
	s_mov_b32 s63, s59
	s_mov_b32 s70, s58
	s_mov_b32 s71, s59
	s_and_b32 s61, s61, 0xffff
	s_and_b32 s69, s7, 0xffff
	s_mov_b32 s64, s10
	s_mov_b32 s68, s6
	s_mov_b32 s56, s4
	s_mov_b32 s57, s5
	s_mov_b32 s65, s11
	s_add_i32 s79, s79, s16
	.loc	1 825 31                        ; attention.py:825:31
	v_cmp_gt_i32_e32 vcc_lo, s42, v37
	.loc	1 818 13                        ; attention.py:818:13
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[39:40], null, s15, v11, v[9:10]
	.loc	1 774 26                        ; attention.py:774:26
	ds_load_b64 v[40:41], v66
	ds_load_b64 v[42:43], v84
	ds_load_b64 v[44:45], v85
	ds_load_b64 v[46:47], v86
	v_xor_b32_e32 v9, 0x210, v87
	v_xor_b32_e32 v11, 0x108, v87
	.loc	1 779 31                        ; attention.py:779:31
	v_lshlrev_b32_e32 v10, 16, v10
	v_add_nc_u32_e32 v88, 0, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v113, 0, v9
	.loc	1 843 41                        ; attention.py:843:41
	v_dual_mul_f32 v117, s12, v10 :: v_dual_add_nc_u32 v114, 0, v11
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v118, s15, 3, v39
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s15, s72, s74
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v18, 0x800, v55
	.loc	1 822 32                        ; attention.py:822:32
	v_or_b32_e32 v20, s15, v55
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_lt_i32_e64 s4, s72, v58
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s5, s79, s72
	.loc	1 823 32                        ; attention.py:823:32
	v_add_nc_u32_e32 v19, 0, v60
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_lt_i32_e64 s7, s72, v18
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[20:21], null, v20, s42, v[37:38]
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v22, s5, v118, 2
	v_add_lshl_u32 v23, s5, v39, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 s7, vcc_lo, s7
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s5, s2, s4
	s_and_b32 s4, s1, s4
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v166, 0x80000000, v22, s5
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v18, 0x80000000, v20, s7
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v36, 0x80000000, v23, s4
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v9, s44 :: v_dual_mov_b32 v12, s47
	v_mov_b32_e32 v10, s45
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[20:23], v18, s[56:59], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v11, s46 :: v_dual_mov_b32 v14, s49
	v_dual_mov_b32 v13, s48 :: v_dual_mov_b32 v16, s51
	v_mov_b32_e32 v15, s50
	v_or_b32_e32 v136, 2, v61
	v_or_b32_e32 v137, 4, v61
	v_or_b32_e32 v138, 6, v61
	v_or_b32_e32 v139, 8, v61
	v_or_b32_e32 v140, 10, v61
	v_or_b32_e32 v141, 12, v61
	v_or_b32_e32 v143, 14, v61
	v_or_b32_e32 v160, 16, v61
	v_or_b32_e32 v161, 18, v61
	v_or_b32_e32 v162, 20, v61
	v_or_b32_e32 v163, 22, v61
	v_or_b32_e32 v164, 24, v61
	v_or_b32_e32 v165, 26, v61
	v_or_b32_e32 v168, 28, v61
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v135, s72, v61, 1
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_lt_i32_e64 s6, s72, v59
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v171, v67, s72, 1
	v_add_lshl_u32 v172, v68, s72, 1
	v_add_lshl_u32 v173, v69, s72, 1
	v_add_lshl_u32 v174, v70, s72, 1
	v_add_lshl_u32 v175, v71, s72, 1
	v_add_lshl_u32 v176, v73, s72, 1
	v_add_lshl_u32 v177, v74, s72, 1
	v_add_lshl_u32 v178, v75, s72, 1
	v_add_lshl_u32 v179, v76, s72, 1
	v_add_lshl_u32 v180, v77, s72, 1
	v_add_lshl_u32 v181, v78, s72, 1
	v_add_lshl_u32 v182, v79, s72, 1
	v_add_lshl_u32 v183, v80, s72, 1
	v_add_lshl_u32 v184, v81, s72, 1
	v_add_lshl_u32 v185, v82, s72, 1
	v_cndmask_b32_e64 v135, 0x80000000, v135, s6
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_lt_i32_e64 s14, s72, v56
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s41, 0xff800000, v119
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v19, v[20:21]
	ds_store_b64 v88, v[22:23]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[32:35], v66 offset1:1
	ds_load_2addr_stride64_b64 v[122:125], v66 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[126:129], v84 offset1:1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s14, s0, s14
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v121, v121, v121
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[18:25], v[32:33], v[40:41], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[26:33], v[34:35], v[40:41], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[144:151], v[122:123], v[40:41], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[152:159], v[124:125], v[40:41], v[9:16] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v84 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[13:16], v85 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[18:25], v[126:127], v[42:43], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[26:33], v[128:129], v[42:43], v[26:33] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[144:151], v[9:10], v[42:43], v[144:151] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[152:159], v[11:12], v[42:43], v[152:159] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v85 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[18:25], v[13:14], v[44:45], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[26:33], v[15:16], v[44:45], v[26:33] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[13:16], v86 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[144:151], v[9:10], v[44:45], v[144:151] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[152:159], v[11:12], v[44:45], v[152:159] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v86 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[18:25], v[13:14], v[46:47], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[26:33], v[15:16], v[46:47], v[26:33] neg_lo:[1,1,0]
	.loc	1 879 36                        ; attention.py:879:36
	buffer_load_b128 v[13:16], v36, s[60:63], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v142, v19
	v_cvt_f32_i32_e32 v132, v26
	v_cvt_f32_i32_e32 v122, v32
	v_cvt_f32_i32_e32 v123, v33
	v_cvt_f32_i32_e32 v127, v27
	v_cvt_f32_i32_e32 v126, v28
	v_cvt_f32_i32_e32 v134, v20
	v_cvt_f32_i32_e32 v133, v21
	v_cvt_f32_i32_e32 v128, v22
	v_cvt_f32_i32_e32 v129, v23
	v_cvt_f32_i32_e32 v130, v24
	v_cvt_f32_i32_e32 v131, v25
	v_cvt_f32_i32_e32 v125, v29
	v_cvt_f32_i32_e32 v35, v30
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[144:151], v[9:10], v[46:47], v[144:151] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[152:159], v[11:12], v[46:47], v[152:159] neg_lo:[1,1,0]
	.loc	1 879 36                        ; attention.py:879:36
	buffer_load_b128 v[9:12], v166, s[60:63], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v36, v31
	v_cvt_f32_i32_e32 v186, v18
	v_cvt_f32_i32_e32 v124, v144
	v_cvt_f32_i32_e32 v33, v145
	v_cvt_f32_i32_e32 v32, v146
	v_cvt_f32_i32_e32 v31, v147
	v_cvt_f32_i32_e32 v26, v148
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v144, v162, s72, 1
	v_add_lshl_u32 v145, v163, s72, 1
	v_add_lshl_u32 v146, v164, s72, 1
	v_add_lshl_u32 v147, v165, s72, 1
	v_add_lshl_u32 v148, v168, s72, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v27, v149
	v_cvt_f32_i32_e32 v28, v150
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v149, 0x80000000, v171, s6
	v_cndmask_b32_e64 v150, 0x80000000, v172, s6
	v_cndmask_b32_e64 v144, 0x80000000, v144, s6
	v_cndmask_b32_e64 v145, 0x80000000, v145, s6
	v_cndmask_b32_e64 v146, 0x80000000, v146, s6
	v_cndmask_b32_e64 v147, 0x80000000, v147, s6
	v_cndmask_b32_e64 v148, 0x80000000, v148, s6
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v29, v151
	v_cvt_f32_i32_e32 v30, v152
	v_cvt_f32_i32_e32 v19, v153
	v_cvt_f32_i32_e32 v20, v154
	v_cvt_f32_i32_e32 v21, v155
	v_cvt_f32_i32_e32 v22, v156
	v_cvt_f32_i32_e32 v23, v157
	v_cvt_f32_i32_e32 v24, v158
	v_cvt_f32_i32_e32 v25, v159
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v171, 0x80000000, v173, s6
	v_cndmask_b32_e64 v172, 0x80000000, v174, s6
	v_cndmask_b32_e64 v173, 0x80000000, v175, s6
	v_cndmask_b32_e64 v174, 0x80000000, v176, s6
	v_cndmask_b32_e64 v175, 0x80000000, v177, s6
	v_cndmask_b32_e64 v176, 0x80000000, v178, s6
	v_cndmask_b32_e64 v177, 0x80000000, v179, s6
	v_cndmask_b32_e64 v178, 0x80000000, v180, s6
	v_cndmask_b32_e64 v179, 0x80000000, v181, s6
	v_cndmask_b32_e64 v180, 0x80000000, v182, s6
	v_cndmask_b32_e64 v181, 0x80000000, v183, s6
	v_cndmask_b32_e64 v182, 0x80000000, v184, s6
	v_cndmask_b32_e64 v183, 0x80000000, v185, s6
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v18, 0, v72
	v_add_nc_u32_e32 v34, 0, v63
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v142, v117, v142
	v_mul_f32_e32 v28, v117, v28
	v_mul_f32_e32 v130, v117, v130
	v_mul_f32_e32 v132, v117, v132
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v166, 0xff800000, v14, s4
	v_cndmask_b32_e64 v14, 0xff800000, v15, s4
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v15, v136, s72, 1
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v167, 0xff800000, v16, s4
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v16, v137, s72, 1
	v_add_lshl_u32 v136, v138, s72, 1
	v_add_lshl_u32 v137, v139, s72, 1
	v_add_lshl_u32 v138, v140, s72, 1
	v_add_lshl_u32 v139, v141, s72, 1
	v_add_lshl_u32 v140, v143, s72, 1
	v_add_lshl_u32 v141, v160, s72, 1
	v_add_lshl_u32 v143, v161, s72, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s6
	v_cndmask_b32_e64 v16, 0x80000000, v16, s6
	v_cndmask_b32_e64 v136, 0x80000000, v136, s6
	v_cndmask_b32_e64 v137, 0x80000000, v137, s6
	v_cndmask_b32_e64 v138, 0x80000000, v138, s6
	v_cndmask_b32_e64 v139, 0x80000000, v139, s6
	v_cndmask_b32_e64 v140, 0x80000000, v140, s6
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v170, 0xff800000, v12, s5
	v_cndmask_b32_e64 v169, 0xff800000, v10, s5
	v_cndmask_b32_e64 v10, 0xff800000, v11, s5
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v11, v83, s72, 1
	v_add_lshl_u32 v12, s72, v62, 1
	v_cndmask_b32_e64 v141, 0x80000000, v141, s6
	v_cndmask_b32_e64 v143, 0x80000000, v143, s6
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v13, 0xff800000, v13, s4
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v11, 0x80000000, v11, s6
	v_cndmask_b32_e64 v12, 0x80000000, v12, s6
	s_clause 0x1f
	buffer_load_u16 v184, v135, s[64:67], 0 offen
	buffer_load_u16 v168, v15, s[64:67], 0 offen
	buffer_load_u16 v165, v16, s[64:67], 0 offen
	buffer_load_u16 v164, v136, s[64:67], 0 offen
	buffer_load_u16 v159, v137, s[64:67], 0 offen
	buffer_load_u16 v160, v138, s[64:67], 0 offen
	buffer_load_u16 v161, v139, s[64:67], 0 offen
	buffer_load_u16 v162, v140, s[64:67], 0 offen
	buffer_load_u16 v163, v141, s[64:67], 0 offen
	buffer_load_u16 v158, v143, s[64:67], 0 offen
	buffer_load_u16 v157, v144, s[64:67], 0 offen
	buffer_load_u16 v156, v145, s[64:67], 0 offen
	buffer_load_u16 v151, v146, s[64:67], 0 offen
	buffer_load_u16 v152, v147, s[64:67], 0 offen
	buffer_load_u16 v153, v148, s[64:67], 0 offen
	buffer_load_u16 v154, v149, s[64:67], 0 offen
	buffer_load_u16 v155, v150, s[64:67], 0 offen
	buffer_load_u16 v150, v171, s[64:67], 0 offen
	buffer_load_u16 v149, v172, s[64:67], 0 offen
	buffer_load_u16 v148, v173, s[64:67], 0 offen
	buffer_load_u16 v143, v174, s[64:67], 0 offen
	buffer_load_u16 v144, v175, s[64:67], 0 offen
	buffer_load_u16 v145, v176, s[64:67], 0 offen
	buffer_load_u16 v146, v177, s[64:67], 0 offen
	buffer_load_u16 v147, v178, s[64:67], 0 offen
	buffer_load_u16 v135, v179, s[64:67], 0 offen
	buffer_load_u16 v136, v180, s[64:67], 0 offen
	buffer_load_u16 v137, v181, s[64:67], 0 offen
	buffer_load_u16 v138, v182, s[64:67], 0 offen
	buffer_load_u16 v139, v183, s[64:67], 0 offen
	buffer_load_u16 v140, v11, s[64:67], 0 offen
	buffer_load_u16 v141, v12, s[64:67], 0 offen
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v9, 0xff800000, v9, s5
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v171, v117, v186
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_2addr_b64 v18, v[13:14], v[166:167] offset1:16
	ds_store_2addr_b64 v111, v[9:10], v[169:170] offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[15:16], v34
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s7, 0xff800000, v13
	v_cmp_neq_f32_e64 s8, 0xff800000, v14
	v_cmp_neq_f32_e64 s10, 0xff800000, v9
	v_cmp_neq_f32_e64 s12, 0xff800000, v10
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[13:14], v89
	ds_load_b64 v[9:10], v90
	ds_load_b64 v[11:12], v91
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s9, 0xff800000, v167
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_add_nc_u32_e32 v167, 0, v64
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s11, 0xff800000, v169
	v_cmp_neq_f32_e64 s13, 0xff800000, v170
	v_dual_mov_b32 v170, v120 :: v_dual_mov_b32 v169, v17
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v120, v117, v129
	v_mul_f32_e32 v30, v117, v30
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s6, 0xff800000, v166
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s11, s5, s11
	v_add_nc_u32_e32 v166, 0, v87
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_add_i32 s72, s72, 64
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v15, 0x3fb8aa3b, v15 :: v_dual_mul_f32 v16, 0x3fb8aa3b, v16
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v172, 16, v184
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v168, 16, v168
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v17, 16, v165
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v15, v171, v172
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v171, 0x3fb8aa3b, v13 :: v_dual_fmac_f32 v16, v142, v168
	v_dual_mul_f32 v13, 0x3fb8aa3b, v14 :: v_dual_add_nc_u32 v142, 0, v57
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v14, v117, v134
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v134, 16, v161
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v161, 0x3fb8aa3b, v9
	v_mad_u64_u32 v[172:173], null, s15, s43, v[38:39]
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v171, v14, v17
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v14, v117, v133 :: v_dual_lshlrev_b32 v17, 16, v164
	v_mul_f32_e32 v133, v117, v131
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v131, 16, v160
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v160, 16, v163
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v163, 0x3fb8aa3b, v11
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v13, v14, v17
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v17, v117, v128 :: v_dual_lshlrev_b32 v128, 16, v159
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v159, 16, v162
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v162, 0x3fb8aa3b, v10
	ds_load_b64 v[9:10], v93
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v163, v130, v134
	v_fmac_f32_e32 v161, v17, v128
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[128:129], v92
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v162, v120, v131
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[130:131], v94
	v_mul_f32_e32 v134, 0x3fb8aa3b, v12
	ds_load_b64 v[11:12], v95
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	s_waitcnt vmcnt(22)
	v_dual_mul_f32 v17, v117, v127 :: v_dual_lshlrev_b32 v120, 16, v158
	v_mul_f32_e32 v124, v117, v124
	.loc	1 880 25                        ; attention.py:880:25
	s_waitcnt vmcnt(16)
	v_dual_fmac_f32 v134, v133, v159 :: v_dual_lshlrev_b32 v127, 16, v154
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v168.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e64 v165.h, v168.h
	v_mov_b16_e64 v175.h, v168.h
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v173, 0x3fb8aa3b, v10 :: v_dual_lshlrev_b32 v10, 16, v156
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v159.h, v168.h
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v128, 0x3fb8aa3b, v128
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v164.h, v168.h
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v130, 0x3fb8aa3b, v130
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v177.h, v168.h
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v154, 0x3fb8aa3b, v12
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v128, v132, v160
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(15)
	v_dual_mul_f32 v132, 0x3fb8aa3b, v129 :: v_dual_lshlrev_b32 v129, 16, v155
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v155.h, v168.h
	v_mov_b16_e64 v160.h, v168.h
	v_mov_b16_e64 v156.h, v168.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v132, v17, v120
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v17, v117, v126 :: v_dual_lshlrev_b32 v120, 16, v157
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v126, 0x3fb8aa3b, v9
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v9, v117, v125
	v_mul_f32_e32 v125, v117, v123
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v179.h, v168.h
	v_mov_b16_e64 v180.h, v168.h
	v_mov_b16_e64 v157.h, v168.h
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v173, v9, v10
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v9, v117, v35
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v126, v17, v120
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v120, v117, v122 :: v_dual_lshlrev_b32 v35, 16, v152
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v122, 16, v153
	v_lshlrev_b32_e32 v10, 16, v151
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v151, 0x3fb8aa3b, v11
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v17, v117, v36 :: v_dual_mul_f32 v152, 0x3fb8aa3b, v131
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[11:12], v99
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v14.h, v168.h
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v151, v120, v122
	v_fmac_f32_e32 v130, v9, v10
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	ds_load_b64 v[9:10], v96
	ds_load_b64 v[122:123], v98
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v152, v17, v35
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[35:36], v97
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	v_dual_max_f32 v120, v170, v170 :: v_dual_lshlrev_b32 v17, 1, v172
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v181.h, v168.h
	v_mov_b16_e64 v158.h, v168.h
	v_mov_b16_e64 v174.h, v168.h
	v_mov_b16_e64 v178.h, v168.h
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v153, 0x3fb8aa3b, v9 :: v_dual_mul_f32 v176, 0x3fb8aa3b, v10
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(14)
	v_dual_mul_f32 v9, v117, v33 :: v_dual_lshlrev_b32 v10, 16, v150
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(7) lgkmcnt(0)
	v_dual_mul_f32 v33, 0x3fb8aa3b, v36 :: v_dual_lshlrev_b32 v36, 16, v147
	v_dual_mul_f32 v122, 0x3fb8aa3b, v122 :: v_dual_fmac_f32 v153, v124, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v176, v9, v10
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v9, v117, v32 :: v_dual_lshlrev_b32 v10, 16, v149
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v32, 0x3fb8aa3b, v35 :: v_dual_lshlrev_b32 v35, 16, v146
	v_mul_f32_e32 v146, 0x3fb8aa3b, v12
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v32, v9, v10
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v9, v117, v31
	v_mul_f32_e32 v31, v117, v29
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v29, 16, v145
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v145, 0x3fb8aa3b, v11 :: v_dual_lshlrev_b32 v10, 16, v148
	ds_load_b64 v[11:12], v103
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v146, v31, v35
	v_dual_fmac_f32 v154, v125, v127 :: v_dual_fmac_f32 v145, v28, v29
	v_fmac_f32_e32 v33, v9, v10
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v9, v117, v26 :: v_dual_lshlrev_b32 v10, 16, v143
	v_dual_mul_f32 v26, v117, v27 :: v_dual_lshlrev_b32 v27, 16, v144
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v144, 0x3fb8aa3b, v123
	ds_load_b64 v[28:29], v102
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v122, v9, v10
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[9:10], v100
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_lshl_u32 v35, v172, s77, 1
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v144, v26, v27
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	ds_load_b64 v[26:27], v101
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v125, 16, v141
	v_lshlrev_b32_e32 v123, 16, v139
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v183, 0x80000000, v35, s14
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v184, 0x3fb8aa3b, v12
	.loc	1 881 25                        ; attention.py:881:25
	s_barrier
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v35, 16, v137
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v29, 0x3fb8aa3b, v29 :: v_dual_mul_f32 v28, 0x3fb8aa3b, v28
	v_mul_f32_e32 v31, 0x3fb8aa3b, v9
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v9, v172, s75, 1
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v141, 0x3fb8aa3b, v10
	v_mul_f32_e32 v27, 0x3fb8aa3b, v27
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v182, 0x80000000, v9, s14
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v9, v117, v19
	v_mul_f32_e32 v19, v117, v21
	v_mul_f32_e32 v21, v117, v23
	v_mul_f32_e32 v23, v117, v25
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v25, 16, v136
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v31, v30, v36
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v30, v172, s76, 1
	v_cndmask_b32_e64 v172, 0x80000000, v17, s14
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v17, v117, v20
	v_mul_f32_e32 v20, v117, v22
	v_mul_f32_e32 v22, v117, v24
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v30, 0x80000000, v30, s14
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s14, s4, s7
	s_and_b32 s7, s4, s8
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v24, 16, v135
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v10, 0, 1, s7
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v36, 16, v138
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v26, 0x3fb8aa3b, v26 :: v_dual_fmac_f32 v29, v21, v123
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v141, v9, v24
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_cndmask_b32_e64 v24, 0, 1, s14
	v_mov_b16_e32 v9.l, v10.l
	s_and_b32 s8, s4, s9
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v26, v17, v25
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v17, 0, 1, s8
	v_mov_b16_e32 v10.l, v24.l
	v_lshlrev_b16 v9.l, 8, v9.l
	s_and_b32 s9, s5, s10
	s_and_b32 s10, s5, s12
	s_and_b32 s4, s4, s6
	v_cndmask_b32_e64 v12, 0, 1, s10
	v_cndmask_b32_e64 v25, 0, 1, s4
	v_or_b16 v9.l, v10.l, v9.l
	v_mov_b16_e32 v10.l, v17.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v136, 0x3fb8aa3b, v11
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v24, 0, 1, s9
	v_mov_b16_e32 v11.l, v25.l
	s_and_b32 s5, s5, s13
	v_lshlrev_b16 v9.h, 8, v10.l
	v_mov_b16_e32 v10.l, v12.l
	v_cndmask_b32_e64 v17, 0, 1, s5
	v_cndmask_b32_e64 v12, 0, 1, s11
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v27, v19, v35 :: v_dual_lshlrev_b32 v124, 16, v140
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v9.h, v11.l, v9.h
	v_mov_b16_e32 v11.l, v24.l
	v_lshlrev_b16 v10.l, 8, v10.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v28, v20, v36
	v_fmac_f32_e32 v136, v22, v124
	v_fmac_f32_e32 v184, v23, v125
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s72, s73
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v10.l, v11.l, v10.l
	v_mov_b16_e32 v11.l, v17.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v10.h, 8, v11.l
	v_or_b16 v10.h, v12.l, v10.h
	ds_store_b16 v166, v9
	ds_store_b16_d16_hi v113, v9
	ds_store_b16 v114, v10
	ds_store_b16_d16_hi v115, v10
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v9, v167 offset:32
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v9, v167
	ds_load_u16_d16 v10, v104
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v10, v104 offset:32
	ds_load_u16_d16 v11, v105
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v11, v105 offset:32
	ds_load_u16_d16 v12, v106
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v12, v106 offset:32
	ds_load_u16_d16 v14, v107
	ds_load_u16_d16 v17, v107 offset:32
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v17, v108
	ds_load_u16_d16 v19, v108 offset:32
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v19, v109
	ds_load_u16_d16 v20, v109 offset:32
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v20, v110
	ds_load_u16_d16 v21, v110 offset:32
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v21.h, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cmp_eq_u16_e64 s5, 1, v21.h
	v_and_b16 v21.h, 1, v10.l
	v_lshrrev_b16 v10.l, 8, v10.l
	v_and_b16 v9.l, 1, v9.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v137, 0xff800000, v153, s5
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s16, 1, v21.h
	v_and_b16 v21.h, 1, v10.h
	v_lshrrev_b16 v10.h, 8, v10.h
	v_and_b16 v10.l, 1, v10.l
	v_cmp_eq_u16_e64 s33, 1, v9.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v123, 0xff800000, v171, s16
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s6, 1, v21.h
	v_and_b16 v21.h, 1, v11.l
	v_lshrrev_b16 v11.l, 8, v11.l
	v_and_b16 v10.h, 1, v10.h
	v_cmp_eq_u16_e64 s25, 1, v10.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v138, 0xff800000, v176, s33
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s17, 1, v21.h
	v_and_b16 v21.h, 1, v11.h
	v_lshrrev_b16 v11.h, 8, v11.h
	v_and_b16 v11.l, 1, v11.l
	v_cmp_eq_u16_e64 s34, 1, v10.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v125, 0xff800000, v161, s17
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s9, 1, v21.h
	v_and_b16 v21.h, 1, v12.l
	v_lshrrev_b16 v12.l, 8, v12.l
	v_and_b16 v11.h, 1, v11.h
	v_cmp_eq_u16_e64 s26, 1, v11.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v124, 0xff800000, v13, s25
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s18, 1, v21.h
	v_and_b16 v21.h, 1, v12.h
	v_lshrrev_b16 v12.h, 8, v12.h
	v_and_b16 v12.l, 1, v12.l
	v_cmp_eq_u16_e64 s35, 1, v11.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v139, 0xff800000, v32, s6
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s10, 1, v21.h
	v_and_b16 v21.h, 1, v14.l
	v_lshrrev_b16 v14.l, 8, v14.l
	v_and_b16 v12.h, 1, v12.h
	v_cmp_eq_u16_e64 s27, 1, v12.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v143, 0xff800000, v122, s9
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s19, 1, v21.h
	v_and_b16 v21.h, 1, v17.l
	v_lshrrev_b16 v17.l, 8, v17.l
	v_and_b16 v14.l, 1, v14.l
	v_cmp_eq_u16_e64 s36, 1, v12.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v129, 0xff800000, v128, s19
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s11, 1, v21.h
	v_and_b16 v21.h, 1, v17.h
	v_lshrrev_b16 v17.h, 8, v17.h
	v_and_b16 v17.l, 1, v17.l
	v_cmp_eq_u16_e64 s28, 1, v14.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v128, 0xff800000, v134, s27
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s20, 1, v21.h
	v_and_b16 v21.h, 1, v19.l
	v_lshrrev_b16 v19.l, 8, v19.l
	v_and_b16 v17.h, 1, v17.h
	v_cmp_eq_u16_e64 s37, 1, v17.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v131, 0xff800000, v126, s20
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s12, 1, v21.h
	v_and_b16 v21.h, 1, v19.h
	v_lshrrev_b16 v19.h, 8, v19.h
	v_and_b16 v19.l, 1, v19.l
	v_cmp_eq_u16_e64 s29, 1, v17.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v126, 0xff800000, v162, s26
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s21, 1, v21.h
	v_and_b16 v21.h, 1, v20.l
	v_and_b16 v19.h, 1, v19.h
	v_lshrrev_b16 v20.l, 8, v20.l
	v_cmp_eq_u16_e64 s38, 1, v19.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v133, 0xff800000, v130, s21
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s13, 1, v21.h
	v_and_b16 v21.h, 1, v20.h
	v_lshrrev_b16 v20.h, 8, v20.h
	v_cmp_eq_u16_e64 s30, 1, v19.h
	v_and_b16 v20.l, 1, v20.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v130, 0xff800000, v132, s28
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s22, 1, v21.h
	v_and_b16 v21.h, 1, v21.l
	v_and_b16 v20.h, 1, v20.h
	v_lshrrev_b16 v21.l, 8, v21.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v132, 0xff800000, v173, s29
	v_cndmask_b32_e64 v135, 0xff800000, v151, s22
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s15, 1, v21.h
	v_and_b16 v21.h, 1, v9.h
	v_lshrrev_b16 v9.h, 8, v9.h
	v_cmp_eq_u16_e64 s31, 1, v20.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v134, 0xff800000, v152, s30
	v_cndmask_b32_e64 v153, 0xff800000, v136, s15
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s23, 1, v21.h
	v_and_b16 v9.h, 1, v9.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v136, 0xff800000, v154, s31
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v21.l, 1, v21.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v145, 0xff800000, v145, s10
	v_cndmask_b32_e64 v15, 0xff800000, v15, s23
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s24, 1, v9.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v147, 0xff800000, v31, s11
	v_cndmask_b32_e64 v149, 0xff800000, v26, s12
	v_cndmask_b32_e64 v140, 0xff800000, v33, s34
	v_cndmask_b32_e64 v144, 0xff800000, v144, s35
	v_cndmask_b32_e64 v16, 0xff800000, v16, s24
	v_cndmask_b32_e64 v146, 0xff800000, v146, s36
	v_cndmask_b32_e64 v148, 0xff800000, v141, s37
	v_cndmask_b32_e64 v127, 0xff800000, v163, s18
	v_cndmask_b32_e64 v150, 0xff800000, v27, s38
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s39, 1, v20.l
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v9, v130, v131, v132
	v_max3_f32 v10, v133, v134, v135
	v_max3_f32 v11, v136, v137, v138
	v_max_f32_e32 v26, v15, v16
	v_max3_f32 v27, v124, v125, v126
.Ltmp2:
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s40, 1, v21.l
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v12, v139, v140, v143
	v_max3_f32 v13, v144, v145, v146
	v_max3_f32 v25, v147, v148, v149
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v152, 0xff800000, v29, s39
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v29, v127, v128, v129
	v_max3_f32 v9, v9, v10, v11
	v_max3_f32 v31, v26, v123, v27
.Ltmp6:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v151, 0xff800000, v28, s13
	v_cndmask_b32_e64 v154, 0xff800000, v184, s40
	ds_store_b64 v34, v[15:16]
	ds_store_b64 v89, v[123:124]
	ds_store_b64 v90, v[125:126]
	ds_store_b64 v91, v[127:128]
	ds_store_b64 v92, v[129:130]
	ds_store_b64 v93, v[131:132]
	ds_store_b64 v94, v[133:134]
	ds_store_b64 v95, v[135:136]
	ds_store_b64 v96, v[137:138]
	ds_store_b64 v97, v[139:140]
	ds_store_b64 v98, v[143:144]
	ds_store_b64 v99, v[145:146]
	ds_store_b64 v100, v[147:148]
	ds_store_b64 v101, v[149:150]
	ds_store_b64 v102, v[151:152]
	ds_store_b64 v103, v[153:154]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[33:36], v18 offset1:16
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[17:20], v172, s[68:71], 0 offen
	buffer_load_b128 v[21:24], v182, s[68:71], 0 offen
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v12, v12, v13, v25
.Ltmp8:
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[25:28], v30, s[68:71], 0 offen
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v9, v31, v29, v9
.Ltmp10:
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[29:32], v183, s[68:71], 0 offen
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v10, v150, v151 :: v_dual_max_f32 v11, v153, v154
.Ltmp12:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	ds_store_b128 v142, v[17:20]
	s_waitcnt vmcnt(2)
	ds_store_b128 v142, v[21:24] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v142, v[25:28] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v142, v[29:32] offset:6144
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v10, v10, v152, v11
	v_max_f32_e32 v11, v35, v35
.Ltmp14:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v9, v9, v12, v10
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v10, v9, s78, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp17:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v122, v119, v9, v10
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v9, v33, v33
.Ltmp19:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v13, v124, v122
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v9, v9, v11
.Ltmp21:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v15, v122
	v_sub_f32_e32 v15, v125, v122
	v_sub_f32_e32 v125, v129, v122
	v_sub_f32_e32 v129, v133, v122
	v_sub_f32_e32 v133, v137, v122
	v_sub_f32_e32 v137, v143, v122
	v_sub_f32_e32 v124, v128, v122
	v_sub_f32_e32 v128, v132, v122
	v_sub_f32_e32 v132, v136, v122
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v15, v15
	v_exp_f32_e32 v137, v137
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v12, v123, v122
	v_sub_f32_e32 v123, v127, v122
	v_sub_f32_e32 v141, v147, v122
	v_sub_f32_e32 v147, v152, v122
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	v_exp_f32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v141, v141
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v166, 0, v15, s17
	v_cndmask_b32_e64 v137, 0, v137, s9
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v147, v147
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v160.l, v166.h
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b16_e64 v175.l, v137.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v136, v140, v122
	v_sub_f32_e32 v140, v146, v122
	v_sub_f32_e32 v146, v151, v122
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v151, v9, v34, v36
.Ltmp23:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v10, v16, v122
	v_sub_f32_e32 v16, v126, v122
	v_sub_f32_e32 v126, v130, v122
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_sub_f32 v130, v134, v122 :: v_dual_mov_b32 v9, v151
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v134, v138, v122
	v_sub_f32_e32 v138, v144, v122
	v_sub_f32_e32 v144, v149, v122
.Ltmp24:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp25:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v127, v131, v122
	v_sub_f32_e32 v131, v135, v122
	v_sub_f32_e32 v135, v139, v122
	v_sub_f32_e32 v139, v145, v122
	v_sub_f32_e32 v145, v150, v122
	v_sub_f32_e32 v149, v154, v122
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v150, v119, v122
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v119, v123
	v_exp_f32_e32 v123, v124
	v_exp_f32_e32 v124, v125
	v_exp_f32_e32 v125, v126
	v_exp_f32_e32 v145, v145
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v154, v9, v9
.Ltmp27:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v126, v127
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v161, 0, v10, s24
	.loc	1 885 61 is_stmt 1              ; attention.py:885:61
	v_exp_f32_e32 v150, v150
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v140, v140
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v162, 0, v11, s23
	v_cndmask_b32_e64 v163, 0, v13, s25
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v168.l, v161.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v123, s27
	v_cndmask_b32_e64 v13, 0, v125, s28
	v_cndmask_b32_e64 v125, 0, v147, s39
	v_cndmask_b32_e64 v123, 0, v126, s20
	v_cndmask_b32_e64 v126, 0, v145, s38
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v145, 1, v168
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v127, v128
	v_exp_f32_e32 v128, v129
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v147, 1, v160
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v129, v130
	v_exp_f32_e32 v130, v131
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v10, v151, v154
.Ltmp29:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v157.l, v123.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v143, v148, v122
	v_sub_f32_e32 v148, v153, v122
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v153, v136
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s24, v161, v161
	v_add3_u32 v161, v161, v145, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v15, 0, v127, s29
	v_cndmask_b32_e64 v136, 0, v129, s30
	v_cndmask_b32_e64 v129, 0, v130, s22
	v_cndmask_b32_e64 v130, 0, v140, s36
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v140, 0, v150, s41
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v150, 1, v157
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v143, v143
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v127, 0, v128, s21
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v148, v148
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v140
	v_mul_f32_e32 v2, v2, v140
	v_mul_f32_e32 v3, v3, v140
	v_mul_f32_e32 v4, v4, v140
	v_mul_f32_e32 v5, v5, v140
	v_mul_f32_e32 v6, v6, v140
	v_mul_f32_e32 v7, v7, v140
	v_mul_f32_e32 v8, v8, v140
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v140, v10
.Ltmp31:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v12, v12
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v128, 0, v143, s37
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v165.l, v127.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v16, v16
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v140, v140 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v152, v135
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v14.l, v162.h
	v_and_b32_e32 v151, 1, v165
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v131, v132
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v145, v140, v140
.Ltmp35:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v12, 0, v12, s16
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v144, v144
	v_exp_f32_e32 v132, v133
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v9, 0, v16, s26
.Ltmp36:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v145, v10, v145
.Ltmp37:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v146, v146
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v159.l, v12.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v16, 0, v119, s18
	v_cndmask_b32_e64 v135, 0, v131, s31
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v149, v149
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v119, 0, v124, s19
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v14, 1, v14
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v167, 0, v132, s5
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v164.l, v16.h
	v_mov_b16_e64 v168.l, v163.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v143, 0, v146, s13
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v146, 1, v159
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v139, v139
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v156.l, v167.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v132, 0, v153, s34
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v180.l, v143.h
	v_cmp_o_f32_e64 s25, v162, v162
	v_cmp_o_f32_e64 s26, v12, v12
	v_mov_b16_e64 v158.l, v119.h
	v_and_b32_e32 v153, 1, v156
	v_and_b32_e32 v159, 1, v180
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v138, v138
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v14, v162, v14, 0x7fff
	v_add3_u32 v146, v12, v146, 0x7fff
	v_and_b32_e32 v162, 1, v168
	v_mov_b16_e64 v168.l, v9.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v124, 0, v149, s40
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s28, v16, v16
	v_cmp_o_f32_e64 s34, v167, v167
	v_and_b32_e32 v149, 1, v158
	v_cmp_o_f32_e64 s22, v163, v163
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v131, 0, v138, s35
	v_cndmask_b32_e64 v138, 0, v139, s10
	v_cndmask_b32_e64 v139, 0, v141, s11
	v_cndmask_b32_e64 v141, 0, v144, s12
	v_cndmask_b32_e64 v144, 0, v148, s15
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v148, 1, v164
	v_mov_b16_e64 v177.l, v138.h
	v_cmp_o_f32_e64 s37, v138, v138
	v_cmp_o_f32_e64 s21, v9, v9
	v_mov_b16_e64 v181.l, v144.h
	v_add3_u32 v16, v16, v148, 0x7fff
	v_and_b32_e32 v156, 1, v177
	v_add3_u32 v148, v167, v153, 0x7fff
	v_cmp_o_f32_e64 s29, v119, v119
	v_and_b32_e32 v160, 1, v181
	v_cmp_o_f32_e64 s23, v144, v144
	v_add3_u32 v138, v138, v156, 0x7fff
	v_add3_u32 v119, v119, v149, 0x7fff
	v_cndmask_b16 v138.l, 0x7fff, v148.h, s34
	v_add3_u32 v12, v144, v160, 0x7fff
	v_cndmask_b16 v12.l, 0x7fff, v146.h, s26
	v_and_b32_e32 v146, 1, v168
	v_mov_b16_e64 v168.l, v11.h
	v_cndmask_b16 v144.l, 0x7fff, v14.h, s25
	v_add3_u32 v14, v163, v162, 0x7fff
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v149, v145
.Ltmp39:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v146, v9, v146, 0x7fff
	v_and_b32_e32 v148, 1, v168
	v_mov_b16_e64 v168.l, v13.h
	v_add3_u32 v147, v166, v147, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v133, v134
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s20, v11, v11
	v_mov_b16_e64 v179.l, v141.h
	v_cndmask_b16 v147.l, 0x7fff, v12.h, s23
	v_cndmask_b16 v12.h, 0x7fff, v14.h, s22
	v_cndmask_b16 v14.h, 0x7fff, v146.h, s21
	v_add3_u32 v146, v11, v148, 0x7fff
	v_and_b32_e32 v148, 1, v168
	v_mov_b16_e64 v168.l, v15.h
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v149, v149 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s19, v13, v13
	v_mov_b16_e64 v174.l, v129.h
	v_cmp_o_f32_e64 s40, v143, v143
	v_and_b32_e32 v158, 1, v179
	v_add3_u32 v143, v143, v159, 0x7fff
	v_cndmask_b16 v16.l, 0x7fff, v16.h, s28
	v_cndmask_b16 v16.h, 0x7fff, v146.h, s20
	v_add3_u32 v146, v13, v148, 0x7fff
	v_and_b32_e32 v148, 1, v168
	v_mov_b16_e64 v168.l, v136.h
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v149, v149, v149
.Ltmp43:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v134, 0, v133, s33
	v_cndmask_b32_e64 v133, 0, v152, s6
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s18, v15, v15
	v_cmp_o_f32_e64 s39, v141, v141
	v_and_b32_e32 v152, 1, v174
	v_add3_u32 v141, v141, v158, 0x7fff
	v_cndmask_b16 v119.l, 0x7fff, v143.h, s40
	v_cndmask_b16 v143.h, 0x7fff, v146.h, s19
	v_add3_u32 v146, v15, v148, 0x7fff
	v_and_b32_e32 v148, 1, v168
	v_mov_b16_e64 v168.l, v135.h
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v145, v145, v149
.Ltmp45:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s30, v123, v123
	v_add3_u32 v123, v123, v150, 0x7fff
	v_cmp_o_f32_e64 s17, v136, v136
	v_cmp_o_f32_e64 s33, v129, v129
	v_add3_u32 v129, v129, v152, 0x7fff
	v_cndmask_b16 v123.l, 0x7fff, v141.h, s39
	v_cndmask_b16 v141.h, 0x7fff, v146.h, s18
	v_add3_u32 v136, v136, v148, 0x7fff
	v_and_b32_e32 v146, 1, v168
	v_mov_b16_e64 v168.l, v134.h
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v152, v145
.Ltmp47:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v178.l, v139.h
	v_cndmask_b16 v140.h, 0x7fff, v136.h, s17
	v_cmp_o_f32_e64 s15, v134, v134
	v_and_b32_e32 v136, 1, v168
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v152, v152 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v157, 1, v178
	v_cndmask_b16 v144.h, 0x7fff, v161.h, s24
	v_cmp_o_f32_e64 s27, v166, v166
	v_add3_u32 v134, v134, v136, 0x7fff
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v136, v152, v152
.Ltmp51:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s16, v135, v135
	v_mov_b16_e64 v155.l, v133.h
	v_cmp_o_f32_e64 s38, v139, v139
	v_add3_u32 v139, v139, v157, 0x7fff
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v136, v145, v136
.Ltmp53:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v10, v144, s78, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e64 v168.l, v132.h
	v_cmp_o_f32_e64 s31, v127, v127
	v_add3_u32 v127, v127, v151, 0x7fff
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v121, v121, v136 :: v_dual_and_b32 v154, 1, v155
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v155, 1, v175
	v_cndmask_b16 v14.l, 0x7fff, v147.h, s27
	v_cndmask_b16 v127.l, 0x7fff, v139.h, s38
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v33, v121
	v_sub_f32_e32 v35, v35, v121
	v_sub_f32_e32 v34, v34, v121
	v_sub_f32_e32 v36, v36, v121
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v9, v10, v144, v112
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v36, v36
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v10, v10, v144, v116
	v_permlanex16_b32 v144, v12, s78, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s13, v132, v132
	v_cmp_o_f32_e64 s36, v137, v137
	v_add3_u32 v137, v137, v155, 0x7fff
	v_cndmask_b16 v129.l, 0x7fff, v138.h, s37
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s14
	v_cndmask_b32_e64 v35, 0, v35, s4
	v_cndmask_b32_e64 v34, 0, v34, s7
	v_cndmask_b32_e64 v36, 0, v36, s8
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v11, v144, v12, v112
	v_perm_b32 v12, v144, v12, v116
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v35
.Ltmp55:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v144, v14, s78, 0xfedcba98 op_sel:[1,0]
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v36
.Ltmp57:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v138.h, 0x7fff, v134.h, s15
	v_cmp_o_f32_e64 s35, v133, v133
	v_add3_u32 v133, v133, v154, 0x7fff
	v_cmp_o_f32_e64 s12, v131, v131
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
.Ltmp59:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v143.l, 0x7fff, v119.h, s29
	v_cndmask_b16 v133.l, 0x7fff, v137.h, s36
	v_perm_b32 v13, v144, v14, v112
	v_perm_b32 v14, v144, v14, v116
.Ltmp60:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v34, v33
.Ltmp61:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v144, v16, s78, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v141.l, 0x7fff, v123.h, s30
	v_cndmask_b16 v137.l, 0x7fff, v133.h, s35
	v_cmp_o_f32_e64 s10, v128, v128
.Ltmp62:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v34, v34 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp63:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v15, v144, v16, v112
	v_perm_b32 v16, v144, v16, v116
	v_permlanex16_b32 v144, v143, s78, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v140.l, 0x7fff, v127.h, s31
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v33, v33, v34 :: v_dual_max_f32 v120, v120, v136
.Ltmp65:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s11, v130, v130
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_perm_b32 v148, v144, v143, v112
	v_perm_b32 v149, v144, v143, v116
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v34, v33
.Ltmp67:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v143, v141, s78, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v139.l, 0x7fff, v129.h, s33
	v_cmp_o_f32_e64 s9, v126, v126
	v_cmp_o_f32_e64 s6, v125, v125
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v34, v34 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp69:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v150, v143, v141, v112
	v_perm_b32 v151, v143, v141, v116
	v_permlanex16_b32 v141, v140, s78, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s5, v124, v124
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp71:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v152, v141, v140, v112
	v_perm_b32 v153, v141, v140, v116
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v34, v34 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp73:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v33
.Ltmp75:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v135, v135, v146, 0x7fff
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp77:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v139.h, 0x7fff, v135.h, s16
	v_and_b32_e32 v135, 1, v168
	v_mov_b16_e64 v168.l, v131.h
	v_permlanex16_b32 v140, v139, s78, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v132, v132, v135, 0x7fff
	v_and_b32_e32 v134, 1, v168
	v_mov_b16_e64 v168.l, v130.h
	v_permlanex16_b32 v135, v138, s78, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v154, v140, v139, v112
	v_cndmask_b16 v137.h, 0x7fff, v132.h, s13
	v_add3_u32 v131, v131, v134, 0x7fff
	v_and_b32_e32 v132, 1, v168
	v_mov_b16_e64 v168.l, v128.h
	v_perm_b32 v134, v135, v138, v112
	v_perm_b32 v135, v135, v138, v116
	v_cndmask_b16 v133.h, 0x7fff, v131.h, s12
	v_add3_u32 v130, v130, v132, 0x7fff
	v_and_b32_e32 v131, 1, v168
	v_mov_b16_e64 v168.l, v126.h
	v_permlanex16_b32 v138, v137, s78, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v132, v133, s78, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v129.h, 0x7fff, v130.h, s11
	v_add3_u32 v128, v128, v131, 0x7fff
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v131, v170, v120
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v130, 1, v168
	v_mov_b16_e64 v168.l, v125.h
	v_perm_b32 v155, v140, v139, v116
	v_cndmask_b16 v127.h, 0x7fff, v128.h, s10
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s10, 0xff800000, v170
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v17, v65
	ds_load_u16_d16 v18, v65 offset:256
	ds_load_u16_d16 v19, v65 offset:512
	ds_load_u16_d16 v20, v65 offset:768
	ds_load_u16_d16 v21, v65 offset:1024
	ds_load_u16_d16 v22, v65 offset:1280
	ds_load_u16_d16 v23, v65 offset:1536
	ds_load_u16_d16 v24, v65 offset:1792
	ds_load_u16_d16 v25, v65 offset:2048
	ds_load_u16_d16 v26, v65 offset:2304
	ds_load_u16_d16 v27, v65 offset:2560
	ds_load_u16_d16 v28, v65 offset:2816
	ds_load_u16_d16 v29, v65 offset:3072
	ds_load_u16_d16 v30, v65 offset:3328
	ds_load_u16_d16 v31, v65 offset:3584
	ds_load_u16_d16 v32, v65 offset:3840
	ds_load_u16_d16 v156, v65 offset:4096
	ds_load_u16_d16 v157, v65 offset:4352
	ds_load_u16_d16 v158, v65 offset:4608
	ds_load_u16_d16 v159, v65 offset:4864
	ds_load_u16_d16 v160, v65 offset:5120
	ds_load_u16_d16 v161, v65 offset:5376
	ds_load_u16_d16 v162, v65 offset:5632
	ds_load_u16_d16 v163, v65 offset:5888
	ds_load_u16_d16 v170, v65 offset:6144
	ds_load_u16_d16 v171, v65 offset:6400
	ds_load_u16_d16 v172, v65 offset:6656
	ds_load_u16_d16 v173, v65 offset:6912
	ds_load_u16_d16 v174, v65 offset:7168
	ds_load_u16_d16 v175, v65 offset:7424
	ds_load_u16_d16 v176, v65 offset:7680
	ds_load_u16_d16 v177, v65 offset:7936
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v136, v138, v137, v112
	v_perm_b32 v137, v138, v137, v116
	v_perm_b32 v138, v132, v133, v112
	v_perm_b32 v139, v132, v133, v116
	v_permlanex16_b32 v132, v129, s78, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v128, 1, v168
	v_mov_b16_e64 v168.l, v124.h
	v_add3_u32 v126, v126, v130, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v17, v65 offset:128
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v18, v65 offset:384
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v19, v65 offset:640
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v20, v65 offset:896
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v21, v65 offset:1152
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v22, v65 offset:1408
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v23, v65 offset:1664
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v24, v65 offset:1920
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v25, v65 offset:2176
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v26, v65 offset:2432
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v27, v65 offset:2688
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v28, v65 offset:2944
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v29, v65 offset:3200
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v30, v65 offset:3456
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v31, v65 offset:3712
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v32, v65 offset:3968
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v156, v65 offset:4224
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v157, v65 offset:4480
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v158, v65 offset:4736
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v159, v65 offset:4992
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v160, v65 offset:5248
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v161, v65 offset:5504
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v162, v65 offset:5760
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v163, v65 offset:6016
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v170, v65 offset:6272
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v171, v65 offset:6528
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v172, v65 offset:6784
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v173, v65 offset:7040
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v174, v65 offset:7296
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v175, v65 offset:7552
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v176, v65 offset:7808
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v177, v65 offset:8064
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v140, v132, v129, v112
	v_perm_b32 v141, v132, v129, v116
	v_and_b32_e32 v129, 1, v168
	v_add3_u32 v128, v125, v128, 0x7fff
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v130, v131
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v123.h, 0x7fff, v126.h, s9
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(24)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[17:24], v[9:16], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v124, v124, v129, 0x7fff
	v_cndmask_b16 v119.h, 0x7fff, v128.h, s6
	v_permlanex16_b32 v131, v127, s78, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v128, v123, s78, 0xfedcba98 op_sel:[1,0]
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[25:32], v[148:155], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v147.h, 0x7fff, v124.h, s5
	v_permlanex16_b32 v34, v119, s78, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v125, v131, v127, v112
	v_perm_b32 v126, v131, v127, v116
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e64 v133, 0, v130, s10
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v9, v147, s78, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v127, v128, v123, v112
	v_perm_b32 v128, v128, v123, v116
	v_perm_b32 v129, v34, v119, v112
	v_perm_b32 v130, v34, v119, v116
	v_perm_b32 v131, v9, v147, v112
	v_perm_b32 v132, v9, v147, v116
.Ltmp78:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v17, v33, v35
.Ltmp79:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[156:163], v[134:141], v[1:8]
	v_mov_b32_e32 v119, v122
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v17, v169, v133
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[170:177], v[125:132], v[1:8]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %._crit_edge.loopexit
.Ltmp80:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v120, v120
	s_delay_alu instid0(VALU_DEP_1)
	v_max_f32_e32 v10, 0xff800000, v9
.Ltmp81:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v9, 0, v17
	s_branch .LBB0_5
.Ltmp82:
.LBB0_4:
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	v_mov_b32_e32 v8, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v10, 0xff800000 :: v_dual_mov_b32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v9, v8
.LBB0_5:                                ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v48
	s_mov_b32 s0, 0x76543210
.Ltmp83:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshrrev_b32_e32 v12, 3, v54
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp84:
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v10, 0xff800000, v10 :: v_dual_cndmask_b32 v9, 0, v9
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v53
	.loc	1 1038 13                       ; attention.py:1038:13
	v_lshrrev_b32_e32 v21, 5, v0
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s55, s55, s3
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp85:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_permlanex16_b32 v11, v10, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp86:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v10, v10, v10
.Ltmp87:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_permlanex16_b32 v14, v9, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp88:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_add_nc_u32_e32 v12, 0, v12
.Ltmp89:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_or_b32_e32 v21, v21, v52
.Ltmp90:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v11, v11, v11
.Ltmp91:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_and_b32_e32 v13, 12, v49
.Ltmp92:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v9, v9, v14
.Ltmp93:
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s43, 2
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s54, s55
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp94:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v11 :: v_dual_add_nc_u32 v11, 0, v13
.Ltmp95:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v2, 0, v2 :: v_dual_cndmask_b32 v1, 0, v1
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
.Ltmp96:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v12, v10
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v10, v11
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v12, v9
.Ltmp98:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v12, v2
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v9, v11
.Ltmp100:
	.loc	1 1036 13 is_stmt 1             ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp102:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v3, 0, v3 :: v_dual_cndmask_b32 v16, 0, v4
	v_dual_cndmask_b32 v8, 0, v8 :: v_dual_cndmask_b32 v17, 0, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v2, v2, v12 :: v_dual_mov_b32 v11, v1
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v20, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v14, v2
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v11
.Ltmp106:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v11, v10
.Ltmp107:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_mov_b32 v13, v3
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v2, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v12, v1
.Ltmp110:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp111:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v8, v8, v20
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v14, v2
	v_mov_b32_dpp v12, v12 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp113:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v11, v11, v11 :: v_dual_mov_b32 v20, v8
.Ltmp114:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v3, v13
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v13, v9
.Ltmp116:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp117:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v10, v10, v11
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v15, v3
.Ltmp119:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp120:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v2, v2, v14 :: v_dual_add_f32 v1, v1, v12
.Ltmp121:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v12, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v9, v9, v13 :: v_dual_mov_b32 v4, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v13, v1 :: v_dual_mov_b32 v14, v16
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v3, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v11, v9
.Ltmp127:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp129:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp130:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v1, v1, v13 :: v_dual_add_f32 v14, v16, v14
.Ltmp131:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v13, 0, v6, vcc_lo
.Ltmp132:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v15, v3 :: v_dual_mov_b32 v16, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v5, v3, v15
.Ltmp134:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v15, v17
	v_dual_mov_b32 v3, v1 :: v_dual_add_f32 v14, v14, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp135:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v18
.Ltmp136:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v7, 0, v7, vcc_lo
.Ltmp137:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v6, v5
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v18, v13 :: v_dual_mov_b32 v19, v7
	v_dual_mov_b32 v16, v14 :: v_dual_add_f32 v15, v17, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp138:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v15, v17
	v_add_f32_e32 v17, v13, v18
	v_add_f32_e32 v7, v7, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp139:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v13, v15
	v_mov_b32_e32 v19, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp140:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v15, v13
	v_dual_add_f32 v18, v7, v19 :: v_dual_add_f32 v19, v8, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v7, v14, v16 :: v_dual_mov_b32 v16, v13
.Ltmp141:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v22, v18 :: v_dual_mov_b32 v23, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v8, v7
	v_mov_b32_e32 v20, v17
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v22, v22 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v23, v23 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp142:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v15, v18, v22 :: v_dual_add_f32 v14, v17, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v17, v19, v23
.Ltmp143:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v19, v15 :: v_dual_mov_b32 v18, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v20, v17
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp144:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v21
	s_cbranch_execz .LBB0_7
; %bb.6:
.Ltmp145:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v12, v12, v12 :: v_dual_max_f32 v21, v10, v10
.Ltmp146:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp147:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v10, v9, v11 :: v_dual_mov_b32 v11, 0
.Ltmp148:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp149:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v21, v12
.Ltmp150:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s4, s52, s4
	s_addc_u32 s5, s53, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v11, v[9:10], s[4:5]
.LBB0_7:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp151:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v7, v7, v8 :: v_dual_add_f32 v6, v5, v6
	v_dual_add_f32 v5, v2, v4 :: v_dual_and_b32 v8, 0xc0, v49
	v_dual_add_f32 v4, v1, v3 :: v_dual_and_b32 v1, 28, v50
.Ltmp152:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_lshlrev_b32_e32 v2, 5, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v3, 0, v8
	v_lshl_add_u32 v8, v48, 1, 0
.Ltmp153:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v17, v20 :: v_dual_add_f32 v11, v15, v19
	v_dual_add_f32 v10, v14, v18 :: v_dual_add_f32 v9, v13, v16
.Ltmp154:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_add3_u32 v1, v3, v2, v1
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v13, 63, v0
	.loc	1 1038 13                       ; attention.py:1038:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[4:7]
	ds_store_b128 v8, v[9:12] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	v_and_b32_e32 v0, 64, v0
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v2, s0, v13
	.loc	1 1041 22                       ; attention.py:1041:22
	v_cmp_gt_i32_e32 vcc_lo, s43, v13
	.loc	1 1038 13                       ; attention.py:1038:13
	s_and_b32 s53, s53, 0xffff
	s_mov_b32 s55, 0x31027000
	v_cmp_eq_u32_e64 s0, 0, v0
	v_lshl_add_u32 v0, v2, 2, 8
	s_mov_b32 s54, 0x7ffffffe
	s_and_b32 vcc_lo, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[52:55], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp155:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 152
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
		.amdhsa_next_free_vgpr 187
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_vgpr, 187
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.numbered_sgpr, 80
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10936
; TotalNumSgprs: 82
; NumVgprs: 187
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 23
; NumSGPRsForWavesPerEU: 82
; NumVGPRsForWavesPerEU: 187
; Occupancy: 8
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
	.byte	5                               ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0xbd DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x97 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	883                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	887                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x76:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1027                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x83:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x90:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x9d:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xab:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1032                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xb8:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
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
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           1
        .value_kind:     by_value
      - .offset:         121
        .size:           1
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     82
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     187
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
