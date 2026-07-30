	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[10:11], s[0:1], 0x5c
	s_load_b32 s8, s[0:1], 0x64
	v_dual_mov_b32 v86, 0xff800000 :: v_dual_and_b32 v5, 7, v0
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_lshrrev_b32_e32 v2, 3, v0
	v_mov_b32_e32 v16, 0
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x0
	s_load_b64 s[20:21], s[0:1], 0x10
	.loc	1 598 79                        ; attention.py:598:79
	v_lshlrev_b32_e32 v1, 3, v5
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s15, s2, 5
	.loc	1 597 26                        ; attention.py:597:26
	s_lshl_b32 s2, s3, 11
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v4, s15, v2
	.loc	1 598 26                        ; attention.py:598:26
	s_add_i32 s14, s15, s2
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v7, 1, v0
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s2, 0x800, v4
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x28
	s_load_b64 s[12:13], s[0:1], 0x38
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s3, 31
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v65, 15, v0
	.loc	1 598 26                        ; attention.py:598:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[60:61], null, s10, v2, v[1:2]
	.loc	1 601 61                        ; attention.py:601:61
	v_cmp_gt_i32_e32 vcc_lo, s10, v1
	.loc	1 598 26                        ; attention.py:598:26
	s_lshl_b32 s9, s10, 4
	.loc	1 599 26                        ; attention.py:599:26
	v_and_b32_e32 v7, 0x70, v7
	.loc	1 566 23                        ; attention.py:566:23
	s_lshr_b32 s0, s0, 28
	.loc	1 599 26                        ; attention.py:599:26
	s_and_b32 s17, s5, 0xffff
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s2, s2, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[2:3], null, s10, s14, v[60:61]
	.loc	1 599 26                        ; attention.py:599:26
	s_mov_b32 s16, s4
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v62, 64, v0
	v_and_b32_e32 v63, 32, v0
	.loc	1 571 21                        ; attention.py:571:21
	v_and_b32_e32 v66, 16, v0
	.loc	1 771 51                        ; attention.py:771:51
	v_and_b32_e32 v13, 0x70, v0
	v_lshrrev_b32_e32 v14, 4, v0
	v_dual_mov_b32 v8, 0 :: v_dual_lshlrev_b32 v1, 1, v2
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v2, v2, s9, 1
	v_lshlrev_b32_e32 v15, 7, v0
	v_bfe_i32 v17, v0, 0, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_lshlrev_b32_e32 v18, 5, v0
	v_cndmask_b32_e64 v6, 0x80000000, v2, s2
	.loc	1 566 23                        ; attention.py:566:23
	s_add_i32 s0, s3, s0
	v_dual_mov_b32 v68, 0 :: v_dual_lshlrev_b32 v5, 4, v5
	.loc	1 599 26                        ; attention.py:599:26
	s_clause 0x1
	buffer_load_b128 v[1:4], v1, s[16:19], 0 offen
	buffer_load_b128 v[9:12], v6, s[16:19], 0 offen
	v_lshlrev_b32_e32 v6, 4, v0
	v_bfe_i32 v0, v0, 2, 1
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s1, s0, 0xfff0
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s2, s0, 4
	.loc	1 567 22                        ; attention.py:567:22
	s_sub_i32 s0, s3, s1
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v6, v6, v7
	v_and_b32_e32 v18, 0x160, v18
	v_and_b32_e32 v0, 0x90, v0
	.loc	1 569 19                        ; attention.py:569:19
	s_bfe_u32 s1, s0, 0x10007
	v_lshrrev_b32_e32 v13, 2, v13
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v72, 0, v6
	v_and_b32_e32 v17, 0x90, v17
	.loc	1 569 19                        ; attention.py:569:19
	s_add_i32 s0, s0, s1
	.loc	1 742 27                        ; attention.py:742:27
	s_mul_f32 s30, s8, 0x3fb8aa3b
	.loc	1 569 19                        ; attention.py:569:19
	s_bfe_i32 s0, s0, 0x80000
	s_mov_b32 s28, 0
	v_xor_b32_e32 v13, v17, v13
	s_sext_i32_i16 s0, s0
	s_mov_b32 s29, 0x76543210
	s_ashr_i32 s1, s0, 1
	s_mov_b32 s22, s18
	.loc	1 734 33                        ; attention.py:734:33
	s_lshl3_add_u32 s2, s2, s1
	s_and_b32 s17, s7, 0xffff
	v_lshl_or_b32 v77, s2, 10, v14
	s_and_b32 s21, s21, 0xffff
	s_and_b32 s25, s25, 0xffff
	.loc	1 734 32 is_stmt 0              ; attention.py:734:32
	s_lshl_b32 s31, s2, 11
	.loc	1 794 21 is_stmt 1              ; attention.py:794:21
	s_lshl_b32 s33, s2, 7
	s_mov_b32 s16, s6
	s_mov_b32 s23, s19
	s_mov_b32 s26, s18
	s_mov_b32 s27, s19
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v72, v[1:4]
	s_waitcnt vmcnt(0)
	ds_store_b128 v72, v[9:12] offset:2048
	v_mov_b32_e32 v10, v16
	v_lshl_or_b32 v69, v65, 7, v5
	v_dual_mov_b32 v11, v16 :: v_dual_lshlrev_b32 v20, 2, v66
	v_mov_b32_e32 v3, v16
	v_mov_b32_e32 v12, v16
	v_dual_mov_b32 v9, v16 :: v_dual_lshlrev_b32 v22, 4, v63
	v_lshrrev_b32_e32 v21, 1, v62
	v_dual_mov_b32 v2, v16 :: v_dual_and_b32 v15, 0x700, v15
	v_dual_mov_b32 v4, v16 :: v_dual_lshlrev_b32 v61, 2, v65
	v_dual_mov_b32 v1, v16 :: v_dual_lshlrev_b32 v64, 1, v65
	v_add3_u32 v5, 0, v20, v63
	v_or3_b32 v71, v0, v22, v18
	v_lshl_or_b32 v0, v63, 6, v69
	v_add_nc_u32_e32 v7, 0, v21
	v_add_nc_u32_e32 v15, 0, v15
	v_lshlrev_b32_e32 v19, 1, v63
	v_add_nc_u32_e32 v70, 0, v61
	v_xor_b32_e32 v24, 16, v71
	v_add_nc_u32_e32 v74, v5, v64
	v_add_nc_u32_e32 v5, 0, v0
	v_add_nc_u32_e32 v75, v7, v64
	v_xad_u32 v7, v0, 16, 0
	v_add_nc_u32_e32 v76, v15, v13
	v_xad_u32 v13, v0, 32, 0
	v_xad_u32 v14, v0, 48, 0
	v_xad_u32 v15, v0, 64, 0
	v_xad_u32 v48, 0x60, v0, 0
	v_add_nc_u32_e32 v73, v70, v19
	v_xad_u32 v19, 0x50, v0, 0
	v_xad_u32 v0, 0x70, v0, 0
	v_add_nc_u32_e32 v85, 0, v24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[24:27], v5
	ds_load_b128 v[28:31], v7
	ds_load_b128 v[32:35], v13
	ds_load_b128 v[36:39], v14
	ds_load_b128 v[40:43], v15
	ds_load_b128 v[44:47], v19
	ds_load_b128 v[48:51], v48
	ds_load_b128 v[52:55], v0
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v67, 1, v63
	v_xor_b32_e32 v6, 16, v69
	v_xor_b32_e32 v17, 32, v69
	v_xor_b32_e32 v18, 48, v69
	v_xor_b32_e32 v20, 64, v69
	.loc	1 570 21 is_stmt 0              ; attention.py:570:21
	v_or3_b32 v23, s15, v65, v67
	v_xor_b32_e32 v21, 0x50, v69
	v_xor_b32_e32 v22, 0x60, v69
	.loc	1 778 24 is_stmt 1              ; attention.py:778:24
	v_cmp_gt_i32_e64 s1, s11, v61
	v_add_nc_u32_e32 v78, 0, v6
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s0, 0x800, v23
	v_xor_b32_e32 v23, 0x70, v69
	v_add_nc_u32_e32 v79, 0, v17
	v_add_nc_u32_e32 v80, 0, v18
	v_add_nc_u32_e32 v81, 0, v20
	v_add_nc_u32_e32 v82, 0, v21
	v_add_nc_u32_e32 v83, 0, v22
	v_dual_mov_b32 v13, v16 :: v_dual_add_nc_u32 v84, 0, v23
	v_mov_b32_e32 v14, v16
	v_dual_mov_b32 v15, v16 :: v_dual_mov_b32 v0, 0
	v_mov_b32_e32 v5, v16
	v_mov_b32_e32 v6, v16
	v_mov_b32_e32 v7, v16
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 735 32                        ; attention.py:735:32
	s_add_i32 s2, s28, s31
	.loc	1 741 30                        ; attention.py:741:30
	v_mov_b32_e32 v23, v16
	.loc	1 735 32                        ; attention.py:735:32
	s_mul_i32 s2, s2, s10
	.loc	1 741 30                        ; attention.py:741:30
	v_dual_mov_b32 v20, v16 :: v_dual_add_nc_u32 v87, 0, v69
	.loc	1 736 32                        ; attention.py:736:32
	v_add_lshl_u32 v17, s2, v60, 1
	.loc	1 771 36                        ; attention.py:771:36
	s_lshr_b32 s2, s28, 1
	.loc	1 741 30                        ; attention.py:741:30
	v_dual_mov_b32 v19, v16 :: v_dual_add_nc_u32 v106, 0, v71
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v18, v16 :: v_dual_cndmask_b32 v17, 0x80000000, v17
	v_mov_b32_e32 v21, v16
	v_mov_b32_e32 v22, v16
	.loc	1 798 53                        ; attention.py:798:53
	s_lshr_b32 s3, s28, 4
	.loc	1 815 23                        ; attention.py:815:23
	v_add_nc_u32_e32 v88, v70, v62
	.loc	1 736 32                        ; attention.py:736:32
	buffer_load_b128 v[56:59], v17, s[16:19], 0 offen
	.loc	1 741 30                        ; attention.py:741:30
	v_mov_b32_e32 v17, v16
	v_dual_mov_b32 v113, v68 :: v_dual_add_nc_u32 v68, s2, v77
	v_mov_b32_e32 v96, v23
	.loc	1 798 25                        ; attention.py:798:25
	s_add_i32 s3, s3, s33
	.loc	1 741 30                        ; attention.py:741:30
	v_dual_mov_b32 v95, v22 :: v_dual_mov_b32 v94, v21
	v_dual_mov_b32 v93, v20 :: v_dual_mov_b32 v92, v19
	v_dual_mov_b32 v91, v18 :: v_dual_mov_b32 v90, v17
	v_mov_b32_e32 v89, v16
	.loc	1 774 30                        ; attention.py:774:30
	v_mad_u64_u32 v[17:18], null, v68, s11, v[61:62]
	.loc	1 798 25                        ; attention.py:798:25
	s_mul_i32 s3, s3, s11
	.loc	1 736 32                        ; attention.py:736:32
	s_waitcnt lgkmcnt(0)
	.loc	1 797 41                        ; attention.py:797:41
	v_add_lshl_u32 v19, s3, v61, 1
	.loc	1 736 32                        ; attention.py:736:32
	s_barrier
	.loc	1 775 32                        ; attention.py:775:32
	v_mov_b16_e32 v105.l, 0
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v86
	.loc	1 775 32                        ; attention.py:775:32
	v_cndmask_b32_e64 v17, 0x80000000, v17, s1
	.loc	1 797 41                        ; attention.py:797:41
	v_cndmask_b32_e64 v18, 0x80000000, v19, s1
	.loc	1 787 39                        ; attention.py:787:39
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 797 41                        ; attention.py:797:41
	v_mov_b16_e32 v110.l, v105.l
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v23.h, v105.l
	v_mov_b16_e32 v107.h, v105.l
	v_mov_b16_e32 v108.h, v105.l
	v_mov_b16_e32 v114.h, v105.l
	v_mov_b16_e32 v111.h, v105.l
	v_mov_b16_e32 v109.h, v105.l
	v_mov_b16_e32 v112.h, v105.l
	v_mov_b16_e32 v115.h, v105.l
	.loc	1 787 39                        ; attention.py:787:39
	.loc	1 736 32                        ; attention.py:736:32
	s_waitcnt vmcnt(0)
	ds_store_b128 v72, v[56:59]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 775 32                        ; attention.py:775:32
	buffer_load_b32 v56, v17, s[20:23], 0 offen
	.loc	1 797 41                        ; attention.py:797:41
	buffer_load_b64 v[21:22], v18, s[24:27], 0 offen
	.loc	1 736 32                        ; attention.py:736:32
	ds_load_b128 v[97:100], v87
	ds_load_b128 v[101:104], v78
	.loc	1 741 30                        ; attention.py:741:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[97:104], v[24:31], v[89:96]
	.loc	1 736 32                        ; attention.py:736:32
	ds_load_b128 v[97:100], v79
	ds_load_b128 v[101:104], v80
	.loc	1 741 30                        ; attention.py:741:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[97:104], v[32:39], v[89:96]
	.loc	1 736 32                        ; attention.py:736:32
	ds_load_b128 v[97:100], v81
	ds_load_b128 v[101:104], v82
	.loc	1 741 30                        ; attention.py:741:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[97:104], v[40:47], v[89:96]
	.loc	1 736 32                        ; attention.py:736:32
	ds_load_b128 v[97:100], v83
	ds_load_b128 v[101:104], v84
	.loc	1 815 23                        ; attention.py:815:23
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 741 30                        ; attention.py:741:30
	v_wmma_f32_16x16x16_bf16 v[89:96], v[97:104], v[48:55], v[89:96]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 742 17                        ; attention.py:742:17
	v_dual_mul_f32 v17, s30, v89 :: v_dual_mul_f32 v18, s30, v90
	v_dual_mul_f32 v19, s30, v91 :: v_dual_mul_f32 v58, s30, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v20, s30, v92 :: v_dual_mul_f32 v57, s30, v93
	v_dual_mul_f32 v68, s30, v96 :: v_dual_mul_f32 v59, s30, v95
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v17, 0xff800000, v17, s0
	v_cndmask_b32_e64 v18, 0xff800000, v18, s0
	v_cndmask_b32_e64 v19, 0xff800000, v19, s0
	v_cndmask_b32_e64 v20, 0xff800000, v20, s0
	v_cndmask_b32_e64 v57, 0xff800000, v57, s0
	v_cndmask_b32_e64 v58, 0xff800000, v58, s0
	v_cndmask_b32_e64 v59, 0xff800000, v59, s0
	v_cndmask_b32_e64 v68, 0xff800000, v68, s0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v87, v17, v18, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v89, v20, v57, v58
	v_max_f32_e32 v90, v59, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v87, v87, v89, v90
