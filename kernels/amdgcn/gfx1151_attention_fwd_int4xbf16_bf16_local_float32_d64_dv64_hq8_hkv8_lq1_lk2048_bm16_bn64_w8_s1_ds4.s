	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b32 s54, s[0:1], 0x64
	s_load_b64 s[42:43], s[0:1], 0x5c
	s_load_b64 s[56:57], s[0:1], 0x0
	s_load_b64 s[52:53], s[0:1], 0x40
.Ltmp0:
	.loc	1 748 27 prologue_end           ; attention.py:748:27
	s_abs_i32 s7, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v48, 15, v0
	v_lshrrev_b32_e32 v12, 4, v0
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x7c
	s_load_b32 s19, s[0:1], 0x84
	.loc	1 773 86                        ; attention.py:773:86
	v_lshlrev_b32_e32 v2, 1, v48
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v43, 0xc0, v0
	v_lshlrev_b32_e32 v44, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v46, 31, v0
	v_and_b32_e32 v49, 0xf0, v0
	.loc	1 889 86                        ; attention.py:889:86
	v_and_b32_e32 v50, 7, v0
	v_lshlrev_b32_e32 v45, 2, v0
	v_lshlrev_b32_e32 v47, 5, v0
	s_mov_b32 s44, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s5, s54
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s8, s2, s54
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_f32_u32 s4, s5
	s_sub_i32 s6, 0, s5
	.loc	1 748 27                        ; attention.py:748:27
	s_ashr_i32 s8, s8, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s4, s4
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
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s4, s42, v2
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s18, s7, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s7, s7, s54
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s12, s18, s3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s18, v12
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v3, s12, v12
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s41, s2, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 1, v1
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[3:4], null, v3, s42, v[2:3]
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s4, s4, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v2, 0x80000000, v3, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s54, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_lshrrev_b32_e32 v3, 3, v43
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s8, s4, s54
	s_abs_i32 s4, s4
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_u16 v2, v2, s[56:59], 0 offen
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_hi_u32 s6, s4, s6
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s6, s5
	s_add_i32 s10, s6, 1
	s_sub_i32 s4, s4, s9
	.loc	1 774 26                        ; attention.py:774:26
	v_xad_u32 v3, v44, v3, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s2, s4, s5
	s_cmp_ge_u32 s4, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s2, s2, s4
	s_add_i32 s4, s6, 1
	s_cmp_ge_u32 s2, s5
	s_cselect_b32 s2, s4, s6
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s17, s19
	.loc	1 798 32                        ; attention.py:798:32
	s_xor_b32 s2, s2, s8
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s5, s18
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s4, s19, s16
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s5, 16
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s2, s2, s8
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s5, s5, 0x800
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s4, s4, s18
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s5, s5, 63
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s6, s41, s2
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s7, s5, 31
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s4, s4, 0
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s7, s7, 26
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s2, s2, 6
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s6, s6, 6
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s5, s5, s7
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s4, s4, 0x7fffffc0
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s2, s6, s2
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s5, s5, 63
	.loc	1 807 18                        ; attention.py:807:18
	s_max_i32 s55, s6, s4
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s72, s2, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_ge_i32 s55, s72
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_store_b16 v3, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v2, s18, v48
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v3, s12, v48, 1
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v4, 0xf8, v0
	v_lshrrev_b32_e32 v5, 1, v0
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x68
	s_load_b64 s[60:61], s[0:1], 0x30
	.loc	1 781 22                        ; attention.py:781:22
	v_cmp_gt_i32_e64 s2, 1, v2
	v_dual_mov_b32 v140, 0xff800000 :: v_dual_lshlrev_b32 v15, 3, v0
	v_dual_mov_b32 v10, 0xff800000 :: v_dual_lshlrev_b32 v9, 3, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v2, 0x80000000, v3, s2
	v_dual_mov_b32 v22, 0x7632 :: v_dual_and_b32 v3, 24, v44
	v_dual_mov_b32 v25, 0xff800000 :: v_dual_and_b32 v16, 30, v0
	v_and_b32_e32 v30, 24, v5
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v28, v48, 5, v3
	.loc	1 822 49                        ; attention.py:822:49
	v_and_b32_e32 v14, 24, v15
	s_delay_alu instid0(VALU_DEP_4)
	v_lshlrev_b32_e32 v32, 1, v16
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s57, s9, 0xffff
	s_mov_b32 s56, s8
	v_mov_b32_e32 v21, 0x5410
	buffer_load_u16 v26, v2, s[56:59], 0 offen
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v2, s19, v1
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v6, 0xe0, v0
	v_lshlrev_b32_e32 v11, 3, v46
	v_and_b32_e32 v20, 16, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v5, v1 :: v_dual_lshlrev_b32 v8, 6, v0
	v_mov_b32_e32 v3, v1
	v_lshrrev_b32_e32 v31, 3, v6
	v_lshrrev_b32_e32 v33, 4, v6
	v_mov_b32_e32 v6, v1
	v_lshl_or_b32 v55, v48, 8, v11
	v_mov_b32_e32 v11, v1
	v_cmp_eq_u32_e64 s2, 0, v20
	v_and_b32_e32 v17, 0x380, v47
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v29, 2, v4
	v_and_b32_e32 v35, 64, v8
	v_xor_b32_e32 v30, v15, v30
	v_cndmask_b32_e64 v20, 0x1054, v21, s2
	v_lshrrev_b32_e32 v21, 1, v4
	v_mov_b32_e32 v4, v1
	v_or3_b32 v73, v35, v17, v16
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[15:16], null, s43, v29, v[9:10]
	v_lshlrev_b32_e32 v7, 1, v43
	v_lshlrev_b32_e32 v18, 3, v48
	v_dual_mov_b32 v8, v1 :: v_dual_lshlrev_b32 v23, 4, v50
	v_and_b32_e32 v24, 0x60, v0
	v_bfe_i32 v27, v0, 3, 1
	v_lshl_or_b32 v16, v20, 8, v20
	v_lshrrev_b32_e32 v19, 1, v49
	.loc	1 760 21                        ; attention.py:760:21
	v_lshlrev_b32_e32 v13, 2, v48
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v53, s16, v2
	.loc	1 867 47                        ; attention.py:867:47
	v_add_nc_u32_e32 v54, s17, v2
	v_lshl_or_b32 v36, v24, 6, v23
	v_and_or_b32 v24, 0x410, v27, v24
	v_mov_b32_e32 v2, v1
	v_lshl_or_b32 v34, v46, 2, v7
	v_mov_b32_e32 v7, v1
	v_lshl_or_b32 v18, v49, 4, v18
	v_xor_b32_e32 v70, v45, v31
	v_lshl_or_b32 v71, v46, 6, v32
	v_xor_b32_e32 v17, 8, v55
	v_and_b32_e32 v16, 0x540054, v16
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v27, 8, v28
	v_xor_b32_e32 v37, 16, v28
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s73, s3, 11
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 29
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v69, 0, v28
	v_xor_b32_e32 v28, 24, v28
	v_and_or_b32 v51, v12, 1, s73
	v_or3_b32 v52, s73, v12, 62
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s1, s3, s0
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s43, v9
	v_xor_b32_e32 v18, v18, v19
	v_cndmask_b32_e64 v9, 0x3276, v22, s2
	v_xor_b32_e32 v19, v23, v21
	v_xor_b32_e32 v20, v24, v36
	v_xor_b32_e32 v21, 0x420, v70
	v_xor_b32_e32 v22, 4, v71
	v_xor_b32_e32 v23, 8, v71
	v_xor_b32_e32 v24, 12, v71
	v_add_nc_u32_e32 v79, 0, v30
	v_add_nc_u32_e32 v80, 0, v17
	v_lshl_or_b32 v30, v16, 4, v16
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[16:17], null, s15, v12, v[13:14]
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v74, 0, v27
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s2, s12, 0x3fb8aa3b
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v76, 0, v28
	v_lshl_or_b32 v77, v50, 10, v19
	v_lshl_or_b32 v78, v50, 7, v20
	v_add_nc_u32_e32 v95, 0, v18
	v_add_nc_u32_e32 v96, 0, v21
	v_add_nc_u32_e32 v97, 0, v22
	v_add_nc_u32_e32 v98, 0, v23
	v_add_nc_u32_e32 v99, 0, v24
	v_lshl_or_b32 v9, v9, 8, v9
	v_xor_b32_e32 v72, v34, v33
	v_xor_b32_e32 v31, 16, v55
	v_xor_b32_e32 v32, 24, v55
	v_xor_b32_e32 v33, 32, v55
	v_xor_b32_e32 v34, 40, v55
	v_xor_b32_e32 v35, 48, v55
	v_xor_b32_e32 v38, 56, v55
	v_xor_b32_e32 v39, 64, v55
	v_xor_b32_e32 v40, 0x48, v55
	v_xor_b32_e32 v41, 0x50, v55
	v_xor_b32_e32 v42, 0x58, v55
	v_xor_b32_e32 v27, 16, v71
	v_and_b32_e32 v9, 0x760076, v9
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s8, s1, -8
	v_xor_b32_e32 v91, 0x60, v55
	v_xor_b32_e32 v92, 0x68, v55
	v_xor_b32_e32 v93, 0x70, v55
	v_xor_b32_e32 v94, 0x78, v55
	v_xor_b32_e32 v28, 20, v71
	v_xor_b32_e32 v29, 24, v71
	v_xor_b32_e32 v36, 28, v71
	v_xor_b32_e32 v105, 36, v71
	v_xor_b32_e32 v106, 40, v71
	v_xor_b32_e32 v107, 44, v71
	v_xor_b32_e32 v108, 48, v71
	v_xor_b32_e32 v109, 52, v71
	v_xor_b32_e32 v110, 56, v71
	v_xor_b32_e32 v111, 60, v71
	v_xor_b32_e32 v112, 0x210, v72
	v_xor_b32_e32 v113, 4, v73
	v_xor_b32_e32 v114, 8, v73
	v_xor_b32_e32 v115, 12, v73
	v_xor_b32_e32 v116, 16, v73
	v_xor_b32_e32 v117, 20, v73
	v_xor_b32_e32 v118, 24, v73
	v_xor_b32_e32 v119, 28, v73
	v_add_nc_u32_e32 v81, 0, v31
	v_add_nc_u32_e32 v82, 0, v32
	v_add_nc_u32_e32 v83, 0, v33
	v_add_nc_u32_e32 v84, 0, v34
	v_add_nc_u32_e32 v85, 0, v35
	v_add_nc_u32_e32 v86, 0, v38
	v_add_nc_u32_e32 v87, 0, v39
	v_add_nc_u32_e32 v88, 0, v40
	v_add_nc_u32_e32 v89, 0, v41
	v_add_nc_u32_e32 v90, 0, v42
	v_xor_b32_e32 v31, 0x90, v77
	v_xor_b32_e32 v32, 0x120, v77
	v_xor_b32_e32 v33, 0x1b0, v77
	v_xor_b32_e32 v34, 0x240, v77
	v_xor_b32_e32 v35, 0x2d0, v77
	v_xor_b32_e32 v38, 0x360, v77
	v_xor_b32_e32 v39, 0x3f0, v77
	v_xor_b32_e32 v40, 16, v78
	v_xor_b32_e32 v41, 32, v78
	v_xor_b32_e32 v42, 48, v78
	v_xor_b32_e32 v131, 64, v78
	v_xor_b32_e32 v132, 0x50, v78
	v_xor_b32_e32 v133, 0x60, v78
	v_add_nc_u32_e32 v100, 0, v27
	v_xor_b32_e32 v27, 0x70, v78
	v_lshl_or_b32 v9, v9, 4, v9
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s9, s1, 3
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s8, s3, s8
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s9, s13, s9
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s8, s14, s8
	v_or_b32_e32 v56, 36, v51
	v_or_b32_e32 v57, 38, v51
	v_or_b32_e32 v58, 40, v51
	v_or_b32_e32 v59, 42, v51
	v_or_b32_e32 v60, 44, v51
	v_or_b32_e32 v61, 46, v51
	v_or_b32_e32 v62, 48, v51
	v_or_b32_e32 v63, 50, v51
	v_or_b32_e32 v64, 52, v51
	v_or_b32_e32 v65, 54, v51
	v_or_b32_e32 v66, 56, v51
	v_or_b32_e32 v67, 58, v51
	v_or_b32_e32 v68, 60, v51
	.loc	1 825 31                        ; attention.py:825:31
	v_cmp_gt_i32_e64 s1, s42, v14
	v_add_nc_u32_e32 v91, 0, v91
	v_add_nc_u32_e32 v92, 0, v92
	v_add_nc_u32_e32 v93, 0, v93
	v_add_nc_u32_e32 v94, 0, v94
	v_add_nc_u32_e32 v101, 0, v28
	v_add_nc_u32_e32 v102, 0, v29
	v_add_nc_u32_e32 v103, 0, v36
	v_add_nc_u32_e32 v105, 0, v105
	v_add_nc_u32_e32 v106, 0, v106
	v_add_nc_u32_e32 v107, 0, v107
	v_add_nc_u32_e32 v108, 0, v108
	v_add_nc_u32_e32 v109, 0, v109
	v_add_nc_u32_e32 v110, 0, v110
	v_add_nc_u32_e32 v111, 0, v111
	v_add_nc_u32_e32 v112, 0, v112
	v_add_nc_u32_e32 v113, 0, v113
	v_add_nc_u32_e32 v114, 0, v114
	v_add_nc_u32_e32 v115, 0, v115
	v_add_nc_u32_e32 v116, 0, v116
	v_add_nc_u32_e32 v117, 0, v117
	v_add_nc_u32_e32 v118, 0, v118
	v_add_nc_u32_e32 v119, 0, v119
	v_and_b32_e32 v120, 0x5040504, v30
	v_add_nc_u32_e32 v121, 0, v31
	v_add_nc_u32_e32 v122, 0, v32
	v_add_nc_u32_e32 v123, 0, v33
	v_add_nc_u32_e32 v124, 0, v34
	v_add_nc_u32_e32 v125, 0, v35
	v_add_nc_u32_e32 v126, 0, v38
	v_add_nc_u32_e32 v127, 0, v39
	v_add_nc_u32_e32 v128, 0, v40
	v_add_nc_u32_e32 v129, 0, v41
	v_add_nc_u32_e32 v130, 0, v42
	v_add_nc_u32_e32 v131, 0, v131
	v_add_nc_u32_e32 v132, 0, v132
	v_add_nc_u32_e32 v133, 0, v133
	v_add_nc_u32_e32 v134, 0, v27
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v135, 1, v16
	v_add_nc_u32_e32 v136, 2, v16
	v_and_b32_e32 v137, 0x7060706, v9
	v_add_nc_u32_e32 v139, 3, v16
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s18, s18, s15
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_add_i32 s75, s8, s9
	s_mov_b32 s45, s44
	s_mov_b32 s46, s44
	s_mov_b32 s47, s44
	s_mov_b32 s48, s44
	s_mov_b32 s49, s44
	s_mov_b32 s50, s44
	s_mov_b32 s51, s44
	s_mov_b32 s74, 0x76543210
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
	s_add_i32 s75, s75, s18
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v12, 16, v26
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v75, 0, v37
	v_xor_b32_e32 v37, 32, v71
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v138, s2, v12
	.loc	1 774 26                        ; attention.py:774:26
	ds_load_b64 v[17:18], v69
	ds_load_b64 v[19:20], v74
	ds_load_b64 v[21:22], v75
	ds_load_b64 v[23:24], v76
	v_add_nc_u32_e32 v104, 0, v37
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v9, 2, v0
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s11, s55, s73
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v26, s44 :: v_dual_mov_b32 v27, s45
	v_dual_mov_b32 v28, s46 :: v_dual_mov_b32 v29, s47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 822 32                        ; attention.py:822:32
	v_or_b32_e32 v9, s11, v9
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v30, s48 :: v_dual_mov_b32 v31, s49
	v_dual_mov_b32 v32, s50 :: v_dual_mov_b32 v33, s51
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[36:37], null, v9, s42, v[14:15]
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v35, 2, v13
	v_or_b32_e32 v39, 1, v13
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v42, s55, v13
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v40, 3, v13
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s12, s75, s55
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v35, s55, v35
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v9, 0x80000000, v36, s1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v39, s55, v39
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s2, v42, v53
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s4, v42, v54
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v40, s55, v40
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b64 v[36:37], v9, s[56:59], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s5, v35, v53
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s6, v35, v54
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s9, v39, v53
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s10, v39, v54
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s2, s2, s4
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s7, v40, v53
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s8, v40, v54
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v40, s12, v136, 1
	v_add_lshl_u32 v39, s12, v135, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s4, vcc_lo, s2
	s_and_b32 s2, s5, s6
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v35, s12, v16, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s6, s9, s10
	s_and_b32 s5, vcc_lo, s2
	s_and_b32 s2, vcc_lo, s6
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v40, 0x80000000, v40, s5
	v_cndmask_b32_e64 v39, 0x80000000, v39, s2
	v_cndmask_b32_e64 v35, 0x80000000, v35, s4
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s6, s7, s8
	v_or_b32_e32 v147, 2, v51
	v_or_b32_e32 v154, 6, v51
	s_and_b32 s6, vcc_lo, s6
	v_or_b32_e32 v155, 10, v51
	v_or_b32_e32 v161, 14, v51
	v_or_b32_e32 v162, 18, v51
	v_or_b32_e32 v168, 22, v51
	v_or_b32_e32 v170, 26, v51
	v_or_b32_e32 v171, 30, v51
	v_or_b32_e32 v173, 34, v51
	v_or_b32_e32 v175, 4, v51
	v_or_b32_e32 v177, 8, v51
	v_or_b32_e32 v178, 12, v51
	v_or_b32_e32 v179, 16, v51
	v_or_b32_e32 v180, 20, v51
	v_or_b32_e32 v181, 24, v51
	v_or_b32_e32 v182, 28, v51
	v_or_b32_e32 v215, 32, v51
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v41, s55, v51, 1
	v_add_lshl_u32 v145, v57, s55, 1
	v_add_lshl_u32 v146, v59, s55, 1
	v_add_lshl_u32 v148, v61, s55, 1
	v_add_lshl_u32 v166, v65, s55, 1
	v_add_lshl_u32 v42, v155, s55, 1
	v_add_lshl_u32 v155, v168, s55, 1
	v_add_lshl_u32 v168, v173, s55, 1
	v_add_lshl_u32 v160, v63, s55, 1
	v_add_lshl_u32 v174, v67, s55, 1
	v_add_lshl_u32 v176, s55, v52, 1
	v_add_lshl_u32 v216, v56, s55, 1
	v_add_lshl_u32 v217, v58, s55, 1
	v_add_lshl_u32 v173, v175, s55, 1
	v_add_lshl_u32 v175, v177, s55, 1
	v_add_lshl_u32 v177, v178, s55, 1
	v_add_lshl_u32 v178, v179, s55, 1
	v_add_lshl_u32 v179, v180, s55, 1
	v_add_lshl_u32 v180, v181, s55, 1
	v_add_lshl_u32 v181, v182, s55, 1
	v_add_lshl_u32 v182, v215, s55, 1
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s40, 0xff800000, v140
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v79, v[36:37]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[141:144], v69 offset1:1
	ds_load_2addr_stride64_b64 v[149:152], v69 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[156:159], v74 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[183:190], v[141:142], v[17:18], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[191:198], v[143:144], v[17:18], v[26:33] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[199:206], v[149:150], v[17:18], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[207:214], v[151:152], v[17:18], v[26:33] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[26:29], v74 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[30:33], v75 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[183:190], v[156:157], v[19:20], v[183:190] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[191:198], v[158:159], v[19:20], v[191:198] neg_lo:[1,1,0]
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v141.l, 0
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[199:206], v[26:27], v[19:20], v[199:206] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[207:214], v[28:29], v[19:20], v[207:214] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[26:29], v75 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[183:190], v[30:31], v[21:22], v[183:190] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[191:198], v[32:33], v[21:22], v[191:198] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[30:33], v76 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[199:206], v[26:27], v[21:22], v[199:206] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[207:214], v[28:29], v[21:22], v[207:214] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[26:29], v76 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[191:198], v[32:33], v[23:24], v[191:198] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[183:190], v[30:31], v[23:24], v[183:190] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v159, v196
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x2
	buffer_load_u16 v40, v40, s[60:63], 0 offen
	buffer_load_u16 v196, v39, s[60:63], 0 offen
	buffer_load_u16 v35, v35, s[60:63], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v39, v147, s55, 1
	v_add_lshl_u32 v147, v161, s55, 1
	v_add_lshl_u32 v161, v170, s55, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v163, v184
	v_cvt_f32_i32_e32 v37, v185
	v_cvt_f32_i32_e32 v164, v186
	v_cvt_f32_i32_e32 v36, v187
	v_cvt_f32_i32_e32 v165, v188
	v_cvt_f32_i32_e32 v34, v189
	v_cvt_f32_i32_e32 v167, v190
	v_cvt_f32_i32_e32 v33, v191
	v_cvt_f32_i32_e32 v157, v192
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[199:206], v[26:27], v[23:24], v[199:206] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[207:214], v[28:29], v[23:24], v[207:214] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v30, v193
	v_cvt_f32_i32_e32 v32, v197
	v_cvt_f32_i32_e32 v169, v198
	v_cvt_f32_i32_e32 v28, v199
	v_cvt_f32_i32_e32 v172, v200
	v_cvt_f32_i32_e32 v29, v201
	v_cvt_f32_i32_e32 v149, v202
	v_cvt_f32_i32_e32 v27, v203
	v_cvt_f32_i32_e32 v150, v204
	v_cvt_f32_i32_e32 v26, v205
	v_cvt_f32_i32_e32 v151, v206
	v_cvt_f32_i32_e32 v144, v207
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v184, v60, s55, 1
	v_add_lshl_u32 v186, v62, s55, 1
	v_add_lshl_u32 v187, v64, s55, 1
	v_add_lshl_u32 v188, v66, s55, 1
	v_add_lshl_u32 v189, v68, s55, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v158, v194
	v_cvt_f32_i32_e32 v31, v195
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v194, 0, v70
	v_add_nc_u32_e32 v195, 0, v71
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v183, v183
	v_cvt_f32_i32_e32 v38, v214
	v_cvt_f32_i32_e32 v9, v212
	v_cvt_f32_i32_e32 v152, v208
	v_cvt_f32_i32_e32 v153, v210
	v_cvt_f32_i32_e32 v143, v209
	v_cvt_f32_i32_e32 v142, v211
	v_cvt_f32_i32_e32 v12, v213
	v_mul_f32_e32 v158, v138, v158
	v_mul_f32_e32 v38, v138, v38
	v_mul_f32_e32 v28, v138, v28
	v_mul_f32_e32 v142, v138, v142
	v_mul_f32_e32 v144, v138, v144
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(2)
	v_cndmask_b16 v156.h, 0xff80, v40.l, s5
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v40, v154, s55, 1
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v156.l, 0xff80, v35.l, s4
	v_add_lshl_u32 v35, s12, v139, 1
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v154, v162, s55, 1
	v_add_lshl_u32 v162, v171, s55, 1
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s55, s55, 64
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v141.h, v156.l
	v_cndmask_b32_e64 v35, 0x80000000, v35, s6
	buffer_load_u16 v197, v35, s[60:63], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x1f
	buffer_load_u16 v198, v41, s[64:67], 0 offen
	buffer_load_u16 v199, v39, s[64:67], 0 offen
	buffer_load_u16 v200, v40, s[64:67], 0 offen
	buffer_load_u16 v201, v42, s[64:67], 0 offen
	buffer_load_u16 v202, v147, s[64:67], 0 offen
	buffer_load_u16 v203, v154, s[64:67], 0 offen
	buffer_load_u16 v204, v155, s[64:67], 0 offen
	buffer_load_u16 v205, v161, s[64:67], 0 offen
	buffer_load_u16 v206, v162, s[64:67], 0 offen
	buffer_load_u16 v207, v168, s[64:67], 0 offen
	buffer_load_u16 v193, v145, s[64:67], 0 offen
	buffer_load_u16 v192, v146, s[64:67], 0 offen
	buffer_load_u16 v191, v148, s[64:67], 0 offen
	buffer_load_u16 v190, v160, s[64:67], 0 offen
	buffer_load_u16 v185, v166, s[64:67], 0 offen
	buffer_load_u16 v170, v174, s[64:67], 0 offen
	buffer_load_u16 v171, v176, s[64:67], 0 offen
	buffer_load_u16 v162, v177, s[64:67], 0 offen
	buffer_load_u16 v166, v175, s[64:67], 0 offen
	buffer_load_u16 v168, v173, s[64:67], 0 offen
	buffer_load_u16 v40, v181, s[64:67], 0 offen
	buffer_load_u16 v41, v180, s[64:67], 0 offen
	buffer_load_u16 v42, v179, s[64:67], 0 offen
	buffer_load_u16 v161, v178, s[64:67], 0 offen
	buffer_load_u16 v35, v184, s[64:67], 0 offen
	buffer_load_u16 v39, v217, s[64:67], 0 offen
	buffer_load_u16 v154, v216, s[64:67], 0 offen
	buffer_load_u16 v155, v182, s[64:67], 0 offen
	buffer_load_u16 v145, v189, s[64:67], 0 offen
	buffer_load_u16 v146, v188, s[64:67], 0 offen
	buffer_load_u16 v147, v187, s[64:67], 0 offen
	buffer_load_u16 v148, v186, s[64:67], 0 offen
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v173.l, 0xff80, v196.l, s2
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s8, 0xff800000, v141
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v174, v138, v183
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v141.h, v173.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v177, v138, v169
	v_mul_f32_e32 v157, v138, v157
	v_mul_f32_e32 v9, v138, v9
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s8, s4, s8
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s7, 0xff800000, v141
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v143, v138, v143
	.loc	1 896 30                        ; attention.py:896:30
	s_waitcnt vmcnt(32)
	v_mov_b16_e64 v197.h, v141.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s2, s2, s7
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v173.h, 0xff80, v197.l, s6
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_b32 v194, v156
	ds_store_b32 v96, v173
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v176, v195
	ds_load_b32 v181, v104
	ds_load_b32 v179, v105
	ds_load_b32 v180, v106
	ds_load_b32 v186, v97
	ds_load_b32 v187, v98
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v175, 16, v198
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b32 v188, v99
	ds_load_b32 v189, v100
	ds_load_b32 v183, v101
	ds_load_b32 v184, v102
	ds_load_b32 v178, v103
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v194, v138, v172
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v172, 16, v203
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v192, 16, v192
	v_lshlrev_b32_e32 v182, 16, v206
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v190, 16, v190
	v_lshlrev_b32_e32 v193, 16, v193
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v173.l, v141.l
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v170, 16, v170
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v156.l, v141.l
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v171, 16, v171
	v_lshlrev_b32_e32 v191, 16, v191
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s10, 0xff800000, v173
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt lgkmcnt(10)
	v_mov_b16_e64 v141.h, v176.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s9, 0xff800000, v156
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v156, 0, v77
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v146, 16, v146
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v160, 0x3fb8aa3b, v141 :: v_dual_lshlrev_b32 v147, 16, v147
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s4, s5, s9
	s_and_b32 s5, s6, s10
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt lgkmcnt(6)
	v_mov_b16_e64 v141.h, v186.l
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s55, s72
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v160, v174, v175
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v174, v138, v163 :: v_dual_and_b32 v163, 0xffff0000, v176
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v175, 16, v199
	v_lshlrev_b32_e32 v176, 16, v205
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v163, 0x3fb8aa3b, v163 :: v_dual_lshlrev_b32 v148, 16, v148
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v163, v174, v175
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v174, v138, v164
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v164, 0xffff0000, v186
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v175, 16, v200
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v164, 0x3fb8aa3b, v164
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v164, v174, v175
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	s_waitcnt lgkmcnt(5)
	v_dual_mul_f32 v174, v138, v165 :: v_dual_and_b32 v165, 0xffff0000, v187
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v175, 16, v201
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v165, 0x3fb8aa3b, v165
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v165, v174, v175
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v174, v138, v167 :: v_dual_lshlrev_b32 v175, 16, v202
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt lgkmcnt(4)
	v_and_b32_e32 v167, 0xffff0000, v188
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v167, 0x3fb8aa3b, v167
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v167, v174, v175
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_lshlrev_b32_e32 v175, 16, v204
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt lgkmcnt(3)
	v_and_b32_e32 v169, 0xffff0000, v189
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v169, 0x3fb8aa3b, v169
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v169, v157, v172
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	s_waitcnt lgkmcnt(2)
	v_and_b32_e32 v157, 0xffff0000, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v159, v138, v159 :: v_dual_mul_f32 v174, 0x3fb8aa3b, v157
	.loc	1 880 25                        ; attention.py:880:25
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v174, v158, v175 :: v_dual_and_b32 v157, 0xffff0000, v184
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v175, 0x3fb8aa3b, v157
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v157, 0xffff0000, v178
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v178.h, v141.l
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v175, v159, v176 :: v_dual_mul_f32 v176, 0x3fb8aa3b, v157
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v176, v177, v182 :: v_dual_lshlrev_b32 v195, 16, v207
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v182, 0xffff0000, v181
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b32 v177, v107
	ds_load_b32 v172, v108
	ds_load_b32 v159, v109
	ds_load_b32 v157, v110
	ds_load_b32 v158, v111
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v182, 0x3fb8aa3b, v182
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v182, v194, v195
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v194, v138, v149 :: v_dual_and_b32 v149, 0xffff0000, v179
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v149, 0x3fb8aa3b, v149
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v173, 0xffff0000, v157
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v157.h, v141.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v149, v194, v193
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v193, v138, v150 :: v_dual_and_b32 v150, 0xffff0000, v180
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v150, 0x3fb8aa3b, v150
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v150, v193, v192 :: v_dual_mul_f32 v193, 0x3fb8aa3b, v173
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v192, v138, v151 :: v_dual_fmac_f32 v193, v9, v170
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v170, 0xffff0000, v158
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v185, 16, v185
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v9, 0, 1, s4
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v158.h, v141.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v194, 0x3fb8aa3b, v170
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v151, 0xffff0000, v177
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v170, 0, 1, s5
	v_lshlrev_b16 v9.l, 8, v9.l
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v177.h, v141.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v194, v38, v171
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v151, 0x3fb8aa3b, v151
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_cndmask_b32_e64 v38, 0, 1, s8
	v_lshlrev_b16 v9.h, 8, v170.l
	v_dual_mov_b32 v171, v10 :: v_dual_mov_b32 v170, v11
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v151, v192, v191
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v191, v138, v152
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v152, 0xffff0000, v172
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v9.l, v38.l, v9.l
	v_cndmask_b32_e64 v38, 0, 1, s2
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v11, 16, v168
	.loc	1 881 25                        ; attention.py:881:25
	v_add_nc_u32_e32 v192, 0, v73
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v152, 0x3fb8aa3b, v152
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v172.h, v141.l
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v38.l, v38.l, v9.h
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v168.h, v141.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v152, v191, v190 :: v_dual_add_nc_u32 v191, 0, v72
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v190, v138, v153 :: v_dual_and_b32 v153, 0xffff0000, v159
	.loc	1 881 25                        ; attention.py:881:25
	ds_store_b16 v112, v38
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v159.h, v141.l
	.loc	1 881 25                        ; attention.py:881:25
	ds_store_b16 v191, v9
	v_mad_u64_u32 v[9:10], null, s11, s43, v[15:16]
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v10, v138, v37
	v_mul_f32_e32 v37, 0x3fb8aa3b, v141
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v141.h, v187.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v153, 0x3fb8aa3b, v153
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v37, v10, v11 :: v_dual_mul_f32 v186, 0x3fb8aa3b, v141
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v141.h, v188.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v153, v190, v185
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v10, v138, v36 :: v_dual_add_nc_u32 v185, 0, v55
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v11, 16, v166
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v187, 0x3fb8aa3b, v141
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v141.h, v189.l
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v190, v25, v25 :: v_dual_add_nc_u32 v173, 0, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v186, v10, v11
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v10, v138, v34
	v_dual_mul_f32 v188, 0x3fb8aa3b, v141 :: v_dual_lshlrev_b32 v11, 16, v162
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v141.h, v183.l
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_u16_d16 v25, v117
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v34, 16, v155
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v187, v10, v11
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v10, v138, v33
	v_mul_f32_e32 v38, 0x3fb8aa3b, v141
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v11, 16, v161
	v_mov_b16_e64 v141.h, v184.l
	v_lshlrev_b32_e32 v33, 16, v40
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_u16_d16 v155, v114 offset:32
	ds_load_u16_d16 v161, v113 offset:32
	ds_load_u16_d16_hi v36, v192
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v40, 16, v154
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v188, v10, v11
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v10, v138, v30
	v_mul_f32_e32 v30, v138, v32
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v32, 16, v41
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v41, 0x3fb8aa3b, v141
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v141.h, v178.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v11, v138, v31
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_u16_d16 v178, v116 offset:32
	s_waitcnt lgkmcnt(1)
	ds_load_u16_d16 v36, v113
	ds_load_u16_d16 v154, v115 offset:32
	ds_load_u16_d16 v166, v118 offset:32
	ds_load_u16_d16 v168, v117 offset:32
	.loc	1 896 30                        ; attention.py:896:30
	s_waitcnt lgkmcnt(1)
	v_mov_b16_e64 v166.h, v141.l
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v41, v11, v32 :: v_dual_mul_f32 v32, 0x3fb8aa3b, v141
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v141.h, v181.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v31, v138, v27
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v27, 16, v42
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v161.h, v141.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v32, v30, v33
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_u16_d16 v33, v116
	ds_load_u16_d16 v162, v119 offset:32
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v42, 0x3fb8aa3b, v141
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v38, v10, v27
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_u16_d16_hi v25, v118
	ds_load_u16_d16 v27, v192 offset:32
	s_waitcnt lgkmcnt(0)
	v_and_b16 v27.h, 1, v25.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v141.h, v179.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v29, v138, v29 :: v_dual_fmac_f32 v42, v28, v34
	.loc	1 881 25                        ; attention.py:881:25
	v_lshrrev_b16 v25.l, 8, v25.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_eq_u16_e64 s9, 1, v27.h
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v10, 0x3fb8aa3b, v141 :: v_dual_lshlrev_b32 v39, 16, v39
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v33.h, 1, v36.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b16 v25.l, 1, v25.l
	v_lshrrev_b16 v36.h, 8, v36.h
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v10, v29, v40
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v40, 16, v35
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_u16_d16 v35, v114
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v35, v115
	v_cmp_eq_u16_e64 s30, 1, v33.h
	v_and_b16 v33.h, 1, v36.l
	v_cmp_eq_u16_e64 s11, 1, v25.l
	v_and_b16 v27.h, 1, v25.h
	v_lshrrev_b16 v25.l, 8, v25.h
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v141.h, v180.l
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s21, 1, v33.h
	v_and_b16 v36.h, 1, v36.h
	v_cmp_eq_u16_e64 s7, 1, v27.h
	v_lshrrev_b16 v27.h, 8, v27.l
	v_and_b16 v25.l, 1, v25.l
	v_lshrrev_b16 v36.l, 8, v36.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v11, 0x3fb8aa3b, v141
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v29.l, 1, v27.l
	v_and_b16 v27.h, 1, v27.h
	v_cmp_eq_u16_e64 s13, 1, v25.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v141.h, v177.l
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s31, 1, v36.h
	s_waitcnt lgkmcnt(0)
	v_and_b16 v33.h, 1, v35.l
	v_cmp_eq_u16_e64 s6, 1, v27.h
	v_lshrrev_b16 v27.h, 8, v33.l
	v_lshrrev_b16 v35.l, 8, v35.l
	v_and_b16 v36.l, 1, v36.l
	v_cmp_eq_u16_e64 s14, 1, v29.l
	v_cmp_eq_u16_e64 s18, 1, v33.h
	v_and_b16 v27.h, 1, v27.h
	v_and_b16 v35.l, 1, v35.l
	v_and_b16 v33.h, 1, v35.h
	v_cmp_eq_u16_e64 s29, 1, v36.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v36, 0xff800000, v163, s31
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s15, 1, v27.h
	ds_load_u16_d16_hi v27, v119
	v_cmp_eq_u16_e64 s19, 1, v35.l
	v_lshrrev_b16 v35.l, 8, v35.h
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v11, v31, v39
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v28, 0xff800000, v175, s13
	v_cndmask_b32_e64 v34, 0xff800000, v169, s15
	v_cndmask_b32_e64 v31, 0xff800000, v42, s14
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v35.l, 1, v35.l
	v_and_b16 v33.l, 1, v33.l
	v_cmp_eq_u16_e64 s16, 1, v33.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v37, 0xff800000, v37, s21
	s_waitcnt lgkmcnt(0)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s20, 1, v35.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v35, 0xff800000, v160, s30
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v179, 0x3fb8aa3b, v141
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v141.h, v172.l
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s17, 1, v33.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v42, 0xff800000, v167, s20
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v167, 1, v9
	.loc	1 882 26                        ; attention.py:882:26
	s_barrier
	.loc	1 881 25                        ; attention.py:881:25
	v_lshrrev_b16 v25.l, 8, v27.h
	v_and_b16 v27.h, 1, v27.h
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v184, 0x3fb8aa3b, v141 :: v_dual_mul_f32 v39, v138, v26
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v26, 0xff800000, v174, s11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v25.l, 1, v25.l
	v_cmp_eq_u16_e64 s12, 1, v27.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v27, 0xff800000, v41, s7
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v184, v144, v148
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v144, v35, v36
.Ltmp2:
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s10, 1, v25.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v25, 0xff800000, v38, s9
	v_cndmask_b32_e64 v29, 0xff800000, v32, s12
	v_cndmask_b32_e64 v32, 0xff800000, v182, s6
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v141.h, v159.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v30, 0xff800000, v176, s10
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v38, v34, v25, v26
.Ltmp4:
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v179, v39, v40
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v39, v27, v28, v29
.Ltmp6:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v33, 0xff800000, v188, s17
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v40, v30, v31, v32
.Ltmp8:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v41, 0xff800000, v187, s16
	ds_store_b64 v185, v[35:36]
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v12, v138, v12
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v175.h, v141.l
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v176, v38, v39, v40
.Ltmp10:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v38, 0xff800000, v164, s29
	v_cndmask_b32_e64 v39, 0xff800000, v186, s18
	v_cndmask_b32_e64 v40, 0xff800000, v165, s19
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v186, 0x3fb8aa3b, v141
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v141.h, v157.l
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v160.h, v141.l
	v_mov_b16_e64 v165.h, v141.l
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v148, v38, v39, v40
.Ltmp12:
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v186, v143, v147
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v147.h, v141.l
	v_mov_b16_e64 v154.h, v141.l
	v_mov_b16_e64 v162.h, v141.l
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v144, v144, v37, v148
	v_max3_f32 v148, v41, v42, v33
