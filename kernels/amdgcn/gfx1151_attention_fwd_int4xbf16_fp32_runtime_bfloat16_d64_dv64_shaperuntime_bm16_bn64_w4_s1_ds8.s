	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x80
	s_load_b32 s28, s[0:1], 0x68
	s_mov_b32 s27, s3
	s_clause 0x1
	s_load_b128 s[56:59], s[0:1], 0x4c
	s_load_b32 s89, s[0:1], 0x60
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_and_b32_e32 v41, 31, v0
	v_lshrrev_b32_e32 v60, 5, v0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v5, 0x88, v0
	v_xor_b32_e32 v6, 0x110, v0
	v_xor_b32_e32 v7, 0x198, v0
	v_add_nc_u32_e32 v65, 0, v0
	v_lshlrev_b32_e32 v61, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v64, 15, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v67, 0, v6
	v_add_nc_u32_e32 v68, 0, v7
	s_waitcnt lgkmcnt(0)
	s_and_b32 s3, 1, s12
	s_bitcmp1_b32 s12, 8
	s_cselect_b32 s88, -1, 0
	s_cmp_eq_u32 s3, 1
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[43:44], null, s89, v60, v[41:42]
	s_cselect_b32 s7, -1, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s21, s28
	.loc	1 748 27                        ; attention.py:748:27
	s_abs_i32 s4, s2
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_f32_u32 s3, s21
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s5, s2, s28
	.loc	1 772 26                        ; attention.py:772:26
	s_mul_i32 s10, s27, s58
	.loc	1 748 27                        ; attention.py:748:27
	s_ashr_i32 s5, s5, 31
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s3
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v62, s89, 2, v43
	v_mad_u64_u32 v[44:45], null, s89, 12, v[43:44]
	v_lshl_add_u32 v63, s89, 3, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 798 32                        ; attention.py:798:32
	v_readfirstlane_b32 s3, v1
	s_mul_f32 s3, s3, 0x4f7ffffe
	s_cvt_u32_f32 s22, s3
	s_sub_i32 s3, 0, s21
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s3, s3, s22
	s_mul_hi_u32 s3, s22, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s22, s22, s3
	.loc	1 748 27                        ; attention.py:748:27
	s_mul_hi_u32 s3, s4, s22
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s3, s21
	s_sub_i32 s4, s4, s6
	s_add_i32 s6, s3, 1
	s_sub_i32 s8, s4, s21
	s_cmp_ge_u32 s4, s21
	s_cselect_b32 s3, s6, s3
	s_cselect_b32 s4, s8, s4
	s_add_i32 s6, s3, 1
	s_cmp_ge_u32 s4, s21
	s_cselect_b32 s3, s6, s3
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s6, s56
	.loc	1 755 23                        ; attention.py:755:23
	s_abs_i32 s9, s27
	s_cvt_f32_u32 s4, s6
	s_sub_i32 s8, 0, s6
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s3, s3, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 748 27                        ; attention.py:748:27
	s_sub_i32 s3, s3, s5
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s5, s3, s28
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s3, s3, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s26, s2, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s4, v1
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_cvt_u32_f32 s4, s4
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s4
	s_mul_hi_u32 s8, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s4, s4, s8
	s_mul_hi_u32 s4, s9, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s4, s6
	s_add_i32 s5, s4, 1
	s_sub_i32 s2, s9, s8
	s_sub_i32 s8, s2, s6
	s_cmp_ge_u32 s2, s6
	s_cselect_b32 s4, s5, s4
	s_cselect_b32 s2, s8, s2
	s_add_i32 s5, s4, 1
	s_cmp_ge_u32 s2, s6
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x0
	s_load_b64 s[8:9], s[0:1], 0x18
	s_cselect_b32 s20, s5, s4
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s5, s57
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s4, s89, v41
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_f32_u32 s2, s5
	s_sub_i32 s11, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s2
	v_readfirstlane_b32 s2, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s3, v60
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s2, s2, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_2)
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, 4, v1
	v_or_b32_e32 v3, 8, v1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, s58, v1
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s2, s2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, 12, v1
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s11, s11, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s11, s2, s11
	s_add_i32 s2, s2, s11
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s11, s6, s2
	s_xor_b32 s2, s56, s57
	s_mul_i32 s23, s11, s5
	s_ashr_i32 s24, s2, 31
	s_sub_i32 s6, s6, s23
	s_add_i32 s23, s11, 1
	s_sub_i32 s25, s6, s5
	s_cmp_ge_u32 s6, s5
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s58, v2
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s11, s23, s11
	s_cselect_b32 s6, s25, s6
	s_add_i32 s23, s11, 1
	s_cmp_ge_u32 s6, s5
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s58, v3
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s23, s23, s11
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s25, s10, s3
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 773 26                        ; attention.py:773:26
	s_mul_i32 s10, s25, s89
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s6, s58, v4
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v1, s10, v43
	v_add_nc_u32_e32 v2, s10, v62
	v_add_nc_u32_e32 v3, s10, v63
	v_add_nc_u32_e32 v4, s10, v44
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	s_and_b32 s17, s17, 0xffff
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, s2
	.loc	1 779 31                        ; attention.py:779:31
	s_mov_b32 s10, s18
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, s5
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v8, s25, v64, 1
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, s6
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v66, 0, v5
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x3
	buffer_load_u8 v1, v1, s[16:19], 0 offen
	buffer_load_u8 v2, v2, s[16:19], 0 offen
	buffer_load_u8 v3, v3, s[16:19], 0 offen
	buffer_load_u8 v4, v4, s[16:19], 0 offen
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s3, v64
	.loc	1 779 31                        ; attention.py:779:31
	s_mov_b32 s11, s19
	s_and_b32 s9, s9, 0xffff
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s2, s23, s24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 781 22                        ; attention.py:781:22
	v_cmp_gt_i32_e32 vcc_lo, s58, v5
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s6, s2, s24
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s5, s6
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e32 v5, 0x80000000, v8, vcc_lo
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_f32_u32 s2, s5
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(3)
	ds_store_b8 v65, v1
	s_waitcnt vmcnt(2)
	ds_store_b8 v66, v2
	s_waitcnt vmcnt(1)
	ds_store_b8 v67, v3
	s_waitcnt vmcnt(0)
	ds_store_b8 v68, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v1, v5, s[8:11], 0 offen
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s8, s59, 63
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v2, 24, v61
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s9, s8, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s9, s9, 26
	s_add_i32 s8, s8, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v2, v64, 5, v2
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s9, s8, 6
	.loc	1 795 14 is_stmt 0              ; attention.py:795:14
	s_and_b32 s11, s8, 0xffffffc0
	.loc	1 798 33 is_stmt 1              ; attention.py:798:33
	s_add_i32 s9, s9, s28
	s_add_i32 s9, s9, -1
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v3, 8, v2
	v_xor_b32_e32 v4, 16, v2
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s10, s9
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v69, 0, v2
	v_xor_b32_e32 v2, 24, v2
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_hi_u32 s8, s10, s22
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v70, 0, v3
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_i32 s16, s8, s21
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v71, 0, v4
	v_add_nc_u32_e32 v72, 0, v2
	.loc	1 798 32                        ; attention.py:798:32
	s_xor_b32 s9, s9, s28
	s_sub_i32 s10, s10, s16
	s_ashr_i32 s9, s9, 31
	s_add_i32 s16, s8, 1
	s_sub_i32 s17, s10, s21
	.loc	1 774 26                        ; attention.py:774:26
	ds_load_b64 v[45:46], v69
	ds_load_b64 v[47:48], v70
	ds_load_b64 v[49:50], v71
	ds_load_b64 v[51:52], v72
	.loc	1 798 32                        ; attention.py:798:32
	s_cmp_ge_u32 s10, s21
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v2, s2
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s8, s16, s8
	s_cselect_b32 s10, s17, s10
	s_add_i32 s16, s8, 1
	s_cmp_ge_u32 s10, s21
	s_cselect_b32 s2, s16, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s9
	s_sub_i32 s2, s2, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s8, s26, s2
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s2, s2, 6
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s91, s8, 6
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s8, v2
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s2, s91, s2
	.loc	1 800 18 is_stmt 0              ; attention.py:800:18
	s_min_i32 s92, s11, s2
	.loc	1 801 9 is_stmt 1               ; attention.py:801:9
	s_bfe_u32 s2, s12, 0x10008
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s14, s15
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s9, s15, s13
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s3
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s9, s9, s3
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, 16
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s9, s9, 0
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s2, s59, s2
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s9, s9, 0x7fffffc0
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s2, s2, 63
	.loc	1 807 18                        ; attention.py:807:18
	s_max_i32 s91, s91, s9
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s10, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s10, s10, 26
	s_add_i32 s2, s2, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 33 is_stmt 0              ; attention.py:808:33
	s_and_not1_b32 s2, s2, 63
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s92, s92, s2
.LBB0_2:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b32 s90, s[0:1], 0x64
	.loc	1 809 9 is_stmt 1               ; attention.py:809:9
	v_cndmask_b32_e64 v75, 0, 1, s7
	s_and_not1_b32 vcc_lo, exec_lo, s7
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s2, s15, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 16
	s_min_i32 s2, s59, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 63
	.loc	1 811 34 is_stmt 1              ; attention.py:811:34
	s_ashr_i32 s7, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s7, s7, 26
	s_add_i32 s2, s2, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_not1_b32 s2, s2, 63
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s92, s92, s2
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b64 s[16:17], s[0:1], 0x40
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_and_b32_e32 v74, 64, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v42, 63, v0
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_ge_i32 s91, s92
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v73, 4, v74
	.loc	1 892 65                        ; attention.py:892:65
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e64 s2, s90, v42
	v_cmp_eq_u32_e32 vcc_lo, 0, v74
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_11
; %bb.5:                                ; %.lr.ph
                                        ; implicit-def: $vgpr253 : SGPR spill to VGPR lane
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_xor_b32 s7, s27, s56
	v_writelane_b32 v253, s16, 0
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_ashr_i32 s7, s7, 31
	s_ashr_i32 s6, s6, 31
	s_xor_b32 s9, s20, s7
	v_writelane_b32 v253, s17, 1
	s_cvt_u32_f32 s8, s8
	s_sub_i32 s11, s9, s7
	s_sub_i32 s7, 0, s5
	s_mul_i32 s9, s11, s56
	v_writelane_b32 v253, s18, 2
	s_mul_i32 s7, s7, s8
	s_sub_i32 s12, s27, s9
	s_mul_hi_u32 s7, s8, s7
	s_abs_i32 s9, s12
	v_writelane_b32 v253, s19, 3
	s_add_i32 s8, s8, s7
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x6c
	s_load_b64 s[72:73], s[0:1], 0x30
	s_mul_hi_u32 s7, s9, s8
	s_ashr_i32 s8, s12, 31
	.loc	1 758 19 is_stmt 1              ; attention.py:758:19
	s_mul_i32 s10, s7, s5
	s_xor_b32 s6, s8, s6
	s_sub_i32 s8, s9, s10
	s_add_i32 s9, s7, 1
	s_sub_i32 s10, s8, s5
	s_cmp_ge_u32 s8, s5
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 6, v74
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s7, s9, s7
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s7, 1
	s_cmp_ge_u32 s8, s5
	s_load_b32 s93, s[0:1], 0x7c
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v3.h, v1.l
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s3, v2
	.loc	1 758 19                        ; attention.py:758:19
	s_cselect_b32 s5, s9, s7
	v_mov_b16_e32 v3.l, 0
	s_xor_b32 s5, s5, s6
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x8
	s_load_b64 s[76:77], s[0:1], 0x20
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, 4, v1
	.loc	1 758 19                        ; attention.py:758:19
	s_sub_i32 s0, s5, s6
	.loc	1 844 25                        ; attention.py:844:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s5, s16, 0x3fb8aa3b
	.loc	1 821 33                        ; attention.py:821:33
	s_mul_i32 s1, s11, s57
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v7, 8, v1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 843 41                        ; attention.py:843:41
	v_dual_mul_f32 v76, s5, v3 :: v_dual_and_b32 v11, 16, v0
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v80, s15, v5
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s58, v5
	v_dual_mov_b32 v168, 0xff800000 :: v_dual_lshlrev_b32 v5, 6, v0
	.loc	1 821 33                        ; attention.py:821:33
	s_add_i32 s94, s0, s1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, 2, v1
	v_or_b32_e32 v6, 6, v1
	v_or_b32_e32 v8, 10, v1
	v_or_b32_e32 v9, 12, v1
	v_or_b32_e32 v10, 14, v1
	v_dual_mov_b32 v55, 0x5410 :: v_dual_add_nc_u32 v78, s15, v1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, s58, v1
	v_mul_lo_u32 v1, s19, v2
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v82, s15, v7
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s7, s58, v7
	v_cndmask_b32_e64 v7, 0x104, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v11
	v_and_b32_e32 v2, 64, v5
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v79, s15, v3
	v_add_nc_u32_e32 v81, s15, v6
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s1, s58, v3
	v_cmp_gt_i32_e64 s6, s58, v6
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[53:54], null, s93, v42, v[1:2]
	v_dual_mov_b32 v170, 0xff800000 :: v_dual_lshlrev_b32 v1, 2, v41
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mov_b32 v166, v76 :: v_dual_and_b32 v3, 60, v61
	v_dual_cndmask_b32 v55, 0x1054, v55 :: v_dual_and_b32 v6, 32, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v89, v64, 8, v1
	v_and_b32_e32 v1, 0x380, v5
	v_dual_mov_b32 v174, 0xff800000 :: v_dual_lshlrev_b32 v5, 2, v11
	v_mov_b32_e32 v11, 0x7632
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v83, s15, v8
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s8, s58, v8
	v_lshlrev_b32_e32 v8, 2, v6
	v_xor_b32_e32 v7, v7, v3
	v_cndmask_b32_e32 v11, 0x3276, v11, vcc_lo
	v_or3_b32 v90, v60, v2, v3
	v_dual_mov_b32 v172, 0xff800000 :: v_dual_lshlrev_b32 v3, 1, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_or3_b32 v88, v7, v8, v2
	v_lshl_add_u32 v6, v6, 1, 0
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mov_b32 v165, v76 :: v_dual_add_nc_u32 v2, 0, v2
	v_or3_b32 v91, v1, v5, v3
	v_lshrrev_b32_e32 v1, 2, v74
	v_dual_mov_b32 v167, v76 :: v_dual_and_b32 v56, 7, v0
	v_and_b32_e32 v4, 0x60, v0
	v_lshl_or_b32 v55, v55, 8, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v177, 0xff800000 :: v_dual_add_nc_u32 v96, v6, v1
	v_dual_mov_b32 v176, 0xff800000 :: v_dual_lshlrev_b32 v57, 4, v56
	v_add_nc_u32_e32 v97, v2, v1
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v58, 0x70, v61
	v_and_b32_e32 v55, 0x540054, v55
	v_lshlrev_b32_e32 v59, 7, v42
	v_bfe_i32 v92, v0, 3, 1
	v_lshrrev_b32_e32 v93, 3, v74
	v_mov_b32_e32 v175, v1
	v_xor_b32_e32 v58, v57, v58
	v_lshl_or_b32 v55, v55, 4, v55
	v_lshl_or_b32 v57, v4, 6, v57
	v_and_or_b32 v4, 0x410, v92, v4
	v_lshl_or_b32 v11, v11, 8, v11
	v_or3_b32 v92, v59, v93, v58
	v_xor_b32_e32 v54, 28, v91
	v_and_b32_e32 v93, 0x5040504, v55
	v_xor_b32_e32 v4, v4, v57
	v_and_b32_e32 v11, 0x760076, v11
	v_xor_b32_e32 v55, 32, v92
	v_add_nc_u32_e32 v133, 0, v54
	v_xor_b32_e32 v57, 48, v92
	v_lshl_or_b32 v95, v56, 7, v4
	v_xor_b32_e32 v56, 0x50, v92
	v_add_nc_u32_e32 v135, 0, v55
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[54:55], null, s19, 6, v[53:54]
	v_lshl_or_b32 v11, v11, 4, v11
	v_xor_b32_e32 v58, 0x60, v92
	v_xor_b32_e32 v59, 0x70, v92
	v_add_nc_u32_e32 v138, 0, v56
	v_writelane_b32 v253, s28, 4
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v84, s15, v9
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[55:56], null, s19, 10, v[53:54]
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v85, s15, v10
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s9, s58, v9
	v_cmp_gt_i32_e64 s10, s58, v10
	v_xor_b32_e32 v7, 0x208, v88
	v_xor_b32_e32 v8, 0x410, v88
	v_xor_b32_e32 v9, 0x618, v88
	v_xor_b32_e32 v10, 0x820, v88
	v_xor_b32_e32 v12, 0xa28, v88
	v_xor_b32_e32 v13, 0xc30, v88
	v_xor_b32_e32 v14, 0xe38, v88
	v_xor_b32_e32 v15, 4, v89
	v_xor_b32_e32 v16, 8, v89
	v_xor_b32_e32 v17, 12, v89
	v_xor_b32_e32 v18, 16, v89
	v_xor_b32_e32 v19, 20, v89
	v_xor_b32_e32 v20, 24, v89
	v_xor_b32_e32 v21, 28, v89
	v_xor_b32_e32 v22, 32, v89
	v_xor_b32_e32 v23, 36, v89
	v_xor_b32_e32 v24, 40, v89
	v_xor_b32_e32 v25, 44, v89
	v_xor_b32_e32 v26, 48, v89
	v_xor_b32_e32 v27, 52, v89
	v_xor_b32_e32 v28, 56, v89
	v_xor_b32_e32 v29, 60, v89
	v_xor_b32_e32 v30, 0x84, v90
	v_xor_b32_e32 v31, 0x108, v90
	v_xor_b32_e32 v32, 0x18c, v90
	v_xor_b32_e32 v3, 0x210, v90
	v_xor_b32_e32 v5, 0x294, v90
	v_xor_b32_e32 v33, 0x318, v90
	v_xor_b32_e32 v34, 0x39c, v90
	v_xor_b32_e32 v35, 4, v91
	v_xor_b32_e32 v36, 8, v91
	v_xor_b32_e32 v37, 12, v91
	v_xor_b32_e32 v38, 16, v91
	v_xor_b32_e32 v39, 20, v91
	v_xor_b32_e32 v40, 24, v91
	v_and_b32_e32 v94, 0x7060706, v11
	v_xor_b32_e32 v11, 16, v92
	v_xor_b32_e32 v4, 64, v92
	v_xor_b32_e32 v141, 16, v95
	v_xor_b32_e32 v142, 32, v95
	v_xor_b32_e32 v143, 48, v95
	v_xor_b32_e32 v144, 64, v95
	v_xor_b32_e32 v145, 0x50, v95
	v_xor_b32_e32 v146, 0x60, v95
	v_xor_b32_e32 v147, 0x70, v95
	v_add_nc_u32_e32 v136, 0, v57
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[56:57], null, s19, 12, v[53:54]
	v_add_nc_u32_e32 v139, 0, v58
	v_mad_u64_u32 v[57:58], null, s19, 14, v[53:54]
	v_add_nc_u32_e32 v140, 0, v59
	v_mad_u64_u32 v[58:59], null, s90, v73, v[42:43]
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s3, s3, s19
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s11, s11, s17
	v_writelane_b32 v253, s26, 5
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v77, v0, 4, 1
	v_subrev_nc_u32_e32 v86, s13, v78
	v_dual_mov_b32 v169, 0xff800000 :: v_dual_add_nc_u32 v98, 0, v7
	v_add_nc_u32_e32 v99, 0, v8
	v_dual_mov_b32 v171, 0xff800000 :: v_dual_add_nc_u32 v100, 0, v9
	v_add_nc_u32_e32 v101, 0, v10
	v_dual_mov_b32 v173, 0xff800000 :: v_dual_add_nc_u32 v102, 0, v12
	v_add_nc_u32_e32 v103, 0, v13
	v_dual_mov_b32 v59, 0xff800000 :: v_dual_add_nc_u32 v104, 0, v14
	v_add_nc_u32_e32 v105, 0, v15
	v_add_nc_u32_e32 v106, 0, v16
	v_add_nc_u32_e32 v107, 0, v17
	v_add_nc_u32_e32 v108, 0, v18
	v_add_nc_u32_e32 v109, 0, v19
	v_add_nc_u32_e32 v110, 0, v20
	v_add_nc_u32_e32 v111, 0, v21
	v_add_nc_u32_e32 v112, 0, v22
	v_add_nc_u32_e32 v113, 0, v23
	v_add_nc_u32_e32 v114, 0, v24
	v_add_nc_u32_e32 v115, 0, v25
	v_add_nc_u32_e32 v116, 0, v26
	v_add_nc_u32_e32 v117, 0, v27
	v_add_nc_u32_e32 v118, 0, v28
	v_add_nc_u32_e32 v119, 0, v29
	v_add_nc_u32_e32 v120, 0, v30
	v_add_nc_u32_e32 v121, 0, v31
	v_add_nc_u32_e32 v122, 0, v32
	v_add_nc_u32_e32 v123, 0, v3
	v_add_nc_u32_e32 v124, 0, v5
	v_add_nc_u32_e32 v125, 0, v33
	v_add_nc_u32_e32 v126, 0, v34
	v_add_nc_u32_e32 v127, 0, v35
	v_add_nc_u32_e32 v128, 0, v36
	v_add_nc_u32_e32 v129, 0, v37
	v_add_nc_u32_e32 v130, 0, v38
	v_add_nc_u32_e32 v131, 0, v39
	v_add_nc_u32_e32 v132, 0, v40
	v_add_nc_u32_e32 v134, 0, v11
	v_add_nc_u32_e32 v137, 0, v4
	v_add_nc_u32_e32 v141, 0, v141
	v_add_nc_u32_e32 v142, 0, v142
	v_add_nc_u32_e32 v143, 0, v143
	v_add_nc_u32_e32 v144, 0, v144
	v_add_nc_u32_e32 v145, 0, v145
	v_add_nc_u32_e32 v146, 0, v146
	v_dual_mov_b32 v2, v1 :: v_dual_add_nc_u32 v147, 0, v147
	v_subrev_nc_u32_e32 v87, s13, v79
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	v_subrev_nc_u32_e32 v148, s13, v80
	v_subrev_nc_u32_e32 v149, s13, v81
	v_subrev_nc_u32_e32 v150, s13, v82
	v_subrev_nc_u32_e32 v151, s13, v83
	v_subrev_nc_u32_e32 v152, s13, v84
	v_subrev_nc_u32_e32 v153, s13, v85
	v_add_nc_u32_e32 v154, s14, v78
	v_add_nc_u32_e32 v155, s14, v79
	v_add_nc_u32_e32 v156, s14, v80
	v_add_nc_u32_e32 v157, s14, v81
	v_add_nc_u32_e32 v158, s14, v82
	v_add_nc_u32_e32 v159, s14, v83
	v_add_nc_u32_e32 v160, s14, v84
	v_add_nc_u32_e32 v161, s14, v85
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v162, s19, 1, v53
	v_lshl_add_u32 v163, s19, 2, v53
	v_lshl_add_u32 v164, s19, 3, v53
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s12, s12, s18
	s_add_i32 s71, s11, s3
	s_mov_b32 s60, 0
	.loc	1 821 32                        ; attention.py:821:32
	s_mul_i32 s94, s94, s59
	s_lshl_b32 s95, s89, 4
	s_lshl_b32 s99, s89, 5
	s_and_b32 s81, s21, 0xffff
	s_mov_b32 s80, s20
	s_mov_b32 s83, 0x31027000
	s_mov_b32 s82, 0x7ffffffe
	s_and_b32 s77, s77, 0xffff
	s_add_i32 s71, s71, s12
	s_and_b32 s73, s73, 0xffff
	s_lshl_b32 s3, s90, 1
	s_lshl_b32 s97, s90, 3
	s_lshl_b32 s102, s90, 4
	s_lshl_b32 s98, s90, 5
	s_mul_i32 s69, s90, 48
	s_mul_i32 s96, s90, 49
	s_mul_i32 s100, s90, 50
	s_mul_i32 s101, s90, 51
	s_mul_i32 s103, s90, 56
	s_mul_i32 s104, s90, 57
	s_mul_i32 vcc_hi, s90, 58
	s_mul_i32 s70, s90, 59
	s_and_b32 s85, s23, 0xffff
	s_mov_b32 s84, s22
	s_mov_b32 s61, s60
	s_mov_b32 s62, s60
	s_mov_b32 s63, s60
	s_mov_b32 s64, s60
	s_mov_b32 s65, s60
	s_mov_b32 s66, s60
	s_mov_b32 s67, s60
	s_mov_b32 s68, 0x76543210
	v_writelane_b32 v253, s27, 6
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s11, s91, s93
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v212, v36
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s11, s71, s11
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v36, v40
	v_cvt_f32_i32_e32 v40, v18
	v_cvt_f32_i32_e32 v18, v17
	v_cvt_f32_i32_e32 v17, v9
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v9, s11, v53, 2
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v213, v35
	v_cvt_f32_i32_e32 v35, v26
	v_cvt_f32_i32_e32 v26, v31
	v_cvt_f32_i32_e32 v31, v21
	v_cvt_f32_i32_e32 v21, v10
	v_cvt_f32_i32_e32 v10, v14
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v14, s11, v162, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s34
	s_mov_b32 s74, s82
	s_mov_b32 s75, s83
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v211, v37
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v14, 0x80000000, v14, s33
	s_clause 0x1
	buffer_load_b32 v9, v9, s[72:75], 0 offen
	buffer_load_b32 v216, v14, s[72:75], 0 offen
	v_add_lshl_u32 v14, s11, v56, 2
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v210, v38
	v_cvt_f32_i32_e32 v38, v39
	v_cvt_f32_i32_e32 v37, v25
	v_cvt_f32_i32_e32 v25, v32
	v_cvt_f32_i32_e32 v39, v19
	v_cvt_f32_i32_e32 v32, v20
	v_cvt_f32_i32_e32 v20, v11
	v_cvt_f32_i32_e32 v19, v12
	v_cvt_f32_i32_e32 v11, v15
	v_cvt_f32_i32_e32 v12, v16
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v15, s11, v163, 2
	v_add_lshl_u32 v16, s11, v54, 2
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v214, v34
	v_cvt_f32_i32_e32 v34, v27
	v_cvt_f32_i32_e32 v27, v30
	v_cvt_f32_i32_e32 v30, v22
	v_cvt_f32_i32_e32 v22, v24
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v24, s11, v164, 2
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v215, v33
	v_cvt_f32_i32_e32 v33, v29
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v29, s11, v55, 2
	v_cndmask_b32_e64 v217, 0x80000000, v14, s27
	v_add_lshl_u32 v14, s11, v57, 2
	v_cndmask_b32_e64 v15, 0x80000000, v15, s31
	v_cndmask_b32_e64 v16, 0x80000000, v16, s30
	v_cndmask_b32_e64 v24, 0x80000000, v24, s29
	v_cndmask_b32_e64 v29, 0x80000000, v29, s28
	v_cndmask_b32_e64 v219, 0x80000000, v14, s26
	s_clause 0x5
	buffer_load_b32 v218, v15, s[72:75], 0 offen
	buffer_load_b32 v14, v16, s[72:75], 0 offen
	buffer_load_b32 v15, v24, s[72:75], 0 offen
	buffer_load_b32 v16, v29, s[72:75], 0 offen
	buffer_load_b32 v24, v217, s[72:75], 0 offen
	buffer_load_b32 v29, v219, s[72:75], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v39, v76, v39 :: v_dual_add_nc_u32 v252, 0, v89
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v23, v23
	v_dual_mul_f32 v34, v166, v34 :: v_dual_mul_f32 v11, v165, v11
	v_cvt_f32_i32_e32 v13, v13
	v_mul_f32_e32 v26, v166, v26
	v_cvt_f32_i32_e32 v28, v28
	v_mul_f32_e32 v12, v166, v12
	v_mul_f32_e32 v20, v165, v20
	v_mul_f32_e32 v10, v76, v10
	.loc	1 890 30                        ; attention.py:890:30
	s_mov_b32 s86, s82
	s_mov_b32 s87, s83
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v40, v76, v40
	v_mul_f32_e32 v31, v76, v31
	v_mul_f32_e32 v23, v76, v23
	v_mul_f32_e32 v35, v165, v35
	v_mul_f32_e32 v33, v76, v33
	v_mul_f32_e32 v27, v165, v27
	v_mul_f32_e32 v25, v167, v25
	v_mul_f32_e32 v21, v76, v21
	v_mul_f32_e32 v19, v166, v19
	v_mul_f32_e32 v13, v167, v13
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(7)
	v_cndmask_b32_e64 v217, 0xff800000, v9, s34
	s_waitcnt vmcnt(6)
	v_cndmask_b32_e64 v219, 0xff800000, v216, s33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v217
	v_cmp_neq_f32_e64 s11, 0xff800000, v219
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_b32 v98, v219
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s44, s34, vcc_lo
	s_and_b32 s43, s33, s11
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v249, 0xff800000, v14, s30
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v14, 0, 1, s44
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v14.h, v195.l
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v9, 0, v88
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v216, 0xff800000, v218, s31
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v251, 0xff800000, v29, s26
	.loc	1 881 25                        ; attention.py:881:25
	v_add_nc_u32_e32 v29, 0, v90
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v250, 0xff800000, v15, s29
	v_cndmask_b32_e64 v16, 0xff800000, v16, s28
	v_cndmask_b32_e64 v24, 0xff800000, v24, s27
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_b32 v9, v217
	ds_store_b32 v99, v216
	ds_store_b32 v100, v249
	ds_store_b32 v101, v250
	ds_store_b32 v102, v16
	ds_store_b32 v103, v24
	ds_store_b32 v104, v251
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[217:218], v252 offset1:32
	ds_load_2addr_b32 v[219:220], v105 offset1:32
	ds_load_2addr_b32 v[221:222], v106 offset1:32
	ds_load_2addr_b32 v[223:224], v107 offset1:32
	ds_load_2addr_b32 v[225:226], v108 offset1:32
	ds_load_2addr_b32 v[227:228], v109 offset1:32
	ds_load_2addr_b32 v[229:230], v110 offset1:32
	ds_load_2addr_b32 v[231:232], v111 offset1:32
	ds_load_2addr_b32 v[233:234], v112 offset1:32
	ds_load_2addr_b32 v[235:236], v113 offset1:32
	ds_load_2addr_b32 v[237:238], v114 offset1:32
	ds_load_2addr_b32 v[239:240], v115 offset1:32
	ds_load_2addr_b32 v[241:242], v116 offset1:32
	ds_load_2addr_b32 v[243:244], v117 offset1:32
	ds_load_2addr_b32 v[245:246], v118 offset1:32
	ds_load_2addr_b32 v[247:248], v119 offset1:32
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v15, 0, 1, s43
	ds_store_b8 v29, v14
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v29.l, 0
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v220, 0x3fb8aa3b, v220
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v30, v76, v30
	v_mul_f32_e32 v22, v76, v22
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v216
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v14.l, v29.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v32, v76, v32
	v_mul_f32_e32 v28, v167, v28
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s11, 0xff800000, v249
	v_cmp_neq_f32_e64 s12, 0xff800000, v250
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v220, v40, v14
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v14.h, v196.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v40, 0x3fb8aa3b, v222
	v_mul_f32_e32 v222, 0x3fb8aa3b, v224
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s50, s31, vcc_lo
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s13, 0xff800000, v16
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s49, s30, s11
	.loc	1 880 25 is_stmt 1              ; attention.py:880:25
	v_fmac_f32_e32 v40, v39, v14
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v14.h, v197.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s14, 0xff800000, v24
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s48, s29, s12
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s15, 0xff800000, v251
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s47, s28, s13
	.loc	1 880 25 is_stmt 1              ; attention.py:880:25
	v_fmac_f32_e32 v222, v32, v14
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v14.h, v198.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v32, 0x3fb8aa3b, v226
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s46, s27, s14
	s_and_b32 s45, s26, s15
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v29.h, v179.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v24, 0x3fb8aa3b, v233
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v32, v31, v14
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v14.h, v199.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v31, 0x3fb8aa3b, v228
	v_mul_f32_e32 v199, 0x3fb8aa3b, v234
	.loc	1 881 25                        ; attention.py:881:25
	v_add_nc_u32_e32 v39, 0, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v31, v30, v14
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v14.h, v200.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v30, 0x3fb8aa3b, v230
	v_mul_f32_e32 v200, 0x3fb8aa3b, v236
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v30, v23, v14
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v14.h, v201.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v23, 0x3fb8aa3b, v232
	v_mul_f32_e32 v201, 0x3fb8aa3b, v238
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v23, v22, v14
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v14.h, v202.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v22, v76, v215
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v202, 0x3fb8aa3b, v240 :: v_dual_fmac_f32 v199, v22, v14
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v14.h, v203.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v22, v76, v214
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v203, 0x3fb8aa3b, v242
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v200, v22, v14
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v14.h, v204.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v22, v76, v213
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v204, 0x3fb8aa3b, v244 :: v_dual_fmac_f32 v201, v22, v14
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v22, v76, v212
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v14.h, v205.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v205, 0x3fb8aa3b, v246
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v202, v22, v14
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v14.h, v206.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v22, v76, v211
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v206, 0x3fb8aa3b, v248 :: v_dual_fmac_f32 v203, v22, v14
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v14.h, v207.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v22, v76, v210
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v204, v22, v14
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v14.h, v208.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v22, v76, v38
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v38, 0x3fb8aa3b, v218
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v205, v22, v14 :: v_dual_mul_f32 v22, v76, v36
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v14.h, v209.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v36, 0x3fb8aa3b, v217
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v206, v22, v14
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v14.h, v178.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v22, v76, v37 :: v_dual_mul_f32 v37, 0x3fb8aa3b, v247
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v178, 0x3fb8aa3b, v243
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v36, v22, v14
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v22, 0x3fb8aa3b, v219
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v14.h, v180.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v22, v35, v14 :: v_dual_mul_f32 v35, 0x3fb8aa3b, v221
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v14.h, v181.l
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v35, v34, v14 :: v_dual_mul_f32 v34, 0x3fb8aa3b, v223
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v14.h, v182.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v34, v28, v14
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v28, 0x3fb8aa3b, v225
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v14.h, v183.l
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v28, v33, v14 :: v_dual_mul_f32 v33, 0x3fb8aa3b, v227
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v14.h, v184.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v33, v27, v14
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v27, 0x3fb8aa3b, v229
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v14.h, v185.l
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v27, v26, v14 :: v_dual_mul_f32 v26, 0x3fb8aa3b, v231
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v14.h, v186.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v26, v25, v14 :: v_dual_mul_f32 v25, 0x3fb8aa3b, v235
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v14.h, v188.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v25, v21, v14
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v21, 0x3fb8aa3b, v237
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v14.h, v189.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v21, v20, v14 :: v_dual_mul_f32 v20, 0x3fb8aa3b, v239
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v14.h, v190.l
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v20, v19, v14 :: v_dual_mul_f32 v19, 0x3fb8aa3b, v241
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v14.h, v192.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v19, v13, v14
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v13.h, v193.l
	v_mov_b16_e32 v13.l, v29.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v37, v12, v13
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v12.h, v194.l
	v_mov_b16_e32 v12.l, v29.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v13, v167, v18 :: v_dual_mul_f32 v18, 0x3fb8aa3b, v245
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v38, v13, v12
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v12.h, v191.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v18, v11, v12
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v11.h, v187.l
	v_mov_b16_e32 v11.l, v29.l
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v178, v10, v11
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v10, 0, 1, s50
	v_cndmask_b32_e64 v11, 0, 1, s49
	ds_store_b8 v120, v15
	ds_store_b8 v121, v10
	v_cndmask_b32_e64 v10, 0, 1, s48
	ds_store_b8 v122, v11
	v_cndmask_b32_e64 v11, 0, 1, s47
	ds_store_b8 v123, v10
	v_cndmask_b32_e64 v10, 0, 1, s46
	ds_store_b8 v124, v11
	v_cndmask_b32_e64 v11, 0, 1, s45
	ds_store_b8 v125, v10
	ds_store_b8 v126, v11
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v10, v76, v17
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16_hi v12, v39 offset:32
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v24, v10, v29
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_u16_d16 v10, v128
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v10, v129 offset:32
	ds_load_u16_d16 v11, v128 offset:32
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v11, v127 offset:32
	v_and_b16 v12.l, 1, v10.l
	v_lshrrev_b16 v10.l, 8, v10.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s37, 1, v12.l
	ds_load_u16_d16 v12, v127
	v_and_b16 v10.l, 1, v10.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v196, 0xff800000, v35, s37
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e32 vcc_lo, 1, v10.l
	ds_load_u16_d16 v10, v129
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e32 v180, 0xff800000, v40, vcc_lo
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(1)
	v_and_b16 v13.l, 1, v12.l
	v_lshrrev_b16 v12.l, 8, v12.l
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_eq_u16_e64 s40, 1, v13.l
	ds_load_u16_d16 v13, v133
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v13, v133 offset:32
	ds_load_u16_d16 v14, v132 offset:32
	v_and_b16 v12.l, 1, v12.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v198, 0xff800000, v22, s40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s13, 1, v12.l
	v_lshrrev_b16 v12.l, 8, v10.l
	v_and_b16 v10.l, 1, v10.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v182, 0xff800000, v220, s13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v12.l, 1, v12.l
	v_cmp_eq_u16_e64 s42, 1, v10.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cmp_eq_u16_e64 s34, 1, v12.l
	s_waitcnt lgkmcnt(0)
	v_and_b16 v14.h, 1, v13.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v197, 0xff800000, v34, s42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v181, 0xff800000, v222, s34
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s36, 1, v14.h
	ds_load_u16_d16_hi v14, v132
	ds_load_u16_d16 v15, v131 offset:32
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v192, 0xff800000, v26, s36
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v15.h, 1, v14.h
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s35, 1, v15.h
	ds_load_u16_d16_hi v15, v131
	ds_load_u16_d16 v16, v130 offset:32
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v191, 0xff800000, v27, s35
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v16.h, 1, v15.h
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s39, 1, v16.h
	ds_load_u16_d16_hi v16, v130
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v195, 0xff800000, v33, s39
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v17.l, 1, v16.h
	v_lshrrev_b16 v12.l, 8, v16.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_eq_u16_e64 s38, 1, v17.l
	v_and_b16 v17.l, 1, v12.h
	v_and_b16 v12.l, 1, v12.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v194, 0xff800000, v28, s38
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s30, 1, v17.l
	v_and_b16 v17.l, 1, v16.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_eq_u16_e64 s29, 1, v12.l
	v_lshrrev_b16 v12.l, 8, v15.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v189, 0xff800000, v24, s30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s23, 1, v17.l
	v_and_b16 v17.l, 1, v10.h
	v_lshrrev_b16 v10.h, 8, v10.h
	v_and_b16 v12.l, 1, v12.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v185, 0xff800000, v19, s23
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s27, 1, v17.l
	v_and_b16 v17.l, 1, v11.l
	v_and_b16 v10.h, 1, v10.h
	v_cmp_eq_u16_e64 s31, 1, v12.l
	v_lshrrev_b16 v12.l, 8, v14.h
	v_lshrrev_b16 v11.l, 8, v11.l
	v_cmp_eq_u16_e64 s26, 1, v17.l
	v_and_b16 v17.l, 1, v11.h
	v_cmp_eq_u16_e64 s17, 1, v10.h
	v_lshrrev_b16 v10.h, 8, v16.l
	v_and_b16 v12.l, 1, v12.l
	v_lshrrev_b16 v11.h, 8, v11.h
	v_cmp_eq_u16_e64 s33, 1, v17.l
	v_and_b16 v17.l, 1, v13.h
	v_and_b16 v10.h, 1, v10.h
	v_cmp_eq_u16_e64 s25, 1, v12.l
	v_lshrrev_b16 v12.l, 8, v13.l
	v_and_b16 v11.h, 1, v11.h
	v_cmp_eq_u16_e64 s20, 1, v17.l
	v_and_b16 v17.l, 1, v14.l
	v_cmp_eq_u16_e64 s14, 1, v10.h
	v_lshrrev_b16 v10.h, 8, v15.l
	v_and_b16 v12.l, 1, v12.l
	v_and_b16 v11.l, 1, v11.l
	v_cmp_eq_u16_e64 s19, 1, v17.l
	v_and_b16 v17.l, 1, v15.l
	v_and_b16 v10.h, 1, v10.h
	v_cmp_eq_u16_e64 s28, 1, v12.l
	v_lshrrev_b16 v12.l, 8, v12.h
	v_cmp_eq_u16_e64 s22, 1, v11.h
	v_cmp_eq_u16_e64 s24, 1, v17.l
	ds_load_u16_d16 v17, v39
	v_cmp_eq_u16_e64 s15, 1, v10.h
	v_lshrrev_b16 v10.h, 8, v14.l
	v_and_b16 v12.l, 1, v12.l
	v_cmp_eq_u16_e64 s16, 1, v11.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v186, 0xff800000, v178, s24
	v_cndmask_b32_e64 v178, 0xff800000, v32, s29
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v10.h, 1, v10.h
	v_cmp_eq_u16_e64 s18, 1, v12.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v179, 0xff800000, v31, s31
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s11, 1, v10.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v188, 0xff800000, v20, s27
	v_cndmask_b32_e64 v187, 0xff800000, v21, s26
	v_cndmask_b32_e64 v190, 0xff800000, v25, s33
	v_cndmask_b32_e64 v184, 0xff800000, v37, s20
	v_cndmask_b32_e64 v183, 0xff800000, v18, s19
	v_cndmask_b32_e64 v40, 0xff800000, v23, s28
	v_cndmask_b32_e64 v37, 0xff800000, v200, s22
	.loc	1 881 25                        ; attention.py:881:25
	v_lshrrev_b16 v17.h, 8, v17.l
	v_and_b16 v10.h, 1, v17.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v34, 0xff800000, v201, s16
	v_cndmask_b32_e64 v35, 0xff800000, v202, s17
	v_cndmask_b32_e64 v32, 0xff800000, v203, s14
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v17.h, 1, v17.h
	v_cmp_eq_u16_e64 s41, 1, v10.h
	v_lshrrev_b16 v10.h, 8, v13.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v33, 0xff800000, v204, s15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s12, 1, v17.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v193, 0xff800000, v36, s41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v10.h, 1, v10.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v36, 0xff800000, v199, s18
	v_cndmask_b32_e64 v39, 0xff800000, v38, s12
	v_cndmask_b32_e64 v38, 0xff800000, v30, s25
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s21, 1, v10.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v30, 0xff800000, v205, s11
	ds_store_2addr_b32 v252, v193, v39 offset1:32
	v_cndmask_b32_e64 v31, 0xff800000, v206, s21
	ds_store_2addr_b32 v105, v198, v182 offset1:32
	ds_store_2addr_b32 v106, v196, v180 offset1:32
	ds_store_2addr_b32 v107, v197, v181 offset1:32
	ds_store_2addr_b32 v108, v194, v178 offset1:32
	ds_store_2addr_b32 v109, v195, v179 offset1:32
	ds_store_2addr_b32 v110, v191, v38 offset1:32
	ds_store_2addr_b32 v111, v192, v40 offset1:32
	ds_store_2addr_b32 v112, v189, v36 offset1:32
	ds_store_2addr_b32 v113, v190, v37 offset1:32
	ds_store_2addr_b32 v114, v187, v34 offset1:32
	ds_store_2addr_b32 v115, v188, v35 offset1:32
	ds_store_2addr_b32 v116, v185, v32 offset1:32
	ds_store_2addr_b32 v117, v186, v33 offset1:32
	ds_store_2addr_b32 v118, v183, v30 offset1:32
	ds_store_2addr_b32 v119, v184, v31 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v9, v9
	ds_load_b32 v14, v98
	ds_load_b32 v15, v99
	ds_load_b32 v16, v100
	ds_load_b32 v10, v101
	ds_load_b32 v11, v102
	ds_load_b32 v12, v103
	ds_load_b32 v13, v104
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_dpp v17, v9 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp2:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v19, v14, v14 :: v_dual_max_f32 v20, v15, v15
	v_dual_max_f32 v18, v9, v9 :: v_dual_max_f32 v21, v16, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v17, v17, v17
	v_max_f32_e32 v17, v18, v17
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v18, v14 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp4:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v18, v18, v18
	v_max_f32_e32 v18, v19, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v19, v17 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v19, v19, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v17, v17, v19
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v19, v18 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v19, v19, v19
	v_max_f32_e32 v18, v18, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v19, v17 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v19, v19, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v17, v17, v19
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v19, v18 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v19, v19, v19
	v_max_f32_e32 v18, v18, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v19, v17 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v19, v19, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v17, v17, v19
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v19, v18 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v19, v19, v19
	v_max_f32_e32 v18, v18, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v19, v17, -1, -1 op_sel:[1,0]
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v19, v19, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v17, v17, v19
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v19, v18, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s51, v17, 31
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v19, v19, v19
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v17, v10 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v18, v18, v19
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v19, v15 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v17, v17, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v19, v19, v19
	v_max_f32_e32 v19, v20, v19
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v20, v16 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v20, v20, v20
	v_max_f32_e32 v20, v21, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v21, v19 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v21, v21, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v19, v19, v21
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v21, v20 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v21, v21, v21
	v_max_f32_e32 v20, v20, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v21, v19 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v21, v21, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v19, v19, v21
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v21, v20 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v21, v21, v21
	v_max_f32_e32 v20, v20, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v21, v19 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v21, v21, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v19, v19, v21
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v21, v20 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_readlane_b32 s52, v18, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v18, v10, v10 :: v_dual_max_f32 v21, v21, v21
	v_max_f32_e32 v17, v18, v17
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v18, v11 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v20, v20, v21
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v21, v19, -1, -1 op_sel:[1,0]
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v18, v18, v18 :: v_dual_max_f32 v21, v21, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v19, v19, v21
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s54, v19, 31
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v19, v11, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v18, v19, v18
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v19, v17 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v19, v19, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v17, v17, v19
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v19, v18 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_permlanex16_b32 v21, v20, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v19, v19, v19
	v_dual_max_f32 v21, v21, v21 :: v_dual_max_f32 v18, v18, v19
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v19, v17 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v20, v20, v21
	v_max_f32_e32 v21, v13, v13
	v_max_f32_e32 v19, v19, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s55, v20, 31
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v20, v12, v12 :: v_dual_max_f32 v17, v17, v19
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v19, v18 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v19, v19, v19
	v_max_f32_e32 v18, v18, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v19, v17 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v19, v19, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v17, v17, v19
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v19, v18 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v19, v19, v19
	v_max_f32_e32 v18, v18, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v19, v17, -1, -1 op_sel:[1,0]
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v19, v19, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v17, v17, v19
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v19, v18, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v19, v19, v19
	v_max_f32_e32 v18, v18, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s57, v18, 31
	v_mov_b32_e32 v18, s52
	v_mov_b32_dpp v19, v12 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_dual_mov_b32 v22, s57 :: v_dual_max_f32 v19, v19, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v19, v20, v19
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v20, v13 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v20, v20, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v20, v21, v20
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v21, v19 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v21, v21, v21
	v_max_f32_e32 v19, v19, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v21, v20 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v21, v21, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v20, v20, v21
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v21, v19 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v21, v21, v21
	v_max_f32_e32 v19, v19, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v21, v20 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v21, v21, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v20, v20, v21
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v21, v19 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp76:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v21, v21, v21
	v_max_f32_e32 v19, v19, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v21, v20 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v21, v21, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v20, v20, v21
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v21, v19, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp80:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v21, v21, v21
	v_max_f32_e32 v19, v19, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v21, v20, -1, -1 op_sel:[1,0]
	v_readlane_b32 s58, v19, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp82:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v21, v21, v21