.Ltmp2:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_permlanex16_b32 v89, v87, s29, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp3:
	.loc	1 766 24                        ; attention.py:766:24
	v_max3_f32 v87, v86, v87, v89
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v89, v86, v87
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v68, v68, v87
	v_sub_f32_e32 v57, v57, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v89, v89
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v116, 0, v89, s2
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v68, 0, v68, s0
	.loc	1 815 23                        ; attention.py:815:23
	ds_store_b32 v73, v116
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v86, v88
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v17, v17, v87
	.loc	1 816 30                        ; attention.py:816:30
	v_bfe_u32 v96, v68, 16, 1
	v_cmp_o_f32_e64 s9, v68, v68
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v8, v8, v86
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v17, v17
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v13, v13, v86
	v_mul_f32_e32 v15, v15, v86
	v_mul_f32_e32 v1, v1, v86
	v_mul_f32_e32 v3, v3, v86
	v_mul_f32_e32 v5, v5, v86
	v_mul_f32_e32 v6, v6, v86
	v_mul_f32_e32 v7, v7, v86
	v_mul_f32_e32 v12, v12, v86
	v_mul_f32_e32 v14, v14, v86
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v17, 0, v17, s0
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v10, v10, v86
	v_mul_f32_e32 v2, v2, v86
	v_mul_f32_e32 v4, v4, v86
	v_mul_f32_e32 v0, v0, v86
	.loc	1 816 30                        ; attention.py:816:30
	v_bfe_u32 v89, v17, 16, 1
	v_cmp_o_f32_e64 s2, v17, v17
	.loc	1 797 41                        ; attention.py:797:41
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v105.h, v21.l
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v59, v59, v87
	.loc	1 797 41                        ; attention.py:797:41
	v_mov_b16_e32 v110.h, v22.l
	v_and_b32_e32 v22, 0xffff0000, v22
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v57, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v59, v59
	.loc	1 768 33 is_stmt 0              ; attention.py:768:33
	v_cndmask_b32_e64 v57, 0, v57, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v59, 0, v59, s0
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v58, v58, v87
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_bfe_u32 v93, v57, 16, 1
	v_cmp_o_f32_e64 s6, v57, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_bfe_u32 v95, v59, 16, 1
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v58, v58
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s8, v59, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v58, 0, v58, s0
	.loc	1 768 62 is_stmt 0              ; attention.py:768:62
	v_dual_sub_f32 v18, v18, v87 :: v_dual_add_f32 v99, v57, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v18, v18
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_bfe_u32 v94, v58, 16, 1
	v_add3_u32 v57, v57, v93, 0x7fff
	v_cmp_o_f32_e64 s7, v58, v58
	v_add3_u32 v58, v58, v94, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 768 62 is_stmt 0              ; attention.py:768:62
	v_dual_sub_f32 v20, v20, v87 :: v_dual_add_f32 v97, v17, v18
	v_sub_f32_e32 v19, v19, v87
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v20, v20
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_bfe_u32 v90, v18, 16, 1
	v_add3_u32 v17, v17, v89, 0x7fff
	v_cmp_o_f32_e64 s3, v18, v18
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v19, v19
.Ltmp4:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v89, v59, v68
.Ltmp5:
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v18, v18, v90, 0x7fff
	v_add3_u32 v59, v59, v95, 0x7fff
	v_add3_u32 v68, v68, v96, 0x7fff
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s2
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v20, 0, v20, s0
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v17.h, 0x7fff, v18.h, s3
.Ltmp6:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v89, v99, v89
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp7:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v19, 0, v19, s0
	.loc	1 816 30                        ; attention.py:816:30
	v_bfe_u32 v92, v20, 16, 1
	v_cmp_o_f32_e64 s5, v20, v20
	s_delay_alu instid0(VALU_DEP_3)
	v_bfe_u32 v91, v19, 16, 1
	v_cmp_o_f32_e64 s4, v19, v19