.Ltmp14:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v174.h, v141.l
	v_mov_b16_e64 v155.h, v141.l
	v_mov_b16_e64 v169.h, v141.l
	v_mov_b16_e64 v143.h, v141.l
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v191, v144, v148, v176
.Ltmp16:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v176, v9, s43, 1
	.loc	1 881 25                        ; attention.py:881:25
	v_lshrrev_b16 v9.l, 8, v161.l
	v_and_b16 v9.h, 1, v154.l
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v148.h, v141.l
	v_mov_b16_e64 v144.h, v141.l
	v_mov_b16_e64 v163.h, v141.l
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v9.l, 1, v9.l
	v_cmp_eq_u16_e64 s35, 1, v9.h
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v164.h, v141.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s22, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v155.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v182, 0xff800000, v179, s35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v181, 0xff800000, v149, s22
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v9.l, 1, v9.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s23, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v154.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v150, 0xff800000, v150, s23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v9.l, 1, v9.l
	v_cmp_eq_u16_e64 s24, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v178.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v183, 0xff800000, v151, s24
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v9.l, 1, v9.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s25, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v168.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v152, 0xff800000, v152, s25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v9.l, 1, v9.l
	v_cmp_eq_u16_e64 s26, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v166.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v185, 0xff800000, v153, s26
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v9.l, 1, v9.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v188, 0x3fb8aa3b, v141
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v141.h, v158.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s27, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v162.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v188, v142, v146
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v142, 16, v145
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v192, 0x3fb8aa3b, v141
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v187, 0xff800000, v193, s27
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v9.l, 1, v9.l
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v141.h, v141.l
	v_mov_b16_e64 v146.h, v141.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v192, v12, v142
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v12.l, 1, v178.l
	v_cmp_eq_u16_e64 s28, 1, v9.l
	v_and_b16 v9.l, 1, v161.l
	v_and_b16 v12.h, 1, v168.l
	v_and_b16 v142.l, 1, v166.l
	v_and_b16 v142.h, 1, v162.l
	v_cmp_eq_u16_e64 s36, 1, v12.l
	v_cmp_eq_u16_e64 s33, 1, v9.l
	v_and_b16 v9.l, 1, v155.l
	v_cmp_eq_u16_e64 s37, 1, v12.h
	v_cmp_eq_u16_e64 s38, 1, v142.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v151, 0xff800000, v184, s36
	v_cndmask_b32_e64 v180, 0xff800000, v10, s33
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s34, 1, v9.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v184, 0xff800000, v186, s37
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s39, 1, v142.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v189, 0xff800000, v194, s28
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v10, v150, v182, v183
.Ltmp18:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v149, 0xff800000, v11, s34
	v_cndmask_b32_e64 v186, 0xff800000, v188, s38
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v11, v151, v152, v184
.Ltmp20:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v188, 0xff800000, v192, s39
	ds_store_b64 v80, v[37:38]
	ds_store_b64 v81, v[39:40]
	ds_store_b64 v82, v[41:42]
	ds_store_b64 v83, v[33:34]
	ds_store_b64 v84, v[25:26]
	ds_store_b64 v85, v[27:28]
	ds_store_b64 v86, v[29:30]
	ds_store_b64 v87, v[31:32]
	ds_store_b64 v88, v[180:181]
	ds_store_b64 v89, v[149:150]
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v9, v180, v181, v149
.Ltmp22:
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b64 v90, v[182:183]
	ds_store_b64 v91, v[151:152]
	ds_store_b64 v92, v[184:185]
	ds_store_b64 v93, v[186:187]
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v142, v9, v10, v11
	v_dual_max_f32 v9, v185, v186 :: v_dual_max_f32 v10, v188, v189