.Ltmp83:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v19, s54
	v_dual_mov_b32 v23, s58 :: v_dual_max_f32 v20, v20, v21
	v_readlane_b32 s56, v17, 31
	v_mov_b32_e32 v17, s51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_readlane_b32 s51, v20, 31
	v_dual_mov_b32 v20, s55 :: v_dual_mov_b32 v21, s56
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b32_e32 v24, s51
	ds_store_b128 v96, v[17:20]
	ds_store_b128 v96, v[21:24] offset:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v97 offset:32
	ds_load_b128 v[21:24], v97
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp85:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v25, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v25, v25 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp86:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v172, v172, v17, v25
.Ltmp87:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v17, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp88:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v173, v173, v18, v17
.Ltmp89:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v17, v19 :: v_dual_max_f32 v18, v21, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp90:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v174, v174, v19, v17
.Ltmp91:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v17, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp92:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v59, v59, v20, v17
.Ltmp93:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v17, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[25:26], null, s53, s90, v[58:59]
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp94:
	.loc	1 890 30                        ; attention.py:890:30
	s_mul_i32 s53, s90, 24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v169, v169, v22, v17
.Ltmp95:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v17, v23
.Ltmp96:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v26, v25, s69, 1
	v_add_lshl_u32 v209, v25, s96, 1
	v_add_lshl_u32 v27, v25, s100, 1
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v14, v14, v169
.Ltmp97:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp98:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v210, v25, s101, 1
	v_add_lshl_u32 v28, v25, s103, 1
	v_add_lshl_u32 v211, v25, s104, 1
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v14, v14
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v170, v170, v23, v17
.Ltmp99:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v17, v24
.Ltmp100:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v213, v25, vcc_hi, 1
	v_add_lshl_u32 v212, v25, s70, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v15, v15, v170