.Ltmp8:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v98, v19, v20
.Ltmp9:
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v20, v20, v92, 0x7fff
	v_cndmask_b16 v20.l, 0x7fff, v59.h, s8
	v_add3_u32 v19, v19, v91, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v57.h, s6
	.loc	1 797 41                        ; attention.py:797:41
	v_and_b32_e32 v59, 0xffff0000, v21
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v18.h, 0x7fff, v20.h, s5
	v_cndmask_b16 v20.h, 0x7fff, v68.h, s9
	v_cndmask_b16 v18.l, 0x7fff, v19.h, s4
	v_cndmask_b16 v19.h, 0x7fff, v58.h, s7
	ds_store_b16 v74, v17
	ds_store_b16_d16_hi v74, v17 offset:128
	ds_store_b16 v74, v18 offset:256
	ds_store_b16_d16_hi v74, v18 offset:384
	ds_store_b16 v74, v19 offset:512
	ds_store_b16_d16_hi v74, v19 offset:640
	ds_store_b16 v74, v20 offset:768
	ds_store_b16_d16_hi v74, v20 offset:896
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v17.l, v56.l, 15
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v19, v56, 0, 8
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v17.h, 4, v56.l
	.loc	1 775 32                        ; attention.py:775:32
	v_lshrrev_b32_e32 v20, 8, v56
	v_mov_b16_e32 v21.l, v56.h
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s2, 7, v17.l
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v18.l, v56.h, 15
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v17.h, v17.h, 15
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s4, 0, v19.l
.Ltmp10:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v90, v97, v98
.Ltmp11:
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v19.l, 0, -16, s2
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v97, v20, 0, 8
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v18.h, 4, v20.l
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v19.h, v20.l, 15
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v20, v21, 0, 8
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s3, 7, v18.l
	.loc	1 786 29 is_stmt 0              ; attention.py:786:29
	v_or_b16 v23.l, v17.l, v19.l
	.loc	1 787 56 is_stmt 1              ; attention.py:787:56
	v_or_b16 v17.l, v17.h, -16
	.loc	1 775 32                        ; attention.py:775:32
	v_lshrrev_b32_e32 v68, 24, v56
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b32_e32 v56, 20, v56
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e32 v19.l, v97.l
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v18.h, v18.h, 15
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v98.l, v17.h, v17.l, s4
	.loc	1 787 39 is_stmt 0              ; attention.py:787:39
	v_cmp_gt_i16_e64 s4, 0, v20.l
	.loc	1 786 29 is_stmt 1              ; attention.py:786:29
	v_cndmask_b16 v20.l, 0, -16, s3
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v17.l, v56.l, 15
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s2, 0, v19.l
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v17.h, v68.l, 15
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s3, 7, v19.h
	.loc	1 786 29 is_stmt 0              ; attention.py:786:29
	v_or_b16 v56.l, v18.l, v20.l
	.loc	1 787 56 is_stmt 1              ; attention.py:787:56
	v_or_b16 v20.l, v18.h, -16
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v21, v68, 0, 8
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v19.l, 4, v68.l
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v18.l, v17.l, -16
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s5, 7, v17.h
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v20.l, v18.h, v20.l, s2
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v18.h, 0, -16, s3
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s6, 0, v21.l
	.loc	1 787 30 is_stmt 0              ; attention.py:787:30
	v_cndmask_b16 v18.l, v17.l, v18.l, s4
	.loc	1 786 29 is_stmt 1              ; attention.py:786:29
	v_cndmask_b16 v17.l, 0, -16, s5
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v68, v23, 0, 16
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v21.l, v19.h, v18.h
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v18.h, v19.l, -16
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v97, v98, 0, 16
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v17.l, v17.h, v17.l
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v20, v20, 0, 16
	v_cvt_f32_i32_e32 v68, v68
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v19.l, v19.l, v18.h, s6
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v18, v18, 0, 16
	v_bfe_i32 v56, v56, 0, 16
	v_bfe_i32 v21, v21, 0, 16
	v_cvt_f32_i32_e32 v97, v97
	v_bfe_i32 v19, v19, 0, 16
	v_bfe_i32 v17, v17, 0, 16
	v_cvt_f32_i32_e32 v20, v20
	v_mul_f32_e32 v68, v105, v68
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v17, v17
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	v_mov_b16_e32 v23.l, v68.h
	.loc	1 814 31                        ; attention.py:814:31
	v_dual_mul_f32 v97, v105, v97 :: v_dual_mul_f32 v18, v110, v18