.Ltmp24:
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b64 v94, v[188:189]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v145.h, v141.l
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v153, v9, v187, v10
.Ltmp26:
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_2addr_b64 v[9:12], v95 offset1:16
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v142, v191, v142, v153
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v153, v142, s74, 0xfedcba98 op_sel:[1,0]
.Ltmp29:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v142, v140, v142, v153
	.loc	1 886 62                        ; attention.py:886:62
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_sub_f32 v192, v25, v142 :: v_dual_max_f32 v153, v11, v11
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v25, v9, v9 :: v_dual_sub_f32 v36, v36, v142
.Ltmp31:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v35, v142
	v_sub_f32_e32 v39, v39, v142
	v_sub_f32_e32 v37, v37, v142
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v25, v25, v153
.Ltmp33:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v189, v189, v142
	v_sub_f32_e32 v194, v181, v142
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v195, v180, v142
.Ltmp34:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v25, v25, v10, v12
.Ltmp35:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v191, v26, v142
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v26, v140, v142
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v196, v182, v142
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v189, v189
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v29, v29, v142
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v140.h, v141.l
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v26, v26
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s18
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v42, v42, v142
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v153.h, v141.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v30, v30, v142
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v159.l, v39.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v40, v40, v142
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v189, 0, v189, s28
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v42, v42
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e64 v26, 0, v26, s40
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v159, 1, v159
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v30, v30
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v26
	v_mul_f32_e32 v2, v2, v26
	v_mul_f32_e32 v3, v3, v26
	v_mul_f32_e32 v4, v4, v26
	v_mul_f32_e32 v5, v5, v26
	v_mul_f32_e32 v6, v6, v26
	v_mul_f32_e32 v7, v7, v26
	v_mul_f32_e32 v8, v8, v26
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v26, v25
.Ltmp37:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s19
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s19, v39, v39
	v_add3_u32 v39, v39, v159, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v42, 0, v42, s20
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v26, v26 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v158.l, v40.h
	v_cmp_o_f32_e64 s18, v40, v40
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v30, 0, v30, s10
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v161.l, v42.h
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v26, v26, v26
.Ltmp41:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v158, 1, v158
	v_cmp_o_f32_e64 s20, v42, v42
	v_mov_b16_e64 v169.l, v30.h
	v_and_b32_e32 v161, 1, v161
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v25, v25, v26
.Ltmp43:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v26, v36
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v40, v40, v158, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v187, v187, v142
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v42, v42, v161, 0x7fff
	v_and_b32_e32 v169, 1, v169
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v26, 0, v26, s31
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v177.l, v26.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v41, v41, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s31, v26, v26
	v_and_b32_e32 v36, 1, v177
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v41
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v36, v26, v36, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v26, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s31
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v26, 0, v26, s30
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v157.l, v41.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v34, v142
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v172.l, v26.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v38, v142
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s30, v26, v26
	v_and_b32_e32 v157, 1, v157
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v35, 1, v172
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_add3_u32 v35, v26, v35, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v26, v38
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s15
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s15, v41, v41
	v_add3_u32 v41, v41, v157, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v157, v191
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s30
	v_mov_b16_e64 v178.l, v34.h
	v_cmp_o_f32_e64 s16, v34, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v26, 0, v26, s29
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v158, 1, v178
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v168.l, v26.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v33, v142
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s29, v26, v26
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v34, v34, v158, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v157, 0, v157, s11
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v38, 1, v168
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v168.l, v189.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v185, v185, v142
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v154.l, v157.h
	v_add3_u32 v38, v26, v38, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v26, v37
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v168, 1, v168
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v185, v185
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v154, 1, v154
	v_cmp_o_f32_e64 s11, v30, v30
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s17
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v30, v30, v169, 0x7fff
	v_cndmask_b16 v35.h, 0x7fff, v38.h, s29
	v_add3_u32 v154, v157, v154, 0x7fff
	v_cndmask_b16 v38.h, 0x7fff, v42.h, s20
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v26, 0, v26, s21
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v175.l, v33.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v185, 0, v185, s26
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s17, v33, v33
	v_cndmask_b16 v38.l, 0x7fff, v41.h, s15
	v_mov_b16_e64 v166.l, v26.h
	v_and_b32_e32 v159, 1, v175
	v_cmp_o_f32_e64 s21, v26, v26
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v158, v192
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v42.h, 0x7fff, v30.h, s11
	v_and_b32_e32 v37, 1, v166
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v166, 0x80000000, v167, s0
	v_cndmask_b32_e64 v167, 0x80000000, v176, s0
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v33, v33, v159, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v37, v26, v37, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[179:182], v166, s[68:71], 0 offen
	buffer_load_b128 v[175:178], v167, s[68:71], 0 offen
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v26, v171, v171
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v29, v29
	v_exp_f32_e32 v166, v195
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v158, 0, v158, s9
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v35.l, 0x7fff, v37.h, s21
	v_cndmask_b16 v37.h, 0x7fff, v40.h, s18
	v_cndmask_b16 v37.l, 0x7fff, v39.h, s19
	v_cndmask_b16 v39.h, 0x7fff, v34.h, s16
	v_mov_b16_e64 v162.l, v158.h
	v_cndmask_b16 v39.l, 0x7fff, v33.h, s17
	v_permlanex16_b32 v30, v35, s74, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v29, 0, v29, s12
	v_cndmask_b32_e64 v166, 0, v166, s33
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v162, 1, v162
	v_permlanex16_b32 v34, v38, s74, 0xfedcba98 op_sel:[1,0]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v160.l, v29.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v193, v27, v142
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v27.h, v141.l
	v_mov_b16_e64 v27.l, v185.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v186, v186, v142
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v147.l, v166.h
	v_and_b32_e32 v160, 1, v160
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v159, v193
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v27, 1, v27
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v186, v186
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v147, 1, v147
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v161, v194
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s12, v29, v29
	v_add3_u32 v29, v29, v160, 0x7fff
	v_add3_u32 v27, v185, v27, 0x7fff
	v_perm_b32 v33, v34, v38, v120
	v_perm_b32 v34, v34, v38, v137
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v159, 0, v159, s7
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s7, v158, v158
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v186, 0, v186, s38
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v42.l, 0x7fff, v29.h, s12
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v161, 0, v161, s22
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v155.l, v159.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v28, v28, v142
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v172.l, v186.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v151, v151, v142
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v143.l, v161.h
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v32, v32, v142 :: v_dual_and_b32 v155, 1, v155
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v172, 1, v172
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v151, v151
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v143, 1, v143
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v32, v32
	v_exp_f32_e32 v28, v28
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s10, v159, v159
	v_cmp_o_f32_e64 s22, v161, v161
	v_add3_u32 v155, v159, v155, 0x7fff
	v_add3_u32 v143, v161, v143, 0x7fff
	v_perm_b32 v29, v30, v35, v120
	v_perm_b32 v30, v30, v35, v137
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v151, 0, v151, s36
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v41.l, 0x7fff, v155.h, s10
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v32, 0, v32, s6
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s6, v157, v157
	v_add3_u32 v157, v158, v162, 0x7fff
	v_mov_b16_e64 v165.l, v151.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v184, v184, v142
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v144.l, v32.h
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v31, v31, v142 :: v_dual_mov_b32 v158, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v165, 1, v165
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v184, v184
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v144, 1, v144
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v31, v31
	v_exp_f32_e32 v187, v187
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v28, 0, v28, s13
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s13, v32, v32
	v_cmp_o_f32_e64 s33, v151, v151
	v_add3_u32 v32, v32, v144, 0x7fff
	v_add3_u32 v144, v166, v147, 0x7fff
	v_mov_b16_e64 v174.l, v28.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v184, 0, v184, s37
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s9, v28, v28
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v31, 0, v31, s14
	v_cndmask_b32_e64 v187, 0, v187, s27
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v174, 1, v174
	v_mov_b16_e64 v140.l, v184.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v183, v183, v142
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v148.l, v31.h
	v_mov_b16_e64 v153.l, v187.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v188, v188, v142
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v140, 1, v140
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v167, v183
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v148, 1, v148
	v_cmp_o_f32_e64 s14, v31, v31
	v_cmp_o_f32_e64 s37, v186, v186
	v_and_b32_e32 v153, 1, v153
	v_add3_u32 v28, v28, v174, 0x7fff
	v_add3_u32 v31, v31, v148, 0x7fff
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v158, v158 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v140, v184, v140, 0x7fff
	v_cmp_o_f32_e64 s36, v187, v187
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v167, 0, v167, s24
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v40.h, 0x7fff, v154.h, s6
	v_cndmask_b16 v40.l, 0x7fff, v157.h, s7
	v_cndmask_b16 v41.h, 0x7fff, v28.h, s9
	v_cndmask_b16 v154.h, 0x7fff, v32.h, s13
	v_mov_b16_e64 v141.l, v167.h
	v_cmp_o_f32_e64 s26, v167, v167
	v_cndmask_b16 v154.l, 0x7fff, v31.h, s14
	v_cndmask_b16 v155.h, 0x7fff, v143.h, s22
	v_permlanex16_b32 v28, v36, s74, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v141, 1, v141
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v183, v196
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v32, v37, s74, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v143, v39, s74, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v188, v188
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v141, v167, v141, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v31, v32, v37, v120
	v_perm_b32 v32, v32, v37, v137
	v_perm_b32 v35, v143, v39, v120
	v_cndmask_b16 v141.h, 0x7fff, v141.h, s26
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v183, 0, v183, s35
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s35, v184, v184
	v_cmp_o_f32_e64 s38, v189, v189
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v188, 0, v188, s39
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v145.l, v183.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v152, v152, v142
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s27, v183, v183
	v_cndmask_b16 v169.l, 0x7fff, v140.h, s35
	v_mov_b16_e64 v197.l, v188.h
	v_and_b32_e32 v145, 1, v145
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v152, v152
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s39, v188, v188
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v191, 1, v197
	v_add3_u32 v145, v183, v145, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v141.l, 0x7fff, v145.h, s27
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v152, 0, v152, s25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v145, v41, s74, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e64 v164.l, v152.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v149, v149, v142
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s28, v152, v152
	v_and_b32_e32 v164, 1, v164
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v149, v149
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v148, v152, v164, 0x7fff
	v_add3_u32 v152, v189, v168, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v161.h, 0x7fff, v148.h, s28
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v149, 0, v149, s34
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s34, v185, v185
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v183.h, 0x7fff, v152.h, s38
	v_mov_b16_e64 v163.l, v149.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v150, v150, v142
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s25, v149, v149
	v_cndmask_b16 v169.h, 0x7fff, v27.h, s34
	v_perm_b32 v27, v28, v36, v120
	v_and_b32_e32 v163, 1, v163
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v150, v150
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v28, v28, v36, v137
	v_perm_b32 v36, v143, v39, v137
	v_perm_b32 v39, v145, v41, v120
	v_add3_u32 v147, v149, v163, 0x7fff
	v_add3_u32 v149, v151, v165, 0x7fff
	v_add3_u32 v151, v186, v172, 0x7fff
	v_permlanex16_b32 v184, v169, s74, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v157.l, 0x7fff, v147.h, s25
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v150, 0, v150, s23
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s23, v166, v166
	v_cndmask_b16 v140.l, 0x7fff, v151.h, s37
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v151, v158, v158
.Ltmp47:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v161.l, 0x7fff, v149.h, s33
	v_mov_b16_e64 v146.l, v150.h
	v_cmp_o_f32_e64 s24, v150, v150
	v_cndmask_b16 v155.l, 0x7fff, v144.h, s23
	v_permlanex16_b32 v144, v40, s74, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v147, v154, s74, 0xfedcba98 op_sel:[1,0]
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v25, v25, v151 :: v_dual_and_b32 v146, 1, v146
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp49:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v148, v155, s74, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v144, v40, v120
	v_perm_b32 v38, v144, v40, v137
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v146, v150, v146, 0x7fff
	v_add3_u32 v150, v187, v153, 0x7fff
	v_perm_b32 v40, v145, v41, v137
	v_perm_b32 v143, v147, v154, v120
	v_perm_b32 v144, v147, v154, v137
	v_cndmask_b16 v157.h, 0x7fff, v146.h, s24
	v_cndmask_b16 v140.h, 0x7fff, v150.h, s36
	v_permlanex16_b32 v146, v42, s74, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v150, v141, s74, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v145, v148, v155, v120
	v_permlanex16_b32 v149, v157, s74, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v153, v188, v191, 0x7fff
	v_perm_b32 v41, v146, v42, v120
	v_perm_b32 v42, v146, v42, v137
	v_perm_b32 v146, v148, v155, v137
	v_perm_b32 v147, v149, v157, v120
	v_perm_b32 v148, v149, v157, v137
	v_perm_b32 v149, v150, v141, v120
	v_perm_b32 v150, v150, v141, v137
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v141, v25
.Ltmp51:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v183.l, 0x7fff, v153.h, s39
	v_permlanex16_b32 v152, v161, s74, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v185, v140, s74, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v141, v141 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp53:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v186, v183, s74, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_perm_b32 v151, v152, v161, v120
	v_perm_b32 v152, v152, v161, v137
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v141, v141, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v25, v25, v141
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v141, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v141, v141 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v141, v141, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v141, v25, v141
.Ltmp57:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v25, v190, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v9, v9, v25
	v_sub_f32_e32 v11, v11, v25
	v_sub_f32_e32 v10, v10, v25
	v_sub_f32_e32 v12, v12, v25
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v9, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v11, v11
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v12, v12
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v9, 0, v9, s8
	v_cndmask_b32_e64 v11, 0, v11, s2
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v10, 0, v10, s4
	v_cndmask_b32_e64 v12, 0, v12, s5
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v171
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v9, v9, v11 :: v_dual_add_f32 v10, v10, v12
	v_add_f32_e32 v9, v9, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v10, v9
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v9, v9, v10
.Ltmp61:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v10, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp62:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v11.l, v180.l
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v9, v9, v10
.Ltmp64:
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v10.l, v179.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v10.h, v175.l
	v_mov_b16_e64 v175.l, v179.h
	v_mov_b16_e64 v11.h, v176.l
	v_mov_b16_e64 v176.l, v180.h
	v_mov_b16_e64 v12.l, v181.l
	v_mov_b16_e64 v12.h, v177.l
	v_mov_b16_e64 v153.l, v182.l
	v_mov_b16_e64 v153.h, v178.l
	v_mov_b16_e64 v177.l, v181.h
	v_mov_b16_e64 v178.l, v182.h
	ds_store_b32 v156, v10
	ds_store_b32 v121, v175
	ds_store_b32 v122, v11
	ds_store_b32 v123, v176
	ds_store_b32 v124, v12
	ds_store_b32 v125, v177
	ds_store_b32 v126, v153
	ds_store_b32 v127, v178
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[153:156], v173
	ds_load_b128 v[157:160], v128
	ds_load_b128 v[161:164], v129
	ds_load_b128 v[165:168], v130
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v10, v26, v141 :: v_dual_mov_b32 v11, v9
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[172:175], v131
	ds_load_b128 v[176:179], v132
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v12, v171, v10
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v9, v9, v11
.Ltmp67:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v11, v12
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v12, v9
.Ltmp69:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[153:160], v[27:34], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[26:29], v133
	ds_load_b128 v[30:33], v134
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v153, v184, v169, v120
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp71:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v154, v184, v169, v137
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[161:168], v[35:42], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v155, v185, v140, v120
	v_perm_b32 v156, v185, v140, v137
	v_perm_b32 v157, v186, v183, v120
	v_perm_b32 v158, v186, v183, v137
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e64 v34, 0, v11, s2
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v11, v9, v12
.Ltmp73:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[172:179], v[143:150], v[1:8]
	v_mov_b32_e32 v140, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v11, v170, v34
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[26:33], v[151:158], v[1:8]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v8, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v10, 0xff800000 :: v_dual_mov_b32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v11, v8
.LBB0_4:                                ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v49
	s_mov_b32 s1, 0x76543210
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp75:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_lshrrev_b32_e32 v21, 5, v0
	.loc	1 1028 17                       ; attention.py:1028:17
	v_cndmask_b32_e32 v9, 0xff800000, v10, vcc_lo
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshrrev_b32_e32 v10, 3, v0
.Ltmp77:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s54, s54, s3
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s43, 2
	.loc	1 1036 13                       ; attention.py:1036:13
	v_or_b32_e32 v21, v21, v46
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_permlanex16_b32 v12, v9, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp79:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
	.loc	1 1031 36                       ; attention.py:1031:36
	v_dual_cndmask_b32 v11, 0, v11 :: v_dual_and_b32 v10, 28, v10
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp80:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v12, v12, v12 :: v_dual_max_f32 v9, v9, v9
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_add_nc_u32_e32 v10, 0, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_permlanex16_b32 v13, v11, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp83:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v2, 0, v2 :: v_dual_cndmask_b32 v1, 0, v1
	v_dual_cndmask_b32 v14, 0, v6 :: v_dual_max_f32 v9, v9, v12