.Ltmp101:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp102:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v14, 0, v14, s43
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	v_max3_f32 v171, v171, v24, v17
.Ltmp103:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v17, v21
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v14, v14, v14 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp105:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v16, v16, v171
.Ltmp106:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v14, v14, v14 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp108:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v15, 0, v15, s50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v16, v16
.Ltmp109:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v17, v17, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v14, v14, v14 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v15, v15, v15 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp111:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v199, v18, v17
.Ltmp112:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v17, v168, v168
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v14, v14, v14 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_f32_dpp v15, v15, v15 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp114:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v16, 0, v16, s49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v168, v17, v199
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v15, v15, v15 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v16, v16, v16 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp116:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v9, v9, v168
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v15, v15, v15 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v16, v16, v16 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp118:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v9, v9
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v16, v16, v16 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_f32_dpp v16, v16, v16 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp120:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v9, 0, v9, s44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v9, v9, v9 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v9, v9, v9 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v9, v9, v9 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v9, v9, v9 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v17, v9, -1, -1 op_sel:[1,0]
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v9, v9, v17
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v17, v14, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_readlane_b32 s43, v9, 31
.Ltmp125:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v9, v10, v172
.Ltmp126:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v14, v14, v17
.Ltmp127:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v17, v15, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp128:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v9, v9
.Ltmp129:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s44, v14, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp130:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v15, v15, v17
.Ltmp131:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v17, v16, -1, -1 op_sel:[1,0]
	v_readlane_b32 s49, v15, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp132:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v16, v16, v17