.Ltmp12:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v57, v90, v89 :: v_dual_mul_f32 v20, v59, v20
.Ltmp13:
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v9, v9, v86 :: v_dual_mul_f32 v56, v110, v56
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v19, v22, v19
	v_dual_mul_f32 v17, v22, v17 :: v_dual_and_b32 v22, 1, v23
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	v_mov_b16_e32 v107.l, v97.h
	v_mov_b16_e32 v108.l, v20.h
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v21, v59, v21
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v111.l, v56.h
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v89, v75
	ds_load_u16_d16 v90, v75 offset:128
	ds_load_u16_d16 v91, v75 offset:256
	ds_load_u16_d16 v92, v75 offset:384
	ds_load_u16_d16 v93, v75 offset:512
	ds_load_u16_d16 v94, v75 offset:640
	ds_load_u16_d16 v95, v75 offset:768
	ds_load_u16_d16 v96, v75 offset:896
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s2, v68, v68
	v_and_b32_e32 v23, 1, v107
	v_add3_u32 v22, v68, v22, 0x7fff
	v_and_b32_e32 v68, 1, v108
	v_mov_b16_e32 v109.l, v21.h
	v_and_b32_e32 v59, 1, v111
	v_mov_b16_e32 v112.l, v18.h
	v_mov_b16_e32 v114.l, v19.h
	v_mov_b16_e32 v115.l, v17.h
	v_cmp_o_f32_e64 s3, v97, v97
	v_add3_u32 v23, v97, v23, 0x7fff
	v_and_b32_e32 v97, 1, v109
	v_cmp_o_f32_e64 s4, v56, v56
	v_add3_u32 v56, v56, v59, 0x7fff
	v_and_b32_e32 v59, 1, v112
	v_and_b32_e32 v98, 1, v114
	v_and_b32_e32 v99, 1, v115
	v_cmp_o_f32_e64 s5, v20, v20
	v_cmp_o_f32_e64 s6, v21, v21
	v_add3_u32 v20, v20, v68, 0x7fff
	v_add3_u32 v21, v21, v97, 0x7fff
	v_cmp_o_f32_e64 s7, v18, v18
	v_cmp_o_f32_e64 s8, v19, v19
	v_cmp_o_f32_e64 s9, v17, v17
	v_add3_u32 v18, v18, v59, 0x7fff
	v_add3_u32 v19, v19, v98, 0x7fff
	v_add3_u32 v17, v17, v99, 0x7fff
	v_cndmask_b16 v23.h, 0x7fff, v23.h, s3
	v_cndmask_b16 v23.l, 0x7fff, v22.h, s2
	v_cndmask_b16 v20.h, 0x7fff, v20.h, s5
	v_cndmask_b16 v20.l, 0x7fff, v21.h, s6
	v_cndmask_b16 v18.l, 0x7fff, v56.h, s4
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s7
	v_cndmask_b16 v19.h, 0x7fff, v19.h, s8
	v_cndmask_b16 v19.l, 0x7fff, v17.h, s9
	.loc	1 816 30                        ; attention.py:816:30
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v89, v75 offset:64
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v90, v75 offset:192
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v91, v75 offset:320
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v92, v75 offset:448
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v93, v75 offset:576
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v94, v75 offset:704
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v95, v75 offset:832
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v96, v75 offset:960
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b32 v76, v23, v20 offset1:8
	ds_store_2addr_b32 v76, v18, v19 offset0:16 offset1:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[97:100], v106
	ds_load_b128 v[105:108], v106 offset:1024
	ds_load_b128 v[101:104], v85
	ds_load_b128 v[109:112], v85 offset:1024