.Ltmp84:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshl_add_u32 v12, v50, 2, 0
.Ltmp85:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v3, 0, v3, vcc_lo
.Ltmp86:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v11, v11, v13
.Ltmp87:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s41, s54
.Ltmp88:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v10, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v9, v12
.Ltmp89:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v10, v11
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v10, v12
.Ltmp90:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v12, 0, v4, vcc_lo
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v4, v1 :: v_dual_cndmask_b32 v13, 0, v5
	v_mov_b32_e32 v5, v2
.Ltmp92:
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v18, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v4, v4 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp94:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v8, 0, v8, vcc_lo
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v20, v8
.Ltmp96:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v6, v9
.Ltmp97:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v14, v14, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp99:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp100:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v15, 0, v7 :: v_dual_mov_b32 v18, v14
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v8, v8, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp102:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v6, v6, v6 :: v_dual_add_f32 v1, v1, v4
	v_max_f32_e32 v4, v9, v9
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v11, v3
	v_dual_mov_b32 v19, v15 :: v_dual_mov_b32 v20, v8
.Ltmp104:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v4, v4, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v2, v5
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp107:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v6, v4 :: v_dual_mov_b32 v9, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v3, v11
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v14, v14, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp111:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v7, v1 :: v_dual_max_f32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v2, v2, v9 :: v_dual_mov_b32 v11, v3
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp115:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v9, v4, v6 :: v_dual_mov_b32 v16, v2
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp117:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v5, v10
.Ltmp118:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v7
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp120:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp121:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v5, v10, v5 :: v_dual_add_f32 v10, v3, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v17, v10
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp123:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_dual_mov_b32 v3, v5 :: v_dual_add_f32 v4, v10, v17
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v11, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v17, v13 :: v_dual_mov_b32 v6, v4
.Ltmp125:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v7, v5, v3
.Ltmp126:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v2, v16 :: v_dual_mov_b32 v16, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp127:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp128:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v10, v7
.Ltmp129:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp130:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v11
.Ltmp131:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v11, v9
.Ltmp132:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v17
.Ltmp133:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp134:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v12, v12, v16
.Ltmp135:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v2, v1
.Ltmp136:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp137:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v16, v12 :: v_dual_mov_b32 v5, v3
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp138:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v15, v19
.Ltmp139:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp140:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v16 :: v_dual_mov_b32 v19, v15
.Ltmp141:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v17, v13 :: v_dual_mov_b32 v16, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp142:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v15, v19
.Ltmp143:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v19, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp144:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v17
.Ltmp145:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp146:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v17, v8, v20 :: v_dual_mov_b32 v20, v15
.Ltmp147:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v18, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp148:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v14, v14, v19
.Ltmp149:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v22, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp150:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v8, v12, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp151:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v22, v22 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp152:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v15, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v13, v13, v18 :: v_dual_mov_b32 v12, v8
.Ltmp153:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v18, v14 :: v_dual_add_f32 v17, v17, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v19, v15 :: v_dual_mov_b32 v16, v13
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp154:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v21
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp155:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v11, v11, v11
	v_dual_max_f32 v9, v9, v9 :: v_dual_add_f32 v10, v7, v10