.Ltmp133:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v9, 0, v9, s48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp134:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v9, v9, v9 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v9, v9, v9 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v9, v9, v9 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v9, v9, v9 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp135:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v10, v9, -1, -1 op_sel:[1,0]
.Ltmp136:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v9, v9, v10 :: v_dual_sub_f32 v10, v11, v173
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp137:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp138:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v10, v10, v10 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v10, v10, v10 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v10, v10, v10 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v10, v10, v10 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp139:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v11, v10, -1, -1 op_sel:[1,0]
.Ltmp140:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v10, v10, v11 :: v_dual_sub_f32 v11, v12, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp141:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s47, v10, 31
.Ltmp142:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
.Ltmp143:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v10, s44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mov_b32_e32 v14, s47
.Ltmp144:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s46
.Ltmp145:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s46, v9, 31
	v_mov_b32_e32 v9, s43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp146:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v11, v11, v11 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v11, v11, v11 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v11, v11, v11 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v11, v11, v11 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp147:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v12, v11, -1, -1 op_sel:[1,0]
.Ltmp148:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v11, v11, v12 :: v_dual_sub_f32 v12, v13, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp149:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s48, v11, 31
.Ltmp150:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v12, v12
.Ltmp151:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v11, s49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mov_b32_e32 v15, s48
.Ltmp152:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v12, 0, v12, s45
.Ltmp153:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s45, v16, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp154:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v12, v12, v12 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v12, v12, v12 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v12, v12, v12 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v12, v12, v12 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp155:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v13, v12, -1, -1 op_sel:[1,0]
.Ltmp156:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v12, v12, v13 :: v_dual_mov_b32 v13, s46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp157:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s50, v12, 31
	v_mov_b32_e32 v12, s45
	v_mov_b32_e32 v16, s50
	ds_store_b128 v96, v[9:12]
	ds_store_b128 v96, v[13:16] offset:32