.Ltmp14:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_permlanex16_b32 v58, v57, s29, 0xfedcba98 op_sel:[1,0]
.Ltmp15:
	.loc	1 707 13                        ; attention.py:707:13
	s_add_i32 s2, s28, 16
	s_cmpk_lt_u32 s28, 0x7f0
	s_mov_b32 s28, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v68, v57, v58
.Ltmp17:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v11, v11, v86
	v_mov_b32_e32 v86, v87
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v68, v113, v116
	.loc	1 816 23                        ; attention.py:816:23
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[97:104], v[89:96], v[8:15]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[105:112], v[89:96], v[0:7]
	.loc	1 707 13                        ; attention.py:707:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	.loc	1 841 48                        ; attention.py:841:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v73, v68
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v16, v88
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v17, 2, v62
	.loc	1 841 19                        ; attention.py:841:19
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v18, 4, v66
	.loc	1 848 17                        ; attention.py:848:17
	s_and_b32 s13, s13, 0xffff
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v17, v17, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v18, v18, v67
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v19, s15, v17
	s_mov_b32 s15, 0x31027000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v20, 32, v18
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s0, 0x800, v19
	.loc	1 841 48                        ; attention.py:841:48
	v_div_scale_f32 v19, null, v16, v16, v8
	v_div_scale_f32 v21, null, v16, v16, v9
	v_div_scale_f32 v23, null, v16, v16, v11
	v_div_scale_f32 v22, null, v16, v16, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v24, v19
	v_rcp_f32_e32 v25, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v28, v23
	v_rcp_f32_e32 v26, v22
	v_div_scale_f32 v27, vcc_lo, v8, v16, v8
	v_div_scale_f32 v29, s1, v9, v16, v9
	v_div_scale_f32 v34, s3, v11, v16, v11
	v_fma_f32 v31, -v19, v24, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v32, -v21, v25, 1.0
	v_fma_f32 v35, -v23, v28, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v22, v26, 1.0
	v_div_scale_f32 v30, s2, v10, v16, v10
	v_dual_fmac_f32 v24, v31, v24 :: v_dual_fmac_f32 v25, v32, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v28, v35, v28
	v_fmac_f32_e32 v26, v33, v26
	v_div_scale_f32 v31, null, v16, v16, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v33, v29, v25
	v_mul_f32_e32 v37, v34, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v32, v27, v24 :: v_dual_mul_f32 v35, v30, v26
	v_rcp_f32_e32 v36, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v21, v33, v29
	v_div_scale_f32 v41, null, v16, v16, v13
	v_fma_f32 v38, -v19, v32, v27
	v_fma_f32 v40, -v22, v35, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v33, v39, v25 :: v_dual_fmac_f32 v32, v38, v24
	v_fma_f32 v39, -v31, v36, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v35, v40, v26
	v_fma_f32 v21, -v21, v33, v29
	v_fma_f32 v38, -v23, v37, v34
	v_fma_f32 v19, -v19, v32, v27
	v_rcp_f32_e32 v27, v41
	v_fmac_f32_e32 v36, v39, v36
	v_fma_f32 v22, -v22, v35, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v19, v19, v24, v32
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v21, v21, v25, v33
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v8, v19, v16, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v24, -v41, v27, 1.0
	v_div_fmas_f32 v22, v22, v26, v35
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v19, s1, v12, v16, v12
	v_fmac_f32_e32 v27, v24, v27
	v_div_scale_f32 v24, s2, v13, v16, v13
	v_fmac_f32_e32 v37, v38, v28
	v_div_fixup_f32 v10, v22, v16, v10
	v_div_fixup_f32 v9, v21, v16, v9
	v_div_scale_f32 v21, null, v16, v16, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v22, -v23, v37, v34
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_add_nc_u32_e32 v38, 0, v64
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v25, v21
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fmas_f32 v22, v22, v28, v37
	v_div_scale_f32 v28, null, v16, v16, v15
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v37, s4, v6, v16, v6
	v_div_fixup_f32 v11, v22, v16, v11
	v_mul_f32_e32 v22, v24, v27
	v_rcp_f32_e32 v29, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v41, v22, v24
	v_dual_mul_f32 v23, v19, v36 :: v_dual_fmac_f32 v22, v30, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v26, -v31, v23, v19
	v_div_scale_f32 v30, null, v16, v16, v0
	v_fmac_f32_e32 v23, v26, v36
	v_fma_f32 v26, -v21, v25, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v33, v30
	v_fma_f32 v19, -v31, v23, v19
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v31, -v28, v29, 1.0
	v_div_fmas_f32 v19, v19, v36, v23
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v29, v31, v29
	v_div_scale_f32 v31, s1, v15, v16, v15
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v12, v19, v16, v12
	v_fma_f32 v19, -v41, v22, v24
	v_mul_f32_e32 v24, v31, v29
	.loc	1 841 19                        ; attention.py:841:19
	v_lshrrev_b32_e32 v41, 6, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v19, v19, v27, v22
	v_fma_f32 v22, -v28, v24, v31
	v_div_scale_f32 v27, null, v16, v16, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v13, v19, v16, v13
	v_fmac_f32_e32 v24, v22, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v22, v27
	v_fma_f32 v19, -v28, v24, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v27, v22, 1.0
	v_fmac_f32_e32 v25, v26, v25
	v_div_scale_f32 v26, s3, v14, v16, v14
	s_mov_b32 vcc_lo, s3
	v_dual_fmac_f32 v22, v28, v22 :: v_dual_mul_f32 v23, v26, v25
	v_fma_f32 v32, -v21, v23, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v32, v25
	v_fma_f32 v21, -v21, v23, v26
	v_fma_f32 v26, -v30, v33, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v21, v21, v25, v23
	v_fmac_f32_e32 v33, v26, v33
	v_div_scale_f32 v25, s2, v0, v16, v0
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v28, s1, v1, v16, v1
	v_mul_f32_e32 v26, v25, v33
	v_div_scale_f32 v23, null, v16, v16, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v31, v28, v22
	v_div_fmas_f32 v19, v19, v29, v24
	v_fma_f32 v24, -v30, v26, v25
	v_div_fixup_f32 v14, v21, v16, v14
	v_rcp_f32_e32 v21, v23
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v15, v19, v16, v15
	v_fmac_f32_e32 v26, v24, v33
	v_div_scale_f32 v24, null, v16, v16, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v19, -v30, v26, v25
	v_rcp_f32_e32 v32, v24
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v29, -v23, v21, 1.0
	v_fma_f32 v25, -v27, v31, v28
	v_fmac_f32_e32 v21, v29, v21
	v_div_scale_f32 v29, s3, v2, v16, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v31, v25, v22
	v_div_fmas_f32 v19, v19, v33, v26
	v_fma_f32 v26, -v24, v32, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v33, null, v16, v16, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v19, v19, v16, v0
	v_fmac_f32_e32 v32, v26, v32
	v_div_scale_f32 v26, s2, v3, v16, v3
	v_mul_f32_e32 v30, v29, v21
	v_fma_f32 v0, -v27, v31, v28
	v_div_scale_f32 v27, null, v16, v16, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v25, -v23, v30, v29
	v_div_fmas_f32 v0, v0, v22, v31
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v30, v25, v21
	v_div_fixup_f32 v1, v0, v16, v1
	v_rcp_f32_e32 v25, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v22, -v23, v30, v29
	v_rcp_f32_e32 v29, v27
	v_mul_f32_e32 v23, v26, v32
	v_div_fmas_f32 v21, v22, v21, v30
	v_div_scale_f32 v30, null, v16, v16, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v22, -v24, v23, v26
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v28, -v33, v25, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v34, v30
	v_fma_f32 v31, -v27, v29, 1.0
	v_fmac_f32_e32 v23, v22, v32
	v_div_fixup_f32 v2, v21, v16, v2
	v_div_scale_f32 v22, s3, v5, v16, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v24, -v24, v23, v26
	v_fma_f32 v0, -v30, v34, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v23, v24, v32, v23
	.loc	1 841 28                        ; attention.py:841:28
	v_cmp_lt_f32_e32 vcc_lo, 0, v68
	.loc	1 841 19                        ; attention.py:841:19
	v_lshrrev_b32_e32 v32, 5, v63
	.loc	1 841 48                        ; attention.py:841:48
	v_dual_fmac_f32 v34, v0, v34 :: v_dual_fmac_f32 v29, v31, v29
	v_div_scale_f32 v31, null, v16, v16, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v25, v28, v25 :: v_dual_add_nc_u32 v32, v38, v32
	v_div_scale_f32 v28, s1, v4, v16, v4
	v_rcp_f32_e32 v36, v31
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v39, 0, 1, vcc_lo
	v_add_nc_u32_e32 v38, v38, v41
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v3, v23, v16, v3
	s_mov_b32 vcc_lo, s1
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s1, s11, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v0, -v31, v36, 1.0
	v_fmac_f32_e32 v36, v0, v36
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_mov_b16_e32 v0.l, v39.l
	.loc	1 841 48                        ; attention.py:841:48
	v_div_scale_f32 v39, s2, v7, v16, v7
	v_mul_f32_e32 v21, v28, v25
	.loc	1 841 19                        ; attention.py:841:19
	ds_store_b8 v32, v0
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v32, v39, v36
	.loc	1 841 19                        ; attention.py:841:19
	s_waitcnt lgkmcnt(0)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v26, -v33, v21, v28
	.loc	1 841 19                        ; attention.py:841:19
	s_barrier
	ds_load_u8_d16 v0, v38
	.loc	1 841 48                        ; attention.py:841:48
	v_dual_fmac_f32 v21, v26, v25 :: v_dual_mul_f32 v26, v37, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v23, -v33, v21, v28
	v_fma_f32 v40, -v30, v26, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v21, v23, v25, v21
	v_dual_fmac_f32 v26, v40, v34 :: v_dual_mul_f32 v35, v22, v29
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v4, v21, v16, v4
	v_fma_f32 v23, -v30, v26, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v24, -v27, v35, v22
	.loc	1 841 19                        ; attention.py:841:19
	s_waitcnt lgkmcnt(0)
	v_and_b16 v0.l, 1, v0.l
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v35, v24, v29
	v_fma_f32 v24, -v31, v32, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v22, -v27, v35, v22
	v_fmac_f32_e32 v32, v24, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v22, v22, v29, v35
	v_fma_f32 v24, -v31, v32, v39
	s_mov_b32 vcc_lo, s4
	v_div_fmas_f32 v23, v23, v34, v26
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v24, v24, v36, v32
	.loc	1 841 19                        ; attention.py:841:19
	v_cmp_eq_u16_e32 vcc_lo, 1, v0.l
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v0, v22, v16, v5
	v_div_fixup_f32 v5, v23, v16, v6
	v_div_fixup_f32 v6, v24, v16, v7
	.loc	1 841 19                        ; attention.py:841:19
	v_dual_cndmask_b32 v7, 0, v8 :: v_dual_cndmask_b32 v8, 0, v9
	v_dual_cndmask_b32 v9, 0, v10 :: v_dual_cndmask_b32 v10, 0, v11
	.loc	1 843 24 is_stmt 1              ; attention.py:843:24
	v_or_b32_e32 v11, s14, v17
	.loc	1 841 19                        ; attention.py:841:19
	v_dual_cndmask_b32 v12, 0, v12 :: v_dual_cndmask_b32 v13, 0, v13
	v_dual_cndmask_b32 v14, 0, v14 :: v_dual_cndmask_b32 v15, 0, v15
	v_cndmask_b32_e32 v2, 0, v2, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 843 24                        ; attention.py:843:24
	v_mul_lo_u32 v11, s11, v11
	.loc	1 841 19                        ; attention.py:841:19
	v_dual_cndmask_b32 v16, 0, v19 :: v_dual_cndmask_b32 v1, 0, v1
	v_dual_cndmask_b32 v3, 0, v3 :: v_dual_cndmask_b32 v4, 0, v4
	v_dual_cndmask_b32 v0, 0, v0 :: v_dual_cndmask_b32 v5, 0, v5
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 843 24                        ; attention.py:843:24
	v_add_lshl_u32 v17, v11, v18, 2
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e32 v6, 0, v6, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s0, s1
	.loc	1 844 63 is_stmt 0              ; attention.py:844:63
	v_cmp_gt_i32_e64 s1, s11, v20
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 848 17 is_stmt 1              ; attention.py:848:17
	v_cndmask_b32_e32 v18, 0x80000000, v17, vcc_lo
	v_add_nc_u32_e32 v19, 8, v17
	buffer_store_b32 v7, v18, s[12:15], 0 offen
	v_dual_cndmask_b32 v18, 0x80000000, v19 :: v_dual_add_nc_u32 v7, 16, v17
	v_add_nc_u32_e32 v19, 24, v17
	v_add_nc_u32_e32 v21, 32, v17
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	buffer_store_b32 v8, v18, s[12:15], 0 offen
	v_cndmask_b32_e32 v8, 0x80000000, v19, vcc_lo
	buffer_store_b32 v9, v7, s[12:15], 0 offen
	v_add_nc_u32_e32 v7, 48, v17
	v_add_nc_u32_e32 v22, 40, v17
	v_add_lshl_u32 v9, v11, v20, 2
	v_add_nc_u32_e32 v11, 0x90, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v7, 0x80000000, v7 :: v_dual_cndmask_b32 v18, 0x80000000, v21
	v_cndmask_b32_e32 v19, 0x80000000, v22, vcc_lo
	s_clause 0x2
	buffer_store_b32 v10, v8, s[12:15], 0 offen
	buffer_store_b32 v12, v18, s[12:15], 0 offen
	buffer_store_b32 v13, v19, s[12:15], 0 offen
	v_add_nc_u32_e32 v8, 56, v17
	v_add_nc_u32_e32 v10, 0x88, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s0, s1
	.loc	1 848 17                        ; attention.py:848:17
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	s_clause 0x4
	buffer_store_b32 v14, v7, s[12:15], 0 offen
	buffer_store_b32 v15, v8, s[12:15], 0 offen
	buffer_store_b32 v16, v9, s[12:15], 0 offen
	buffer_store_b32 v1, v10, s[12:15], 0 offen
	buffer_store_b32 v2, v11, s[12:15], 0 offen
	v_add_nc_u32_e32 v1, 0x98, v17
	v_add_nc_u32_e32 v2, 0xa0, v17
	v_add_nc_u32_e32 v7, 0xa8, v17
	v_add_nc_u32_e32 v8, 0xb0, v17
	v_add_nc_u32_e32 v9, 0xb8, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_dual_cndmask_b32 v7, 0x80000000, v7 :: v_dual_cndmask_b32 v8, 0x80000000, v8
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v3, v1, s[12:15], 0 offen
	buffer_store_b32 v4, v2, s[12:15], 0 offen
	buffer_store_b32 v0, v7, s[12:15], 0 offen
	buffer_store_b32 v5, v8, s[12:15], 0 offen
	buffer_store_b32 v6, v9, s[12:15], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp18:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 117
		.amdhsa_next_free_sgpr 34
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
		.amdhsa_inst_pref_size 43
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.num_vgpr, 117
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.numbered_sgpr, 34
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5384
; TotalNumSgprs: 36
; NumVgprs: 117
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 36
; NumVGPRsForWavesPerEU: 117
; Occupancy: 12
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
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
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
	.byte	7                               ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0x7d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x57 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x2a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp3-.Ltmp1                   ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	765                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x56:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x6b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	769                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x78:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     36
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     117
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