.Ltmp156:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
	v_mov_b32_e32 v7, 0
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp157:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v9, v11
.Ltmp158:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s4, s52, s4
	s_addc_u32 s5, s53, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v7, v[9:10], s[4:5]
.LBB0_6:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp159:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v6, v4, v6 :: v_dual_add_f32 v5, v3, v5
.Ltmp160:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v3, 0xc0, v45
.Ltmp161:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v7, v8, v12 :: v_dual_add_f32 v4, v1, v2
.Ltmp162:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v8, 0xe0, v44
	v_and_b32_e32 v1, 28, v44
	v_and_b32_e32 v2, 32, v47
.Ltmp163:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v20, v17, v20 :: v_dual_add_nc_u32 v3, 0, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_add_f32 v19, v15, v19 :: v_dual_add_nc_u32 v8, 0, v8
	v_dual_add_f32 v18, v14, v18 :: v_dual_add_f32 v17, v13, v16
.Ltmp164:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_add3_u32 v1, v3, v2, v1
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v0, 63, v0
	.loc	1 1038 13                       ; attention.py:1038:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[4:7]
	ds_store_b128 v8, v[17:20] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v2, s0, v0
	.loc	1 1041 22                       ; attention.py:1041:22
	v_cmp_gt_i32_e32 vcc_lo, s43, v0
	.loc	1 1038 13                       ; attention.py:1038:13
	v_cmp_eq_u32_e64 s0, 0, v43
	s_and_b32 s53, s53, 0xffff
	s_mov_b32 s55, 0x31027000
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
.Ltmp165:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
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
		.amdhsa_next_free_vgpr 218
		.amdhsa_next_free_sgpr 76
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_vgpr, 218
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.numbered_sgpr, 76
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10972
; TotalNumSgprs: 78
; NumVgprs: 218
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 27
; NumSGPRsForWavesPerEU: 78
; NumVGPRsForWavesPerEU: 218
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
	.quad	.Ltmp57-.Lfunc_begin0
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
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
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
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
    .private_segment_fixed_size: 0
    .sgpr_count:     78
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     218
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