.Ltmp158:
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v9, s91, v73
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v11, v25, s3, 1
.Ltmp159:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp160:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v12, v25, s90, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 1, v9
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s52, s59, v9
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s91, s91, 64
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s43, s59, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 2, v9
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s52, s2, s52
	s_and_b32 s43, s2, s43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s48, s59, v10
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v10, 3, v9
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v12, 0x80000000, v12, s43
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s48, s2, s48
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s45, s59, v10
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v10, 8, v9
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v11, 0x80000000, v11, s48
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s45, s2, s45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s50, s59, v10
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v10, 9, v9
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s50, s2, s50
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s44, s59, v10
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v10, 10, v9
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s44, s2, s44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s49, s59, v10
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v10, 11, v9
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s49, s2, s49
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s47, s59, v10
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v10, 16, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s51, s59, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 17, v9
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s51, s2, s51
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s46, s59, v10
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_lshlrev_b32_e32 v10, 1, v25
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s43, s2, s46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v10, 0x80000000, v10, s52
	s_clause 0x1
	buffer_load_u16 v19, v10, s[84:87], 0 offen
	buffer_load_u16 v20, v11, s[84:87], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 18, v9
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s52, s59, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 19, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s48, s59, v10
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v10, v25, s97, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s50
	s_mul_i32 s50, s90, 10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v11, v25, s50, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s49
	s_clause 0x1
	buffer_load_u16 v13, v10, s[84:87], 0 offen
	buffer_load_u16 v14, v11, s[84:87], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 24, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s49, s59, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 26, v9
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s49, s2, s49
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s50, s59, v10
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_lshl_u32 v10, v25, s102, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v10, 0x80000000, v10, s51
	s_mul_i32 s51, s90, 18
	v_add_lshl_u32 v11, v25, s51, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s51, s2, s52
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v11, 0x80000000, v11, s51
	s_clause 0x1
	buffer_load_u16 v15, v10, s[84:87], 0 offen
	buffer_load_u16 v16, v11, s[84:87], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 32, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s51, s59, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 34, v9
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s51, s2, s51
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s52, s59, v10
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_lshl_u32 v10, v25, s53, 1
	s_mul_i32 s53, s90, 40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v10, 0x80000000, v10, s49
	s_mul_i32 s49, s90, 26
	v_add_lshl_u32 v11, v25, s49, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s49, s2, s50
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v11, 0x80000000, v11, s49
	s_clause 0x1
	buffer_load_u16 v17, v10, s[84:87], 0 offen
	buffer_load_u16 v18, v11, s[84:87], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 40, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s49, s59, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 42, v9
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s49, s2, s49
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s50, s59, v10
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_lshl_u32 v10, v25, s98, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v10, 0x80000000, v10, s51
	s_mul_i32 s51, s90, 34
	v_add_lshl_u32 v11, v25, s51, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s51, s2, s52
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v11, 0x80000000, v11, s51
	s_clause 0x1
	buffer_load_u16 v21, v10, s[84:87], 0 offen
	buffer_load_u16 v22, v11, s[84:87], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 48, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s51, s59, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 50, v9
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s52, s59, v10
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v10, v25, s53, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v10, 0x80000000, v10, s49
	s_mul_i32 s49, s90, 42
	v_add_lshl_u32 v11, v25, s49, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s49, s2, s50
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v11, 0x80000000, v11, s49
	s_mul_i32 s49, s90, 3
	s_clause 0x1
	buffer_load_u16 v23, v10, s[84:87], 0 offen
	buffer_load_u16 v24, v11, s[84:87], 0 offen
	v_add_lshl_u32 v205, v25, s49, 1
	s_mul_i32 s49, s90, 9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v206, v25, s49, 1
	s_mul_i32 s49, s90, 11
	v_add_lshl_u32 v208, v25, s49, 1
	s_mul_i32 s49, s90, 17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v206, 0x80000000, v206, s44
	v_add_lshl_u32 v10, v25, s49, 1
	s_mul_i32 s49, s90, 19
	v_add_lshl_u32 v11, v25, s49, 1
	s_mul_i32 s49, s90, 25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v200, v25, s49, 1
	s_mul_i32 s49, s90, 27
	v_add_lshl_u32 v201, v25, s49, 1
	s_mul_i32 s49, s90, 33
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v202, v25, s49, 1
	s_mul_i32 s49, s90, 35
	v_add_lshl_u32 v203, v25, s49, 1
	s_mul_i32 s49, s90, 41
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v204, v25, s49, 1
	s_mul_i32 s49, s90, 43
	v_add_lshl_u32 v207, v25, s49, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v25, 56, v9
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s49, s2, s51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s53, s59, v25
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v25, 58, v9
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s51, s2, s53
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s54, s59, v25
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_cndmask_b32_e64 v25, 0x80000000, v26, s49
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s49, s2, s52
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v26, 0x80000000, v27, s49
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v27, 25, v9
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v25, v25, s[84:87], 0 offen
	buffer_load_u16 v26, v26, s[84:87], 0 offen
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s49, s59, v27
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v27, 27, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s50, s59, v27
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v27, 0x80000000, v28, s51
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s51, s2, s54
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v28, 0x80000000, v213, s51
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v213, 33, v9
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v27, v27, s[84:87], 0 offen
	buffer_load_u16 v28, v28, s[84:87], 0 offen
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s51, s59, v213
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v213, 35, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s52, s59, v213
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v213, 41, v9
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s53, s59, v213
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v213, 43, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s54, s59, v213
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v213, 49, v9
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s55, s59, v213
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v213, 51, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s56, s59, v213
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v213, 57, v9
	v_add_nc_u32_e32 v9, 59, v9
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s57, s59, v213
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_cmp_gt_i32_e64 s58, s59, v9
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v9, 0x80000000, v205, s45
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s45, s2, s47
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v205, 0x80000000, v208, s45
	s_clause 0x3
	buffer_load_u16 v208, v205, s[84:87], 0 offen
	buffer_load_u16 v213, v206, s[84:87], 0 offen
	buffer_load_u16 v9, v9, s[84:87], 0 offen
	buffer_load_u16 v12, v12, s[84:87], 0 offen
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v14.h, v208.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v13.h, v213.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v20.h, v9.l
	v_cndmask_b32_e64 v9, 0x80000000, v10, s43
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s43, s2, s48
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v19.h, v12.l
	v_cndmask_b32_e64 v10, 0x80000000, v11, s43
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s43, s2, s49
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v11, 0x80000000, v200, s43
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s43, s2, s50
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v12, 0x80000000, v201, s43
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s43, s2, s51
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v200, 0x80000000, v202, s43
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s43, s2, s52
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v201, 0x80000000, v203, s43
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s43, s2, s53
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v202, 0x80000000, v204, s43
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s43, s2, s54
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v203, 0x80000000, v207, s43
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s43, s2, s55
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v204, 0x80000000, v209, s43
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s43, s2, s56
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v205, 0x80000000, v210, s43
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s43, s2, s57
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v206, 0x80000000, v211, s43
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s43, s2, s58
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s91, s92
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v207, 0x80000000, v212, s43
	s_clause 0xb
	buffer_load_u16 v209, v12, s[84:87], 0 offen
	buffer_load_u16 v210, v11, s[84:87], 0 offen
	buffer_load_u16 v211, v10, s[84:87], 0 offen
	buffer_load_u16 v212, v9, s[84:87], 0 offen
	buffer_load_u16 v214, v203, s[84:87], 0 offen
	buffer_load_u16 v215, v202, s[84:87], 0 offen
	buffer_load_u16 v216, v201, s[84:87], 0 offen
	buffer_load_u16 v217, v200, s[84:87], 0 offen
	buffer_load_u16 v218, v207, s[84:87], 0 offen
	buffer_load_u16 v219, v206, s[84:87], 0 offen
	buffer_load_u16 v220, v205, s[84:87], 0 offen
	buffer_load_u16 v221, v204, s[84:87], 0 offen
.Ltmp161:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	ds_load_b128 v[9:12], v97
.Ltmp162:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v10, 0, v92
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp163:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v11, v185, v186, v183
	v_max3_f32 v12, v184, v39, v182
.Ltmp164:
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v10, v[19:20]
.Ltmp165:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v10, v190, v187, v188
	v_max3_f32 v19, v36, v37, v34
.Ltmp166:
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v134, v[13:14]
.Ltmp167:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v10, v10, v11, v12
	v_max3_f32 v11, v180, v181, v178
	v_max3_f32 v12, v179, v38, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max3_f32 v11, v11, v12, v19
	v_max_f32_e32 v12, v193, v198
	v_max3_f32 v19, v197, v194, v195
	v_max3_f32 v12, v12, v196, v19
	v_max3_f32 v19, v191, v192, v189
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v10, v12, v19, v10
	v_dual_max_f32 v12, v35, v32 :: v_dual_max_f32 v19, v30, v31
	v_max3_f32 v12, v12, v33, v19
.Ltmp168:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v19.h, v29.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp169:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v10, v10, v11, v12
.Ltmp170:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v12.h, v29.l
.Ltmp171:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v11, v10, s68, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp172:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v10, v177, v10, v11
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v198, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v12.l, v11.h
	v_cmp_o_f32_e64 s40, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v193, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v19.l, v11.h
	v_cmp_o_f32_e64 s41, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v19, 1, v19
	v_add3_u32 v19, v11, v19, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v12.h, s40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v11.l, 0x7fff, v19.h, s41
	v_mov_b16_e32 v19.h, v29.l
	v_permlanex16_b32 v12, v11, s68, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v200, v12, v11, v93
	v_perm_b32 v201, v12, v11, v94
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v197, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v12.h, v29.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s42
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v12.l, v11.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s40, v11, v11
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v196, v10
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s37
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v19.l, v11.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s37, v11, v11
	v_and_b32_e32 v19, 1, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v19, v11, v19, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v12.h, s40
	v_cndmask_b16 v11.l, 0x7fff, v19.h, s37
	v_mov_b16_e32 v19.h, v29.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v12, v11, s68, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v202, v12, v11, v93
	v_perm_b32 v203, v12, v11, v94
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v195, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v12.h, v29.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v12.l, v11.h
	v_cmp_o_f32_e64 s37, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v194, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v19.l, v11.h
	v_cmp_o_f32_e64 s38, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v19, 1, v19
	v_add3_u32 v19, v11, v19, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v12.h, s37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v11.l, 0x7fff, v19.h, s38
	v_mov_b16_e32 v19.h, v29.l
	v_permlanex16_b32 v12, v11, s68, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v204, v12, v11, v93
	v_perm_b32 v205, v12, v11, v94
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v192, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v12.h, v29.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s36
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	s_waitcnt vmcnt(11)
	v_mov_b16_e64 v18.h, v209.l
	s_waitcnt vmcnt(9)
	v_mov_b16_e64 v16.h, v211.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e64 v15.h, v212.l
	v_mov_b16_e64 v17.h, v210.l
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v12.l, v11.h
	v_cmp_o_f32_e64 s36, v11, v11
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(5)
	v_mov_b16_e64 v22.h, v216.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e64 v21.h, v217.l
	v_mov_b16_e64 v24.h, v214.l
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v12, 1, v12
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v23.h, v215.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v26.h, v220.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v25.h, v221.l
	v_mov_b16_e64 v28.h, v218.l
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v191, v10
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v27.h, v219.l
	ds_store_b64 v135, v[15:16]
	ds_store_b64 v136, v[17:18]
	ds_store_b64 v137, v[21:22]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v138, v[23:24]
	ds_store_b64 v139, v[25:26]
	ds_store_b64 v140, v[27:28]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v19.l, v11.h
	v_cmp_o_f32_e64 s35, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v19, 1, v19
	v_add3_u32 v19, v11, v19, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v12.h, s36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b16 v11.l, 0x7fff, v19.h, s35
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s35, 0xff800000, v177
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v19.h, v29.l
	v_permlanex16_b32 v12, v11, s68, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v206, v12, v11, v93
	v_perm_b32 v207, v12, v11, v94
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v11, v177, v10
	v_mov_b32_e32 v177, v10
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v11, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v11, 0, v11, s35
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v11
	v_mul_f32_e32 v2, v2, v11
	v_mul_f32_e32 v3, v3, v11
	v_mul_f32_e32 v4, v4, v11
	v_mul_f32_e32 v5, v5, v11
	v_mul_f32_e32 v6, v6, v11
	v_mul_f32_e32 v7, v7, v11
	v_mul_f32_e32 v8, v8, v11
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v11, 0, v95
	ds_load_b128 v[11:14], v11
	ds_load_b128 v[15:18], v141
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[11:18], v[200:207], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v190, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v12.h, v29.l
	v_mov_b16_e32 v13.h, v29.l
	v_mov_b16_e32 v14.h, v29.l
	v_mov_b16_e32 v15.h, v29.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v16.h, v29.l
	v_mov_b16_e32 v17.h, v29.l
	v_mov_b16_e32 v18.h, v29.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s33
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v12.l, v11.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s33, v11, v11
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v189, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v13.l, v11.h
	v_cmp_o_f32_e64 s30, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v13, v11, v13, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v12.l, 0x7fff, v13.h, s30
	v_permlanex16_b32 v13, v12, s68, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v11, v13, v12, v93
	v_perm_b32 v12, v13, v12, v94
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v13, v188, v10
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v13, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v13, 0, v13, s27
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v14.l, v13.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s27, v13, v13
	v_and_b32_e32 v14, 1, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v14, v13, v14, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v13, v187, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v13, v13
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v13, 0, v13, s26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v15.l, v13.h
	v_cmp_o_f32_e64 s26, v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v15, 1, v15
	v_add3_u32 v15, v13, v15, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v14.l, 0x7fff, v15.h, s26
	v_permlanex16_b32 v15, v14, s68, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v13, v15, v14, v93
	v_perm_b32 v14, v15, v14, v94
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v15, v186, v10
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v15, 0, v15, s24
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v16.l, v15.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s24, v15, v15
	v_and_b32_e32 v16, 1, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v16, v15, v16, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v15, v185, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v15, v15
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v15, 0, v15, s23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v17.l, v15.h
	v_cmp_o_f32_e64 s23, v15, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v17, 1, v17
	v_add3_u32 v17, v15, v17, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v16.l, 0x7fff, v17.h, s23
	v_permlanex16_b32 v17, v16, s68, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v15, v17, v16, v93
	v_perm_b32 v16, v17, v16, v94
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v17, v184, v10
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v17, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v17, 0, v17, s20
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v18.l, v17.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s20, v17, v17
	v_and_b32_e32 v18, 1, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v18, v17, v18, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v17, v183, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v17, v17
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v17, 0, v17, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v19.l, v17.h
	v_cmp_o_f32_e64 s19, v17, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v19, 1, v19
	v_add3_u32 v19, v17, v19, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v18.l, 0x7fff, v19.h, s19
	v_permlanex16_b32 v19, v18, s68, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v17, v19, v18, v93
	v_perm_b32 v18, v19, v18, v94
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[19:22], v142
	ds_load_b128 v[23:26], v143
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[19:26], v[11:18], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v182, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v12.h, v29.l
	v_mov_b16_e32 v13.h, v29.l
	v_mov_b16_e32 v14.h, v29.l
	v_mov_b16_e32 v15.h, v29.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v16.h, v29.l
	v_mov_b16_e32 v17.h, v29.l
	v_mov_b16_e32 v18.h, v29.l
	v_mov_b16_e32 v19.h, v29.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s13
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v12.l, v11.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s13, v11, v11
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v39, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v13.l, v11.h
	v_cmp_o_f32_e64 s12, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v13, v11, v13, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v12.l, 0x7fff, v13.h, s12
	v_permlanex16_b32 v13, v12, s68, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v11, v13, v12, v93
	v_perm_b32 v12, v13, v12, v94
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v13, v181, v10
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v13, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v13, 0, v13, s34
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v14.l, v13.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s12, v13, v13
	v_and_b32_e32 v14, 1, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v14, v13, v14, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v13, v180, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v13, v13
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e32 v13, 0, v13, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v15.l, v13.h
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v15, 1, v15
	v_add3_u32 v15, v13, v15, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v14.l, 0x7fff, v15.h, vcc_lo
	v_permlanex16_b32 v15, v14, s68, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v13, v15, v14, v93
	v_perm_b32 v14, v15, v14, v94
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v15, v179, v10
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v15, 0, v15, s31
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v16.l, v15.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	v_and_b32_e32 v16, 1, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v16, v15, v16, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v15, v178, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v16.h, 0x7fff, v16.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v15, v15
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v15, 0, v15, s29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v17.l, v15.h
	v_cmp_o_f32_e64 s12, v15, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v17, 1, v17
	v_add3_u32 v17, v15, v17, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v16.l, 0x7fff, v17.h, s12
	v_permlanex16_b32 v17, v16, s68, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v15, v17, v16, v93
	v_perm_b32 v16, v17, v16, v94
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v17, v40, v10
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v17, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v17, 0, v17, s28
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v18.l, v17.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	v_and_b32_e32 v18, 1, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v18, v17, v18, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v17, v38, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v18.h, 0x7fff, v18.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v17, v17
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v17, 0, v17, s25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v19.l, v17.h
	v_cmp_o_f32_e64 s12, v17, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v19, 1, v19
	v_add3_u32 v19, v17, v19, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v18.l, 0x7fff, v19.h, s12
	v_permlanex16_b32 v19, v18, s68, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v17, v19, v18, v93
	v_perm_b32 v18, v19, v18, v94
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[19:22], v144
	ds_load_b128 v[23:26], v145
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[19:26], v[11:18], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v37, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v12.h, v29.l
	v_mov_b16_e32 v13.h, v29.l
	v_mov_b16_e32 v14.h, v29.l
	v_mov_b16_e32 v15.h, v29.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v16.h, v29.l
	v_mov_b16_e32 v17.h, v29.l
	v_mov_b16_e32 v18.h, v29.l
	v_mov_b16_e32 v19.h, v29.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s22
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v12.l, v11.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v36, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v12.h, 0x7fff, v12.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v13.l, v11.h
	v_cmp_o_f32_e64 s12, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v13, v11, v13, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v12.l, 0x7fff, v13.h, s12
	v_permlanex16_b32 v13, v12, s68, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v11, v13, v12, v93
	v_perm_b32 v12, v13, v12, v94
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v13, v35, v10
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v13, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v13, 0, v13, s17
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v14.l, v13.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	v_and_b32_e32 v14, 1, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v14, v13, v14, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v13, v34, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v14.h, 0x7fff, v14.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v13, v13
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v13, 0, v13, s16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v15.l, v13.h
	v_cmp_o_f32_e64 s12, v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v15, 1, v15
	v_add3_u32 v15, v13, v15, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v14.l, 0x7fff, v15.h, s12
	v_permlanex16_b32 v15, v14, s68, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v13, v15, v14, v93
	v_perm_b32 v14, v15, v14, v94
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v15, v33, v10
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v15, 0, v15, s15
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v16.l, v15.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	v_and_b32_e32 v16, 1, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v16, v15, v16, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v15, v32, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v16.h, 0x7fff, v16.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v15, v15
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v15, 0, v15, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v17.l, v15.h
	v_cmp_o_f32_e64 s12, v15, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v17, 1, v17
	v_add3_u32 v17, v15, v17, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v16.l, 0x7fff, v17.h, s12
	v_permlanex16_b32 v17, v16, s68, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v15, v17, v16, v93
	v_perm_b32 v16, v17, v16, v94
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v17, v31, v10
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v17, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v17, 0, v17, s21
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v18.l, v17.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	v_and_b32_e32 v18, 1, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v18, v17, v18, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v17, v30, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v18.h, 0x7fff, v18.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v17, v17
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v176
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v17, 0, v17, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v19.l, v17.h
	v_cmp_o_f32_e64 s11, v17, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v19, 1, v19
	v_add3_u32 v19, v17, v19, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v18.l, 0x7fff, v19.h, s11
	v_permlanex16_b32 v19, v18, s68, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v17, v19, v18, v93
	v_perm_b32 v18, v19, v18, v94
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[19:22], v146
	ds_load_b128 v[23:26], v147
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[19:26], v[11:18], v[1:8]
.Ltmp173:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v11, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp174:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v11, v9, v11
.Ltmp175:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v9, v176, v176
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v9, v9, v199
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v12, v176, v9
	v_mov_b32_e32 v176, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v12, v12
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v12, 0, v12, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v11, v175, v12
	v_mov_b32_e32 v175, v11
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_12
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s53, s91, s94
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v9, s91, v60
	.loc	1 822 32                        ; attention.py:822:32
	s_mul_i32 s11, s53, s89
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v185, s67 :: v_dual_add_nc_u32 v202, s91, v77
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v25, s11, v43
	v_add_nc_u32_e32 v26, s11, v62
	v_add_nc_u32_e32 v27, s11, v63
	v_add_nc_u32_e32 v28, s11, v44
	s_mul_i32 s11, s89, 20
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v184, s66
	v_add_nc_u32_e32 v30, s11, v25
	s_mul_i32 s11, s89, 24
	v_dual_mov_b32 v183, s65 :: v_dual_add_nc_u32 v10, 4, v9
	v_add_nc_u32_e32 v31, s11, v25
	s_mul_i32 s11, s89, 28
	v_dual_mov_b32 v182, s64 :: v_dual_add_nc_u32 v11, 8, v9
	v_add_nc_u32_e32 v32, s11, v25
	s_mul_i32 s11, s89, 36
	v_dual_mov_b32 v181, s63 :: v_dual_add_nc_u32 v12, 12, v9
	v_add_nc_u32_e32 v34, s11, v25
	s_mul_i32 s11, s89, 40
	v_dual_mov_b32 v180, s62 :: v_dual_add_nc_u32 v13, 16, v9
	v_add_nc_u32_e32 v35, s11, v25
	s_mul_i32 s11, s89, 44
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v17, 32, v9
	v_add_nc_u32_e32 v36, s11, v25
	s_mul_i32 s11, s89, 48
	v_add_nc_u32_e32 v18, 36, v9
	v_add_nc_u32_e32 v37, s11, v25
	s_mul_i32 s11, s89, 52
	v_add_nc_u32_e32 v19, 40, v9
	v_add_nc_u32_e32 v38, s11, v25
	s_mul_i32 s11, s89, 56
	v_add_nc_u32_e32 v20, 44, v9
	v_add_nc_u32_e32 v21, 48, v9
	v_add_nc_u32_e32 v39, s11, v25
	s_mul_i32 s11, s89, 60
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v179, s61 :: v_dual_add_nc_u32 v14, 20, v9
	v_add_nc_u32_e32 v40, s11, v25
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s11, s59, v9
	v_cmp_gt_i32_e64 s12, s59, v10
	v_cmp_gt_i32_e64 s13, s59, v11
	v_cmp_gt_i32_e64 s14, s59, v12
	v_cmp_gt_i32_e64 s15, s59, v13
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v22, 52, v9
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s19, s59, v17
	v_add_nc_u32_e32 v29, s95, v25
	v_cmp_gt_i32_e64 s20, s59, v18
	v_cmp_gt_i32_e64 s21, s59, v19
	v_cmp_gt_i32_e64 s22, s59, v20
	v_cmp_gt_i32_e64 s23, s59, v21
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v178, s60 :: v_dual_add_nc_u32 v15, 24, v9
	v_add_nc_u32_e32 v33, s99, v25
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s16, s59, v14
	.loc	1 825 30 is_stmt 0              ; attention.py:825:30
	s_and_b32 s11, s4, s11
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v23, 56, v9
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 s12, s4, s12
	s_and_b32 s13, s4, s13
	s_and_b32 s14, s4, s14
	s_and_b32 s15, s4, s15
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v16, 28, v9
	v_add_nc_u32_e32 v24, 60, v9
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s24, s59, v22
	.loc	1 825 30 is_stmt 0              ; attention.py:825:30
	s_and_b32 s19, s4, s19
	.loc	1 823 32 is_stmt 1              ; attention.py:823:32
	v_cndmask_b32_e64 v9, 0x80000000, v25, s11
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 s20, s4, s20
	s_and_b32 s21, s4, s21
	s_and_b32 s22, s4, s22
	s_and_b32 s23, s4, s23
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v10, 0x80000000, v26, s12
	v_cndmask_b32_e64 v11, 0x80000000, v27, s13
	v_cndmask_b32_e64 v12, 0x80000000, v28, s14
	v_cndmask_b32_e64 v13, 0x80000000, v29, s15
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s17, s59, v15
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v17, 0x80000000, v33, s19
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 s16, s4, s16
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v18, 0x80000000, v34, s20
	v_cndmask_b32_e64 v19, 0x80000000, v35, s21
	v_cndmask_b32_e64 v20, 0x80000000, v36, s22
	v_cndmask_b32_e64 v21, 0x80000000, v37, s23
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s25, s59, v23
	.loc	1 825 30 is_stmt 0              ; attention.py:825:30
	s_and_b32 s24, s4, s24
	.loc	1 823 32 is_stmt 1              ; attention.py:823:32
	s_clause 0x4
	buffer_load_u8 v9, v9, s[80:83], 0 offen
	buffer_load_u8 v10, v10, s[80:83], 0 offen
	buffer_load_u8 v11, v11, s[80:83], 0 offen
	buffer_load_u8 v12, v12, s[80:83], 0 offen
	buffer_load_u8 v13, v13, s[80:83], 0 offen
	v_cndmask_b32_e64 v14, 0x80000000, v30, s16
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s18, s59, v16
	.loc	1 825 30 is_stmt 0              ; attention.py:825:30
	s_and_b32 s17, s4, s17
	.loc	1 823 32 is_stmt 1              ; attention.py:823:32
	s_clause 0x4
	buffer_load_u8 v17, v17, s[80:83], 0 offen
	buffer_load_u8 v18, v18, s[80:83], 0 offen
	buffer_load_u8 v19, v19, s[80:83], 0 offen
	buffer_load_u8 v20, v20, s[80:83], 0 offen
	buffer_load_u8 v21, v21, s[80:83], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v38, s24
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s26, s59, v24
	.loc	1 825 30 is_stmt 0              ; attention.py:825:30
	s_and_b32 s25, s4, s25
	.loc	1 823 32 is_stmt 1              ; attention.py:823:32
	v_cndmask_b32_e64 v15, 0x80000000, v31, s17
	buffer_load_u8 v14, v14, s[80:83], 0 offen
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 s18, s4, s18
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v23, 0x80000000, v39, s25
	buffer_load_u8 v22, v22, s[80:83], 0 offen
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 s26, s4, s26
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v16, 0x80000000, v32, s18
	buffer_load_u8 v15, v15, s[80:83], 0 offen
	v_cndmask_b32_e64 v24, 0x80000000, v40, s26
	buffer_load_u8 v23, v23, s[80:83], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v209, 14, v202
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_u8 v16, v16, s[80:83], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v203, 2, v202
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_u8 v24, v24, s[80:83], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v212, 18, v202
	v_add_nc_u32_e32 v220, 34, v202
	v_add_nc_u32_e32 v228, 50, v202
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s36, s59, v209
	.loc	1 839 25                        ; attention.py:839:25
	v_add_lshl_u32 v209, s53, v77, 1
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s43, s59, v202
	v_cmp_gt_i32_e64 s42, s59, v203
	v_cmp_gt_i32_e64 s34, s59, v212
	v_cmp_gt_i32_e64 s25, s59, v220
	v_cmp_gt_i32_e64 s17, s59, v228
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v203, 0x64, v209
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v204, 4, v202
	v_add_nc_u32_e32 v213, 20, v202
	v_add_nc_u32_e32 v221, 36, v202
	v_add_nc_u32_e32 v229, 52, v202
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v203, 0x80000000, v203, s17
	s_mov_b32 s78, s82
	s_mov_b32 s79, s83
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s41, s59, v204
	v_cmp_gt_i32_e64 s33, s59, v213
	v_cmp_gt_i32_e64 s24, s59, v221
	v_cmp_gt_i32_e64 s16, s59, v229
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v204, 0x68, v209
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v205, 6, v202
	v_add_nc_u32_e32 v214, 22, v202
	v_add_nc_u32_e32 v222, 38, v202
	v_add_nc_u32_e32 v230, 54, v202
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v204, 0x80000000, v204, s16
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s40, s59, v205
	v_cmp_gt_i32_e64 s31, s59, v214
	v_cmp_gt_i32_e64 s23, s59, v222
	v_cmp_gt_i32_e64 s15, s59, v230
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v205, 0x6c, v209
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v206, 8, v202
	v_add_nc_u32_e32 v215, 24, v202
	v_add_nc_u32_e32 v223, 40, v202
	v_add_nc_u32_e32 v231, 56, v202
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v205, 0x80000000, v205, s15
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s39, s59, v206
	v_cmp_gt_i32_e64 s30, s59, v215
	v_cmp_gt_i32_e64 s22, s59, v223
	v_cmp_gt_i32_e64 s14, s59, v231
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v206, 0x70, v209
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v207, 10, v202
	v_add_nc_u32_e32 v216, 26, v202
	v_add_nc_u32_e32 v224, 42, v202
	v_add_nc_u32_e32 v232, 58, v202
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v206, 0x80000000, v206, s14
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s38, s59, v207
	v_cmp_gt_i32_e64 s29, s59, v216
	v_cmp_gt_i32_e64 s21, s59, v224
	v_cmp_gt_i32_e64 s13, s59, v232
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v207, 0x74, v209
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v208, 12, v202
	v_add_nc_u32_e32 v217, 28, v202
	v_add_nc_u32_e32 v225, 44, v202
	v_add_nc_u32_e32 v233, 60, v202
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v207, 0x80000000, v207, s13
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s37, s59, v208
	v_cmp_gt_i32_e64 s28, s59, v217
	v_cmp_gt_i32_e64 s20, s59, v225
	v_cmp_gt_i32_e64 s12, s59, v233
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v208, 0x78, v209
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v218, 30, v202
	v_add_nc_u32_e32 v226, 46, v202
	v_add_nc_u32_e32 v211, 16, v202
	v_add_nc_u32_e32 v219, 32, v202
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v208, 0x80000000, v208, s12
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s27, s59, v218
	v_cmp_gt_i32_e64 s19, s59, v226
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v227, 48, v202
	v_add_nc_u32_e32 v234, 62, v202
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s35, s59, v211
	v_cmp_gt_i32_e64 s26, s59, v219
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v202, 0x60, v209
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s18, s59, v227
	v_cmp_gt_i32_e64 s11, s59, v234
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v210, s91, v42
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(15)
	ds_store_b8 v65, v9
	s_waitcnt vmcnt(11)
	ds_store_b8 v65, v13 offset:512
	s_waitcnt vmcnt(10)
	ds_store_b8 v65, v17 offset:1024
	s_waitcnt vmcnt(6)
	ds_store_b8 v65, v21 offset:1536
	ds_store_b8 v66, v10
	s_waitcnt vmcnt(5)
	ds_store_b8 v66, v14 offset:512
	ds_store_b8 v66, v18 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v66, v22 offset:1536
	ds_store_b8 v67, v11
	s_waitcnt vmcnt(3)
	ds_store_b8 v67, v15 offset:512
	ds_store_b8 v67, v19 offset:1024
	s_waitcnt vmcnt(2)
	ds_store_b8 v67, v23 offset:1536
	ds_store_b8 v68, v12
	s_waitcnt vmcnt(1)
	ds_store_b8 v68, v16 offset:512
	ds_store_b8 v68, v20 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b8 v68, v24 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[15:18], v69 offset1:1
	ds_load_2addr_stride64_b64 v[186:189], v69 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[19:22], v70 offset1:1
	ds_load_2addr_stride64_b64 v[190:193], v70 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[33:36], v71 offset1:1
	ds_load_2addr_stride64_b64 v[194:197], v71 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[37:40], v72 offset1:1
	ds_load_2addr_stride64_b64 v[198:201], v72 offset0:2 offset1:3
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x3
	buffer_load_u16 v203, v203, s[76:79], 0 offen
	buffer_load_u16 v204, v204, s[76:79], 0 offen
	buffer_load_u16 v205, v205, s[76:79], 0 offen
	buffer_load_u16 v206, v206, s[76:79], 0 offen
	v_cndmask_b32_e64 v202, 0x80000000, v202, s18
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e32 vcc_lo, s59, v210
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x2
	buffer_load_u16 v207, v207, s[76:79], 0 offen
	buffer_load_u16 v208, v208, s[76:79], 0 offen
	buffer_load_u16 v202, v202, s[76:79], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[15:16], v[45:46], v[178:185] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[45:46], v[178:185] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[19:20], v[47:48], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[21:22], v[47:48], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[186:187], v[45:46], v[178:185] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[33:34], v[49:50], v[25:32] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v187, 36, v209
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[9:16], v[35:36], v[49:50], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[190:191], v[47:48], v[17:24] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v191, 56, v209
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[37:38], v[51:52], v[25:32] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v187, 0x80000000, v187, s34
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[9:16], v[39:40], v[51:52], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[194:195], v[49:50], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[188:189], v[45:46], v[178:185] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v179, 4, v209
	v_add_nc_u32_e32 v195, 0x44, v209
	v_cndmask_b32_e64 v178, 0x80000000, v209, s43
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[192:193], v[47:48], v[33:40] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v188, v187, s[76:79], 0 offen
	v_cndmask_b32_e64 v179, 0x80000000, v179, s42
	v_cndmask_b32_e64 v195, 0x80000000, v195, s25
	buffer_load_u16 v178, v178, s[76:79], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[196:197], v[49:50], v[33:40] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v196, 0x48, v209
	s_clause 0x1
	buffer_load_u16 v180, v179, s[76:79], 0 offen
	buffer_load_u16 v195, v195, s[76:79], 0 offen
	v_add_nc_u32_e32 v179, 8, v209
	v_add_nc_u32_e32 v187, 40, v209
	v_cndmask_b32_e64 v196, 0x80000000, v196, s24
	v_add_nc_u32_e32 v197, 0x4c, v209
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[198:199], v[51:52], v[17:24] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v179, 0x80000000, v179, s41
	v_cndmask_b32_e64 v187, 0x80000000, v187, s33
	buffer_load_u16 v196, v196, s[76:79], 0 offen
	v_cndmask_b32_e64 v197, 0x80000000, v197, s23
	v_add_nc_u32_e32 v198, 0x50, v209
	s_clause 0x1
	buffer_load_u16 v181, v179, s[76:79], 0 offen
	buffer_load_u16 v189, v187, s[76:79], 0 offen
	v_add_nc_u32_e32 v179, 12, v209
	v_add_nc_u32_e32 v187, 44, v209
	buffer_load_u16 v197, v197, s[76:79], 0 offen
	v_cndmask_b32_e64 v198, 0x80000000, v198, s22
	v_add_nc_u32_e32 v199, 0x54, v209
	v_cndmask_b32_e64 v179, 0x80000000, v179, s40
	v_cndmask_b32_e64 v187, 0x80000000, v187, s31
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[200:201], v[51:52], v[33:40] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v198, v198, s[76:79], 0 offen
	v_cndmask_b32_e64 v199, 0x80000000, v199, s21
	s_clause 0x1
	buffer_load_u16 v182, v179, s[76:79], 0 offen
	buffer_load_u16 v190, v187, s[76:79], 0 offen
	v_add_nc_u32_e32 v179, 16, v209
	v_add_nc_u32_e32 v187, 48, v209
	buffer_load_u16 v199, v199, s[76:79], 0 offen
	v_add_nc_u32_e32 v200, 0x58, v209
	v_cndmask_b32_e64 v191, 0x80000000, v191, s28
	v_cndmask_b32_e64 v179, 0x80000000, v179, s39
	v_cndmask_b32_e64 v187, 0x80000000, v187, s30
	v_add_nc_u32_e32 v193, 60, v209
	v_cndmask_b32_e64 v200, 0x80000000, v200, s20
	s_clause 0x2
	buffer_load_u16 v191, v191, s[76:79], 0 offen
	buffer_load_u16 v183, v179, s[76:79], 0 offen
	buffer_load_u16 v192, v187, s[76:79], 0 offen
	v_add_nc_u32_e32 v179, 20, v209
	v_add_nc_u32_e32 v187, 52, v209
	buffer_load_u16 v200, v200, s[76:79], 0 offen
	v_add_nc_u32_e32 v201, 0x5c, v209
	v_cndmask_b32_e64 v193, 0x80000000, v193, s27
	v_cndmask_b32_e64 v179, 0x80000000, v179, s38
	v_cndmask_b32_e64 v187, 0x80000000, v187, s29
	v_add_nc_u32_e32 v194, 64, v209
	v_cndmask_b32_e64 v201, 0x80000000, v201, s19
	s_clause 0x2
	buffer_load_u16 v193, v193, s[76:79], 0 offen
	buffer_load_u16 v184, v179, s[76:79], 0 offen
	buffer_load_u16 v187, v187, s[76:79], 0 offen
	v_add_nc_u32_e32 v179, 24, v209
	buffer_load_u16 v201, v201, s[76:79], 0 offen
	v_cndmask_b32_e64 v194, 0x80000000, v194, s26
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s34, s0, vcc_lo
	s_and_b32 s33, s1, vcc_lo
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v179, 0x80000000, v179, s37
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s31, s5, vcc_lo
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v194, v194, s[76:79], 0 offen
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s30, s6, vcc_lo
	s_and_b32 s29, s7, vcc_lo
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v185, v179, s[76:79], 0 offen
	v_add_nc_u32_e32 v179, 28, v209
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s28, s8, vcc_lo
	s_and_b32 s27, s9, vcc_lo
	s_and_b32 s26, s10, vcc_lo
	.loc	1 863 17                        ; attention.py:863:17
	v_cmp_ne_u32_e32 vcc_lo, 1, v75
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v179, 0x80000000, v179, s36
	.loc	1 863 17                        ; attention.py:863:17
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v186, v179, s[76:79], 0 offen
	v_add_nc_u32_e32 v179, 32, v209
	v_add_nc_u32_e32 v209, 0x7c, v209
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v179, 0x80000000, v179, s35
	v_cndmask_b32_e64 v209, 0x80000000, v209, s11
	s_clause 0x1
	buffer_load_u16 v179, v179, s[76:79], 0 offen
	buffer_load_u16 v209, v209, s[76:79], 0 offen
	.loc	1 863 17                        ; attention.py:863:17
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e32 vcc_lo, v210, v78
	v_cmp_le_i32_e64 s11, v210, v79
	v_cmp_le_i32_e64 s12, v210, v80
	v_cmp_le_i32_e64 s13, v210, v81
	v_cmp_le_i32_e64 s14, v210, v82
	v_cmp_le_i32_e64 s15, v210, v83
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s18, vcc_lo, s34
	s_and_b32 s11, s11, s33
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s16, v210, v84
	v_cmp_le_i32_e64 s17, v210, v85
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s12, s12, s31
	s_and_b32 s13, s13, s30
	s_and_not1_b32 s19, s34, exec_lo
	s_and_b32 s18, s18, exec_lo
	s_and_not1_b32 s20, s33, exec_lo
	s_and_b32 s11, s11, exec_lo
	s_and_b32 s14, s14, s29
	s_and_b32 s15, s15, s28
	s_or_b32 s34, s19, s18
	s_or_b32 s33, s20, s11
	s_and_not1_b32 s11, s31, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_not1_b32 s18, s30, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_b32 s16, s16, s27
	s_and_b32 s17, s17, s26
	s_or_b32 s31, s11, s12
	s_or_b32 s30, s18, s13
	s_and_not1_b32 s11, s29, exec_lo
	s_and_b32 s12, s14, exec_lo
	s_and_not1_b32 s13, s28, exec_lo
	s_and_b32 s14, s15, exec_lo
	s_or_b32 s29, s11, s12
	s_or_b32 s28, s13, s14
	s_and_not1_b32 s11, s27, exec_lo
	s_and_b32 s12, s16, exec_lo
	s_and_not1_b32 s13, s26, exec_lo
	s_and_b32 s14, s17, exec_lo
	s_or_b32 s27, s11, s12
	s_or_b32 s26, s13, s14
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 865 17 is_stmt 1              ; attention.py:865:17
	s_and_not1_b32 vcc_lo, exec_lo, s88
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e32 vcc_lo, v210, v86
	v_cmp_ge_i32_e64 s11, v210, v87
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s18, v210, v154
	v_cmp_le_i32_e64 s19, v210, v155
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s12, v210, v148
	v_cmp_ge_i32_e64 s13, v210, v149
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s20, v210, v156
	v_cmp_le_i32_e64 s21, v210, v157
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s14, v210, v150
	v_cmp_ge_i32_e64 s15, v210, v151
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s22, v210, v158
	v_cmp_le_i32_e64 s23, v210, v159
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s18, vcc_lo, s18
	s_and_b32 s11, s11, s19
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s16, v210, v152
	v_cmp_ge_i32_e64 s17, v210, v153
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s24, v210, v160
	v_cmp_le_i32_e64 s25, v210, v161
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s18, s18, s34
	s_and_b32 s11, s11, s33
	s_and_b32 s12, s12, s20
	s_and_b32 s13, s13, s21
	s_and_b32 s12, s12, s31
	s_and_b32 s13, s13, s30
	s_and_b32 s14, s14, s22
	s_and_b32 s15, s15, s23
	s_and_not1_b32 s19, s34, exec_lo
	s_and_b32 s18, s18, exec_lo
	s_and_not1_b32 s20, s33, exec_lo
	s_and_b32 s11, s11, exec_lo
	s_and_b32 s14, s14, s29
	s_and_b32 s15, s15, s28
	s_and_b32 s16, s16, s24
	s_and_b32 s17, s17, s25
	s_or_b32 s34, s19, s18
	s_or_b32 s33, s20, s11
	s_and_not1_b32 s11, s31, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_not1_b32 s18, s30, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_b32 s16, s16, s27
	s_and_b32 s17, s17, s26
	s_or_b32 s31, s11, s12
	s_or_b32 s30, s18, s13
	s_and_not1_b32 s11, s29, exec_lo
	s_and_b32 s12, s14, exec_lo
	s_and_not1_b32 s13, s28, exec_lo
	s_and_b32 s14, s15, exec_lo
	s_or_b32 s29, s11, s12
	s_or_b32 s28, s13, s14
	s_and_not1_b32 s11, s27, exec_lo
	s_and_b32 s12, s16, exec_lo
	s_and_not1_b32 s13, s26, exec_lo
	s_and_b32 s14, s17, exec_lo
	s_or_b32 s27, s11, s12
	s_or_b32 s26, s13, s14
	s_branch .LBB0_6
.LBB0_11:
	.loc	1 0 21                          ; attention.py:0:21
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v11, v8
	s_branch .LBB0_13
.LBB0_12:                               ; %._crit_edge.loopexit
.Ltmp176:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v9, v9
	v_readlane_b32 s16, v253, 0
.Ltmp177:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v11, 0, v11
	v_readlane_b32 s26, v253, 5
	v_readlane_b32 s27, v253, 6
.Ltmp178:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, 0xff800000, v9
	v_readlane_b32 s28, v253, 4
	v_readlane_b32 s17, v253, 1
	v_readlane_b32 s18, v253, 2
	v_readlane_b32 s19, v253, 3
.Ltmp179:
.LBB0_13:                               ; %._crit_edge
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e64 s0, 0, v64
	.loc	1 1028 26                       ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v74
.Ltmp180:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_add_nc_u32_e32 v12, 0, v73
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp181:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e64 v1, 0, v1, s0
	v_cndmask_b32_e64 v2, 0, v2, s0
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v10, 0xff800000, v9 :: v_dual_and_b32 v9, 1, v0
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp182:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v14, v1 :: v_dual_mov_b32 v15, v2
.Ltmp183:
	.loc	1 1031 36                       ; attention.py:1031:36
	v_cndmask_b32_e32 v11, 0, v11, vcc_lo
.Ltmp184:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v12, v10
	v_lshl_add_u32 v13, v9, 2, 0
.Ltmp185:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v16, v3
	v_mov_b32_dpp v15, v15 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp186:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp187:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v14
.Ltmp188:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp189:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_load_b32 v10, v13
.Ltmp190:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v12, v11
.Ltmp191:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v2, v2, v15 :: v_dual_add_f32 v3, v3, v16
.Ltmp192:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v12, v1
.Ltmp193:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v11, v13
.Ltmp194:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v13, v2
	v_mov_b32_dpp v12, v12 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v14, v3
.Ltmp195:
	.loc	1 1033 17 is_stmt 1             ; attention.py:1033:17
	v_cndmask_b32_e64 v17, 0, v4, s0
	v_cndmask_b32_e64 v18, 0, v5, s0
.Ltmp196:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp197:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v12
.Ltmp198:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp199:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v8, 0, v8, s0
.Ltmp200:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v2, v13
.Ltmp201:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v13, v10
.Ltmp202:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v3, v14 :: v_dual_mov_b32 v14, v1
.Ltmp203:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s1, s28, s27
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp204:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v15, v2
.Ltmp205:
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s90, s90, 2
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s26, s1
.Ltmp206:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v16, v3
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp207:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v12, v11
.Ltmp208:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp209:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v14
.Ltmp210:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp211:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v2, v15
.Ltmp212:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e64 v14, 0, v6, s0
.Ltmp213:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v20, v7 :: v_dual_mov_b32 v15, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp214:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v4, v3, v16 :: v_dual_mov_b32 v3, v1
.Ltmp215:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v5, v2
	v_dual_mov_b32 v16, v18 :: v_dual_mov_b32 v21, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v6, v4
	v_mov_b32_dpp v15, v15 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v19, v14
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v21, v21 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp216:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v17, v15
.Ltmp217:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp218:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v16, v18, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v7, v7, v20 :: v_dual_add_f32 v8, v8, v21
.Ltmp219:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v17, v15 :: v_dual_add_f32 v14, v14, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v18, v16
	v_dual_mov_b32 v20, v7 :: v_dual_mov_b32 v21, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v19, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v21, v21 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp220:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v15, v17
.Ltmp221:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp222:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v16, v16, v18
	v_add_f32_e32 v18, v7, v20
.Ltmp223:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp224:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v17, v15 :: v_dual_add_f32 v14, v14, v19
.Ltmp225:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v19, v8, v21
.Ltmp226:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v7, v16
	v_mov_b32_e32 v21, v18
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v14
	v_mov_b32_e32 v22, v19
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v21, v21 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp227:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v8, v15, v17
.Ltmp228:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v22, v22 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp229:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v7, v16, v7 :: v_dual_add_f32 v18, v18, v21
.Ltmp230:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v15, v8 :: v_dual_add_f32 v16, v14, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp231:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v19, v19, v22
.Ltmp232:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v14, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v20, v18
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v16
	v_mov_b32_e32 v21, v19
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v15, v15 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp233:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_or_b32_e32 v22, v60, v41
.Ltmp234:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v21, v21 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp235:
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s4, s1, s90
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s1, exec_lo
	v_cmpx_eq_u32_e32 0, v22
	s_cbranch_execz .LBB0_15
; %bb.14:
.Ltmp236:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v13, v13, v13 :: v_dual_max_f32 v10, v10, v10
.Ltmp237:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s5, s4, 31
.Ltmp238:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v11, v11, v12
.Ltmp239:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[6:7], s[4:5], 2
	v_mov_b32_e32 v12, 0
.Ltmp240:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v10, v10, v13
.Ltmp241:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s6, s16, s6
	s_addc_u32 s7, s17, s7
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v12, v[10:11], s[6:7]
.LBB0_15:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 1038 13 is_stmt 1             ; attention.py:1038:13
	v_lshlrev_b32_e32 v0, 2, v0
.Ltmp242:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v10, v16, v17
	v_dual_add_f32 v17, v4, v6 :: v_dual_add_f32 v12, v19, v21
	v_add_f32_e32 v11, v18, v20
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp243:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v0, 0xc0, v0
.Ltmp244:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v18, v8, v15
	v_add_f32_e32 v16, v2, v5
	v_dual_add_f32 v15, v1, v3 :: v_dual_and_b32 v2, 0xe0, v61
.Ltmp245:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v1, 28, v61
	v_lshlrev_b32_e32 v3, 5, v9
	s_and_b32 vcc_lo, vcc_lo, s2
	v_add_nc_u32_e32 v0, 0, v0
	v_add_nc_u32_e32 v2, 0, v2
.Ltmp246:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v9, v7, v14
.Ltmp247:
	.loc	1 1038 13                       ; attention.py:1038:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v0, v0, v3, v1
	ds_store_b128 v2, v[15:18]
	ds_store_b128 v2, v[9:12] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v1, s4, v42
	.loc	1 1038 13                       ; attention.py:1038:13
	ds_load_b32 v0, v0
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	v_lshl_add_u32 v1, v1, 2, 8
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v0, v1, s[16:19], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp248:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 160
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
		.amdhsa_next_free_vgpr 254
		.amdhsa_next_free_sgpr 105
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.num_vgpr, 254
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17456
; TotalNumSgprs: 107
; NumVgprs: 254
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 107
; NumVGPRsForWavesPerEU: 254
; Occupancy: 5
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
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
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
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
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
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
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
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
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
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           1
        .value_kind:     by_value
      - .offset:         129
        .size:           1
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .offset:         136
        .size:           4
        .value_kind:     by_value
      - .offset:         140
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         152
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 160
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     107
    .sgpr_spill_count: 7
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_runtime_bfloat16_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     254
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
